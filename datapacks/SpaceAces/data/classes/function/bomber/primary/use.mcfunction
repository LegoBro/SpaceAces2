item replace entity @s hotbar.0 with minecraft:paper[item_model="bomber/0",minecraft:custom_name='{"translate":"plasma_grenade_launcher"}',minecraft:lore=['{"color":"white","translate":"plasma_grenade_launcher_lore"}','{"color":"white","italic":false,"text":" - damage: 10"}','{"color":"white","italic":false,"text":" - ammo: 8"}','{"color":"white","italic":false,"text":" - reload with speed: 2.5s"}'],minecraft:hide_additional_tooltip={}]
scoreboard players add @s[scores={shoot=1..}] shoot 1

execute if score @s shoot > class.bomber.primary.firerate Numbers run scoreboard players set @s shoot 0