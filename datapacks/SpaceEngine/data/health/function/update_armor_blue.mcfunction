#updates armor to display health
scoreboard players set @s[scores={displayHealth=10..}] displayHealth 9
item replace entity @s[tag=!pro,tag=!invis,team=blue] armor.legs with minecraft:leather_leggings[minecraft:attribute_modifiers={modifiers:[{type:"minecraft:generic.armor",id:"minecraft:d03be21c-51f4-4994-a5f7-56260febbd16",operation:"add_value",amount:0.0d}]},minecraft:dyed_color={rgb:524543},minecraft:enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:0b},minecraft:unbreakable={show_in_tooltip:0b}]
item replace entity @s[tag=pro,tag=!invis,team=blue] armor.legs with minecraft:chainmail_leggings[minecraft:attribute_modifiers={modifiers:[{type:"minecraft:generic.armor",id:"minecraft:d03be21c-51f4-4994-a5f7-56260febbd16",operation:"add_value",amount:0.0d}]},minecraft:enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:0b},minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={}]
item replace entity @s[tag=!pro,tag=!invis,team=blue] armor.chest with minecraft:leather_chestplate[minecraft:attribute_modifiers={modifiers:[{type:"minecraft:generic.armor",id:"minecraft:d03be21c-51f4-4994-a5f7-56260febbd16",operation:"add_value",amount:0.0d}]},minecraft:dyed_color={rgb:524543},minecraft:enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:0b},minecraft:unbreakable={show_in_tooltip:0b}]
item replace entity @s[tag=pro,tag=!invis,team=blue] armor.chest with minecraft:chainmail_chestplate[minecraft:attribute_modifiers={modifiers:[{type:"minecraft:generic.armor",id:"minecraft:d03be21c-51f4-4994-a5f7-56260febbd16",operation:"add_value",amount:0.0d}]},minecraft:enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:0b},minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={}]
item replace entity @s[tag=!pro,tag=!invis,team=blue] armor.feet with minecraft:leather_boots[minecraft:attribute_modifiers={modifiers:[{type:"minecraft:generic.armor",id:"minecraft:d03be21c-51f4-4994-a5f7-56260febbd16",operation:"add_value",amount:0.0d}]},minecraft:dyed_color={rgb:524543},minecraft:enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:0b},minecraft:unbreakable={show_in_tooltip:0b}]
item replace entity @s[tag=pro,tag=!invis,team=blue] armor.feet with minecraft:chainmail_boots[minecraft:attribute_modifiers={modifiers:[{type:"minecraft:generic.armor",id:"minecraft:d03be21c-51f4-4994-a5f7-56260febbd16",operation:"add_value",amount:0.0d}]},minecraft:enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:0b},minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={}]

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
return 1