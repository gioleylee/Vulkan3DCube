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
my-vulkan-project/
├─ src/            # Source code (main Vulkan logic)
├─ shaders/        # GLSL shaders (vertex & fragment)
├─ assets/         # Textures and resources
├─ CMakeLists.txt  # Build configuration
├─ README.md       # Project documentation
└─ .gitignore
```

---

## ⚙️ Requirements

Make sure you have the following installed:

* Vulkan SDK (LunarG)
* CMake (>= 3.16)
* C++ compiler (GCC / Clang / MSVC)
* GPU with Vulkan support
* Graphics drivers up to date

---

## 🛠️ Build Instructions

### 1. Clone the repository

```bash
git clone https://github.com/YOUR_USERNAME/YOUR_REPO.git
cd YOUR_REPO
```

### 2. Build with CMake

```bash
cmake -S . -B build
cmake --build build
```

### 3. Run the application

```bash
./build/VulkanRenderer
```

> On Windows:

```bash
build\Debug\VulkanRenderer.exe
```

---

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

This project is open source. Add a license here if needed (e.g., MIT).

---

## 🙌 Acknowledgements

* Vulkan SDK (LunarG)
* Khronos Vulkan documentation
* Vulkan Tutorial (https://vulkan-tutorial.com)

---
