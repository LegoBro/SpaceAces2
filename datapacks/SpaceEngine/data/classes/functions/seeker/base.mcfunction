item replace entity @s[tag=!invis,scores={crouching=0},gamemode=!spectator] armor.head with minecraft:leather_helmet{HideFlags:63,AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.3,Operation:2,UUID:[I;-801381860,1374964116,-1510517210,267107606]}],Unbreakable:1,display:{color:7210759},Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}
item replace entity @s[tag=!invis,scores={crouching=1..}] armor.head with minecraft:leather_helmet{HideFlags:63,AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.2,Operation:2,UUID:[I;-801381860,1374964116,-1510517210,267107606]}],Unbreakable:1,display:{color:7210759},Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}

execute if entity @s[scores={activate_second=0}] run item replace entity @s hotbar.1 with carrot_on_a_stick{display:{Name:"{\"translate\":\"poison_jab\",\"color\":\"white\"}",Lore:["{\"translate\":\"poison_jab_lore1\",\"color\":\"white\"}","{\"translate\":\"poison_jab_lore2\",\"color\":\"white\"}"]},HideFlags:63,CustomModelData:11130001,Unbreakable:1}
execute if entity @s[scores={activate_second=1..}] run item replace entity @s hotbar.1 with gray_dye
scoreboard players set @s[nbt={SelectedItemSlot:1},scores={rightClick=1..}] activate_second 60
scoreboard players reset @s[nbt={SelectedItemSlot:1},scores={rightClick=1..}] rightClick
execute if entity @s[scores={activate_second=60}] run function classes:seeker/poison_jab/activate
scoreboard players remove @s[scores={activate_second=1..}] activate_second 1
execute if entity @s[scores={activate_second=50}] run function classes:seeker/poison_jab/deactivate

execute if entity @s[scores={activate_third=0}] run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:"{\"translate\":\"slow_field\",\"color\":\"white\"}",Lore:["{\"translate\":\"slow_field_lore1\",\"color\":\"white\"}","{\"translate\":\"slow_field_lore2\",\"color\":\"white\"}"]},HideFlags:63,CustomModelData:11130002,Unbreakable:1}
execute if entity @s[scores={activate_third=1..}] run item replace entity @s hotbar.2 with gray_dye
scoreboard players set @s[nbt={SelectedItemSlot:2},scores={rightClick=1..}] activate_third 300
scoreboard players reset @s[nbt={SelectedItemSlot:2},scores={rightClick=1..}] rightClick
execute if entity @s[scores={activate_third=300}] run function classes:seeker/slow_field/activate
scoreboard players remove @s[scores={activate_third=1..}] activate_third 1
execute if entity @s[scores={activate_third=240}] run function classes:seeker/slow_field/deactivate

# Passive
item replace entity @s hotbar.3 with scute{display:{Name:"{\"translate\":\"weak_glow\",\"color\":\"white\"}",Lore:["{\"translate\":\"weak_glow_lore1\",\"color\":\"white\"}","{\"translate\":\"weak_glow_lore2\",\"color\":\"white\"}"]},HideFlags:63,CustomModelData:11130003,Unbreakable:1}
function classes:seeker/weak_glow/run

scoreboard players set @s maxHealth 125

item replace entity @s[scores={reload=0,shoot=0}] hotbar.0 with carrot_on_a_stick{display:{Name:"{\"translate\":\"plasma_spreader\"}",Lore:["{\"translate\":\"plasma_spreader_lore\",\"color\":\"white\"}","{\"text\":\" - damage: 13\",\"color\":\"white\",\"italic\":false}","{\"text\":\" - ammo: 6\",\"color\":\"white\",\"italic\":false}","{\"text\":\" - reload with speed: 4s\",\"color\":\"white\",\"italic\":false}"]},HideFlags:63,CustomModelData:11130000,Unbreakable:1}
item replace entity @s[scores={reload=0,shoot=1..}] hotbar.0 with paper{display:{Name:"{\"translate\":\"plasma_spreader\"}",Lore:["{\"translate\":\"plasma_spreader_lore\",\"color\":\"white\"}","{\"text\":\" - damage: 13\",\"color\":\"white\",\"italic\":false}","{\"text\":\" - ammo: 6\",\"color\":\"white\",\"italic\":false}","{\"text\":\" - reload with speed: 4s\",\"color\":\"white\",\"italic\":false}"]},HideFlags:63,CustomModelData:11130000}
execute if score @s[nbt={SelectedItemSlot:0},scores={shoot=0}] rightClick matches 1.. run scoreboard players set @s shoot 1
execute if score @s[nbt={SelectedItemSlot:0},scores={shoot=1}] rightClick matches 1.. run scoreboard players remove @s totalShots 1
scoreboard players reset @s[nbt={SelectedItemSlot:0}] rightClick
execute if score @s shoot matches 1 run function classes:seeker/shoot
scoreboard players add @s[scores={shoot=1..}] shoot 1
scoreboard players set @s[scores={shoot=5..}] shoot 0
scoreboard players add @s[scores={totalShots=..0,reload=0}] reload 1
execute if score @s reload matches 1.. run function classes:seeker/reload
scoreboard players set @s[scores={crouching=1..}] crouching 0