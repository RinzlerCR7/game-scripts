#!/usr/bin/bash

# Looking for the latest backup save file.
SAV_STORAGE_DIR="/home/rin/Documents/save_games/9S"
cd $SAV_STORAGE_DIR
SAV_BACKUP_DIR="${SAV_STORAGE_DIR}/$(ls -u | head -1)"

SAV_DIR="/home/rin/Downloads/wineprefix/default/drive_c/users/rin/AppData/LocalLow/RedCandleGames/NineSols"
# SAV_DIR="/home/rin/Documents/scripts/dummy"

# Loading the latest backup save file.
cp -r "${SAV_BACKUP_DIR}/"* "${SAV_DIR}/"

exit 0