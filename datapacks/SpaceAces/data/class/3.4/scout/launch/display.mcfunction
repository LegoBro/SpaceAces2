## Display for ability launch (generated)
execute if entity @s[scores={activate_2=0}] run item replace entity @s hotbar.2 with minecraft:carrot_on_a_stick
execute if entity @s[scores={activate_2=1..}] run item replace entity @s hotbar.2 with minecraft:gray_dye[item_model="class/ability_cooldown"]
scoreboard players remove @s[scores={activate_2=1..}] activate_2 1
execute if entity @s[scores={activate_2=195}] run function class:3.4/scout/launch/deactivate
return 1