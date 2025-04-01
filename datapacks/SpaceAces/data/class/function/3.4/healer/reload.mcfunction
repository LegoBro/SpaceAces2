## Used when reloading (generated)
execute if score @s totalShots matches 12.. run scoreboard players set @s reload 0
item replace entity @s[scores={reload=0..2}] hotbar.0 with minecraft:golden_hoe[item_model="healer/0",minecraft:damage=29,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=2..4}] hotbar.0 with minecraft:golden_hoe[item_model="healer/0",minecraft:damage=27,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=4..6}] hotbar.0 with minecraft:golden_hoe[item_model="healer/0",minecraft:damage=25,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=6..8}] hotbar.0 with minecraft:golden_hoe[item_model="healer/0",minecraft:damage=22,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=8..9}] hotbar.0 with minecraft:golden_hoe[item_model="healer/0",minecraft:damage=20,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=9..11}] hotbar.0 with minecraft:golden_hoe[item_model="healer/0",minecraft:damage=18,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=11..13}] hotbar.0 with minecraft:golden_hoe[item_model="healer/0",minecraft:damage=16,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=13..15}] hotbar.0 with minecraft:golden_hoe[item_model="healer/0",minecraft:damage=13,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=15..17}] hotbar.0 with minecraft:golden_hoe[item_model="healer/0",minecraft:damage=11,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=17..18}] hotbar.0 with minecraft:golden_hoe[item_model="healer/0",minecraft:damage=9,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=18..20}] hotbar.0 with minecraft:golden_hoe[item_model="healer/0",minecraft:damage=6,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=20..22}] hotbar.0 with minecraft:golden_hoe[item_model="healer/0",minecraft:damage=4,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=22..24}] hotbar.0 with minecraft:golden_hoe[item_model="healer/0",minecraft:damage=2,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=24..25}] hotbar.0 with minecraft:golden_hoe[item_model="healer/0",minecraft:damage=0,minecraft:custom_name='{"translate":"reloading"}']
effect give @s[scores={reload=1}] minecraft:hunger 1 100 true
scoreboard players add @s[scores={reload=1..}] reload 1
scoreboard players set @s[scores={reload=25..}] totalShots 12
execute if score @s reload matches 25.. run playsound minecraft:gun.reload hostile @a ~ ~ ~
scoreboard players set @s[scores={reload=25..}] reload 0
return 1