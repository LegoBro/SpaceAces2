## Used when reloading (generated)
execute if score @s totalShots >= class.scout.primary.ammo Numbers run scoreboard players set @s reload 0
item replace entity @s[scores={reload=1..2}] hotbar.0 with minecraft:golden_hoe[item_model="scout/0",minecraft:damage=29,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=2..3}] hotbar.0 with minecraft:golden_hoe[item_model="scout/0",minecraft:damage=27,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=3..5}] hotbar.0 with minecraft:golden_hoe[item_model="scout/0",minecraft:damage=25,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=5..6}] hotbar.0 with minecraft:golden_hoe[item_model="scout/0",minecraft:damage=22,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=6..8}] hotbar.0 with minecraft:golden_hoe[item_model="scout/0",minecraft:damage=20,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=8..9}] hotbar.0 with minecraft:golden_hoe[item_model="scout/0",minecraft:damage=18,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=9..10}] hotbar.0 with minecraft:golden_hoe[item_model="scout/0",minecraft:damage=16,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=10..12}] hotbar.0 with minecraft:golden_hoe[item_model="scout/0",minecraft:damage=13,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=12..13}] hotbar.0 with minecraft:golden_hoe[item_model="scout/0",minecraft:damage=11,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=13..15}] hotbar.0 with minecraft:golden_hoe[item_model="scout/0",minecraft:damage=9,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=15..16}] hotbar.0 with minecraft:golden_hoe[item_model="scout/0",minecraft:damage=6,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=16..18}] hotbar.0 with minecraft:golden_hoe[item_model="scout/0",minecraft:damage=4,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=18..19}] hotbar.0 with minecraft:golden_hoe[item_model="scout/0",minecraft:damage=2,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=19..20}] hotbar.0 with minecraft:golden_hoe[item_model="scout/0",minecraft:damage=0,minecraft:custom_name='{"translate":"reloading"}']
scoreboard players add @s[scores={reload=1..}] reload 1

# Reload Done
execute if score @s reload >= class.scout.primary.reload Numbers run function classes:scout/primary/reload

return 1