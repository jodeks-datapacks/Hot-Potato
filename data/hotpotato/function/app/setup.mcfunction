scoreboard objectives add hotpotato.image dummy

scoreboard objectives add hotpotato.root dummy

team add hotpotato.players

# Print the image
function hotpotato:config/image

schedule function hotpotato:app/scheduler 1s