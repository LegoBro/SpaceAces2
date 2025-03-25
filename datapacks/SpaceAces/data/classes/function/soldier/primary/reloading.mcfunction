## Used when reloading (generated)
execute if score @s totalShots >= class.soldier.primary.ammo Numbers run scoreboard players set @s reload 0
item replace entity @s[scores={reload=0..4}] hotbar.0 with minecraft:golden_hoe[item_model="soldier/0",minecraft:damage=29,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=4..8}] hotbar.0 with minecraft:golden_hoe[item_model="soldier/0",minecraft:damage=27,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=8..11}] hotbar.0 with minecraft:golden_hoe[item_model="soldier/0",minecraft:damage=25,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=11..15}] hotbar.0 with minecraft:golden_hoe[item_model="soldier/0",minecraft:damage=22,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=15..18}] hotbar.0 with minecraft:golden_hoe[item_model="soldier/0",minecraft:damage=20,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=18..22}] hotbar.0 with minecraft:golden_hoe[item_model="soldier/0",minecraft:damage=18,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=22..25}] hotbar.0 with minecraft:golden_hoe[item_model="soldier/0",minecraft:damage=16,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=25..29}] hotbar.0 with minecraft:golden_hoe[item_model="soldier/0",minecraft:damage=13,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=29..33}] hotbar.0 with minecraft:golden_hoe[item_model="soldier/0",minecraft:damage=11,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=33..36}] hotbar.0 with minecraft:golden_hoe[item_model="soldier/0",minecraft:damage=9,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=36..40}] hotbar.0 with minecraft:golden_hoe[item_model="soldier/0",minecraft:damage=6,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=40..43}] hotbar.0 with minecraft:golden_hoe[item_model="soldier/0",minecraft:damage=4,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=43..47}] hotbar.0 with minecraft:golden_hoe[item_model="soldier/0",minecraft:damage=2,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=47..50}] hotbar.0 with minecraft:golden_hoe[item_model="soldier/0",minecraft:damage=0,minecraft:custom_name='{"translate":"reloading"}']
scoreboard players add @s[scores={reload=1..}] reload 1

# Reload Done
execute if score @s reload >= class.soldier.primary.reload Numbers run function classes:soldier/primary/reload

return 1



