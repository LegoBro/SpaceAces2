## Primary Tick, no reload, no shoot
item replace entity @s hotbar.0 with minecraft:carrot_on_a_stick[minecraft:item_model="seeker/0",minecraft:custom_name='{"translate":"plasma_spreader"}',minecraft:lore=['{"color":"white","translate":"plasma_spreader_lore"}','{"color":"white","italic":false,"text":" - damage: 13"}','{"color":"white","italic":false,"text":" - ammo: 6"}','{"color":"white","italic":false,"text":" - reload with speed: 4s"}'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={}]
execute if score @s[scores={shoot=0,SelectedItem=0}] rightClick matches 1.. run function classes:seeker/primary/shoot
execute if score @s SelectedItem matches 0 run scoreboard players reset @s rightClick
