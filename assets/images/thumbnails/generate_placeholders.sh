#!/bin/bash

# This script creates placeholder thumbnail images for posts
# It requires ImageMagick to be installed

# Colors
declare -a colors=("DodgerBlue" "Tomato" "MediumSeaGreen" "SlateBlue" "Gold" "Coral" "Orchid" "Teal" "SandyBrown" "MediumPurple")

# Create thumbnails for each post
count=0
for post in $(ls /home/tgiven/github/pocketclover31.github.io/_posts/*.md); do
    filename=$(basename "$post" .md)
    # Extract post title component (after date)
    title=$(echo "$filename" | sed 's/^[0-9]\{4\}-[0-9]\{2\}-[0-9]\{2\}-//')
    
    # Choose a color
    color=${colors[$((count % ${#colors[@]}))]}
    
    # Create image
    convert -size 800x450 -gravity center -background "$color" \
        -fill white -pointsize 30 caption:"$title" \
        "/home/tgiven/github/pocketclover31.github.io/assets/images/thumbnails/$filename.jpg"
    
    ((count++))
done

echo "Created $count thumbnail images"