#updates armor to display health
item replace entity @s[tag=!pro,tag=!invis,tag=!escape,team=red] armor.legs with minecraft:leather_leggings[minecraft:attribute_modifiers={modifiers:[{type:"minecraft:armor",id:"minecraft:d03be21c-51f4-4994-a5f7-56260febbd16",operation:"add_value",amount:0.0d}]},minecraft:dyed_color={rgb:16711680},minecraft:enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:0b},minecraft:unbreakable={show_in_tooltip:0b}]
item replace entity @s[tag=pro,tag=!invis,tag=!escape,team=red] armor.legs with minecraft:golden_leggings[minecraft:attribute_modifiers={modifiers:[{type:"minecraft:armor",id:"minecraft:d03be21c-51f4-4994-a5f7-56260febbd16",operation:"add_value",amount:0.0d}]},minecraft:enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:0b},minecraft:unbreakable={show_in_tooltip:0b},tooltip_display={hidden_components:["unbreakable"]}]
item replace entity @s[tag=!pro,tag=!invis,tag=!escape,team=red] armor.chest with minecraft:leather_chestplate[minecraft:attribute_modifiers={modifiers:[{type:"minecraft:armor",id:"minecraft:d03be21c-51f4-4994-a5f7-56260febbd16",operation:"add_value",amount:0.0d}]},minecraft:dyed_color={rgb:16711680},minecraft:enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:0b},minecraft:unbreakable={show_in_tooltip:0b}]
item replace entity @s[tag=pro,tag=!invis,tag=!escape,team=red] armor.chest with minecraft:golden_chestplate[minecraft:attribute_modifiers={modifiers:[{type:"minecraft:armor",id:"minecraft:d03be21c-51f4-4994-a5f7-56260febbd16",operation:"add_value",amount:0.0d}]},minecraft:enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:0b},minecraft:unbreakable={show_in_tooltip:0b},tooltip_display={hidden_components:["unbreakable"]}]
item replace entity @s[tag=!pro,tag=!invis,tag=!escape,team=red] armor.feet with minecraft:leather_boots[minecraft:attribute_modifiers={modifiers:[{type:"minecraft:armor",id:"minecraft:d03be21c-51f4-4994-a5f7-56260febbd16",operation:"add_value",amount:0.0d}]},minecraft:dyed_color={rgb:16711680},minecraft:enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:0b},minecraft:unbreakable={show_in_tooltip:0b}]
item replace entity @s[tag=pro,tag=!invis,tag=!escape,team=red] armor.feet with minecraft:golden_boots[minecraft:attribute_modifiers={modifiers:[{type:"minecraft:armor",id:"minecraft:d03be21c-51f4-4994-a5f7-56260febbd16",operation:"add_value",amount:0.0d}]},minecraft:enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:0b},minecraft:unbreakable={show_in_tooltip:0b},tooltip_display={hidden_components:["unbreakable"]}]

function health:update
return 1