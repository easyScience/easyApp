import QtCharts 2.15

import easyApp.Gui.Style 1.0 as EaStyle

AreaSeries {
    opacity: 0.5

    color: EaStyle.Colors.themeAccent

    borderWidth: 1.5
    borderColor: color //Qt.darker(color, 1.1)
}
