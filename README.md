# Framework 13 (Intel 12th Gen) - openSUSE Tumbleweed Configs

This repository contains optimization scripts and configuration files to improve battery life, thermal performance, and user experience on the Framework 13 running openSUSE Tumbleweed.

## Key Features

- **Silence Mode**: A hardware-level toggle that disables Intel Turbo Boost on battery. This keeps the laptop cool and the fans silent during web browsing and homelab management.
- **Optimized Updates**: A one-letter alias (`u`) that handles system-wide updates (Zypper + Flatpak) without password prompts.
- **Convenient UX**: Polkit rules to allow Discover and Flatpak updates without repeated authentication.

## Repository Structure

- `/scripts`: Hardware control scripts (Turbo Boost toggle).
- `/shell`: Bash aliases and shell-specific customizations.
- `/os`: Reference files for `sudoers.d` and `polkit` rules.
