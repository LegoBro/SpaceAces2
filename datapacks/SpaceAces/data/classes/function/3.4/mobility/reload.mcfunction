## Used when reloading (generated)
execute if score @s totalShots matches 15.. run scoreboard players set @s reload 0
item replace entity @s[scores={reload=0..4}] hotbar.0 with minecraft:golden_hoe[item_model="mobility/0",minecraft:damage=29,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=4..8}] hotbar.0 with minecraft:golden_hoe[item_model="mobility/0",minecraft:damage=27,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=8..11}] hotbar.0 with minecraft:golden_hoe[item_model="mobility/0",minecraft:damage=25,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=11..15}] hotbar.0 with minecraft:golden_hoe[item_model="mobility/0",minecraft:damage=22,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=15..18}] hotbar.0 with minecraft:golden_hoe[item_model="mobility/0",minecraft:damage=20,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=18..22}] hotbar.0 with minecraft:golden_hoe[item_model="mobility/0",minecraft:damage=18,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=22..25}] hotbar.0 with minecraft:golden_hoe[item_model="mobility/0",minecraft:damage=16,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=25..29}] hotbar.0 with minecraft:golden_hoe[item_model="mobility/0",minecraft:damage=13,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=29..33}] hotbar.0 with minecraft:golden_hoe[item_model="mobility/0",minecraft:damage=11,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=33..36}] hotbar.0 with minecraft:golden_hoe[item_model="mobility/0",minecraft:damage=9,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=36..40}] hotbar.0 with minecraft:golden_hoe[item_model="mobility/0",minecraft:damage=6,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=40..43}] hotbar.0 with minecraft:golden_hoe[item_model="mobility/0",minecraft:damage=4,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=43..47}] hotbar.0 with minecraft:golden_hoe[item_model="mobility/0",minecraft:damage=2,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=47..50}] hotbar.0 with minecraft:golden_hoe[item_model="mobility/0",minecraft:damage=0,minecraft:custom_name='{"translate":"reloading"}']
effect give @s[scores={reload=1}] minecraft:hunger 1 100 true
scoreboard players add @s[scores={reload=1..}] reload 1
scoreboard players set @s[scores={reload=50..}] totalShots 15
execute if score @s reload matches 50.. run playsound minecraft:gun.reload hostile @a ~ ~ ~
scoreboard players set @s[scores={reload=50..}] reload 0
return 1