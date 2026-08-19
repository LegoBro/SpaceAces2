## Pathfinder (shocksmith) Main Tick:

# Primary: AsterRocket Launcher
execute unless score @s shoot matches 1.. run function class:4/shocksmith/primary/tick
execute if score @s shoot matches 1.. run function class:4/shocksmith/primary/use


# 1st Ability: Shock Grenade
execute unless score @s shoot matches 1.. if score @s ability.1.cooldown >= class.shocksmith.secondary.cost Numbers run function class:4/shocksmith/secondary/tick
execute if score @s shoot matches 1.. if score @s ability.1.cooldown >= class.shocksmith.secondary.cost Numbers run function class:4/shocksmith/secondary/use
execute unless score @s ability.1.cooldown >= class.shocksmith.secondary.cost Numbers run function class:4/shocksmith/secondary/cooldown

# 2nd Ability: Toggle
execute if score @s ability.2.cooldown matches ..0 run function class:4/shocksmith/stun/ready
execute if score @s ability.2.cooldown matches 1.. run function class:4/shocksmith/stun/cooldown

# Ultimate Ability: Fast Blast
execute if score @s ultimate_charge >= class.shocksmith.ultimate.charge Numbers run function class:4/shocksmith/shocksplosion/ready
execute unless score @s ultimate_charge >= class.shocksmith.ultimate.charge Numbers run function class:4/shocksmith/shocksplosion/cooldown

## Melee
execute unless score @s melee.cooldown matches 1.. if entity @s[tag=input.swap_hands] run function class:4/helper/punch

item replace entity @s weapon.offhand with emerald[item_model="class/shocksmith/left_arm",item_name="",tooltip_display={hide_tooltip:true}]
execute unless items entity @s armor.head * run item replace entity @s[tag=!invis] armor.head with emerald[item_model="class/shocksmith/head",enchantment_glint_override=false,enchantments={"binding_curse":1},item_name="",tooltip_display={hide_tooltip:true}]
execute unless items entity @s armor.legs * run item replace entity @s[tag=!invis] armor.legs with minecraft:leather_leggings[!attribute_modifiers,dyed_color=10062342,enchantment_glint_override=false,enchantments={"binding_curse":1},unbreakable={},item_name="",tooltip_display={hide_tooltip:true}]
execute unless items entity @s armor.chest * run item replace entity @s[tag=!invis] armor.chest with minecraft:leather_chestplate[!attribute_modifiers,dyed_color=10062342,enchantment_glint_override=false,enchantments={"binding_curse":1},unbreakable={},item_name="",tooltip_display={hide_tooltip:true}]
execute unless items entity @s armor.feet * run item replace entity @s[tag=!invis] armor.feet with minecraft:leather_boots[!attribute_modifiers,dyed_color=10062342,enchantment_glint_override=false,enchantments={"binding_curse":1},unbreakable={},item_name="",tooltip_display={hide_tooltip:true}]
execute unless items entity @s weapon.mainhand * run item replace entity @s weapon.mainhand with paper[item_model="class/shocksmith/right_arm",item_name="",tooltip_display={hide_tooltip:true}]
return 1