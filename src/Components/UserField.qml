import QtQuick 2.15
import QtQuick.Controls 2.15

TextField {
    id: userField
    height: inputHeight
    width: inputWidth
    selectByMouse: true
    echoMode: TextInput.Normal
    selectionColor: config.overlay0
    renderType: Text.NativeRendering
    font {
        family: config.Font
        pointSize: config.FontSize
        bold: true
    }
    color: config.text
    horizontalAlignment: Text.AlignHCenter
    placeholderText: "Username"
    text: userModel.lastUser
    background: Rectangle {
        id: userFieldBackground
        color: config.surface0
        radius: 3
    }
    states: [
        State {
            name: "focused"
            when: userField.activeFocus
            PropertyChanges {
                target: userFieldBackground
                border.width: 1
                border.color: config.teal
                color: config.surface2
            }
        },
        State {
            name: "hovered"
            when: userField.hovered
            PropertyChanges {
                target: userFieldBackground
                border.width: 1
                border.color: config.subtext0
                color: config.surface1
            }
        },
        State {
            name: "normal"
            when: !userFieldBackground.hovered && !userFieldBackground.activeFocus
            PropertyChanges {
                target: userFieldBackground
                border.width: 0
                border.color: "transparent"
            }
        }
    ]
    transitions: Transition {
        PropertyAnimation {
            properties: "color"
            duration: 300
        }
    }
}
