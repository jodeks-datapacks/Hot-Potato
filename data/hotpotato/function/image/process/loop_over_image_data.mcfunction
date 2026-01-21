# Copy current pixel
data modify storage hotpotato:image current.pixel_color set \
  from storage hotpotato:image current.image_data[0]
data modify storage hotpotato:image current.description_text set \
  from storage hotpotato:image current.description[0]

scoreboard players add $index.image_data hotpotato.image 1

# Calculate column
scoreboard players operation $index.column hotpotato.image = $index.image_data hotpotato.image
scoreboard players operation $index.column hotpotato.image %= $width hotpotato.image

# Calculate row
scoreboard players operation $index.row hotpotato.image = $index.image_data hotpotato.image
scoreboard players operation $index.row hotpotato.image /= $width hotpotato.image

# Append start spacing
execute if score $index.column hotpotato.image matches 1 run \
  function hotpotato:image/process/append/blank

# Append colored pixel
execute unless data storage hotpotato:image current{pixel_color: ''} run \
  function hotpotato:image/process/append/pixel
# Append background pixel
execute if data storage hotpotato:image current{pixel_color: ''} run \
  function hotpotato:image/process/append/background

# Append description
execute if score $index.column hotpotato.image matches 0 run \
    function hotpotato:image/process/image_end/description

# Remove first element from the image_data array
data remove storage hotpotato:image current.image_data[0]
# Loop over rows
execute if score $index.row hotpotato.image < $height hotpotato.image run \
  function hotpotato:image/process/loop_over_image_data
 