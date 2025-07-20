**Date**: Sunday, 20 July 2025, 14:15
**Tags**: #cpp #opengl #rendering
**tutorial**: https://www.youtube.com/watch?v=45MIykWJ-C4

---
#### Requirements
- Visual Studio
- CMAKE
- GLFW
- Glad

---
#### Generating a blank window
```c++
#include <iostream>
#include <glad/glad.h>
#include <GLFW/glfw3.h>

int main() {
	glfwInit();

	glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
	glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
	glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

	GLFWwindow* window = glfwCreateWindow(800, 800, "tutorial", NULL, NULL);

	if (window == NULL) {
		std::cout << "Failed to create GLFW window" << std::endl;
		glfwTerminate();
		return -1;
	}

	glfwMakeContextCurrent(window);

	glfwTerminate();
	return 0;
}
```
---
#### Game loop
Need to create a while loop for the process to run in. The best way is using the following:
```c++
while (!glfwWindowShouldClose(window)) {
}
```
This means that while the process will only exit when the 'close window' button is clicked.

Also need to add a function that lets all of the pooled events respond:
```c++
glfwPollEvents();
```

Which now looks like this:
```c++
#include <iostream>
#include <glad/glad.h>
#include <GLFW/glfw3.h>

int main() {
	glfwInit();

	glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
	glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
	glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);

	GLFWwindow* window = glfwCreateWindow(800, 800, "tutorial", NULL, NULL);

	if (window == NULL) {
		std::cout << "Failed to create GLFW window" << std::endl;
		glfwTerminate();
		return -1;
	}

	while (!glfwWindowShouldClose(window)) {
		glfwPollEvents();
		glfwMakeContextCurrent(window);
	}

	glfwDestroyWindow(window);
	glfwTerminate();
	return 0;
}
```

---
#### Buffers

---
#### Adding Colours:
```c++
glfwMakeContextCurrent(window);
gladLoadGL();
glViewport(0, 0, 800, 800);
glClearColor(0.07f, 0.13f, 0.17f, 1.0f);
glClear(GL_COLOR_BUFFER_BIT);
glfwSwapBuffers(window);
```
