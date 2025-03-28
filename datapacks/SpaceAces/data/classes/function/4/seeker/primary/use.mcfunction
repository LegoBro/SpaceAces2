item replace entity @s hotbar.0 with minecraft:paper[minecraft:item_model="seeker/0",minecraft:custom_name='{"translate":"plasma_spreader"}',minecraft:lore=['{"color":"white","translate":"plasma_spreader_lore"}','{"color":"white","italic":false,"text":" - damage: 13"}','{"color":"white","italic":false,"text":" - ammo: 6"}','{"color":"white","italic":false,"text":" - reload with speed: 4s"}'],minecraft:hide_additional_tooltip={}]
scoreboard players add @s[scores={shoot=1..}] shoot 1

execute if score @s shoot > class.seeker.primary.firerate Numbers run scoreboard players set @s shoot 0