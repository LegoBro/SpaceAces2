## Used when reloading (generated)
execute if score @s totalShots >= class.seeker.primary.ammo Numbers run scoreboard players set @s reload 0
item replace entity @s[scores={reload=0..6}] hotbar.0 with minecraft:golden_hoe[item_model="seeker/0",minecraft:damage=29,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=6..12}] hotbar.0 with minecraft:golden_hoe[item_model="seeker/0",minecraft:damage=27,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=12..18}] hotbar.0 with minecraft:golden_hoe[item_model="seeker/0",minecraft:damage=25,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=18..23}] hotbar.0 with minecraft:golden_hoe[item_model="seeker/0",minecraft:damage=22,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=23..29}] hotbar.0 with minecraft:golden_hoe[item_model="seeker/0",minecraft:damage=20,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=29..35}] hotbar.0 with minecraft:golden_hoe[item_model="seeker/0",minecraft:damage=18,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=35..40}] hotbar.0 with minecraft:golden_hoe[item_model="seeker/0",minecraft:damage=16,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=40..46}] hotbar.0 with minecraft:golden_hoe[item_model="seeker/0",minecraft:damage=13,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=46..52}] hotbar.0 with minecraft:golden_hoe[item_model="seeker/0",minecraft:damage=11,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=52..58}] hotbar.0 with minecraft:golden_hoe[item_model="seeker/0",minecraft:damage=9,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=58..63}] hotbar.0 with minecraft:golden_hoe[item_model="seeker/0",minecraft:damage=6,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=63..69}] hotbar.0 with minecraft:golden_hoe[item_model="seeker/0",minecraft:damage=4,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=69..75}] hotbar.0 with minecraft:golden_hoe[item_model="seeker/0",minecraft:damage=2,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=75..80}] hotbar.0 with minecraft:golden_hoe[item_model="seeker/0",minecraft:damage=0,minecraft:custom_name='{"translate":"reloading"}']
scoreboard players add @s[scores={reload=1..}] reload 1

# Reload Done
execute if score @s reload >= class.seeker.primary.reload Numbers run function classes:seeker/primary/reload

return 1



