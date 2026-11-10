@echo off
rem Compiles the GLSL shaders to SPIR-V next to their sources.
rem Uses the Vulkan SDK that the VULKAN_SDK environment variable points to,
rem so it keeps working when the SDK is updated.
setlocal
if "%VULKAN_SDK%"=="" (
    echo VULKAN_SDK is not set. Install the Vulkan SDK from https://vulkan.lunarg.com/ first.
    pause
    exit /b 1
)
set "GLSLC=%VULKAN_SDK%\Bin\glslc.exe"
pushd "%~dp0shaders"
"%GLSLC%" shader.vert -o vert.spv || goto :fail
"%GLSLC%" shader.frag -o frag.spv || goto :fail
popd
echo Shaders compiled.
exit /b 0

:fail
popd
echo Shader compilation failed.
pause
exit /b 1
