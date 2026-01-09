# Copy current pixel
data modify storage craftsponge:image current.pixel_color set \
  from storage craftsponge:image current.image_data[0]
data modify storage craftsponge:image current.description_text set \
  from storage craftsponge:image current.description[0]

scoreboard players add $index.image_data craftsponge.image 1

# Calculate column
scoreboard players operation $index.column craftsponge.image = $index.image_data craftsponge.image
scoreboard players operation $index.column craftsponge.image %= $width craftsponge.image

# Calculate row
scoreboard players operation $index.row craftsponge.image = $index.image_data craftsponge.image
scoreboard players operation $index.row craftsponge.image /= $width craftsponge.image

# Append start spacing
execute if score $index.column craftsponge.image matches 1 run \
  function craftsponge:image/process/append/blank

# Append colored pixel
execute unless data storage craftsponge:image current{pixel_color: ''} run \
  function craftsponge:image/process/append/pixel
# Append background pixel
execute if data storage craftsponge:image current{pixel_color: ''} run \
  function craftsponge:image/process/append/background

# Append description
execute if score $index.column craftsponge.image matches 0 run \
    function craftsponge:image/process/image_end/description

# Remove first element from the image_data array
data remove storage craftsponge:image current.image_data[0]
# Loop over rows
execute if score $index.row craftsponge.image < $height craftsponge.image run \
  function craftsponge:image/process/loop_over_image_data
 