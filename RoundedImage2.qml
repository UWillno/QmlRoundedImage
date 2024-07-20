import QtQuick

Image {
    id:image
    layer.enabled: true
    layer.effect: ShaderEffect {
        fragmentShader: "qrc:/shaders/round.frag.qsb"
    }
}
