item replace entity @s[tag=!invis,scores={crouching=0},gamemode=!spectator] armor.head with minecraft:leather_helmet{HideFlags:63,AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.3,Operation:2,UUID:[I;-801381860,1374964116,-1510517210,267107606]}],Unbreakable:1,display:{color:16777215},Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}
item replace entity @s[tag=!invis,scores={crouching=1..}] armor.head with minecraft:leather_helmet{HideFlags:63,AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.15,Operation:2,UUID:[I;-801381860,1374964116,-1510517210,267107606]}],Unbreakable:1,display:{color:16777215},Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}

execute if entity @s[scores={activate_second=0}] run item replace entity @s hotbar.1 with carrot_on_a_stick{display:{Name:"{\"translate\":\"cloak\",\"color\":\"white\"}",Lore:["{\"translate\":\"cloak_lore1\",\"color\":\"white\"}","{\"translate\":\"cloak_lore2\",\"color\":\"white\"}"]},HideFlags:63,CustomModelData:11110001,Unbreakable:1}
execute if entity @s[scores={activate_second=1..}] run item replace entity @s hotbar.1 with gray_dye
scoreboard players set @s[nbt={SelectedItemSlot:1},scores={rightClick=1..}] activate_second 200
scoreboard players reset @s[nbt={SelectedItemSlot:1},scores={rightClick=1..}] rightClick
execute if entity @s[scores={activate_second=200}] run function classes:infiltraitor/cloak/activate
scoreboard players remove @s[scores={activate_second=1..}] activate_second 1
execute if entity @s[scores={activate_second=100}] run function classes:infiltraitor/cloak/deactivate

execute if entity @s[scores={activate_third=0}] run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:"{\"translate\":\"jammer\",\"color\":\"white\"}",Lore:["{\"translate\":\"jammer_lore1\",\"color\":\"white\"}","{\"translate\":\"jammer_lore2\",\"color\":\"white\"}","{\"translate\":\"jammer_lore3\",\"color\":\"white\"}","{\"translate\":\"jammer_lore4\",\"color\":\"white\"}"]},HideFlags:63,CustomModelData:11110002,Unbreakable:1}
execute if entity @s[scores={activate_third=1..}] run item replace entity @s hotbar.2 with gray_dye
scoreboard players set @s[nbt={SelectedItemSlot:2},scores={rightClick=1..}] activate_third 300
scoreboard players reset @s[nbt={SelectedItemSlot:2},scores={rightClick=1..}] rightClick
execute if entity @s[scores={activate_third=300}] run function classes:infiltraitor/jammer/activate
scoreboard players remove @s[scores={activate_third=1..}] activate_third 1
execute if entity @s[scores={activate_third=295}] run function classes:infiltraitor/jammer/deactivate

# Passive
item replace entity @s hotbar.3 with scute{display:{Name:"{\"translate\":\"recloak\",\"color\":\"white\"}",Lore:["{\"translate\":\"recloak_lore1\",\"color\":\"white\"}","{\"translate\":\"recloak_lore2\",\"color\":\"white\"}"]},HideFlags:63,CustomModelData:11110003,Unbreakable:1}
function classes:infiltraitor/recloak/run

scoreboard players set @s maxHealth 100

item replace entity @s[scores={reload=0,shoot=0}] hotbar.0 with carrot_on_a_stick{display:{Name:"{\"translate\":\"plasma_pistol\"}",Lore:["{\"translate\":\"plasma_pistol_lore\",\"color\":\"white\"}","{\"text\":\" - damage: 50\",\"color\":\"white\",\"italic\":false}","{\"text\":\" - ammo: 6\",\"color\":\"white\",\"italic\":false}","{\"text\":\" - reload with speed: 1.75s\",\"color\":\"white\",\"italic\":false}"]},HideFlags:63,CustomModelData:11110000,Unbreakable:1}
item replace entity @s[scores={reload=0,shoot=1..}] hotbar.0 with paper{display:{Name:"{\"translate\":\"plasma_pistol\"}",Lore:["{\"translate\":\"plasma_pistol_lore\",\"color\":\"white\"}","{\"text\":\" - damage: 50\",\"color\":\"white\",\"italic\":false}","{\"text\":\" - ammo: 6\",\"color\":\"white\",\"italic\":false}","{\"text\":\" - reload with speed: 1.75s\",\"color\":\"white\",\"italic\":false}"]},HideFlags:63,CustomModelData:11110000}
execute if score @s[nbt={SelectedItemSlot:0},scores={shoot=0}] rightClick matches 1.. run scoreboard players set @s shoot 1
execute if score @s[nbt={SelectedItemSlot:0},scores={shoot=1}] rightClick matches 1.. run scoreboard players remove @s totalShots 1
scoreboard players reset @s[nbt={SelectedItemSlot:0}] rightClick
execute if score @s shoot matches 1 run function classes:infiltraitor/shoot
scoreboard players add @s[scores={shoot=1..}] shoot 1
scoreboard players set @s[scores={shoot=15..}] shoot 0
scoreboard players add @s[scores={totalShots=..0,reload=0}] reload 1
execute if score @s reload matches 1.. run function classes:infiltraitor/reload
scoreboard players set @s[scores={crouching=1..}] crouching 0