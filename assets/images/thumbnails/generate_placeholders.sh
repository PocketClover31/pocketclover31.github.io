# This script creates simple placeholder thumbnail images for posts
# It requires ImageMagick to be installed but avoids font issues

# Colors - using RGB values instead of named colors
declare -a colors=(
  "30,144,255"  # DodgerBlue
  "255,99,71"   # Tomato
  "60,179,113"  # MediumSeaGreen
  "106,90,205"  # SlateBlue
  "255,215,0"   # Gold
  "255,127,80"  # Coral
  "218,112,214" # Orchid
  "0,128,128"   # Teal
  "244,164,96"  # SandyBrown
  "147,112,219" # MediumPurple
)

# Create thumbnails for each post
count=0
for post in $(ls /home/tgiven/github/pocketclover31.github.io/_posts/*.md); do
    filename=$(basename "$post" .md)
    
    # Choose a color from the array
    color_index=$((count % ${#colors[@]}))
    color=${colors[$color_index]}
    
    # Create a simple colored rectangle without text
    magick -size 800x450 xc:"rgb($color)" \
        "/home/tgiven/github/pocketclover31.github.io/assets/images/thumbnails/$filename.jpg"
    
    echo "Created thumbnail for $filename"
    ((count++))
done

echo "Created $count thumbnail images"
