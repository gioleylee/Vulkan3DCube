#version 450

layout(binding = 1) uniform sampler2D texSampler0;
layout(binding = 2) uniform sampler2D texSampler1;

layout(location = 0) in vec2 fragTexCoord;
layout(location = 1) flat in int fragInstance;

layout(location = 0) out vec4 outColor;

void main() {
    // choose texture based on instance index (0 -> texture0, 1 -> texture1)
    if (fragInstance == 0) {
        outColor = texture(texSampler0, fragTexCoord);
    } else {
        outColor = texture(texSampler1, fragTexCoord);
    }
}
