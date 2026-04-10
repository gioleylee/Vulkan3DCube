#version 450

layout(location = 0) in vec3 inPosition;
layout(location = 1) in vec2 inTexCoord;

layout(binding = 0) uniform UBO {
    mat4 model0;
    mat4 model1;
    mat4 view;
    mat4 proj;
} ubo;

layout(location = 0) out vec2 fragTexCoord;
layout(location = 1) flat out int fragInstance;

void main() {
    // choose model matrix based on instance index
    mat4 model = (gl_InstanceIndex == 0) ? ubo.model0 : ubo.model1;
    vec3 pos = inPosition;

    gl_Position = ubo.proj * ubo.view * model * vec4(pos, 1.0);
    fragTexCoord = inTexCoord;
    fragInstance = gl_InstanceIndex;
}