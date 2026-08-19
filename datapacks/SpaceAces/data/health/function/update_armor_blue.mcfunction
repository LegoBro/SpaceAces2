#updates armor to display health

item replace entity @s[tag=!pro,tag=!invis,team=blue] armor.legs with minecraft:leather_leggings[!attribute_modifiers,dyed_color=1114367,enchantment_glint_override=false,enchantments={"binding_curse":1},unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]
item replace entity @s[tag=pro,tag=!invis,team=blue] armor.legs with minecraft:chainmail_leggings[!minecraft:attribute_modifiers,minecraft:enchantments={"minecraft:binding_curse":1},enchantment_glint_override=false,minecraft:unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]
item replace entity @s[tag=!pro,tag=!invis,team=blue] armor.chest with minecraft:leather_chestplate[!attribute_modifiers,dyed_color=1114367,enchantment_glint_override=false,enchantments={"binding_curse":1},unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]
item replace entity @s[tag=pro,tag=!invis,team=blue] armor.chest with minecraft:chainmail_chestplate[!minecraft:attribute_modifiers,minecraft:enchantments={"minecraft:binding_curse":1},enchantment_glint_override=false,minecraft:unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]
item replace entity @s[tag=!pro,tag=!invis,team=blue] armor.feet with minecraft:leather_boots[!attribute_modifiers,dyed_color=1114367,enchantment_glint_override=false,enchantments={"binding_curse":1},unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]
item replace entity @s[tag=pro,tag=!invis,team=blue] armor.feet with minecraft:chainmail_boots[!minecraft:attribute_modifiers,minecraft:enchantments={"minecraft:binding_curse":1},enchantment_glint_override=false,minecraft:unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]

function health:update

return 1