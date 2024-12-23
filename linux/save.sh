#!/usr/bin/bash

# Grabbing current date & time.
DATETIME=$(date +"%4Y-%m-%d_%H-%M-%S")

SAV_DIR="/home/rin/Downloads/wineprefix/default/drive_c/users/rin/AppData/LocalLow/RedCandleGames/NineSols"
SAV_BACKUP_DIR="/home/rin/Documents/save_games/9S/NineSols_$DATETIME"

# Creating a new directory & backing up the save file.
mkdir "$SAV_BACKUP_DIR"
cp -r "${SAV_DIR}/"* "${SAV_BACKUP_DIR}/"

exit 0