## Display for ability boost (generated)
execute if entity @s[scores={activate_1=0}] run item replace entity @s hotbar.1 with carrot_on_a_stick
execute if entity @s[scores={activate_1=1..}] run item replace entity @s hotbar.1 with gray_dye
scoreboard players remove @s[scores={activate_1=1..}] activate_1 1
execute if entity @s[scores={activate_1=195}] run function classes:scout/launch/deactivate