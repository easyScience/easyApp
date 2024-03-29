import QtQuick 2.15

import easyApp.Gui.Style 1.0 as EaStyle

Image {
    id: control
    property string link: ""

    fillMode: Image.PreserveAspectFit
    antialiasing: true

    MouseArea {
         id: imageLink
         enabled: true
         anchors.fill: parent
         cursorShape: Qt.PointingHandCursor
         onClicked: Qt.openUrlExternally(link)
    } // MouseArea
}
