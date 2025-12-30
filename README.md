Framework 13 (Intel 12th Gen) - openSUSE Tumbleweed Configs
This repository contains optimization scripts and configuration files to improve battery life, thermal performance, and user experience on the Framework 13 running openSUSE Tumbleweed.

Key Features
Silence Mode: A hardware-level toggle that disables Intel Turbo Boost on battery. This keeps the laptop cool and the fans silent during web browsing and homelab management.

Optimized Updates: A one-letter alias (u) that handles system-wide updates (Zypper + Flatpak) without password prompts.

Convenient UX: Polkit rules to allow Discover and Flatpak updates without repeated authentication.

Repository Structure
/scripts: Hardware control scripts (Turbo Boost toggle).

/shell: Bash aliases and shell-specific customizations.

/os: Reference files for sudoers.d and polkit rules.

Installation
1. Hardware Power Script
Move scripts/framework-power-toggle.sh to /usr/local/bin/.

Make it executable:

Bash

sudo chmod +x /usr/local/bin/framework-power-toggle.sh
Add the script to KDE System Settings > Power Management > Energy Saving under the "Run Script" section for both AC and Battery profiles.

2. Update Alias
Append the contents of shell/aliases.sh to your ~/.bashrc and reload:

Bash

source ~/.bashrc
3. Passwordless Permissions (Sudoers)
To allow the update alias and power script to run without a password, add the following to /etc/sudoers.d/custom-rules using sudo visudo -f /etc/sudoers.d/custom-rules:

Plaintext

yourusername ALL=(ALL) NOPASSWD: /usr/bin/zypper dup --non-interactive, /usr/bin/zypper ref
yourusername ALL=(ALL) NOPASSWD: /usr/local/bin/framework-power-toggle.sh
Hardware Notes
CPU: Intel 12th Gen (i7-1260P / i5-1240P)

Wi-Fi: Recommended hardware upgrade to Intel BE200 for Wi-Fi 7 support.

Battery: Optimization focus is on disabling Turbo Boost to mitigate 12th Gen efficiency spikes.

Maintained by your Framework 13 user profile.
