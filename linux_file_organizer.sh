#!/bin/bash

# ============================================
# Simple File Organizer with if-else
# ============================================

# Define source and destination directories
DOWNLOADS="$HOME/Downloads"
DOCS="$HOME/Documents"
PICS="$HOME/Pictures"
VIDEOS="$HOME/Videos"
ARCHIVES="$HOME/Archives"
OTHERS="$HOME/Misc"

# Create folders if they don't exist
mkdir -p "$DOCS" "$PICS" "$VIDEOS" "$ARCHIVES" "$OTHERS"

# Loop through files in Downloads
for file in "$DOWNLOADS"/*; do
    if [ -f "$file" ]; then
        if [[ "$file" == *.pdf || "$file" == *.docx || "$file" == *.txt ]]; then
            mv "$file" "$DOCS"
        elif [[ "$file" == *.jpg || "$file" == *.jpeg || "$file" == *.png ]]; then
            mv "$file" "$PICS"
        elif [[ "$file" == *.mp4 || "$file" == *.mkv ]]; then
            mv "$file" "$VIDEOS"
        elif [[ "$file" == *.zip || "$file" == *.tar.gz || "$file" == *.rar ]]; then
            mv "$file" "$ARCHIVES"
        else
            mv "$file" "$OTHERS"
        fi
    fi
done

echo "Files organized successfully!"