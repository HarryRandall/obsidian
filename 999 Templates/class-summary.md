<%*
// ============================================
// TEMPLATE ROUTER
// Edit individual sections below to customize
// ============================================

// Track if content was successfully generated
let contentGenerated = false;

// Get vault access (used throughout template)
function getVault() {
  if (tp.app && tp.app.vault) return tp.app.vault;
  if (typeof app !== 'undefined' && app && app.vault) return app.vault;
  return null;
}

// Helper function to delete file if user cancelled (no content generated)
async function cleanupEmptyFile() {
  if (contentGenerated) return;
  
  try {
    const vault = getVault();
    if (!vault) return;
    
    const filePath = tp.file.path(true);
    if (filePath) {
      const file = vault.getAbstractFileByPath(filePath);
      if (file) {
        await vault.delete(file);
      }
    }
  } catch (error) {
    // Silently fail
  }
}

// Helper function to check if file exists
async function fileExists(vault, filePath) {
  try {
    const file = vault.getAbstractFileByPath(filePath + ".md");
    return file !== null;
  } catch (error) {
    return false;
  }
}

const templateTypes = [
  "University",
  "Personal", 
  "Sprintlaw"
];

const selectedTemplate = await tp.system.suggester(templateTypes, templateTypes, false, "What type of note?");

if (!selectedTemplate) {
  await cleanupEmptyFile();
  return;
}

// ============================================
// UNIVERSITY - COURSE NOTES
// ============================================
if (selectedTemplate === "University") {
  
  const vault = getVault();
  if (!vault) {
    await cleanupEmptyFile();
    return;
  }
  
  // Dynamically get all course folders from numbered directories (200, 300, etc.)
  const rootFolders = vault.getRoot().children.filter(f => f.children && /^\d+\s/.test(f.name));
  const allCourses = [];
  
  for (const rootFolder of rootFolders) {
    const courses = rootFolder.children.filter(f => f.children);
    for (const course of courses) {
      allCourses.push({
        name: course.name,
        path: course.path,
        display: `${rootFolder.name}/${course.name}`
      });
    }
  }
  
  allCourses.sort((a, b) => a.path.localeCompare(b.path));
  
  if (allCourses.length === 0) {
    await cleanupEmptyFile();
    return;
  }
  
  const courseOptions = allCourses.map(c => c.display);
  const selectedCourse = await tp.system.suggester(courseOptions, allCourses, false, "Select course:");
  
  if (!selectedCourse) {
    await cleanupEmptyFile();
    return;
  }
  
  const noteTypes = ["Lecture", "Tutorial", "Workshop"];
  const selectedType = await tp.system.suggester(noteTypes, noteTypes, false, "What type of note?");
  
  if (!selectedType) {
    await cleanupEmptyFile();
    return;
  }
  
  const weekInput = await tp.system.prompt("Week number?", "");
  
  if (weekInput === null || weekInput === "") {
    await cleanupEmptyFile();
    return;
  }
  
  const weekNum = parseInt(weekInput);
  if (isNaN(weekNum) || weekNum < 1) {
    await cleanupEmptyFile();
    return;
  }
  
  const weekFormatted = weekNum.toString().padStart(2, '0');
  
  // Get lecture number (for Lectures only)
  let sessionNum = 1;
  if (selectedType === "Lecture") {
    const sessionInput = await tp.system.prompt("Lecture number?", "1");
    
    if (sessionInput === null) {
      await cleanupEmptyFile();
      return;
    }
    
    const parsedSession = parseInt(sessionInput);
    if (!isNaN(parsedSession) && parsedSession >= 1) {
      sessionNum = parsedSession;
    }
  }
  
  // Determine target folder
  const folderNameMap = {
    "Lecture": "Lectures",
    "Tutorial": "Tutorials",
    "Workshop": "Workshops"
  };
  const targetFolder = `${selectedCourse.path}/${folderNameMap[selectedType]}`;
  
  // Create target folder if it doesn't exist
  try {
    if (!vault.getAbstractFileByPath(targetFolder)) {
      await vault.createFolder(targetFolder);
    }
  } catch (error) {
    // Folder might already exist
  }
  
  // Generate filename and check for duplicates
  let newFileName = `Week ${weekFormatted} - ${selectedType} ${sessionNum}`;
  let targetPath = `${targetFolder}/${newFileName}`;
  
  // Check if file already exists
  if (await fileExists(vault, targetPath)) {
    const overwrite = await tp.system.suggester(
      ["No, cancel", "Yes, find next available number"],
      [false, true],
      false,
      `"${newFileName}" already exists. Auto-increment?`
    );
    
    if (!overwrite) {
      await cleanupEmptyFile();
      return;
    }
    
    // Find next available number
    let nextNum = sessionNum + 1;
    while (await fileExists(vault, `${targetFolder}/Week ${weekFormatted} - ${selectedType} ${nextNum}`)) {
      nextNum++;
    }
    sessionNum = nextNum;
    newFileName = `Week ${weekFormatted} - ${selectedType} ${sessionNum}`;
    targetPath = `${targetFolder}/${newFileName}`;
  }
  
  try {
    await tp.file.rename(newFileName);
    await tp.file.move(targetPath);
  } catch (error) {
    await cleanupEmptyFile();
    return;
  }
  
  // Find course file for linking
  let courseFilePath = selectedCourse.path;
  let courseFileLink = `[[${selectedCourse.path}|${selectedCourse.name}]]`;
  try {
    const courseFolder = vault.getAbstractFileByPath(selectedCourse.path);
    if (courseFolder && courseFolder.children) {
      const courseFiles = courseFolder.children.filter(f => 
        f.extension === 'md' && 
        !f.name.startsWith('Week ') &&
        !f.name.startsWith('_')
      );
      if (courseFiles.length > 0) {
        const courseFile = courseFiles[0];
        courseFilePath = courseFile.path.endsWith('.md') 
          ? courseFile.path.slice(0, -3) 
          : courseFile.path;
        courseFileLink = `[[${courseFilePath}|${selectedCourse.name}]]`;
      }
    }
  } catch (error) {}
  
  courseFilePath = courseFilePath.replace(/\\/g, '/');
  const courseTag = selectedCourse.name.toLowerCase().replace(/\s+/g, "-").replace(/[^a-z0-9-]/g, "");
  const escapedCourseName = selectedCourse.name.replace(/"/g, '\\"').replace(/\\/g, '\\\\');
  
  contentGenerated = true;
  
  tR += `---
course: "[[${courseFilePath}|${escapedCourseName}]]"
type: ${selectedType.toLowerCase()}
date: ${tp.date.now("YYYY-MM-DD")}
week: ${weekNum}
session: ${sessionNum}
instructor: ""
tags:
  - ${selectedType.toLowerCase()}
  - ${courseTag}
status: in-progress
---

# ${newFileName}

> [!info] ${selectedType} Details
> **Course:** ${courseFileLink}
> **Type:** ${selectedType}
> **Date:** ${tp.date.now("dddd, D MMMM YYYY")}
> **Week:** ${weekNum}
> **${selectedType} #:** ${sessionNum}
> **Instructor:** 
> **Recording:** [Link]()

---

## Overview



---

## Notes



---

## Key Concepts



---

## Questions & Answers



---

## Related

- [[]]`;
}

// ============================================
// PERSONAL - LIFE NOTES
// ============================================
else if (selectedTemplate === "Personal") {
  
  const categories = ["Goal", "Idea", "Project"];
  const selectedCategory = await tp.system.suggester(categories, categories, false, "What type of personal note?");
  
  if (!selectedCategory) {
    await cleanupEmptyFile();
    return;
  }

  const folderMap = {
    "Goal": "100 Personal/Goals",
    "Idea": "100 Personal/Ideas",
    "Project": "100 Personal/Projects"
  };
  const targetFolder = folderMap[selectedCategory];

  const noteTopic = await tp.system.prompt(`${selectedCategory} title/topic?`, "");
  
  if (noteTopic === null || noteTopic === "") {
    await cleanupEmptyFile();
    return;
  }

  const customTags = await tp.system.prompt("Add tags (comma separated)?", "");
  if (customTags === null) {
    await cleanupEmptyFile();
    return;
  }
  
  const tagsArray = customTags ? customTags.split(",").map(t => t.trim().toLowerCase()).filter(t => t) : [];
  const extraTags = tagsArray.length > 0 ? "\n" + tagsArray.map(t => `  - ${t}`).join("\n") : "";

  const newFileName = `${selectedCategory} - ${noteTopic}`;
  
  try {
    await tp.file.rename(newFileName);
    await tp.file.move(`${targetFolder}/${newFileName}`);
  } catch (error) {
    await cleanupEmptyFile();
    return;
  }
  
  let contentSections = "";
  
  if (selectedCategory === "Idea") {
    contentSections = `## The Idea

*Describe your idea clearly...*

---

## Why It Matters

*What problem does this solve?*

---

## Next Steps

- [ ] Research feasibility
- [ ] 
- [ ] 

---

## Resources

- `;
  } else if (selectedCategory === "Project") {
    contentSections = `## Project Overview

**Goal:** 
**Deadline:** 
**Priority:** High / Medium / Low

---

## Tasks

- [ ] 
- [ ] 
- [ ] 

---

## Progress Log

| Date | Update |
|------|--------|
| ${tp.date.now("YYYY-MM-DD")} | Project started |

---

## Notes

- `;
  } else if (selectedCategory === "Goal") {
    contentSections = `## The Goal

*What do you want to achieve?*

---

## Why

*Why is this important to you?*

---

## Milestones

- [ ] Milestone 1: 
- [ ] Milestone 2: 
- [ ] Milestone 3: 

---

## Timeline

**Start:** ${tp.date.now("YYYY-MM-DD")}
**Target:** 

---

## Progress

| Date | Progress | Notes |
|------|----------|-------|
|      |          |       |`;
  }

  contentGenerated = true;

  tR += `---
type: ${selectedCategory.toLowerCase()}
created: ${tp.date.now("YYYY-MM-DD HH:mm")}
modified: ${tp.date.now("YYYY-MM-DD HH:mm")}
tags:
  - personal
  - ${selectedCategory.toLowerCase()}${extraTags}
status: active
---

# ${newFileName}

> [!abstract] Summary
> *One-line summary of this note...*

---

${contentSections}

---

## Related

- [[]]`;
}

// ============================================
// SPRINTLAW - WORK NOTES
// ============================================
else if (selectedTemplate === "Sprintlaw") {
  
  const noteTitle = await tp.system.prompt("Note title/topic?", "");
  
  if (noteTitle === null || noteTitle === "") {
    await cleanupEmptyFile();
    return;
  }

  const newFileName = noteTitle;

  try {
    await tp.file.rename(newFileName);
    await tp.file.move(`500 Sprintlaw/${newFileName}`);
  } catch (error) {
    await cleanupEmptyFile();
    return;
  }
  
  contentGenerated = true;
  
  tR += `---
type: sprintlaw
created: ${tp.date.now("YYYY-MM-DD HH:mm")}
tags:
  - sprintlaw
status: active
---

# ${newFileName}

## Notes



---

## Action Items

- [ ] 

---

## Related

- [[]]`;
}
-%>
