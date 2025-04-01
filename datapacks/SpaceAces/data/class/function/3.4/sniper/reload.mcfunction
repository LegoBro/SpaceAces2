## Used when reloading (generated)
execute if score @s totalShots matches 6.. run scoreboard players set @s reload 0
item replace entity @s[scores={reload=0..5}] hotbar.0 with minecraft:golden_hoe[item_model="sniper/0",minecraft:damage=29,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=5..9}] hotbar.0 with minecraft:golden_hoe[item_model="sniper/0",minecraft:damage=27,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=9..13}] hotbar.0 with minecraft:golden_hoe[item_model="sniper/0",minecraft:damage=25,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=13..18}] hotbar.0 with minecraft:golden_hoe[item_model="sniper/0",minecraft:damage=22,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=18..22}] hotbar.0 with minecraft:golden_hoe[item_model="sniper/0",minecraft:damage=20,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=22..26}] hotbar.0 with minecraft:golden_hoe[item_model="sniper/0",minecraft:damage=18,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=26..30}] hotbar.0 with minecraft:golden_hoe[item_model="sniper/0",minecraft:damage=16,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=30..35}] hotbar.0 with minecraft:golden_hoe[item_model="sniper/0",minecraft:damage=13,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=35..39}] hotbar.0 with minecraft:golden_hoe[item_model="sniper/0",minecraft:damage=11,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=39..43}] hotbar.0 with minecraft:golden_hoe[item_model="sniper/0",minecraft:damage=9,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=43..48}] hotbar.0 with minecraft:golden_hoe[item_model="sniper/0",minecraft:damage=6,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=48..52}] hotbar.0 with minecraft:golden_hoe[item_model="sniper/0",minecraft:damage=4,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=52..56}] hotbar.0 with minecraft:golden_hoe[item_model="sniper/0",minecraft:damage=2,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=56..60}] hotbar.0 with minecraft:golden_hoe[item_model="sniper/0",minecraft:damage=0,minecraft:custom_name='{"translate":"reloading"}']
effect give @s[scores={reload=1}] minecraft:hunger 1 100 true
scoreboard players add @s[scores={reload=1..}] reload 1
scoreboard players set @s[scores={reload=60..}] totalShots 6
execute if score @s reload matches 60.. run playsound minecraft:gun.reload hostile @a ~ ~ ~
scoreboard players set @s[scores={reload=60..}] reload 0
return 1