## Used when reloading (generated)
execute if score @s totalShots matches 25.. run scoreboard players set @s reload 0
item replace entity @s[scores={reload=0..8}] hotbar.0 with minecraft:golden_hoe[item_model="pyro/0",minecraft:damage=29,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=8..15}] hotbar.0 with minecraft:golden_hoe[item_model="pyro/0",minecraft:damage=27,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=15..22}] hotbar.0 with minecraft:golden_hoe[item_model="pyro/0",minecraft:damage=25,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=22..29}] hotbar.0 with minecraft:golden_hoe[item_model="pyro/0",minecraft:damage=22,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=29..36}] hotbar.0 with minecraft:golden_hoe[item_model="pyro/0",minecraft:damage=20,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=36..43}] hotbar.0 with minecraft:golden_hoe[item_model="pyro/0",minecraft:damage=18,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=43..50}] hotbar.0 with minecraft:golden_hoe[item_model="pyro/0",minecraft:damage=16,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=50..58}] hotbar.0 with minecraft:golden_hoe[item_model="pyro/0",minecraft:damage=13,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=58..65}] hotbar.0 with minecraft:golden_hoe[item_model="pyro/0",minecraft:damage=11,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=65..72}] hotbar.0 with minecraft:golden_hoe[item_model="pyro/0",minecraft:damage=9,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=72..79}] hotbar.0 with minecraft:golden_hoe[item_model="pyro/0",minecraft:damage=6,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=79..86}] hotbar.0 with minecraft:golden_hoe[item_model="pyro/0",minecraft:damage=4,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=86..93}] hotbar.0 with minecraft:golden_hoe[item_model="pyro/0",minecraft:damage=2,minecraft:custom_name='{"translate":"reloading"}']
item replace entity @s[scores={reload=93..100}] hotbar.0 with minecraft:golden_hoe[item_model="pyro/0",minecraft:damage=0,minecraft:custom_name='{"translate":"reloading"}']
effect give @s[scores={reload=1}] minecraft:hunger 1 100 true
scoreboard players add @s[scores={reload=1..}] reload 1
scoreboard players set @s[scores={reload=100..}] totalShots 25
execute if score @s reload matches 100.. run playsound minecraft:gun.reload hostile @a ~ ~ ~
scoreboard players set @s[scores={reload=100..}] reload 0
return 1