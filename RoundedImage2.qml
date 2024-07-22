import QtQuick

Image {
    id:image
    layer.enabled: true
    layer.effect: ShaderEffect {
        fragmentShader: "shaders/round.frag.qsb"
    }
}
