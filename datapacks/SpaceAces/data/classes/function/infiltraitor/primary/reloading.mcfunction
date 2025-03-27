## Used when reloading (generated)
execute if score @s totalShots >= class.infiltraitor.primary.ammo Numbers run scoreboard players set @s reload 0
item replace entity @s[scores={reload=0..3}] hotbar.0 with minecraft:golden_hoe[item_model="infiltraitor/0",minecraft:damage=29,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=3..5}] hotbar.0 with minecraft:golden_hoe[item_model="infiltraitor/0",minecraft:damage=27,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=5..8}] hotbar.0 with minecraft:golden_hoe[item_model="infiltraitor/0",minecraft:damage=25,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=8..10}] hotbar.0 with minecraft:golden_hoe[item_model="infiltraitor/0",minecraft:damage=22,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=10..13}] hotbar.0 with minecraft:golden_hoe[item_model="infiltraitor/0",minecraft:damage=20,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=13..15}] hotbar.0 with minecraft:golden_hoe[item_model="infiltraitor/0",minecraft:damage=18,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=15..18}] hotbar.0 with minecraft:golden_hoe[item_model="infiltraitor/0",minecraft:damage=16,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=18..20}] hotbar.0 with minecraft:golden_hoe[item_model="infiltraitor/0",minecraft:damage=13,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=20..23}] hotbar.0 with minecraft:golden_hoe[item_model="infiltraitor/0",minecraft:damage=11,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=23..25}] hotbar.0 with minecraft:golden_hoe[item_model="infiltraitor/0",minecraft:damage=9,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=25..28}] hotbar.0 with minecraft:golden_hoe[item_model="infiltraitor/0",minecraft:damage=6,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=28..30}] hotbar.0 with minecraft:golden_hoe[item_model="infiltraitor/0",minecraft:damage=4,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=30..33}] hotbar.0 with minecraft:golden_hoe[item_model="infiltraitor/0",minecraft:damage=2,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=33..35}] hotbar.0 with minecraft:golden_hoe[item_model="infiltraitor/0",minecraft:damage=0,minecraft:custom_name='{"translate":"reloading"}']
scoreboard players add @s[scores={reload=1..}] reload 1

# Reload Done
execute if score @s reload >= class.infiltraitor.primary.reload Numbers run function classes:infiltraitor/primary/reload

return 1



