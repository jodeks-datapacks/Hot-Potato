scoreboard objectives add hotpotato.image dummy

scoreboard objectives add hotpotato.root dummy

team add hotpotato.players
team modify hotpotato.players color gold
team modify hotpotato.players displayName [{"text":"Hot Potato Players","color":"gold"}]

# Print the image
function hotpotato:config/image

schedule function hotpotato:app/scheduler 1s