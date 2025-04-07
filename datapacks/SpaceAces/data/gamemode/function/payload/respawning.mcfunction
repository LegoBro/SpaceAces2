# If a player is respawning
scoreboard players add @s i 1
execute if score @s i > respawnTime Numbers run item replace entity @s[nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:8b}]}] hotbar.8 with minecraft:carrot_on_a_stick[item_model=respawn_ready,minecraft:custom_name={color:"white",translate:"respawn_item"},minecraft:lore=[{color:"white",translate:"right_click"}],minecraft:unbreakable={show_in_tooltip:0b},tooltip_display={hidden_components:["unbreakable"]}]

execute if score @s[scores={rightClick=1},team=blue,nbt={SelectedItemSlot:8}] i > respawnTime Numbers run tp @s @n[type=minecraft:marker,tag=active_blue_spawn_point]

execute if score @s[scores={rightClick=1},team=red,nbt={SelectedItemSlot:8}] i > respawnTime Numbers run tp @s @n[type=minecraft:marker,tag=active_red_spawn_point]

execute if score @s[scores={rightClick=1},nbt={SelectedItemSlot:8}] i > respawnTime Numbers at @s run function gamemode:respawn
execute if score @s[scores={rightClick=1},nbt={SelectedItemSlot:8}] i > respawnTime Numbers at @s run tp @s ~ ~ ~ 0 0
execute if score @s[scores={rightClick=1},nbt={SelectedItemSlot:8}] i > respawnTime Numbers run scoreboard players reset @s i
scoreboard players reset @s[scores={rightClick=1},nbt={SelectedItemSlot:8}] rightClick

return 1