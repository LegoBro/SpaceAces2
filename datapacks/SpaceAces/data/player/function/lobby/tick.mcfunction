## Commands ran every tick as the players in the lobby

tag @s remove spectator
tag @s remove team_spectator

effect give @s minecraft:saturation 100 100 true
# Join spectator if on pad
execute if entity @s[x=7,y=195,z=27,dx=2,dy=3,dz=2] if block ~ ~ ~ minecraft:light_gray_carpet run function player:spectator/load


execute if entity @s[x=4,y=195,z=8,dx=2,dy=3,dz=2] run function player:team/join_blue

execute if entity @s[x=10,y=195,z=8,dx=2,dy=3,dz=2] run function player:team/join_red

# console
execute if entity @s[scores={console=1..}] run function gamemode:console/dictionary
scoreboard players enable @s console

## Wormhole travelling
scoreboard players enable @s worm_hole
execute if entity @s[scores={worm_hole=1..}] run function gamemode:worm_hole_tp

# Talking to characters
execute if entity @s[scores={talkToCharacter=1..}] as @e[type=minecraft:villager,sort=nearest,limit=1] at @s run function tick:character_dictionary

# Remove heart-beat
execute if score @s id matches 0.. run scoreboard players reset @s id
execute if score @s lowHealth matches 1.. run scoreboard players reset @s lowHealth

return 1