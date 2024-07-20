import QtQuick
import QtQuick.Controls
import QtQuick.Effects

Image {
    id:image
    property alias radius: maskRect.radius
    layer.enabled: true
    layer.effect: MultiEffect {
        maskEnabled:true
        maskSource: maskRect
    }
    Rectangle {
        id:maskRect
        anchors.fill: image
        visible: false
        layer.enabled: true
    }
}
