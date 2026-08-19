## Pathfinder (bomber) Main Tick:

## Removes sticky owner
tag @e[tag=class.bomber.sticky_owned] remove class.bomber.sticky_owned

# Primary: Plasma Grenade Launcher

execute if entity @s[tag=!class.bomber.sticky_mode] run function class:4/bomber/primary/main
execute if entity @s[tag=class.bomber.sticky_mode] run function class:4/bomber/sticky_bomb/main


# 1st Ability: Detonate
function class:4/bomber/detonator/locate
execute if score @s ability.1.cooldown matches 1.. run function class:4/bomber/detonator/ready
execute if score @s ability.1.cooldown matches ..0 run function class:4/bomber/detonator/cooldown


# 2nd Ability: Toggle
execute if score @s ability.2.cooldown matches ..0 run function class:4/bomber/smokescreen/ready
execute if score @s ability.2.cooldown matches 1.. run function class:4/bomber/smokescreen/cooldown
# Sticky Toggle
tag @s[tag=input.sneak] add class.bomber.sticky_mode
tag @s[tag=!input.sneak] remove class.bomber.sticky_mode

# Ultimate Ability: Blast Zone
execute if score @s ultimate_charge >= class.bomber.ultimate.charge Numbers run function class:4/bomber/blast_zone/ready
execute unless score @s ultimate_charge >= class.bomber.ultimate.charge Numbers run function class:4/bomber/blast_zone/cooldown

## Melee
execute unless score @s melee.cooldown matches 1.. if entity @s[tag=input.swap_hands] run function class:4/helper/punch

item replace entity @s weapon.offhand with emerald[item_model="class/bomber/left_arm",item_name="",tooltip_display={hide_tooltip:true}]
execute unless items entity @s armor.head * run item replace entity @s[tag=!invis] armor.head with emerald[item_model="class/bomber/head",enchantment_glint_override=false,enchantments={"binding_curse":1},item_name="",tooltip_display={hide_tooltip:true}]
execute unless items entity @s armor.legs * run item replace entity @s[tag=!invis] armor.legs with minecraft:leather_leggings[!attribute_modifiers,dyed_color=625319,enchantment_glint_override=false,enchantments={"binding_curse":1},unbreakable={},item_name="",tooltip_display={hide_tooltip:true}]
execute unless items entity @s armor.chest * run item replace entity @s[tag=!invis] armor.chest with minecraft:leather_chestplate[!attribute_modifiers,dyed_color=625319,enchantment_glint_override=false,enchantments={"binding_curse":1},unbreakable={},item_name="",tooltip_display={hide_tooltip:true}]
execute unless items entity @s armor.feet * run item replace entity @s[tag=!invis] armor.feet with minecraft:leather_boots[!attribute_modifiers,dyed_color=625319,enchantment_glint_override=false,enchantments={"binding_curse":1},unbreakable={},item_name="",tooltip_display={hide_tooltip:true}]
execute unless items entity @s weapon.mainhand * run item replace entity @s weapon.mainhand with paper[item_model="class/bomber/right_arm",item_name="",tooltip_display={hide_tooltip:true}]

return 1