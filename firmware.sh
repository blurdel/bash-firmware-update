#!/bin/bash

fwupdmgr --version
# fwupdmgr get-devices

fwupdmgr refresh --force
fwupdmgr get-updates

if [[ $1 == "?" ]]; then
    fwupdmgr --help
    exit
fi

if [[ "${1}" == "update" ]]; then
    # update [DEVICE-ID|GUID]   
    fwupdmgr update
fi

echo "Done."
