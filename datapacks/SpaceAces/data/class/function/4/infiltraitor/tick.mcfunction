## Shadow Op (infiltraitor) Main Tick:

# Primary: Surge Rifle

execute unless score @s reload matches 1.. unless score @s shoot matches 1.. run function class:4/infiltraitor/primary/tick
execute if score @s reload matches 1.. run function class:4/infiltraitor/primary/reloading
execute unless score @s reload matches 1.. if score @s shoot matches 1.. run function class:4/infiltraitor/primary/use


# 1st Ability: Plasma Grenade
execute if score @s ability.1.cooldown matches ..0 run function class:4/infiltraitor/cloak/ready
execute if score @s ability.1.cooldown matches 1.. run function class:4/infiltraitor/cloak/cooldown

# 2nd Ability: Burst Heal
execute if score @s ability.2.cooldown matches ..0 run function class:4/infiltraitor/fused_detonator/ready
execute if score @s ability.2.cooldown matches 1.. run function class:4/infiltraitor/fused_detonator/cooldown

# Ultimate Ability: Projected Clone
execute if score @s ultimate_charge >= class.infiltraitor.ultimate.charge Numbers run function class:4/infiltraitor/projected_clone/ready
execute unless score @s ultimate_charge >= class.infiltraitor.ultimate.charge Numbers run function class:4/infiltraitor/projected_clone/cooldown

## Melee - 2x damage if invis
execute unless score @s melee.cooldown matches 1.. if entity @s[tag=input.swap_hands] run function class:4/infiltraitor/punch

item replace entity @s[tag=!invis] weapon.offhand with emerald[item_model="class/infiltraitor/left_arm"]
item replace entity @s[tag=invis] weapon.offhand with emerald[item_model="air"]
execute unless items entity @s armor.head * run item replace entity @s[tag=!invis] armor.head with emerald[item_model="class/infiltraitor/head",enchantment_glint_override=false,enchantments={"binding_curse":1}]
execute unless items entity @s armor.legs * run item replace entity @s[tag=!invis] armor.legs with minecraft:leather_leggings[!attribute_modifiers,dyed_color=13619923,enchantment_glint_override=false,enchantments={"binding_curse":1},unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]
execute unless items entity @s armor.chest * run item replace entity @s[tag=!invis] armor.chest with minecraft:leather_chestplate[!attribute_modifiers,dyed_color=13619923,enchantment_glint_override=false,enchantments={"binding_curse":1},unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]
execute unless items entity @s armor.feet * run item replace entity @s[tag=!invis] armor.feet with minecraft:leather_boots[!attribute_modifiers,dyed_color=13619923,enchantment_glint_override=false,enchantments={"binding_curse":1},unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]
execute unless items entity @s weapon.mainhand * run item replace entity @s[tag=!invis] weapon.mainhand with paper[item_model="class/infiltraitor/right_arm",item_name=""]
execute if items entity @s weapon.mainhand paper run item replace entity @s[tag=invis] weapon.mainhand with air
return 1