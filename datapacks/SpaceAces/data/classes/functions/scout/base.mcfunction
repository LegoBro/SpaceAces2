item replace entity @s[tag=!invis,scores={crouching=0},gamemode=!spectator] armor.head with minecraft:leather_helmet{HideFlags:63,AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.4,Operation:2,UUID:[I;-801381860,1374964116,-1510517210,267107606]}],Unbreakable:1,display:{color:6541567},Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}
item replace entity @s[tag=!invis,scores={crouching=1..}] armor.head with minecraft:leather_helmet{HideFlags:63,AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.25,Operation:2,UUID:[I;-801381860,1374964116,-1510517210,267107606]}],Unbreakable:1,display:{color:6541567},Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}

execute if entity @s[scores={activate_second=0}] run item replace entity @s hotbar.1 with carrot_on_a_stick{display:{Name:"{\"translate\":\"boost\",\"color\":\"white\"}",Lore:["{\"translate\":\"boost_lore1\",\"color\":\"white\"}","{\"translate\":\"boost_lore2\",\"color\":\"white\"}"]},HideFlags:63,CustomModelData:11010001,Unbreakable:1}
execute if entity @s[scores={activate_second=1..}] run item replace entity @s hotbar.1 with gray_dye
scoreboard players set @s[nbt={SelectedItemSlot:1},scores={rightClick=1..}] activate_second 60
scoreboard players reset @s[nbt={SelectedItemSlot:1},scores={rightClick=1..}] rightClick
execute if entity @s[scores={activate_second=60}] run function classes:scout/boost/activate
scoreboard players remove @s[scores={activate_second=1..}] activate_second 1
execute if entity @s[scores={activate_second=40}] run function classes:scout/boost/deactivate

execute if entity @s[scores={activate_third=0}] run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:"{\"translate\":\"launch\",\"color\":\"white\"}",Lore:["{\"translate\":\"launch_lore1\",\"color\":\"white\"}","{\"translate\":\"launch_lore2\",\"color\":\"white\"}"]},HideFlags:63,CustomModelData:11010002,Unbreakable:1}
execute if entity @s[scores={activate_third=1..}] run item replace entity @s hotbar.2 with gray_dye
scoreboard players set @s[nbt={SelectedItemSlot:2},scores={rightClick=1..}] activate_third 200
scoreboard players reset @s[nbt={SelectedItemSlot:2},scores={rightClick=1..}] rightClick
execute if entity @s[scores={activate_third=200}] run function classes:scout/launch/activate
scoreboard players remove @s[scores={activate_third=1..}] activate_third 1
execute if entity @s[scores={activate_third=195}] run function classes:scout/launch/deactivate

# Passive
item replace entity @s hotbar.3 with scute{display:{Name:"{\"translate\":\"adrenaline\",\"color\":\"white\"}",Lore:["{\"translate\":\"adrenaline_lore1\",\"color\":\"white\"}","{\"translate\":\"adrenaline_lore2\",\"color\":\"white\"}","{\"translate\":\"adrenaline_lore3\",\"color\":\"white\"}"]},HideFlags:63,CustomModelData:11010003,Unbreakable:1}
function classes:scout/adrenaline/run

scoreboard players set @s maxHealth 100

item replace entity @s[scores={reload=0,shoot=0}] hotbar.0 with carrot_on_a_stick{display:{Name:"{\"translate\":\"surge_pistol\"}",Lore:["{\"translate\":\"surge_pistol_lore\",\"color\":\"white\"}","{\"text\":\" - damage: 15\",\"color\":\"white\",\"italic\":false}","{\"text\":\" - ammo: 8\",\"color\":\"white\",\"italic\":false}","{\"text\":\" - reload with speed: 1s\",\"color\":\"white\",\"italic\":false}"]},HideFlags:63,CustomModelData:11010000,Unbreakable:1}
item replace entity @s[scores={reload=0,shoot=1..}] hotbar.0 with paper{display:{Name:"{\"translate\":\"surge_pistol\"}",Lore:["{\"translate\":\"surge_pistol_lore\",\"color\":\"white\"}","{\"text\":\" - damage: 15\",\"color\":\"white\",\"italic\":false}","{\"text\":\" - ammo: 8\",\"color\":\"white\",\"italic\":false}","{\"text\":\" - reload with speed: 1s\",\"color\":\"white\",\"italic\":false}"]},HideFlags:63,CustomModelData:11010000}
execute if score @s[nbt={SelectedItemSlot:0},scores={shoot=0}] rightClick matches 1.. run scoreboard players set @s shoot 1
execute if score @s[nbt={SelectedItemSlot:0},scores={shoot=1}] rightClick matches 1.. run scoreboard players remove @s totalShots 1
scoreboard players reset @s[nbt={SelectedItemSlot:0}] rightClick
execute if score @s shoot matches 1 run function classes:scout/shoot
scoreboard players add @s[scores={shoot=1..}] shoot 1
scoreboard players set @s[scores={shoot=3..}] shoot 0
scoreboard players add @s[scores={totalShots=..0,reload=0}] reload 1
execute if score @s reload matches 1.. run function classes:scout/reload
scoreboard players set @s[scores={crouching=1..}] crouching 0
