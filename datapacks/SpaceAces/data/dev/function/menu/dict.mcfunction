## Dictonary
playsound minecraft:ui.button.click

execute if score @s dev matches 1000 run function dev:menu/spawnpoints/toggle
execute if score @s dev matches 2000 run function dev:menu/gamemode/toggle
execute if score @s dev matches 2010 run function dev:menu/gamemode/payload_toggle
execute if score @s dev matches 2020 run function dev:menu/gamemode/setback_toggle
#execute if score @s dev matches 1000 run function dev:menu/spawnpoints/toggle

# 1, or everything else
return run function dev:menu/main