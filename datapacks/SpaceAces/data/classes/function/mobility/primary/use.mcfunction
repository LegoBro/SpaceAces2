item replace entity @s hotbar.0 with minecraft:paper[minecraft:item_model="mobility/0",minecraft:custom_name='{"translate":"unstable_surge_rifle"}',minecraft:lore=['{"color":"white","translate":"unstable_surge_rifle_lore"}','{"color":"white","italic":false,"text":" - damage: 15"}','{"color":"white","italic":false,"text":" - ammo: 15"}','{"color":"white","italic":false,"text":" - reload with speed: 2.5s"}'],minecraft:hide_additional_tooltip={}]
scoreboard players add @s[scores={shoot=1..}] shoot 1

execute if score @s shoot matches 3 run function classes:mobility/primary/shoot
execute if score @s shoot matches 4 run function classes:mobility/primary/shoot

execute if score @s shoot > class.mobility.primary.firerate Numbers run scoreboard players set @s shoot 0
