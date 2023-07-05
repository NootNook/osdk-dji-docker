#!/bin/bash

docker run -it \
    --rm \
    --device="/dev/ttyUSB0" \
    --volume="$(pwd)/Onboard-SDK":"/home/Onboard-SDK" \
    --workdir="/home/Onboard-SDK/build/bin" \
    ws-onboard-dji \
    bash