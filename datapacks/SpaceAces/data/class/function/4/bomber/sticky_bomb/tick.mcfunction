## Primary Tick, no reload, no shoot
item replace entity @s hotbar.0 with minecraft:carrot_on_a_stick[item_model="class/bomber/primary",minecraft:custom_name='{"translate":"plasma_grenade_launcher"}',minecraft:lore=['{"color":"white","translate":"plasma_grenade_launcher_lore"}','{"color":"white","italic":false,"text":" - damage: 10"}','{"color":"white","italic":false,"text":" - ammo: 8"}','{"color":"white","italic":false,"text":" - reload with speed: 2.5s"}'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={}]
execute if score @s[scores={shoot=0,SelectedItem=0}] rightClick matches 1.. run function class:4/bomber/sticky_bomb/shoot
execute if score @s SelectedItem matches 0 run scoreboard players reset @s rightClick
