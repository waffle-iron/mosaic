import QtQuick 2.7
import QtQuick.Controls 2.0
import MoMosaic 1.0
import QtQuick.Window 2.0


ApplicationWindow {
    id: mainWindow
    width: 900
    height: 650

    SwipeView {
        id: swipeView
        currentIndex: tabBar.currentIndex
        anchors.fill: parent
        InputSelection {}
        MosaicMonitor {}
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex
        TabButton {
            text: qsTr("select inputs")
            onPressed: {
                mainDriver.stop()
            }
        }
        TabButton {
            text: qsTr("show mosaic")
            onPressed: {
                mainDriver.start()
            }
        }
    }
}
