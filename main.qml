import QtQuick
import QtQuick.Window

Window {
    width: 1100
    height: 640
    visible: true
    title: qsTr("Hello World")

    ListModel {
        id:listModel
        // 高宽相等 半径小于宽的一半
        ListElement {
            width:100
            height:100
            radius:20
        }
        // 高宽相等 半径等于宽的一半
        ListElement {
            width:100
            height:100
            radius:50
        }
        // 高宽相等 半径大于宽的一半
        ListElement {
            width:100
            height:100
            radius:60
        }
        // 高大于宽 半径小于宽的一半
        ListElement {
            width:100
            height:150
            radius:20
        }
        // 高大于宽 半径等于宽的一半
        ListElement {
            width:100
            height:150
            radius:50
        }
        // 高大于宽 半径大于宽的一半
        ListElement {
            width:100
            height:150
            radius:75
        }
        // 高等于宽 半径小于高的一半
        ListElement {
            width:150
            height:100
            radius:20
        }
        // 高小于宽 半径等于高的一半
        ListElement {
            width:150
            height:100
            radius:50
        }
        // 高小于宽 半径大于高的一半
        ListElement {
            width:150
            height:100
            radius:75
        }

    }

    Flickable {
        anchors.fill: parent
        contentHeight: col.height
        Column {
            id:col
            spacing: 5
            Text {
                text:"圆角矩形"
                font.pointSize: 22
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Row{
                spacing: 5
                Repeater {
                    model:listModel
                    delegate:Rectangle {
                        width: model.width
                        height: model.height
                        radius: model.radius
                        color:"blue"
                    }
                }
            }
            Text {
                text:"MultiEffect mask实现圆角图片"
                font.pointSize: 22
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Row {
                spacing: 5
                Repeater {
                    model:listModel
                    delegate:RoundedImage {
                        // MultiEffect
                        width: model.width
                        height: model.height
                        radius: model.radius
                        source:"qrc:/qt-logo.png"
                    }
                }
            }
            Text {
                text:"ShaderEffect mask实现圆角图片"
                font.pointSize: 22
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Row {
                spacing: 5
                Repeater {
                    model:listModel
                    delegate:RoundedImage1 {
                        // ShaderEffect 1
                        width: model.width
                        height: model.height
                        radius: model.radius
                        source:"qrc:/qt-logo.png"
                    }
                }
            }
            Text {
                text:"ShaderEffect 实现圆形图片"
                font.pointSize: 22
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Row {
                spacing: 5
                Repeater {
                    model:listModel
                    delegate:RoundedImage2 {
                        // ShaderEffect 2
                        width: model.width
                        height: model.height
                        // radius: model.radius
                        source:"qrc:/qt-logo.png"
                    }
                }
            }
            Text {
                text:"ShaderEffect 实现圆角图片"
                font.pointSize: 22
                anchors.horizontalCenter: parent.horizontalCenter
            }
            Row {
                spacing: 5
                Repeater {
                    model:listModel
                    delegate:RoundedImage3 {
                        // ShaderEffect 3
                        width: model.width
                        height: model.height
                        radius: model.radius
                        source:"qrc:/qt-logo.png"
                    }
                }
            }
        }
    }

}
