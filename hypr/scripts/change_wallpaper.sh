#!/usr/bin/env bash

WALLPAPER_DIR="$HOME/Images/Wallpaper"

if [ ! -d "$WALLPAPER_DIR" ]; then
    notify-send "Wallpaper" "Pasta $WALLPAPER_DIR não encontrada."
    exit 1
fi

# Seleciona uma imagem aleatória (jpg, jpeg ou png)
WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" \) | shuf -n 1)

if [ -n "$WALLPAPER" ]; then
    # Pré-carrega e aplica via hyprctl hyprpaper
    hyprctl hyprpaper preload "$WALLPAPER"
    hyprctl hyprpaper wallpaper ",$WALLPAPER"
    # Descarrega wallpapers antigos da memória para economizar RAM
    hyprctl hyprpaper unload all
    notify-send -i "$WALLPAPER" "Wallpaper" "Papel de parede atualizado!"
fi
