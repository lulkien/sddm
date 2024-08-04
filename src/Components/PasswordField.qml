import QtQuick 2.15
import QtQuick.Controls 2.15

TextField {
    id: passwordField
    focus: true
    selectByMouse: true
    placeholderText: "Password"
    echoMode: TextInput.Password
    passwordCharacter: "•"
    passwordMaskDelay: config.PasswordShowLastLetter
    selectionColor: config.overlay0
    renderType: Text.NativeRendering
    font.family: config.Font
    font.pointSize: config.FontSize
    font.bold: true
    color: config.text
    horizontalAlignment: TextInput.AlignHCenter
    background: Rectangle {
        id: passFieldBackground
        radius: 3
        color: config.surface0
    }
    states: [
        State {
            name: "focused"
            when: passwordField.activeFocus
            PropertyChanges {
                target: passFieldBackground
                border.width: 1
                border.color: config.teal
                color: config.surface2
            }
        },
        State {
            name: "hovered"
            when: passwordField.hovered
            PropertyChanges {
                target: passFieldBackground
                border.width: 1
                border.color: config.subtext0
                color: config.surface1
            }
        },
        State {
            name: "normal"
            when: !passwordField.hovered && !passwordField.activeFocus
            PropertyChanges {
                target: passFieldBackground
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
