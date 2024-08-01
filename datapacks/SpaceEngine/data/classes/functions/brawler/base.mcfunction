item replace entity @s[tag=!invis,scores={crouching=0},gamemode=!spectator] armor.head with minecraft:leather_helmet{HideFlags:63,AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:-0.1,Operation:2,UUID:[I;-801381860,1374964116,-1510517210,267107606]}],Unbreakable:1,display:{color:16743705},Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}
item replace entity @s[tag=!invis,scores={crouching=1..}] armor.head with minecraft:leather_helmet{HideFlags:63,AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0,Operation:2,UUID:[I;-801381860,1374964116,-1510517210,267107606]}],Unbreakable:1,display:{color:16743705},Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}

execute if entity @s[scores={activate_second=0}] run item replace entity @s hotbar.1 with carrot_on_a_stick{display:{Name:"{\"translate\":\"sword_throw\",\"color\":\"white\"}",Lore:["{\"translate\":\"sword_throw_lore1\",\"color\":\"white\"}","{\"translate\":\"sword_throw_lore2\",\"color\":\"white\"}","{\"translate\":\"sword_throw_lore3\",\"color\":\"white\"}"]},HideFlags:63,CustomModelData:11070001,Unbreakable:1}
execute if entity @s[scores={activate_second=1..}] run item replace entity @s hotbar.1 with gray_dye
scoreboard players set @s[nbt={SelectedItemSlot:1},scores={rightClick=1..}] activate_second 100
scoreboard players reset @s[nbt={SelectedItemSlot:1},scores={rightClick=1..}] rightClick
execute if entity @s[scores={activate_second=100}] run function classes:brawler/sword_throw/activate
scoreboard players remove @s[scores={activate_second=1..}] activate_second 1
execute if entity @s[scores={activate_second=95}] run function classes:brawler/sword_throw/deactivate

execute if entity @s[scores={activate_third=0}] run item replace entity @s hotbar.2 with carrot_on_a_stick{display:{Name:"{\"translate\":\"spin_slash\",\"color\":\"white\"}",Lore:["{\"translate\":\"spin_slash_lore1\",\"color\":\"white\"}","{\"translate\":\"spin_slash_lore2\",\"color\":\"white\"}","{\"translate\":\"spin_slash_lore3\",\"color\":\"white\"}"]},HideFlags:63,CustomModelData:11070002,Unbreakable:1}
execute if entity @s[scores={activate_third=1..}] run item replace entity @s hotbar.2 with gray_dye
scoreboard players set @s[nbt={SelectedItemSlot:2},scores={rightClick=1..}] activate_third 400
scoreboard players reset @s[nbt={SelectedItemSlot:2},scores={rightClick=1..}] rightClick
execute if entity @s[scores={activate_third=389..400}] run function classes:brawler/spin_slash/activate
scoreboard players remove @s[scores={activate_third=1..}] activate_third 1
execute if entity @s[scores={activate_third=389}] run function classes:brawler/spin_slash/deactivate

# Passive
item replace entity @s hotbar.3 with scute{display:{Name:"{\"translate\":\"final_stance\",\"color\":\"white\"}",Lore:["{\"translate\":\"final_stance_lore1\",\"color\":\"white\"}","{\"translate\":\"final_stance_lore2\",\"color\":\"white\"}"]},HideFlags:63,CustomModelData:11070003,Unbreakable:1}
function classes:brawler/position/run

scoreboard players set @s maxHealth 400

item replace entity @s[scores={reload=0,shoot=0}] hotbar.0 with carrot_on_a_stick{display:{Name:"{\"translate\":\"plasma_sword\"}",Lore:["{\"translate\":\"plasma_sword_lore\",\"color\":\"white\"}","{\"text\":\" - damage: 35\",\"color\":\"white\",\"italic\":false}","{\"text\":\" - ammo: 12\",\"color\":\"white\",\"italic\":false}","{\"text\":\" - reload with speed: 2s\",\"color\":\"white\",\"italic\":false}"]},HideFlags:63,CustomModelData:11070000,Unbreakable:1}
item replace entity @s[scores={reload=0,shoot=1..}] hotbar.0 with paper{display:{Name:"{\"translate\":\"plasma_sword\"}",Lore:["{\"translate\":\"plasma_sword_lore\",\"color\":\"white\"}","{\"text\":\" - damage: 35\",\"color\":\"white\",\"italic\":false}","{\"text\":\" - ammo: 12\",\"color\":\"white\",\"italic\":false}","{\"text\":\" - reload speed: 2s\",\"color\":\"white\",\"italic\":false}"]},HideFlags:63,CustomModelData:11070000}
    execute if score @s[nbt={SelectedItemSlot:0},scores={shoot=0}] rightClick matches 1.. run scoreboard players set @s shoot 1
    execute if score @s[nbt={SelectedItemSlot:0},scores={shoot=1}] rightClick matches 1.. run scoreboard players remove @s totalShots 1
    scoreboard players reset @s[nbt={SelectedItemSlot:0}] rightClick
    execute if score @s shoot matches 1 run function classes:brawler/test_swipe
    scoreboard players add @s[scores={shoot=1..}] shoot 1
    scoreboard players set @s[scores={shoot=10..}] shoot 0
    scoreboard players add @s[scores={totalShots=..0,reload=0}] reload 1
    execute if score @s reload matches 1.. run function classes:brawler/reload
    scoreboard players set @s[scores={crouching=1..}] crouching 0
