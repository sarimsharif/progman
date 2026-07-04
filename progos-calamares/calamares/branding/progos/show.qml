/* calamares/branding/progos/show.qml
   Slideshow displayed while Calamares copies files.
   Keep it simple — heavy QML can slow the install. */

import QtQuick 2.0
import calamares.slideshow 1.0

Presentation {
    id: presentation

    function nextSlide() {
        presentation.goToNextSlide()
    }

    Timer {
        id:       slideshowTimer
        interval: 5000
        repeat:   true
        running:  presentation.activatedInCalamares
        onTriggered: presentation.nextSlide()
    }

    // ── Slide 1 ─────────────────────────────────────────────
    Slide {
        anchors.fill: parent
        Rectangle {
            anchors.fill: parent
            color: "#1a1a2e"
            Column {
                anchors.centerIn: parent
                spacing: 20
                Text {
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: "Welcome to ProgOS"
                    color: "white"
                    font.pixelSize: 32
                    font.bold: true
                }
                Text {
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: "Your Arch-based operating system is being installed…"
                    color: "#aaaaaa"
                    font.pixelSize: 16
                }
            }
        }
    }

    // ── Slide 2 ─────────────────────────────────────────────
    Slide {
        anchors.fill: parent
        Rectangle {
            anchors.fill: parent
            color: "#16213e"
            Column {
                anchors.centerIn: parent
                spacing: 20
                Text {
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: "Fast & Lightweight"
                    color: "white"
                    font.pixelSize: 32
                    font.bold: true
                }
                Text {
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: "Built on Arch Linux for maximum performance."
                    color: "#aaaaaa"
                    font.pixelSize: 16
                }
            }
        }
    }

    // ── Slide 3 ─────────────────────────────────────────────
    Slide {
        anchors.fill: parent
        Rectangle {
            anchors.fill: parent
            color: "#0f3460"
            Column {
                anchors.centerIn: parent
                spacing: 20
                Text {
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: "Almost Ready!"
                    color: "white"
                    font.pixelSize: 32
                    font.bold: true
                }
                Text {
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: "Sit tight — this usually takes 5–10 minutes."
                    color: "#aaaaaa"
                    font.pixelSize: 16
                }
            }
        }
    }
}
