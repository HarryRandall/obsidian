
---

`````text
You will receive the raw text of a document (e.g. a PDF that has been OCR-extracted).  
Convert it into *Obsidian-compatible Markdown* while following ALL rules below.

### 1 Wrap everything in one code-block
* Output **nothing** outside a single fenced code-block.  
* Use a quadruple-backtick opener so inner triple-backtick code fences render correctly:

````markdown
#  ← four backticks + “markdown”
…your converted content…
````          ← match the opening four backticks
`````

### 2 Headings & structure

- Keep the original heading levels.
    
- Leave a blank line before/after each heading and major section divider (`---`).
    

### 3 Mathematics

- **Inline math:** wrap in single dollar signs → `$x \leq y$`, `$p \lor q$`, `$\,\lnot r$`.
    
- **Display math:** place on its own line between double dollars:
    

```markdown
$$
\sigma(p)=T,\; \sigma(q)=F
$$
```

- Replace common symbols with LaTeX commands
    
    - ≤ → `\leq`  ≥ → `\geq`  ¬ → `\lnot`
        
    - ∧ → `\land`  ∨ → `\lor`  ⇒ → `\Rightarrow`
        

### 4 Lists

- Use regular Markdown ordered (`1.`) or bullet (`-`) lists as appropriate.
    
- Preserve sub-item indentation exactly two spaces.
    

### 5 Code samples

- Fence code blocks with triple backticks **inside** the main code-block.
    
- Append the language tag when known (e.g. ` ```dafny `).
    

### 6 Spacing / typography

- Put two spaces at the end of a line **only** when you need a hard line-break.
    
- Otherwise rely on blank lines to separate paragraphs.
    

### 7 No commentary

- Do **not** explain what you are doing.
    
- Output only the final formatted Markdown within the single code-block.
    

### 8 Quality checklist (internal—do not print)

-  All math is inside `$…$` or `$$…$$`.
    
-  Headings appear with the correct number of `#`.
    
-  Code snippets are fenced and indented accurately.
    
-  No stray backticks or unmatched dollar signs.
    
-  Nothing—no explanations or extra text—outside the outermost code-block.
    

---

After reading these rules, reply with **only** the converted document formatted exactly as specified.

```
::contentReference[oaicite:0]{index=0}
```