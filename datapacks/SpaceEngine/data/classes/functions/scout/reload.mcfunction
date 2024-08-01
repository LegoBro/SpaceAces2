## Used when reloading (generated)
  execute if score @s totalShots matches 8.. run scoreboard players set @s reload 0
item replace entity @s[scores={reload=0..2}] hotbar.0 with golden_hoe{Damage:29.714285714285715,CustomModelData:11010000,display:{Name:"{\"translate\":\"reloading\"}"}}
item replace entity @s[scores={reload=2..3}] hotbar.0 with golden_hoe{Damage:27.42857142857143,CustomModelData:11010000,display:{Name:"{\"translate\":\"reloading\"}"}}
item replace entity @s[scores={reload=3..5}] hotbar.0 with golden_hoe{Damage:25.142857142857142,CustomModelData:11010000,display:{Name:"{\"translate\":\"reloading\"}"}}
item replace entity @s[scores={reload=5..6}] hotbar.0 with golden_hoe{Damage:22.857142857142858,CustomModelData:11010000,display:{Name:"{\"translate\":\"reloading\"}"}}
item replace entity @s[scores={reload=6..8}] hotbar.0 with golden_hoe{Damage:20.57142857142857,CustomModelData:11010000,display:{Name:"{\"translate\":\"reloading\"}"}}
item replace entity @s[scores={reload=8..9}] hotbar.0 with golden_hoe{Damage:18.285714285714285,CustomModelData:11010000,display:{Name:"{\"translate\":\"reloading\"}"}}
item replace entity @s[scores={reload=9..10}] hotbar.0 with golden_hoe{Damage:16,CustomModelData:11010000,display:{Name:"{\"translate\":\"reloading\"}"}}
item replace entity @s[scores={reload=10..12}] hotbar.0 with golden_hoe{Damage:13.714285714285715,CustomModelData:11010000,display:{Name:"{\"translate\":\"reloading\"}"}}
item replace entity @s[scores={reload=12..13}] hotbar.0 with golden_hoe{Damage:11.428571428571427,CustomModelData:11010000,display:{Name:"{\"translate\":\"reloading\"}"}}
item replace entity @s[scores={reload=13..15}] hotbar.0 with golden_hoe{Damage:9.142857142857142,CustomModelData:11010000,display:{Name:"{\"translate\":\"reloading\"}"}}
item replace entity @s[scores={reload=15..16}] hotbar.0 with golden_hoe{Damage:6.857142857142858,CustomModelData:11010000,display:{Name:"{\"translate\":\"reloading\"}"}}
item replace entity @s[scores={reload=16..18}] hotbar.0 with golden_hoe{Damage:4.571428571428573,CustomModelData:11010000,display:{Name:"{\"translate\":\"reloading\"}"}}
item replace entity @s[scores={reload=18..19}] hotbar.0 with golden_hoe{Damage:2.2857142857142847,CustomModelData:11010000,display:{Name:"{\"translate\":\"reloading\"}"}}
item replace entity @s[scores={reload=19..20}] hotbar.0 with golden_hoe{Damage:0,CustomModelData:11010000,display:{Name:"{\"translate\":\"reloading\"}"}}
effect give @s[scores={reload=1}] hunger 1 100 true
scoreboard players add @s[scores={reload=1..}] reload 1
scoreboard players set @s[scores={reload=20..}] totalShots 8
execute if score @s reload matches 20.. run playsound gun.reload hostile @a ~ ~ ~
scoreboard players set @s[scores={reload=20..}] reload 0