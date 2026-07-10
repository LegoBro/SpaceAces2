#Used when reloading
execute if score @s totalShots matches 12.. run scoreboard players set @s reload 0
item replace entity @s[scores={reload=0..3}] hotbar.0 with minecraft:golden_hoe[item_model="brawler/0",minecraft:damage=29,minecraft:custom_name={translate:"reloading"}]
item replace entity @s[scores={reload=3..6}] hotbar.0 with minecraft:golden_hoe[item_model="brawler/0",minecraft:damage=27,minecraft:custom_name={translate:"reloading"}]
item replace entity @s[scores={reload=6..9}] hotbar.0 with minecraft:golden_hoe[item_model="brawler/0",minecraft:damage=25,minecraft:custom_name={translate:"reloading"}]
item replace entity @s[scores={reload=9..12}] hotbar.0 with minecraft:golden_hoe[item_model="brawler/0",minecraft:damage=22,minecraft:custom_name={translate:"reloading"}]
item replace entity @s[scores={reload=12..15}] hotbar.0 with minecraft:golden_hoe[item_model="brawler/0",minecraft:damage=20,minecraft:custom_name={translate:"reloading"}]
item replace entity @s[scores={reload=15..18}] hotbar.0 with minecraft:golden_hoe[item_model="brawler/0",minecraft:damage=18,minecraft:custom_name={translate:"reloading"}]
item replace entity @s[scores={reload=18..20}] hotbar.0 with minecraft:golden_hoe[item_model="brawler/0",minecraft:damage=16,minecraft:custom_name={translate:"reloading"}]
item replace entity @s[scores={reload=20..23}] hotbar.0 with minecraft:golden_hoe[item_model="brawler/0",minecraft:damage=13,minecraft:custom_name={translate:"reloading"}]
item replace entity @s[scores={reload=23..26}] hotbar.0 with minecraft:golden_hoe[item_model="brawler/0",minecraft:damage=11,minecraft:custom_name={translate:"reloading"}]
item replace entity @s[scores={reload=26..29}] hotbar.0 with minecraft:golden_hoe[item_model="brawler/0",minecraft:damage=9,minecraft:custom_name={translate:"reloading"}]
item replace entity @s[scores={reload=29..32}] hotbar.0 with minecraft:golden_hoe[item_model="brawler/0",minecraft:damage=6,minecraft:custom_name={translate:"reloading"}]
item replace entity @s[scores={reload=32..35}] hotbar.0 with minecraft:golden_hoe[item_model="brawler/0",minecraft:damage=4,minecraft:custom_name={translate:"reloading"}]
item replace entity @s[scores={reload=35..38}] hotbar.0 with minecraft:golden_hoe[item_model="brawler/0",minecraft:damage=2,minecraft:custom_name={translate:"reloading"}]
item replace entity @s[scores={reload=38..40}] hotbar.0 with minecraft:golden_hoe[item_model="brawler/0",minecraft:damage=0,minecraft:custom_name={translate:"reloading"}]
effect give @s[scores={reload=1}] minecraft:hunger 1 100 true
scoreboard players add @s[scores={reload=1..}] reload 1
scoreboard players set @s[scores={reload=40..}] totalShots 12
execute if score @s reload matches 40.. run playsound minecraft:entity.illusioner.mirror_move hostile @a ~ ~ ~
scoreboard players set @s[scores={reload=40..}] reload 0
return 1