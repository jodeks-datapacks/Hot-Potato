# Append blank
function hotpotato:image/process/append/blank

data modify storage hotpotato:image tellraw append \
  from storage hotpotato:image current.description_text

# Append blank
function hotpotato:image/process/append/blank

# Append line_break
execute unless score $index.image_data hotpotato.image = $length hotpotato.image \
  run function hotpotato:image/process/append/line_break

# Remove first element from the description
data remove storage hotpotato:image current.description[0]
 