import QtQuick 2.15

QtObject {

    signal updateFound
    signal updateNotFound
    signal updateFailed

    property bool silentCheck: false
    property string webVersion: ""
    property string releaseNotes: ""

    function checkUpdate() {}
    function installUpdate() {}

}
