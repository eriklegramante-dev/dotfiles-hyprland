<div align="center">

# 🌧️ .dotfiles // lo-fi rain

*Minimalist, aesthetic & cohesive Arch Linux + Hyprland setup on a ThinkPad.*

[![Arch Linux](https://img.shields.io/badge/OS-Arch%20Linux-1793D1?style=flat-square&logo=arch-linux&logoColor=white)](https://archlinux.org)
[![Hyprland](https://img.shields.io/badge/WM-Hyprland-00acc1?style=flat-square&logo=wayland&logoColor=white)](https://hyprland.org)
[![Theme](https://img.shields.io/badge/aesthetic-lo--fi%20rain-3b4252?style=flat-square)](https://github.com/eriklegramante-dev/dotfiles)

---

</div>

## 🌌 Overview

Personal dotfiles crafted for a distraction-free, rainy lo-fi workspace. Featuring a seamless boot transition, floating translucent UI elements, and a unified cold pastel palette.

* **Device:** ThinkPad
* **OS:** Arch Linux
* **Compositor:** Hyprland
* **Status Bar:** Waybar (pill layout, blurred translucent background)
* **Wallpaper:** Hyprpaper (lo-fi rainy cityscapes)
* **Lockscreen:** Hyprlock
* **Boot Chain:** Silent TTY boot with Secure Boot compliance via Shim/MOK

---

## 🎨 Color Palette (Rainy Dusk)

| Name | Hex | Preview |
| :--- | :--- | :--- |
| **Deep Night** | `#1e1e2e` | ![#1e1e2e](https://via.placeholder.com/15/1e1e2e/000000?text=+) |
| **Slate Gray** | `#313244` | ![#313244](https://via.placeholder.com/15/313244/000000?text=+) |
| **Rain Blue** | `#89b4fa` | ![#89b4fa](https://via.placeholder.com/15/89b4fa/000000?text=+) |
| **Mist Teal** | `#94e2d5` | ![#94e2d5](https://via.placeholder.com/15/94e2d5/000000?text=+) |
| **Cloud Foam** | `#cdd6f4` | ![#cdd6f4](https://via.placeholder.com/15/cdd6f4/000000?text=+) |

---

## 📂 Repository Structure

```text
~/dotfiles/
├── hypr/
│   ├── hyprland.lua      # Window manager rules, animations & keybindings
│   ├── hyprlock.conf     # Frosted glass lockscreen layout
│   ├── hyprpaper.conf    # Preloaded wallpapers
│   └── scripts/
│       └── wallpaper.sh  # Display synchronization & wallpaper daemon
├── waybar/
│   ├── config.jsonc      # Pill-style module composition
│   └── style.css         # Waybar styling & blur effects
└── README.md
```

---

## ⚙️ Installation

1. **Clone repository:**
   ```bash
   git clone git@github.com:eriklegramante-dev/dotfiles.git ~/dotfiles
   cd ~/dotfiles
   ```

2. **Link configurations (`~/.config`):**
   ```bash
   ln -s ~/dotfiles/hypr ~/.config/hypr
   ln -s ~/dotfiles/waybar ~/.config/waybar
   ```

3. **Make scripts executable:**
   ```bash
   chmod +x ~/dotfiles/hypr/scripts/*.sh
   ```

---

## 🔐 Secure Boot & Boot Chain Note

This configuration runs on hardware restricted by a UEFI Supervisor Password. Instead of disabling Secure Boot, the system maintains cryptographic integrity by bootstrapping the bootloader using the **Shim / MOK (Machine Owner Key)** chain of trust:

1. UEFI validates Microsoft 3rd-Party CA signed **Shim**.
2. Shim validates the registered **MOK**.
3. Bootloader (`.efi`) executed securely with hardware enforcement intact.

---

<div align="center">

*Stay warm. Keep coding.* ☕🌧️

</div>