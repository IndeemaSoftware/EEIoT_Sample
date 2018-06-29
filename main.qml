import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.2

//import "qrc:/EEIoT/"

import "qrc:/com/indeema/eeiot/EEIoT/"

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Knob {
        id: knob
        x: 0
        y: 83
        width: 100
        height: 100
        from:0
        to: 100
        reverse: false
    }

    WaterProgress {
        id: waterProgress
        x: 106
        y: 83
        width: 100
        height: 100
        from: 0
        to: 100
    }

    Linear {
        id: linear
        x: 200
        y: 83
        width: 200
        height: 200
        scaleNum: 5
    }

    Slider {
        id: slider
        from: 0
        value: 1
        to: 100

        onMoved: {
            knob.update(slider.value)
            waterProgress.update(slider.value);
            linear.update(slider.value);
        }
    }
}
