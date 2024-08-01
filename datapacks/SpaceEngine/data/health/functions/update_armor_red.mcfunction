#updates armor to display health
scoreboard players set @s[scores={displayHealth=10..}] displayHealth 9
item replace entity @s[tag=!pro,team=red,tag=!invis,tag=!escape] armor.legs with leather_leggings{HideFlags:7,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-801381860,1374964116,-1510517210,267107606]}],Unbreakable:1,display:{color:16711680},Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}
item replace entity @s[tag=pro,team=red,tag=!invis,tag=!escape] armor.legs with golden_leggings{HideFlags:63,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-801381860,1374964116,-1510517210,267107606]}]}
item replace entity @s[tag=!pro,team=red,tag=!invis,tag=!escape] armor.chest with leather_chestplate{HideFlags:7,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-801381860,1374964116,-1510517210,267107606]}],Unbreakable:1,display:{color:16711680},Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}
item replace entity @s[tag=pro,team=red,tag=!invis,tag=!escape] armor.chest with golden_chestplate{HideFlags:63,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-801381860,1374964116,-1510517210,267107606]}]}
item replace entity @s[tag=!pro,team=red,tag=!invis,tag=!escape] armor.feet with leather_boots{HideFlags:7,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-801381860,1374964116,-1510517210,267107606]}],Unbreakable:1,display:{color:16711680},Enchantments:[{id:"minecraft:binding_curse",lvl:1}]}
item replace entity @s[tag=pro,team=red,tag=!invis,tag=!escape] armor.feet with golden_boots{HideFlags:63,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-801381860,1374964116,-1510517210,267107606]}]}

attribute @s[scores={displayHealth=9}] minecraft:generic.max_health base set 20
attribute @s[scores={displayHealth=8}] minecraft:generic.max_health base set 18
attribute @s[scores={displayHealth=7}] minecraft:generic.max_health base set 16
attribute @s[scores={displayHealth=6}] minecraft:generic.max_health base set 14
attribute @s[scores={displayHealth=5}] minecraft:generic.max_health base set 12
attribute @s[scores={displayHealth=4}] minecraft:generic.max_health base set 10
attribute @s[scores={displayHealth=3}] minecraft:generic.max_health base set 8
attribute @s[scores={displayHealth=2}] minecraft:generic.max_health base set 6
attribute @s[scores={displayHealth=1}] minecraft:generic.max_health base set 4
attribute @s[scores={displayHealth=0}] minecraft:generic.max_health base set 2