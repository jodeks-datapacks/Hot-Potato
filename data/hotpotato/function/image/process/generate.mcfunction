#> hotpotato:image/process/generate
#
# This function generates the image data.

data modify storage hotpotato:image current.image_data set from storage hotpotato:image image_data
data modify storage hotpotato:image current.description set from storage hotpotato:image description
data modify storage hotpotato:image current.pixel_character set from storage hotpotato:image pixel_character.pixel

# Reset index score
scoreboard players set $index.image_data hotpotato.image 0
# Set width
execute store result score $width hotpotato.image run data get storage hotpotato:image width
# Set height
execute store result score $height hotpotato.image run data get storage hotpotato:image height
# Set length
scoreboard players operation $length hotpotato.image = $width hotpotato.image
scoreboard players operation $length hotpotato.image *= $height hotpotato.image
# Clear remaining entries in tellraw
data remove storage hotpotato:image tellraw

# Add spacing on top
function hotpotato:image/process/append/line_break
# Loop over image data
function hotpotato:image/process/loop_over_image_data
# Add spacing on bottom
function hotpotato:image/process/append/line_break