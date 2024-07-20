import QtQuick

Image {
    id:image
    property real radius:10
    layer.samplerName: "source"
    layer.enabled: true
    layer.effect: ShaderEffect {
        property var size: Qt.size(image.width,image.height)
        property real radius: image.radius
        fragmentShader: "qrc:/shaders/roundedCorner.frag.qsb"
    }
}
