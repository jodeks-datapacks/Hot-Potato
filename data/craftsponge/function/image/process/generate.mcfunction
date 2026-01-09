#> craftsponge:image/process/generate
#
# This function generates the image data.

data modify storage craftsponge:image current.image_data set from storage craftsponge:image image_data
data modify storage craftsponge:image current.description set from storage craftsponge:image description
data modify storage craftsponge:image current.pixel_character set from storage craftsponge:image pixel_character.pixel

# Reset index score
scoreboard players set $index.image_data craftsponge.image 0
# Set width
execute store result score $width craftsponge.image run data get storage craftsponge:image width
# Set height
execute store result score $height craftsponge.image run data get storage craftsponge:image height
# Set length
scoreboard players operation $length craftsponge.image = $width craftsponge.image
scoreboard players operation $length craftsponge.image *= $height craftsponge.image
# Clear remaining entries in tellraw
data remove storage craftsponge:image tellraw

# Add spacing on top
function craftsponge:image/process/append/line_break
# Loop over image data
function craftsponge:image/process/loop_over_image_data
# Add spacing on bottom
function craftsponge:image/process/append/line_break