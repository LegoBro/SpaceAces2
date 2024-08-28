## Commands ran every tick as the players in the lobby
effect give @s minecraft:saturation 100 100 true
# Join spectator if on pad
execute if entity @s[x=7,y=195,z=27,dx=2,dy=3,dz=2] if block ~ ~ ~ minecraft:light_gray_carpet run team join spectator @s

# console
execute if entity @s[scores={console=1..}] run function gamemode:console/dictionary
scoreboard players enable @s console

## Wormhole travelling
scoreboard players enable @s worm_hole
execute if entity @s[scores={worm_hole=1..}] run function gamemode:worm_hole_tp

# Talking to characters
execute if entity @s[scores={talkToCharacter=1..}] as @e[type=minecraft:villager,sort=nearest,limit=1] at @s run function tick:character_dictionary

# Remove heart-beat
execute if score @s lowHealth matches 1.. run scoreboard players reset @s lowHealth

return 1