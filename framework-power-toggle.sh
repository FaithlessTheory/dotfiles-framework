#!/bin/bash

# Framework 13 (Intel 12th Gen) Power Toggle Script
# Description: Automatically enables/disables Turbo Boost based on power source.
# Usage: ./framework-power-toggle.sh [battery|ac]

if [ "$1" = "battery" ]; then
    # Disable Turbo Boost (Hardware Level)
    echo "1" > /sys/devices/system/cpu/intel_pstate/no_turbo
    echo "Silence Mode: Turbo Disabled"
else
    # Enable Turbo Boost (Hardware Level)
    echo "0" > /sys/devices/system/cpu/intel_pstate/no_turbo
    echo "Performance Mode: Turbo Enabled"
fi
