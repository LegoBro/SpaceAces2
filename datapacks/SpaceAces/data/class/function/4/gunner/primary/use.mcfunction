item replace entity @s hotbar.0 with minecraft:paper[minecraft:item_model="soldier/0",minecraft:item_name='{"translate":"surge_rifle"}',minecraft:lore=['{"color":"white","italic":false,"translate":"surge_rifle_lore"}','{"color":"white","italic":false,"text":" - damage: 12"}','{"color":"white","italic":false,"text":" - ammo: 20"}','{"color":"white","italic":false,"text":" - reload with speed: 2.5s"}'],minecraft:hide_additional_tooltip={}]
scoreboard players add @s[scores={shoot=1..}] shoot 1

execute if score @s shoot matches 4 run function class:soldier/primary/shoot

execute if score @s shoot > class.soldier.primary.firerate Numbers run scoreboard players set @s shoot 0