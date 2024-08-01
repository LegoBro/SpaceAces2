item replace entity @s[tag=!invis,scores={crouching=0},gamemode=!spectator] armor.head with minecraft:leather_helmet{HideFlags:63,AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.05,Operation:2,UUID:[I;-801381860,1374964116,-1510517210,267107606]}],Unbreakable:1,display:{color:2774103},Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}
item replace entity @s[tag=!invis,scores={crouching=1..}] armor.head with minecraft:leather_helmet{HideFlags:63,AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.25,Operation:2,UUID:[I;-801381860,1374964116,-1510517210,267107606]}],Unbreakable:1,display:{color:2774103},Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}

execute if entity @s[scores={activate_second=0}] run item replace entity @s hotbar.1 with carrot_on_a_stick{display:{Name:"{\"translate\":\"piercing_dart\",\"color\":\"white\"}",Lore:["{\"translate\":\"piercing_dart_lore1\",\"color\":\"white\"}","{\"translate\":\"piercing_dart_lore2\",\"color\":\"white\"}"]},HideFlags:63,CustomModelData:11150001,Unbreakable:1}
execute if entity @s[scores={activate_second=1..}] run item replace entity @s hotbar.1 with gray_dye
scoreboard players set @s[nbt={SelectedItemSlot:1},scores={rightClick=1..}] activate_second 100
scoreboard players reset @s[nbt={SelectedItemSlot:1},scores={rightClick=1..}] rightClick
execute if entity @s[scores={activate_second=100}] run function classes:rocketeer/piercing_dart/activate
scoreboard players remove @s[scores={activate_second=1..}] activate_second 1
execute if entity @s[scores={activate_second=90}] run function classes:rocketeer/piercing_dart/deactivate

execute if entity @s[scores={activate_third=0}] run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:"{\"translate\":\"resist\",\"color\":\"white\"}",Lore:["{\"translate\":\"resist_lore1\",\"color\":\"white\"}","{\"translate\":\"resist_lore2\",\"color\":\"white\"}"]},HideFlags:63,CustomModelData:11150002,Unbreakable:1}
execute if entity @s[scores={activate_third=1..}] run item replace entity @s hotbar.2 with gray_dye
scoreboard players set @s[nbt={SelectedItemSlot:2},scores={rightClick=1..}] activate_third 400
scoreboard players reset @s[nbt={SelectedItemSlot:2},scores={rightClick=1..}] rightClick
execute if entity @s[scores={activate_third=400}] run function classes:rocketeer/resist/activate
scoreboard players remove @s[scores={activate_third=1..}] activate_third 1
execute if entity @s[scores={activate_third=340}] run function classes:rocketeer/resist/deactivate

# Passive
item replace entity @s hotbar.3 with scute{display:{Name:"{\"translate\":\"rocket_boots\",\"color\":\"white\"}",Lore:["{\"translate\":\"rocket_boots_lore1\",\"color\":\"white\"}","{\"translate\":\"rocket_boots_lore2\",\"color\":\"white\"}"]},HideFlags:63,CustomModelData:11150003,Unbreakable:1}
function classes:rocketeer/rocket_boots/run

scoreboard players set @s maxHealth 300

item replace entity @s[scores={reload=0,shoot=0}] hotbar.0 with carrot_on_a_stick{display:{Name:"{\"translate\":\"rocket_launcher\"}",Lore:["{\"translate\":\"rocket_launcher_lore\",\"color\":\"white\"}","{\"text\":\" - damage: 10\",\"color\":\"white\",\"italic\":false}","{\"text\":\" - ammo: 4\",\"color\":\"white\",\"italic\":false}","{\"text\":\" - reload with speed: 2.5s\",\"color\":\"white\",\"italic\":false}"]},HideFlags:63,CustomModelData:11150000,Unbreakable:1}
item replace entity @s[scores={reload=0,shoot=1..}] hotbar.0 with paper{display:{Name:"{\"translate\":\"rocket_launcher\"}",Lore:["{\"translate\":\"rocket_launcher_lore\",\"color\":\"white\"}","{\"text\":\" - damage: 10\",\"color\":\"white\",\"italic\":false}","{\"text\":\" - ammo: 4\",\"color\":\"white\",\"italic\":false}","{\"text\":\" - reload with speed: 2.5s\",\"color\":\"white\",\"italic\":false}"]},HideFlags:63,CustomModelData:11150000}
execute if score @s[nbt={SelectedItemSlot:0},scores={shoot=0}] rightClick matches 1.. run scoreboard players set @s shoot 1
execute if score @s[nbt={SelectedItemSlot:0},scores={shoot=1}] rightClick matches 1.. run scoreboard players remove @s totalShots 1
scoreboard players reset @s[nbt={SelectedItemSlot:0}] rightClick
execute if score @s shoot matches 1 run function classes:rocketeer/shoot
scoreboard players add @s[scores={shoot=1..}] shoot 1
scoreboard players set @s[scores={shoot=16..}] shoot 0
scoreboard players add @s[scores={totalShots=..0,reload=0}] reload 1
execute if score @s reload matches 1.. run function classes:rocketeer/reload
scoreboard players set @s[scores={crouching=1..}] crouching 0