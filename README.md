# Dotfiles

My personal Linux configuration files.

* **OS** - CachyOS 
* **DE** - KDE Plasma 6
* **Kernel** - 7.2.2-1-cachyos
* **WM** - KWin
* **Shell** - fish
* **Teeminal** - ghostty

## Configs

* **Fish** — shell configuration
* **Ghostty** — terminal configuration
* **Waybar** — status bar configuration and custom workspace script
* **Fastfetch** — system information configuration

## Structure

```text
dotfiles/
├── fastfetch/
│   └── config.jsonc
├── fish/
│   └── config.fish
├── ghostty/
│   └── config.ghostty
└── waybar/
    ├── config
    ├── style.css
    └── workspaces.sh
```

## Restore

Install the required applications first, then copy the configurations:

```bash
cp ~/dotfiles/fish/config.fish ~/.config/fish/
cp ~/dotfiles/ghostty/config.ghostty ~/.config/ghostty/
cp ~/dotfiles/waybar/config ~/.config/waybar/
cp ~/dotfiles/waybar/style.css ~/.config/waybar/
cp ~/dotfiles/waybar/workspaces.sh ~/.config/waybar/
cp ~/dotfiles/fastfetch/config.jsonc ~/.config/fastfetch/
```

Make the Waybar script executable:

```bash
chmod +x ~/.config/waybar/workspaces.sh
```

## Notes

These are personal configuration files from my Linux setup. They may require additional packages or adjustments depending on the Linux distribution and desktop environment.
