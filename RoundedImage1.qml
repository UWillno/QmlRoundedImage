import QtQuick

Image {
    id:image
    property alias radius: rect.radius
    layer.samplerName: "source"
    layer.enabled: true
    layer.effect: ShaderEffect {
        property var mask: rect
        fragmentShader: "qrc:/shaders/mask.frag.qsb"
    }

    Rectangle {
        id:rect
        width: image.width
        height: image.height
        layer.enabled: true
        visible: false
    }
}
