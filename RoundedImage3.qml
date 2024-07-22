import QtQuick

Image {
    id:image
    property real radius:10
    layer.enabled: true
    layer.effect: ShaderEffect {
        property var size: Qt.size(image.width,image.height)
        property real radius: image.radius
        fragmentShader: "shaders/roundedCorner.frag.qsb"
    }
}
