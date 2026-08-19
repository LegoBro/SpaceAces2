## Pathfinder (scientist) Main Tick:

# Primary: AsterRocket Launcher
execute unless score @s reload matches 1.. unless score @s shoot matches 1.. run function class:4/scientist/primary/tick
execute if score @s reload matches 1.. run function class:4/scientist/primary/reloading
execute unless score @s reload matches 1.. if score @s shoot matches 1.. run function class:4/scientist/primary/use


# 1st Ability: ChemDispenser
execute if score @s ability.1.cooldown matches ..0 run function class:4/scientist/cascade/ready
execute if score @s ability.1.cooldown matches 1.. run function class:4/scientist/cascade/cooldown

# 2nd Ability: Toggle
execute if score @s ability.2.cooldown matches ..0 run function class:4/scientist/chem_dispenser/ready
execute if score @s ability.2.cooldown matches 1.. run function class:4/scientist/chem_dispenser/cooldown

# Ultimate Ability: Toxic Carpet
execute if score @s ultimate_charge >= class.scientist.ultimate.charge Numbers run function class:4/scientist/toxic_carpet/ready
execute unless score @s ultimate_charge >= class.scientist.ultimate.charge Numbers run function class:4/scientist/toxic_carpet/cooldown

## Melee
execute unless score @s melee.cooldown matches 1.. if entity @s[tag=input.swap_hands] run function class:4/helper/punch

item replace entity @s weapon.offhand with emerald[item_model="class/scientist/left_arm",item_name="",tooltip_display={hide_tooltip:true}]
execute unless items entity @s armor.head * run item replace entity @s[tag=!invis] armor.head with emerald[item_model="class/scientist/head",enchantment_glint_override=false,enchantments={"binding_curse":1},item_name="",tooltip_display={hide_tooltip:true}]
execute unless items entity @s armor.legs * run item replace entity @s[tag=!invis] armor.legs with minecraft:leather_leggings[!attribute_modifiers,dyed_color=8949662,enchantment_glint_override=false,enchantments={"binding_curse":1},unbreakable={},item_name="",tooltip_display={hide_tooltip:true}]
execute unless items entity @s armor.chest * run item replace entity @s[tag=!invis] armor.chest with minecraft:leather_chestplate[!attribute_modifiers,dyed_color=8949662,enchantment_glint_override=false,enchantments={"binding_curse":1},unbreakable={},item_name="",tooltip_display={hide_tooltip:true}]
execute unless items entity @s armor.feet * run item replace entity @s[tag=!invis] armor.feet with minecraft:leather_boots[!attribute_modifiers,dyed_color=8949662,enchantment_glint_override=false,enchantments={"binding_curse":1},unbreakable={},item_name="",tooltip_display={hide_tooltip:true}]
execute unless items entity @s weapon.mainhand * run item replace entity @s weapon.mainhand with paper[item_model="class/scientist/right_arm",item_name="",tooltip_display={hide_tooltip:true}]
return 1