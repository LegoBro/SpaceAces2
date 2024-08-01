item replace entity @s[tag=!invis,scores={crouching=0},gamemode=!spectator] armor.head with minecraft:leather_helmet{HideFlags:63,AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.3,Operation:2,UUID:[I;-801381860,1374964116,-1510517210,267107606]}],Unbreakable:1,display:{color:3669775},Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}
item replace entity @s[tag=!invis,scores={crouching=1..}] armor.head with minecraft:leather_helmet{HideFlags:63,AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.2,Operation:2,UUID:[I;-801381860,1374964116,-1510517210,267107606]}],Unbreakable:1,display:{color:3669775},Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}

execute if entity @s[scores={activate_second=0}] run item replace entity @s hotbar.1 with carrot_on_a_stick{display:{Name:"{\"translate\":\"warp\",\"color\":\"white\"}",Lore:["{\"translate\":\"warp_lore1\",\"color\":\"white\"}","{\"translate\":\"warp_lore2\",\"color\":\"white\"}"]},HideFlags:63,CustomModelData:11080001,Unbreakable:1}
execute if entity @s[scores={activate_second=1..}] run item replace entity @s hotbar.1 with gray_dye
scoreboard players set @s[nbt={SelectedItemSlot:1},scores={rightClick=1..}] activate_second 100
scoreboard players reset @s[nbt={SelectedItemSlot:1},scores={rightClick=1..}] rightClick
execute if entity @s[scores={activate_second=100}] run function classes:mobility/warp/activate
scoreboard players remove @s[scores={activate_second=1..}] activate_second 1
execute if entity @s[scores={activate_second=99}] run function classes:mobility/warp/deactivate

execute if entity @s[scores={activate_third=0}] run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:"{\"translate\":\"flash_grenade\",\"color\":\"white\"}",Lore:["{\"translate\":\"flash_grenade_lore1\",\"color\":\"white\"}","{\"translate\":\"flash_grenade_lore2\",\"color\":\"white\"}"]},HideFlags:63,CustomModelData:11080002,Unbreakable:1}
execute if entity @s[scores={activate_third=1..}] run item replace entity @s hotbar.2 with gray_dye
scoreboard players set @s[nbt={SelectedItemSlot:2},scores={rightClick=1..}] activate_third 160
scoreboard players reset @s[nbt={SelectedItemSlot:2},scores={rightClick=1..}] rightClick
execute if entity @s[scores={activate_third=160}] run function classes:mobility/flash_grenade/activate
scoreboard players remove @s[scores={activate_third=1..}] activate_third 1
execute if entity @s[scores={activate_third=150}] run function classes:mobility/flash_grenade/deactivate

# Passive
item replace entity @s hotbar.3 with scute{display:{Name:"{\"translate\":\"power_pants\",\"color\":\"white\"}",Lore:["{\"translate\":\"power_pants_lore1\",\"color\":\"white\"}","{\"translate\":\"power_pants_lore2\",\"color\":\"white\"}"]},HideFlags:63,CustomModelData:11080003,Unbreakable:1}
effect give @s jump_boost 1 1 true

scoreboard players set @s maxHealth 150

item replace entity @s[scores={reload=0,shoot=0}] hotbar.0 with carrot_on_a_stick{display:{Name:"{\"translate\":\"unstable_surge_rifle\"}",Lore:["{\"translate\":\"unstable_surge_rifle_lore\",\"color\":\"white\"}","{\"text\":\" - damage: 15\",\"color\":\"white\",\"italic\":false}","{\"text\":\" - ammo: 15\",\"color\":\"white\",\"italic\":false}","{\"text\":\" - reload with speed: 2.5s\",\"color\":\"white\",\"italic\":false}"]},HideFlags:63,CustomModelData:11080000,Unbreakable:1}
item replace entity @s[scores={reload=0,shoot=1..}] hotbar.0 with paper{display:{Name:"{\"translate\":\"unstable_surge_rifle\"}",Lore:["{\"translate\":\"unstable_surge_rifle_lore\",\"color\":\"white\"}","{\"text\":\" - damage: 15\",\"color\":\"white\",\"italic\":false}","{\"text\":\" - ammo: 15\",\"color\":\"white\",\"italic\":false}","{\"text\":\" - reload with speed: 2.5s\",\"color\":\"white\",\"italic\":false}"]},HideFlags:63,CustomModelData:11080000}
execute if score @s[nbt={SelectedItemSlot:0},scores={shoot=0}] rightClick matches 1.. run scoreboard players set @s shoot 1
execute if score @s[nbt={SelectedItemSlot:0},scores={shoot=1}] rightClick matches 1.. run scoreboard players remove @s totalShots 1
scoreboard players reset @s[nbt={SelectedItemSlot:0}] rightClick
execute if score @s shoot matches 1 run function classes:mobility/shoot
scoreboard players add @s[scores={shoot=1..}] shoot 1
scoreboard players set @s[scores={shoot=3..}] shoot 0
scoreboard players add @s[scores={totalShots=..0,reload=0}] reload 1
execute if score @s reload matches 1.. run function classes:mobility/reload
scoreboard players set @s[scores={crouching=1..}] crouching 0