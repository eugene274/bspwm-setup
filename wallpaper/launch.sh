#!/bin/bash

SENSORS=/usr/bin/sensors
CONVERT=/usr/bin/convert
FEH=/usr/bin/feh


cd $XDG_CONFIG_HOME/wallpaper


TIMESTAMP_X=100
TIMESTAMP_Y=100

SENSORS_X=100
SENSORS_Y=200

RAM_X=100
RAM_Y=800

DF_X=1700
DF_Y=200

PIDFILE=$(pwd)/pid

function timestamp_report() {
    echo "Generated at $(date)"
}

function sensors_report() {
    echo "$SENSORS"
    echo
    $SENSORS
}

function ram_report() {
    echo "free -mh"
    echo
    free -mh
}

function df_report() {
    echo "df -h"
    echo
    df -h
}

#while true; do
#   $CONVERT \
#       -pointsize 24 \
#       -draw "text $TIMESTAMP_X,$TIMESTAMP_Y '$(timestamp_report)'" -fill white\
#        -pointsize 18 \
#        -draw "text $SENSORS_X,$SENSORS_Y '$(sensors_report)'" -fill white\
#        -draw "text $RAM_X,$RAM_Y '$(ram_report)'" -fill white\
#        -draw "text $DF_X,$DF_Y '$(df_report)'" -fill white\
#        base.png temp_wp.png
    $FEH --bg-scale $(pwd)/1626183341_16-kartinkin-com-p-panelka-tekstura-krasivo-20.jpg
#    sleep 10
#done    
