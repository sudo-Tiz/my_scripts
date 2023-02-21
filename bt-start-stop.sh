#!/bin/sh


is_bt_on() {
pidof bluetoothd >/dev/null
}

put_bt_on() {
sudo systemctl start bluetooth && notify-send "Bluetooth" "ON"
}
put_bt_off() {
sudo systemctl stop bluetooth && notify-send "Bluetooth" "OFF"
}



is_bt_on && put_bt_off || put_bt_on
