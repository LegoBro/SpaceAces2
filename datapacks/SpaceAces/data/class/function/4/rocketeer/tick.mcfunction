## Pathfinder (rocketeer) Main Tick:

# Primary: AsterRocket Launcher
execute unless score @s reload matches 1.. unless score @s shoot matches 1.. run function class:4/rocketeer/primary/tick
execute if score @s reload matches 1.. run function class:4/rocketeer/primary/reloading
execute unless score @s reload matches 1.. if score @s shoot matches 1.. run function class:4/rocketeer/primary/use


# 1st Ability: Detonate
execute if score @s ability.1.cooldown matches ..0 run function class:4/rocketeer/piercing_dart/ready
execute if score @s ability.1.cooldown matches 1.. run function class:4/rocketeer/piercing_dart/cooldown

# 2nd Ability: Toggle
execute if score @s ability.2.cooldown matches ..0 run function class:4/rocketeer/rocket_wall/ready
execute if score @s ability.2.cooldown matches 1.. run function class:4/rocketeer/rocket_wall/cooldown

# Passive: Rocket Boots
execute unless predicate input:jump run effect clear @s slow_falling
execute unless predicate input:on_ground if predicate input:jump run function class:4/rocketeer/rocket_boots/run

# Ultimate Ability: Fast Blast
execute if score @s ultimate_charge >= class.rocketeer.ultimate.charge Numbers run function class:4/rocketeer/locking_on/ready
execute unless score @s ultimate_charge >= class.rocketeer.ultimate.charge Numbers run function class:4/rocketeer/locking_on/cooldown

## Melee
execute unless score @s melee.cooldown matches 1.. if entity @s[tag=input.swap_hands] run function class:4/helper/punch

execute unless score @s SelectedItem matches 1..2 run item replace entity @s weapon.offhand with emerald[item_model="class/rocketeer/left_arm",item_name="",tooltip_display={hide_tooltip:true}]
execute unless items entity @s armor.head * run item replace entity @s[tag=!invis] armor.head with emerald[item_model="class/rocketeer/head",enchantment_glint_override=false,enchantments={"binding_curse":1},item_name="",tooltip_display={hide_tooltip:true}]
execute unless items entity @s armor.legs * run item replace entity @s[tag=!invis] armor.legs with minecraft:leather_leggings[!attribute_modifiers,dyed_color=25439,enchantment_glint_override=false,enchantments={"binding_curse":1},unbreakable={},item_name="",tooltip_display={hide_tooltip:true}]
execute unless items entity @s armor.chest * run item replace entity @s[tag=!invis] armor.chest with minecraft:leather_chestplate[!attribute_modifiers,dyed_color=25439,enchantment_glint_override=false,enchantments={"binding_curse":1},unbreakable={},item_name="",tooltip_display={hide_tooltip:true}]
execute unless items entity @s armor.feet * run item replace entity @s[tag=!invis] armor.feet with minecraft:leather_boots[!attribute_modifiers,dyed_color=25439,enchantment_glint_override=false,enchantments={"binding_curse":1},unbreakable={},item_name="",tooltip_display={hide_tooltip:true}]
execute unless items entity @s weapon.mainhand * run item replace entity @s weapon.mainhand with paper[item_model="class/rocketeer/right_arm",item_name="",tooltip_display={hide_tooltip:true}]
return 1