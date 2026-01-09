#> craftsponge:image/set_image_data
#
# This function sets the image data.
#
# @input $(image_data) {string[][]} The data to set  
# @input $(width) {number} The width of the image  
# @input $(height) {number} The height of the image  
# @input $(background_color) {string} The background color of the image  
# @input $(description) {string[]} The description on the right hand side  
# @writes storage craftsponge:image image_data  
# @writes storage craftsponge:image width  
# @writes storage craftsponge:image height  
# @writes storage craftsponge:image background_color  
# @writes storage craftsponge:image description  
# @writes storage craftsponge:image pixel_character.blank  
# @writes storage craftsponge:image pixel_character.chat  
# @writes storage craftsponge:image pixel_character.lore

data remove storage craftsponge:image image_data
data remove storage craftsponge:image width
data remove storage craftsponge:image height
data remove storage craftsponge:image background_color
data remove storage craftsponge:image description

$data modify storage craftsponge:image image_data set value $(image_data)
$data modify storage craftsponge:image width set value $(width)
$data modify storage craftsponge:image height set value $(height)
$data modify storage craftsponge:image background_color set value "$(background_color)"
$data modify storage craftsponge:image description set value $(description)

data modify storage craftsponge:image pixel_character.blank set value "　"
data modify storage craftsponge:image pixel_character.pixel set value "▌▌"
data modify storage craftsponge:image pixel_character.line_break set value '\n'

function craftsponge:image/process/generate
