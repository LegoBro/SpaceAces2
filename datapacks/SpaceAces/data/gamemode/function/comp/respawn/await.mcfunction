## Awaits a ready for respawn, usually for players that want to change mode...

# If a player is respawning
scoreboard players add @s i 1
# Still waiting?
execute unless score @s i > respawnTime Numbers run return 0

item replace entity @s[nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:8b}]}] hotbar.8 with minecraft:carrot_on_a_stick[item_model=diamond,minecraft:custom_name={color:"white",translate:"respawn_item"},minecraft:lore=[{color:"white",translate:"right_click"}],minecraft:unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]
# Right click?
execute unless score @s rightClick matches 1.. run return 0


function gamemode:respawn
scoreboard players reset @s i
scoreboard players reset @s rightClick

tp @s[team=blue] @n[type=minecraft:marker,tag=blue_spawn_point]

execute if score @s[scores={rightClick=1},team=red,nbt={SelectedItemSlot:8}] i > respawnTime Numbers run tp @s @n[type=minecraft:marker,tag=red_spawn_point]

return 1