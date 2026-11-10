# Vulkan Cube Rendering Demo

This project is a simple Vulkan-based renderer that displays rotating 3D cubes with different visual effects. It demonstrates core Vulkan concepts such as pipeline setup, texture mapping, and transformation matrices.

## 📸 Preview

The application renders:

* A **textured cube** with a repeating fractal pattern
* A **distorted/reflection cube** showing transformed environment mapping

---

## 🚀 Features

* Vulkan graphics pipeline setup
* Vertex + fragment shaders
* Texture mapping
* Uniform buffers for transformations
* 3D cube rendering
* Multiple objects in a single scene
* Basic camera/view transformations

---

## 🧱 Project Structure

```
Vulkan3DCube/
├─ VulkanTest.slnx            # Visual Studio solution
├─ VulkanTest/
│  ├─ VulkanTest.vcxproj
│  ├─ main.cpp               # all Vulkan setup and rendering
│  ├─ compile.bat            # compiles the shaders to SPIR-V
│  ├─ shaders/               # GLSL vertex and fragment shaders
│  └─ textures/              # cube textures
├─ README.md
└─ .gitignore
```

---

## ⚙️ Requirements

Make sure you have the following installed:

* Vulkan SDK (LunarG)
* Visual Studio 2022 or later with the "Desktop development with C++" workload
* GLFW and GLM (the project expects them on the include and library paths)
* GPU with Vulkan support
* Graphics drivers up to date

---

## 🛠️ Build Instructions

### 1. Clone the repository

```bash
git clone https://github.com/gioleylee/Vulkan3DCube.git
cd Vulkan3DCube
```

### 2. Compile the shaders

Run `VulkanTest/compile.bat`. It uses `glslc` from the Vulkan SDK to produce the
`.spv` files the program loads. They are build outputs and are not committed.

### 3. Build with Visual Studio

Open `VulkanTest.slnx`, select the `x64` platform, and build.

### 4. Run the application

Start it from Visual Studio (`F5`) so that the working directory is `VulkanTest/`.

## 🎮 Controls

*(Customize this if you have controls implemented)*

* `ESC` — Exit
* `Mouse / Keys` — Camera movement (if implemented)

---

## 🧠 How It Works

### 1. Vulkan Setup

The program initializes:

* Vulkan instance
* Physical & logical device
* Swapchain
* Render pass
* Graphics pipeline

### 2. Geometry

A cube is defined using:

* Vertex buffer (positions, UVs)
* Index buffer

### 3. Shaders

* **Vertex shader** handles transformations (model, view, projection)
* **Fragment shader** applies textures and visual effects

### 4. Texturing

Images are loaded into GPU memory and sampled in the fragment shader.

### 5. Transformations

Each cube uses transformation matrices:

* Rotation
* Translation
* Projection

---

## 🧪 Learning Goals

This project is useful for understanding:

* Vulkan pipeline architecture
* Descriptor sets and uniform buffers
* GPU memory management
* Rendering multiple objects
* Shader-based effects

---

## 📌 Future Improvements

* Add camera movement (FPS-style)
* Implement lighting (Phong / PBR)
* Load 3D models (OBJ/GLTF)
* Add ImGui UI
* Improve shader effects

---

## 📄 License

No license file has been added yet.

---

## 🙌 Acknowledgements

* Vulkan SDK (LunarG)
* Khronos Vulkan documentation
* Vulkan Tutorial (https://vulkan-tutorial.com)

---
