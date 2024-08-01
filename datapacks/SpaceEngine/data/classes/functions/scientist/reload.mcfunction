## Used when reloading (generated)
  execute if score @s totalShots matches 6.. run scoreboard players set @s reload 0
item replace entity @s[scores={reload=0..3}] hotbar.0 with golden_hoe{Damage:29.714285714285715,CustomModelData:11100000,display:{Name:"{\"translate\":\"reloading\"}"}}
item replace entity @s[scores={reload=3..6}] hotbar.0 with golden_hoe{Damage:27.42857142857143,CustomModelData:11100000,display:{Name:"{\"translate\":\"reloading\"}"}}
item replace entity @s[scores={reload=6..9}] hotbar.0 with golden_hoe{Damage:25.142857142857142,CustomModelData:11100000,display:{Name:"{\"translate\":\"reloading\"}"}}
item replace entity @s[scores={reload=9..12}] hotbar.0 with golden_hoe{Damage:22.857142857142858,CustomModelData:11100000,display:{Name:"{\"translate\":\"reloading\"}"}}
item replace entity @s[scores={reload=12..15}] hotbar.0 with golden_hoe{Damage:20.57142857142857,CustomModelData:11100000,display:{Name:"{\"translate\":\"reloading\"}"}}
item replace entity @s[scores={reload=15..18}] hotbar.0 with golden_hoe{Damage:18.285714285714285,CustomModelData:11100000,display:{Name:"{\"translate\":\"reloading\"}"}}
item replace entity @s[scores={reload=18..20}] hotbar.0 with golden_hoe{Damage:16,CustomModelData:11100000,display:{Name:"{\"translate\":\"reloading\"}"}}
item replace entity @s[scores={reload=20..23}] hotbar.0 with golden_hoe{Damage:13.714285714285715,CustomModelData:11100000,display:{Name:"{\"translate\":\"reloading\"}"}}
item replace entity @s[scores={reload=23..26}] hotbar.0 with golden_hoe{Damage:11.428571428571427,CustomModelData:11100000,display:{Name:"{\"translate\":\"reloading\"}"}}
item replace entity @s[scores={reload=26..29}] hotbar.0 with golden_hoe{Damage:9.142857142857142,CustomModelData:11100000,display:{Name:"{\"translate\":\"reloading\"}"}}
item replace entity @s[scores={reload=29..32}] hotbar.0 with golden_hoe{Damage:6.857142857142858,CustomModelData:11100000,display:{Name:"{\"translate\":\"reloading\"}"}}
item replace entity @s[scores={reload=32..35}] hotbar.0 with golden_hoe{Damage:4.571428571428573,CustomModelData:11100000,display:{Name:"{\"translate\":\"reloading\"}"}}
item replace entity @s[scores={reload=35..38}] hotbar.0 with golden_hoe{Damage:2.2857142857142847,CustomModelData:11100000,display:{Name:"{\"translate\":\"reloading\"}"}}
item replace entity @s[scores={reload=38..40}] hotbar.0 with golden_hoe{Damage:0,CustomModelData:11100000,display:{Name:"{\"translate\":\"reloading\"}"}}
effect give @s[scores={reload=1}] hunger 1 100 true
scoreboard players add @s[scores={reload=1..}] reload 1
scoreboard players set @s[scores={reload=40..}] totalShots 6
execute if score @s reload matches 40.. run playsound gun.reload hostile @a ~ ~ ~
scoreboard players set @s[scores={reload=40..}] reload 0