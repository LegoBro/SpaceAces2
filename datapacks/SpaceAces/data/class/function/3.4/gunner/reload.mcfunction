## Used when reloading (generated)
execute if score @s totalShots matches 30.. run scoreboard players set @s reload 0
item replace entity @s[scores={reload=0..5}] hotbar.0 with minecraft:golden_hoe[item_model="gunner/0",minecraft:damage=29,minecraft:custom_name={translate:"reloading"}]
item replace entity @s[scores={reload=5..10}] hotbar.0 with minecraft:golden_hoe[item_model="gunner/0",minecraft:damage=27,minecraft:custom_name={translate:"reloading"}]
item replace entity @s[scores={reload=10..15}] hotbar.0 with minecraft:golden_hoe[item_model="gunner/0",minecraft:damage=25,minecraft:custom_name={translate:"reloading"}]
item replace entity @s[scores={reload=15..20}] hotbar.0 with minecraft:golden_hoe[item_model="gunner/0",minecraft:damage=22,minecraft:custom_name={translate:"reloading"}]
item replace entity @s[scores={reload=20..25}] hotbar.0 with minecraft:golden_hoe[item_model="gunner/0",minecraft:damage=20,minecraft:custom_name={translate:"reloading"}]
item replace entity @s[scores={reload=25..30}] hotbar.0 with minecraft:golden_hoe[item_model="gunner/0",minecraft:damage=18,minecraft:custom_name={translate:"reloading"}]
item replace entity @s[scores={reload=30..35}] hotbar.0 with minecraft:golden_hoe[item_model="gunner/0",minecraft:damage=16,minecraft:custom_name={translate:"reloading"}]
item replace entity @s[scores={reload=35..40}] hotbar.0 with minecraft:golden_hoe[item_model="gunner/0",minecraft:damage=13,minecraft:custom_name={translate:"reloading"}]
item replace entity @s[scores={reload=40..45}] hotbar.0 with minecraft:golden_hoe[item_model="gunner/0",minecraft:damage=11,minecraft:custom_name={translate:"reloading"}]
item replace entity @s[scores={reload=45..50}] hotbar.0 with minecraft:golden_hoe[item_model="gunner/0",minecraft:damage=9,minecraft:custom_name={translate:"reloading"}]
item replace entity @s[scores={reload=50..55}] hotbar.0 with minecraft:golden_hoe[item_model="gunner/0",minecraft:damage=6,minecraft:custom_name={translate:"reloading"}]
item replace entity @s[scores={reload=55..60}] hotbar.0 with minecraft:golden_hoe[item_model="gunner/0",minecraft:damage=4,minecraft:custom_name={translate:"reloading"}]
item replace entity @s[scores={reload=60..65}] hotbar.0 with minecraft:golden_hoe[item_model="gunner/0",minecraft:damage=2,minecraft:custom_name={translate:"reloading"}]
item replace entity @s[scores={reload=65..70}] hotbar.0 with minecraft:golden_hoe[item_model="gunner/0",minecraft:damage=0,minecraft:custom_name={translate:"reloading"}]
effect give @s[scores={reload=1}] minecraft:hunger 1 100 true
scoreboard players add @s[scores={reload=1..}] reload 1
scoreboard players set @s[scores={reload=70..}] totalShots 30
execute if score @s reload matches 70.. run playsound minecraft:gun.reload hostile @a ~ ~ ~
scoreboard players set @s[scores={reload=70..}] reload 0
return 1