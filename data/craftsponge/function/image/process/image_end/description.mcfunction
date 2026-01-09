# Append blank
function craftsponge:image/process/append/blank

data modify storage craftsponge:image tellraw append \
  from storage craftsponge:image current.description_text

# Append blank
function craftsponge:image/process/append/blank

# Append line_break
execute unless score $index.image_data craftsponge.image = $length craftsponge.image \
  run function craftsponge:image/process/append/line_break

# Remove first element from the description
data remove storage craftsponge:image current.description[0]
 