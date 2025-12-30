#!/bin/bash
# Framework 13 (Intel 12th Gen) Power Toggle
# Automatically locks CPU to base clock on battery to stay silent.

if [ "$1" = "battery" ]; then
    # Disable Turbo (Hardware)
    echo "1" > /sys/devices/system/cpu/intel_pstate/no_turbo
    echo "Silence Mode: Turbo Disabled"
else
    # Enable Turbo (Hardware)
    echo "0" > /sys/devices/system/cpu/intel_pstate/no_turbo
    echo "Performance Mode: Turbo Enabled"
fi
