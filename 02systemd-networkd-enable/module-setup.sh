#!/bin/bash

# called by dracut
check() {
    [[ $mount_needs ]] && return 1

    return 255
}

# called by dracut
depends() {
    echo "systemd-networkd"
}

installkernel() {
    return 0
}

# called by dracut
install() {
    inst_simple "${moddir}/20-wired.network" "/etc/systemd/network/20-wired.network"
}
