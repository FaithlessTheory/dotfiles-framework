# --- openSUSE Tumbleweed Update ---
# One-letter update: Repos -> OS Upgrade -> Flatpaks -> Reboot Check
alias u='sudo zypper ref && sudo zypper dup --non-interactive && flatpak update -y && zypper needs-rebooting && zypper ps -s'

# --- Hardware Helpers ---
alias turbo-status='cat /sys/devices/system/cpu/intel_pstate/no_turbo'
