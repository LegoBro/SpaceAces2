item replace entity @s[tag=!invis,scores={crouching=0},gamemode=!spectator] armor.head with minecraft:leather_helmet{HideFlags:63,AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.3,Operation:2,UUID:[I;-801381860,1374964116,-1510517210,267107606]}],Unbreakable:1,display:{color:16716527},Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}
item replace entity @s[tag=!invis,scores={crouching=1..}] armor.head with minecraft:leather_helmet{HideFlags:63,AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.1,Operation:2,UUID:[I;-801381860,1374964116,-1510517210,267107606]}],Unbreakable:1,display:{color:16716527},Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}

execute if entity @s[scores={activate_second=0}] run item replace entity @s hotbar.1 with carrot_on_a_stick{display:{Name:"{\"translate\":\"angry_medic\",\"color\":\"white\"}",Lore:["{\"translate\":\"angry_medic_lore1\",\"color\":\"white\"}","{\"translate\":\"angry_medic_lore2\",\"color\":\"white\"}","{\"translate\":\"angry_medic_lore3\",\"color\":\"white\"}"]},HideFlags:63,CustomModelData:11060001,Unbreakable:1}
execute if entity @s[scores={activate_second=1..}] run item replace entity @s hotbar.1 with gray_dye
scoreboard players set @s[nbt={SelectedItemSlot:1},scores={rightClick=1..}] activate_second 300
scoreboard players reset @s[nbt={SelectedItemSlot:1},scores={rightClick=1..}] rightClick
execute if entity @s[scores={activate_second=300}] run function classes:healer/angry_medic/activate
scoreboard players remove @s[scores={activate_second=1..}] activate_second 1
execute if entity @s[scores={activate_second=200}] run function classes:healer/angry_medic/deactivate

execute if entity @s[scores={activate_third=0}] run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:"{\"translate\":\"over_heal_machine\",\"color\":\"white\"}",Lore:["{\"translate\":\"over_heal_machine_lore1\",\"color\":\"white\"}","{\"translate\":\"over_heal_machine_lore2\",\"color\":\"white\"}"]},HideFlags:63,CustomModelData:11060002,Unbreakable:1}
execute if entity @s[scores={activate_third=1..}] run item replace entity @s hotbar.2 with gray_dye
scoreboard players set @s[nbt={SelectedItemSlot:2},scores={rightClick=1..}] activate_third 400
scoreboard players reset @s[nbt={SelectedItemSlot:2},scores={rightClick=1..}] rightClick
execute if entity @s[scores={activate_third=400}] run function classes:healer/over_heal_machine/activate
scoreboard players remove @s[scores={activate_third=1..}] activate_third 1
execute if entity @s[scores={activate_third=200}] run function classes:healer/over_heal_machine/deactivate

# Passive
item replace entity @s hotbar.3 with scute{display:{Name:"{\"translate\":\"days_work\",\"color\":\"white\"}",Lore:["{\"translate\":\"days_work_lore1\",\"color\":\"white\"}","{\"translate\":\"days_work_lore2\",\"color\":\"white\"}"]},HideFlags:63,CustomModelData:11060003,Unbreakable:1}
execute if entity @s[scores={last_shot=1..}] run function classes:healer/days_work/run

scoreboard players set @s maxHealth 150

item replace entity @s[scores={reload=0,shoot=0}] hotbar.0 with carrot_on_a_stick{display:{Name:"{\"translate\":\"heal_pistol\"}",Lore:["{\"translate\":\"heal_pistol_lore\",\"color\":\"white\"}","{\"text\":\" - damage: 7\",\"color\":\"white\",\"italic\":false}","{\"text\":\" - ammo: 12\",\"color\":\"white\",\"italic\":false}","{\"text\":\" - reload with speed: 1.25s\",\"color\":\"white\",\"italic\":false}"]},HideFlags:63,CustomModelData:11060000,Unbreakable:1}
item replace entity @s[scores={reload=0,shoot=1..}] hotbar.0 with paper{display:{Name:"{\"translate\":\"heal_pistol\"}",Lore:["{\"translate\":\"heal_pistol_lore\",\"color\":\"white\"}","{\"text\":\" - damage: 7\",\"color\":\"white\",\"italic\":false}","{\"text\":\" - ammo: 12\",\"color\":\"white\",\"italic\":false}","{\"text\":\" - reload with speed: 1.25s\",\"color\":\"white\",\"italic\":false}"]},HideFlags:63,CustomModelData:11060000}
execute if score @s[nbt={SelectedItemSlot:0},scores={shoot=0}] rightClick matches 1.. run scoreboard players set @s shoot 1
execute if score @s[nbt={SelectedItemSlot:0},scores={shoot=1}] rightClick matches 1.. run scoreboard players remove @s totalShots 1
scoreboard players reset @s[nbt={SelectedItemSlot:0}] rightClick
execute if score @s shoot matches 1 run function classes:healer/shoot
scoreboard players add @s[scores={shoot=1..}] shoot 1
scoreboard players set @s[scores={shoot=4..}] shoot 0
scoreboard players add @s[scores={totalShots=..0,reload=0}] reload 1
execute if score @s reload matches 1.. run function classes:healer/reload
scoreboard players set @s[scores={crouching=1..}] crouching 0