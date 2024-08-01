# If a player is respawning
scoreboard players add @s i 1
execute if score @s i > respawnTime Numbers run item replace entity @s[nbt=!{Inventory:[{Slot:8b,id:"minecraft:carrot_on_a_stick"}]}] hotbar.8 with carrot_on_a_stick{display:{Name:"{\"translate\":\"respawn_item\",\"color\":\"white\"}",Lore:["{\"translate\":\"right_click\",\"color\":\"white\"}"]},HideFlags:63,CustomModelData:11000003,Unbreakable:1}

execute if score @s[team=blue,scores={rightClick=1},nbt={SelectedItemSlot:8}] i > respawnTime Numbers if score blueCapture Numbers matches 0..80000 run tp @s @e[type=item_frame,tag=forward_blue_spawn,limit=1]
execute if score @s[team=blue,scores={rightClick=1},nbt={SelectedItemSlot:8}] i > respawnTime Numbers if score blueCapture Numbers matches 80001..160000 run tp @s @e[type=item_frame,tag=middle_blue_spawn,limit=1]
execute if score @s[team=blue,scores={rightClick=1},nbt={SelectedItemSlot:8}] i > respawnTime Numbers if score blueCapture Numbers matches 160001.. run tp @s @e[type=item_frame,tag=blue_spawn,limit=1]
execute if score @s[team=red,scores={rightClick=1},nbt={SelectedItemSlot:8}] i > respawnTime Numbers if score redCapture Numbers matches 0..80000 run tp @s @e[type=item_frame,tag=forward_red_spawn,limit=1]
execute if score @s[team=red,scores={rightClick=1},nbt={SelectedItemSlot:8}] i > respawnTime Numbers if score redCapture Numbers matches 80001..160000 run tp @s @e[type=item_frame,tag=middle_red_spawn,limit=1]
execute if score @s[team=red,scores={rightClick=1},nbt={SelectedItemSlot:8}] i > respawnTime Numbers if score redCapture Numbers matches 160001.. run tp @s @e[type=item_frame,tag=red_spawn,limit=1]
execute if score @s[scores={rightClick=1},nbt={SelectedItemSlot:8}] i > respawnTime Numbers at @s run function gamemode:respawn
execute if score @s[scores={rightClick=1},nbt={SelectedItemSlot:8}] i > respawnTime Numbers at @s run tp @s ~ ~ ~ 0 0
execute if score @s[scores={rightClick=1},nbt={SelectedItemSlot:8}] i > respawnTime Numbers run scoreboard players reset @s i
scoreboard players reset @s[scores={rightClick=1},nbt={SelectedItemSlot:8}] rightClick
