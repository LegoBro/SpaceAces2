## Awaits a ready for respawn, usually for players that want to change mode...

# If a player is respawning
scoreboard players add @s i 1
# Still waiting?

scoreboard players operation seconds Numbers = @s respawnTime
scoreboard players operation seconds Numbers -= @s i
scoreboard players operation seconds Numbers /= 20 Numbers

execute if score seconds Numbers matches 1.. run title @s subtitle ["Respawning in ",{score:{name:"seconds",objective:"Numbers"}}, "s"]

title @s[x=8,y=200,z=8,distance=..250,tag=in_game,tag=!escape] title ""

execute unless score @s i > @s respawnTime run return 0

execute unless items entity @s hotbar.8 carrot_on_a_stick run item replace entity @s hotbar.8 with minecraft:carrot_on_a_stick[item_model=diamond,minecraft:custom_name={color:"white",translate:"respawn_item"},minecraft:lore=[{color:"white",translate:"right_click"}],minecraft:unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]
execute unless score seconds Numbers matches 1.. run title @s[x=8,y=200,z=8,distance=..250,tag=in_game,tag=!escape] subtitle {translate:"respawn_message"}
# Right click?
execute unless score @s rightClick matches 1.. run return 0

item replace entity @s hotbar.8 with air
function gamemode:respawn
scoreboard players reset @s i
scoreboard players reset @s rightClick


## Progressive spawnpoints
execute if entity @s[team=blue] at @n[type=minecraft:marker,tag=blue_spawn_point,scores={gamemode.spawnpoint.progress=0}] run return run tp @s ~ ~ ~

execute if entity @s[team=red] at @n[type=minecraft:marker,tag=red_spawn_point,scores={gamemode.spawnpoint.progress=0}] run return run tp @s ~ ~ ~

execute if entity @s[team=blue] at @n[type=minecraft:marker,tag=blue_spawn_point] run return run tp @s ~ ~ ~
execute if entity @s[team=red] at @n[type=minecraft:marker,tag=red_spawn_point] run return run tp @s ~ ~ ~

return 1