item replace entity @s[tag=!invis,scores={crouching=0},gamemode=!spectator] armor.head with minecraft:leather_helmet{HideFlags:63,AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.1,Operation:2,UUID:[I;-801381860,1374964116,-1510517210,267107606]}],Unbreakable:1,display:{color:0},Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}
item replace entity @s[tag=!invis,scores={crouching=1..}] armor.head with minecraft:leather_helmet{HideFlags:63,AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-1,Operation:2,UUID:[I;-801381860,1374964116,-1510517210,267107606]}],Unbreakable:1,display:{color:0},Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}

execute if entity @s[scores={activate_second=0}] run item replace entity @s hotbar.1 with carrot_on_a_stick{display:{Name:"{\"translate\":\"vis_mine\",\"color\":\"white\"}",Lore:["{\"translate\":\"vis_mine_lore1\",\"color\":\"white\"}","{\"translate\":\"vis_mine_lore2\",\"color\":\"white\"}"]},HideFlags:63,CustomModelData:11030001,Unbreakable:1}
execute if entity @s[scores={activate_second=1..}] run item replace entity @s hotbar.1 with gray_dye
scoreboard players set @s[nbt={SelectedItemSlot:1},scores={rightClick=1..}] activate_second 100
scoreboard players reset @s[nbt={SelectedItemSlot:1},scores={rightClick=1..}] rightClick
execute if entity @s[scores={activate_second=100}] run function classes:sniper/vis_mine/activate
scoreboard players remove @s[scores={activate_second=1..}] activate_second 1
execute if entity @s[scores={activate_second=40}] run function classes:sniper/vis_mine/deactivate

execute if entity @s[scores={activate_third=0}] run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:"{\"translate\":\"jump\",\"color\":\"white\"}",Lore:["{\"translate\":\"jump_lore1\",\"color\":\"white\"}","{\"translate\":\"jump_lore2\",\"color\":\"white\"}"]},HideFlags:63,CustomModelData:11030002,Unbreakable:1}
execute if entity @s[scores={activate_third=1..}] run item replace entity @s hotbar.2 with gray_dye
scoreboard players set @s[nbt={SelectedItemSlot:2},scores={rightClick=1..}] activate_third 200
scoreboard players reset @s[nbt={SelectedItemSlot:2},scores={rightClick=1..}] rightClick
execute if entity @s[scores={activate_third=200}] run function classes:sniper/jump/activate
scoreboard players remove @s[scores={activate_third=1..}] activate_third 1
execute if entity @s[scores={activate_third=100}] run function classes:sniper/jump/deactivate

# Passive
item replace entity @s hotbar.3 with scute{display:{Name:"{\"translate\":\"distance\",\"color\":\"white\"}",Lore:["{\"translate\":\"distance_lore1\",\"color\":\"white\"}","{\"translate\":\"distance_lore2\",\"color\":\"white\"}"]},HideFlags:63,CustomModelData:11030003,Unbreakable:1}
function classes:sniper/distance/run

scoreboard players set @s maxHealth 150

item replace entity @s[scores={reload=0,shoot=0}] hotbar.0 with carrot_on_a_stick{display:{Name:"{\"translate\":\"star_sniper\"}",Lore:["{\"translate\":\"star_sniper_lore\",\"color\":\"white\"}","{\"text\":\" - damage: 50\",\"color\":\"white\",\"italic\":false}","{\"text\":\" - ammo: 6\",\"color\":\"white\",\"italic\":false}","{\"text\":\" - reload with speed: 3s\",\"color\":\"white\",\"italic\":false}"]},HideFlags:63,CustomModelData:11030000,Unbreakable:1}
item replace entity @s[scores={reload=0,shoot=1..}] hotbar.0 with paper{display:{Name:"{\"translate\":\"star_sniper\"}",Lore:["{\"translate\":\"star_sniper_lore\",\"color\":\"white\"}","{\"text\":\" - damage: 50\",\"color\":\"white\",\"italic\":false}","{\"text\":\" - ammo: 6\",\"color\":\"white\",\"italic\":false}","{\"text\":\" - reload with speed: 3s\",\"color\":\"white\",\"italic\":false}"]},HideFlags:63,CustomModelData:11030000}
execute if score @s[nbt={SelectedItemSlot:0},scores={shoot=0}] rightClick matches 1.. run scoreboard players set @s shoot 1
execute if score @s[nbt={SelectedItemSlot:0},scores={shoot=1}] rightClick matches 1.. run scoreboard players remove @s totalShots 1
scoreboard players reset @s[nbt={SelectedItemSlot:0}] rightClick
execute if score @s shoot matches 1 run function classes:sniper/shoot
scoreboard players add @s[scores={shoot=1..}] shoot 1
scoreboard players set @s[scores={shoot=15..}] shoot 0
scoreboard players add @s[scores={totalShots=..0,reload=0}] reload 1
execute if score @s reload matches 1.. run function classes:sniper/reload
scoreboard players set @s[scores={crouching=1..}] crouching 0