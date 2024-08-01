item replace entity @s[tag=!invis,scores={crouching=0},gamemode=!spectator] armor.head with minecraft:leather_helmet{HideFlags:63,AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.05,Operation:2,UUID:[I;-801381860,1374964116,-1510517210,267107606]}],Unbreakable:1,display:{color:15202048},Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}
item replace entity @s[tag=!invis,scores={crouching=1..}] armor.head with minecraft:leather_helmet{HideFlags:63,AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.05,Operation:2,UUID:[I;-801381860,1374964116,-1510517210,267107606]}],Unbreakable:1,display:{color:15202048},Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}

execute if entity @s[scores={activate_second=0}] run item replace entity @s hotbar.1 with carrot_on_a_stick{display:{Name:"{\"translate\":\"fire_bomb\",\"color\":\"white\"}",Lore:["{\"translate\":\"fire_bomb_lore1\",\"color\":\"white\"}","{\"translate\":\"fire_bomb_lore2\",\"color\":\"white\"}"]},HideFlags:63,CustomModelData:11120001,Unbreakable:1}
execute if entity @s[scores={activate_second=1..}] run item replace entity @s hotbar.1 with gray_dye
scoreboard players set @s[nbt={SelectedItemSlot:1},scores={rightClick=1..}] activate_second 300
scoreboard players reset @s[nbt={SelectedItemSlot:1},scores={rightClick=1..}] rightClick
execute if entity @s[scores={activate_second=300}] run function classes:pyro/fire_bomb/activate
scoreboard players remove @s[scores={activate_second=1..}] activate_second 1
execute if entity @s[scores={activate_second=200}] run function classes:pyro/fire_bomb/deactivate

execute if entity @s[scores={activate_third=0}] run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:"{\"translate\":\"immunity\",\"color\":\"white\"}",Lore:["{\"translate\":\"immunity_lore1\",\"color\":\"white\"}","{\"translate\":\"immunity_lore2\",\"color\":\"white\"}"]},HideFlags:63,CustomModelData:11120002,Unbreakable:1}
execute if entity @s[scores={activate_third=1..}] run item replace entity @s hotbar.2 with gray_dye
scoreboard players set @s[nbt={SelectedItemSlot:2},scores={rightClick=1..}] activate_third 240
scoreboard players reset @s[nbt={SelectedItemSlot:2},scores={rightClick=1..}] rightClick
execute if entity @s[scores={activate_third=240}] run function classes:pyro/immunity/activate
scoreboard players remove @s[scores={activate_third=1..}] activate_third 1
execute if entity @s[scores={activate_third=140}] run function classes:pyro/immunity/deactivate

# Passive
item replace entity @s hotbar.3 with scute{display:{Name:"{\"translate\":\"turn_up\",\"color\":\"white\"}",Lore:["{\"translate\":\"turn_up_lore1\",\"color\":\"white\"}","{\"translate\":\"turn_up_lore2\",\"color\":\"white\"}"]},HideFlags:63,CustomModelData:11120003,Unbreakable:1}
execute if score @s fire matches 1.. run effect give @s speed 1 1 true

scoreboard players set @s maxHealth 300

item replace entity @s[scores={reload=0,shoot=0}] hotbar.0 with carrot_on_a_stick{display:{Name:"{\"translate\":\"hot_air_blower\"}",Lore:["{\"translate\":\"hot_air_blower_lore\",\"color\":\"white\"}","{\"text\":\" - damage: 5\",\"color\":\"white\",\"italic\":false}","{\"text\":\" - ammo: 25\",\"color\":\"white\",\"italic\":false}","{\"text\":\" - reload with speed: 5s\",\"color\":\"white\",\"italic\":false}"]},HideFlags:63,CustomModelData:11120000,Unbreakable:1}
item replace entity @s[scores={reload=0,shoot=1..}] hotbar.0 with paper{display:{Name:"{\"translate\":\"hot_air_blower\"}",Lore:["{\"translate\":\"hot_air_blower_lore\",\"color\":\"white\"}","{\"text\":\" - damage: 5\",\"color\":\"white\",\"italic\":false}","{\"text\":\" - ammo: 25\",\"color\":\"white\",\"italic\":false}","{\"text\":\" - reload with speed: 5s\",\"color\":\"white\",\"italic\":false}"]},HideFlags:63,CustomModelData:11120000}
execute if score @s[nbt={SelectedItemSlot:0},scores={shoot=0}] rightClick matches 1.. run scoreboard players set @s shoot 1
execute if score @s[nbt={SelectedItemSlot:0},scores={shoot=1}] rightClick matches 1.. run scoreboard players remove @s totalShots 1
scoreboard players reset @s[nbt={SelectedItemSlot:0}] rightClick
execute if score @s shoot matches 1 run function classes:pyro/shoot
scoreboard players add @s[scores={shoot=1..}] shoot 1
scoreboard players set @s[scores={shoot=3..}] shoot 0
scoreboard players add @s[scores={totalShots=..0,reload=0}] reload 1
execute if score @s reload matches 1.. run function classes:pyro/reload
scoreboard players set @s[scores={crouching=1..}] crouching 0