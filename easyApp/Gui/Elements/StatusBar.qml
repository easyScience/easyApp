import QtQuick 2.15
import QtQuick.Controls 2.15

import easyApp.Gui.Style 1.0 as EaStyle
import easyApp.Gui.Animations 1.0 as EaAnimations
import easyApp.Gui.Elements 1.0 as EaElements

Rectangle {
    id: statusBar

    property alias model: listView.model
    property alias fittingInProgress: fittingInProgressLabel.running

    width: parent.width
    height: parent.height

    color: EaStyle.Colors.statusBarBackground
    Behavior on color { EaAnimations.ThemeChange {} }

    // Status bar main content
    ListView {
        id: listView

        width: statusBar.width
        height: statusBar.height
        spacing: EaStyle.Sizes.fontPixelSize
        orientation: ListView.Horizontal

        model: ListModel {
            ListElement {
                label: "Label1"
                value: "Value1"
            }
            ListElement {
                label: "Label2"
                value: "Value2"
            }
        }

        delegate: EaElements.Label {
            topPadding: (statusBar.height - 3 / 2 * font.pixelSize) * 0.5
            leftPadding: font.pixelSize
            color: EaStyle.Colors.statusBarForeground
            text: model.label + ": " + model.value
        }
    }

    // Fitting label
    EaElements.RunningLabel {
        id: fittingInProgressLabel
        text: "Fitting in progress"
        ///running: !ExGlobals.Constants.proxy.fitting.isFitFinished
    }

    // Status bar top border
    Rectangle {
        anchors.top: statusBar.top
        anchors.left: statusBar.left
        anchors.right: statusBar.right

        height: 1//EaStyle.Sizes.borderThickness

        color: EaStyle.Colors.appBarBorder
        Behavior on color { EaAnimations.ThemeChange {} }
    }

}
