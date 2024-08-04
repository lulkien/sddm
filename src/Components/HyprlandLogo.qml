/*
    Name: hyprland.png
    Location: assets
    Original image size: 1845x717
    W/H Ratio: 2.57322175732
 */

import QtQuick 2.15

Image {
    id: logo
    readonly property int originalWidth: 1845
    readonly property int originalHeight: 717

    readonly property int scaledWidth: Screen.width * 0.19
    readonly property int scaledHeight: scaledWidth / originalWidth * originalHeight

    asynchronous: true
    smooth: true
    antialiasing: true

    sourceSize {
        width: logo.scaledWidth
        height: logo.scaledHeight
    }
    source: config.Logo
}
