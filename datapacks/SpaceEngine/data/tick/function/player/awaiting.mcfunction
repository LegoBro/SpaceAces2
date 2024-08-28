## Commands for awaiting players (players will have "awaiting" tag)

# this allows the players to toggle between ready
item replace entity @s[tag=!ready] hotbar.8 with minecraft:carrot_on_a_stick[minecraft:custom_model_data=11000002,minecraft:custom_name='{"color":"white","translate":"not_ready_item"}',minecraft:lore=['{"color":"white","translate":"right_click"}'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={}]
item replace entity @s[tag=ready] hotbar.8 with minecraft:carrot_on_a_stick[minecraft:custom_model_data=11000003,minecraft:custom_name='{"color":"white","translate":"ready_item"}',minecraft:lore=['{"color":"white","translate":"right_click"}'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={}]
item replace entity @s[team=lobby] hotbar.8 with minecraft:air
tag @s[team=lobby] remove awaiting
execute if entity @s[scores={rightClick=1},nbt={SelectedItemSlot:8}] run function gamemode:toggle_ready

# Glowing to those ready
effect give @s[tag=!ready] minecraft:glowing 1 0 true

# Ready message
title @s[x=8,y=200,z=8,distance=..250,tag=!ready] subtitle {"translate":"ready_message"}
title @s[x=8,y=200,z=8,distance=..250,tag=!ready] title ""

return 1