## Commands for awaiting players (players will have "awaiting" tag)

# this allows the players to toggle between ready
item replace entity @s[tag=!ready] hotbar.8 with carrot_on_a_stick{display:{Name:"{\"translate\":\"not_ready_item\",\"color\":\"white\"}",Lore:["{\"translate\":\"right_click\",\"color\":\"white\"}"]},HideFlags:63,CustomModelData:11000002,Unbreakable:1}
item replace entity @s[tag=ready] hotbar.8 with carrot_on_a_stick{display:{Name:"{\"translate\":\"ready_item\",\"color\":\"white\"}",Lore:["{\"translate\":\"right_click\",\"color\":\"white\"}"]},HideFlags:63,CustomModelData:11000003,Unbreakable:1}
item replace entity @s[team=lobby] hotbar.8 with air
tag @s[team=lobby] remove awaiting
execute as @s[scores={rightClick=1},nbt={SelectedItemSlot:8}] run function gamemode:toggle_ready

# Glowing to those ready
effect give @s[tag=!ready] glowing 1 0 true

# Ready message
title @s[x=8,y=200,z=8,distance=..250,tag=!ready] subtitle {"translate":"ready_message"}
title @s[x=8,y=200,z=8,distance=..250,tag=!ready] title ""
