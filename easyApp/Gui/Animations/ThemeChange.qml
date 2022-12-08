import QtQuick 2.15

import easyApp.Gui.Style 1.0 as EaStyle

PropertyAnimation {
    duration: EaStyle.Times.themeChange
    alwaysRunToEnd: true
    easing.type: Easing.OutQuint
}
