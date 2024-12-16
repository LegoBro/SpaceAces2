# If a player is respawning
scoreboard players add @s i 1
execute if score @s i > respawnTime Numbers run item replace entity @s[nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:8b}]}] hotbar.8 with minecraft:carrot_on_a_stick[item_model=respawn_ready,minecraft:custom_name='{"color":"white","translate":"respawn_item"}',minecraft:lore=['{"color":"white","translate":"right_click"}'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={}]

execute if score @s[scores={rightClick=1},team=blue,nbt={SelectedItemSlot:8}] i > respawnTime Numbers if score blueCapture Numbers matches 0..80000 run tp @s @e[type=minecraft:item_frame,tag=forward_blue_spawn,limit=1]
execute if score @s[scores={rightClick=1},team=blue,nbt={SelectedItemSlot:8}] i > respawnTime Numbers if score blueCapture Numbers matches 80001..160000 run tp @s @e[type=minecraft:item_frame,tag=middle_blue_spawn,limit=1]
execute if score @s[scores={rightClick=1},team=blue,nbt={SelectedItemSlot:8}] i > respawnTime Numbers if score blueCapture Numbers matches 160001.. run tp @s @e[type=minecraft:item_frame,tag=blue_spawn,limit=1]
execute if score @s[scores={rightClick=1},team=red,nbt={SelectedItemSlot:8}] i > respawnTime Numbers if score redCapture Numbers matches 0..80000 run tp @s @e[type=minecraft:item_frame,tag=forward_red_spawn,limit=1]
execute if score @s[scores={rightClick=1},team=red,nbt={SelectedItemSlot:8}] i > respawnTime Numbers if score redCapture Numbers matches 80001..160000 run tp @s @e[type=minecraft:item_frame,tag=middle_red_spawn,limit=1]
execute if score @s[scores={rightClick=1},team=red,nbt={SelectedItemSlot:8}] i > respawnTime Numbers if score redCapture Numbers matches 160001.. run tp @s @e[type=minecraft:item_frame,tag=red_spawn,limit=1]
execute if score @s[scores={rightClick=1},nbt={SelectedItemSlot:8}] i > respawnTime Numbers at @s run function gamemode:respawn
execute if score @s[scores={rightClick=1},nbt={SelectedItemSlot:8}] i > respawnTime Numbers at @s run tp @s ~ ~ ~ 0 0
execute if score @s[scores={rightClick=1},nbt={SelectedItemSlot:8}] i > respawnTime Numbers run scoreboard players reset @s i
scoreboard players reset @s[scores={rightClick=1},nbt={SelectedItemSlot:8}] rightClick

return 1