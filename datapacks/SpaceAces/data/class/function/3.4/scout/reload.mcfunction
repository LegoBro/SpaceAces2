## Used when reloading (generated)
execute if score @s totalShots matches 8.. run scoreboard players set @s reload 0
item replace entity @s[scores={reload=0..2}] hotbar.0 with minecraft:golden_hoe[item_model="scout/0",minecraft:damage=29,minecraft:custom_name={translate:"reloading"}]
item replace entity @s[scores={reload=2..3}] hotbar.0 with minecraft:golden_hoe[item_model="scout/0",minecraft:damage=27,minecraft:custom_name={translate:"reloading"}]
item replace entity @s[scores={reload=3..5}] hotbar.0 with minecraft:golden_hoe[item_model="scout/0",minecraft:damage=25,minecraft:custom_name={translate:"reloading"}]
item replace entity @s[scores={reload=5..6}] hotbar.0 with minecraft:golden_hoe[item_model="scout/0",minecraft:damage=22,minecraft:custom_name={translate:"reloading"}]
item replace entity @s[scores={reload=6..8}] hotbar.0 with minecraft:golden_hoe[item_model="scout/0",minecraft:damage=20,minecraft:custom_name={translate:"reloading"}]
item replace entity @s[scores={reload=8..9}] hotbar.0 with minecraft:golden_hoe[item_model="scout/0",minecraft:damage=18,minecraft:custom_name={translate:"reloading"}]
item replace entity @s[scores={reload=9..10}] hotbar.0 with minecraft:golden_hoe[item_model="scout/0",minecraft:damage=16,minecraft:custom_name={translate:"reloading"}]
item replace entity @s[scores={reload=10..12}] hotbar.0 with minecraft:golden_hoe[item_model="scout/0",minecraft:damage=13,minecraft:custom_name={translate:"reloading"}]
item replace entity @s[scores={reload=12..13}] hotbar.0 with minecraft:golden_hoe[item_model="scout/0",minecraft:damage=11,minecraft:custom_name={translate:"reloading"}]
item replace entity @s[scores={reload=13..15}] hotbar.0 with minecraft:golden_hoe[item_model="scout/0",minecraft:damage=9,minecraft:custom_name={translate:"reloading"}]
item replace entity @s[scores={reload=15..16}] hotbar.0 with minecraft:golden_hoe[item_model="scout/0",minecraft:damage=6,minecraft:custom_name={translate:"reloading"}]
item replace entity @s[scores={reload=16..18}] hotbar.0 with minecraft:golden_hoe[item_model="scout/0",minecraft:damage=4,minecraft:custom_name={translate:"reloading"}]
item replace entity @s[scores={reload=18..19}] hotbar.0 with minecraft:golden_hoe[item_model="scout/0",minecraft:damage=2,minecraft:custom_name={translate:"reloading"}]
item replace entity @s[scores={reload=19..20}] hotbar.0 with minecraft:golden_hoe[item_model="scout/0",minecraft:damage=0,minecraft:custom_name={translate:"reloading"}]
effect give @s[scores={reload=1}] minecraft:hunger 1 100 true
scoreboard players add @s[scores={reload=1..}] reload 1
scoreboard players set @s[scores={reload=20..}] totalShots 8
execute if score @s reload matches 20.. run playsound minecraft:gun.reload hostile @a ~ ~ ~
scoreboard players set @s[scores={reload=20..}] reload 0
return 1