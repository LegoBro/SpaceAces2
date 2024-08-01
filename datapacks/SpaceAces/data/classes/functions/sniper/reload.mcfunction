## Used when reloading (generated)
  execute if score @s totalShots matches 6.. run scoreboard players set @s reload 0
item replace entity @s[scores={reload=0..5}] hotbar.0 with golden_hoe{Damage:29.714285714285715,CustomModelData:11030000,display:{Name:"{\"translate\":\"reloading\"}"}}
item replace entity @s[scores={reload=5..9}] hotbar.0 with golden_hoe{Damage:27.42857142857143,CustomModelData:11030000,display:{Name:"{\"translate\":\"reloading\"}"}}
item replace entity @s[scores={reload=9..13}] hotbar.0 with golden_hoe{Damage:25.142857142857142,CustomModelData:11030000,display:{Name:"{\"translate\":\"reloading\"}"}}
item replace entity @s[scores={reload=13..18}] hotbar.0 with golden_hoe{Damage:22.857142857142858,CustomModelData:11030000,display:{Name:"{\"translate\":\"reloading\"}"}}
item replace entity @s[scores={reload=18..22}] hotbar.0 with golden_hoe{Damage:20.57142857142857,CustomModelData:11030000,display:{Name:"{\"translate\":\"reloading\"}"}}
item replace entity @s[scores={reload=22..26}] hotbar.0 with golden_hoe{Damage:18.285714285714285,CustomModelData:11030000,display:{Name:"{\"translate\":\"reloading\"}"}}
item replace entity @s[scores={reload=26..30}] hotbar.0 with golden_hoe{Damage:16,CustomModelData:11030000,display:{Name:"{\"translate\":\"reloading\"}"}}
item replace entity @s[scores={reload=30..35}] hotbar.0 with golden_hoe{Damage:13.714285714285715,CustomModelData:11030000,display:{Name:"{\"translate\":\"reloading\"}"}}
item replace entity @s[scores={reload=35..39}] hotbar.0 with golden_hoe{Damage:11.428571428571427,CustomModelData:11030000,display:{Name:"{\"translate\":\"reloading\"}"}}
item replace entity @s[scores={reload=39..43}] hotbar.0 with golden_hoe{Damage:9.142857142857142,CustomModelData:11030000,display:{Name:"{\"translate\":\"reloading\"}"}}
item replace entity @s[scores={reload=43..48}] hotbar.0 with golden_hoe{Damage:6.857142857142858,CustomModelData:11030000,display:{Name:"{\"translate\":\"reloading\"}"}}
item replace entity @s[scores={reload=48..52}] hotbar.0 with golden_hoe{Damage:4.571428571428573,CustomModelData:11030000,display:{Name:"{\"translate\":\"reloading\"}"}}
item replace entity @s[scores={reload=52..56}] hotbar.0 with golden_hoe{Damage:2.2857142857142847,CustomModelData:11030000,display:{Name:"{\"translate\":\"reloading\"}"}}
item replace entity @s[scores={reload=56..60}] hotbar.0 with golden_hoe{Damage:0,CustomModelData:11030000,display:{Name:"{\"translate\":\"reloading\"}"}}
effect give @s[scores={reload=1}] hunger 1 100 true
scoreboard players add @s[scores={reload=1..}] reload 1
scoreboard players set @s[scores={reload=60..}] totalShots 6
execute if score @s reload matches 60.. run playsound gun.reload hostile @a ~ ~ ~
scoreboard players set @s[scores={reload=60..}] reload 0