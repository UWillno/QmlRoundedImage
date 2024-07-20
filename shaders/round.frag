#version 440
layout(location = 0) in vec2 qt_TexCoord0;
layout(location = 0) out vec4 fragColor;
layout(std140, binding = 0) uniform buf {
    mat4 qt_Matrix;
    float qt_Opacity;
};
layout(binding = 1) uniform sampler2D source;
void main() {
    // 中心
    vec2 center = vec2(0.5,0.5);

    if(distance(center,qt_TexCoord0) >=0.5) {
        fragColor = vec4(0)*qt_Opacity;
    }else {
        fragColor = texture(source,qt_TexCoord0)*qt_Opacity;
    }
}
