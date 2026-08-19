## Techanic (Mechanic) Main Tick:

execute if entity @s[tag=class.mechanic.manual_override.drone_operator] run return run function class:4/mechanic/manual_override/drone

execute as @e[tag=turret_base] if score @s id = #Class_Start id run tag @s add my_turret

# Primary: Double Chambered Scattergun

execute unless score @s reload matches 1.. unless score @s shoot matches 1.. run function class:4/mechanic/primary/tick
execute if score @s reload matches 1.. run function class:4/mechanic/primary/reloading
execute unless score @s reload matches 1.. if score @s shoot matches 1.. run function class:4/mechanic/primary/use


# 1st Ability: Turret
execute if entity @n[tag=my_turret,distance=..500] run function class:4/mechanic/turret/detonate/ready
execute if score @s ability.1.cooldown matches ..0 unless entity @n[tag=my_turret,distance=..500] run function class:4/mechanic/turret/ready
execute if score @s ability.1.cooldown matches 1.. unless entity @n[tag=my_turret,distance=..500] run function class:4/mechanic/turret/cooldown

# 2nd Ability: Projector
execute unless score @s ability.2.cooldown matches 1.. run function class:4/mechanic/projector/ready
execute if score @s ability.2.cooldown matches 1.. run function class:4/mechanic/projector/cooldown

# Passive: Last Resort
execute unless entity @n[tag=my_turret,distance=..500] run item replace entity @s hotbar.3 with minecraft:gray_dye[minecraft:item_model="class/mechanic/last_resort",minecraft:item_name={color:"white",translate:"class.mechanic.last_resort"},minecraft:lore=[{color:"white","italic":false,translate:"class.mechanic.last_resort.lore.1"},{color:"white",translate:"class.mechanic.last_resort.lore.2"}],minecraft:unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]
execute if entity @n[tag=my_turret,distance=..500] run item replace entity @s hotbar.3 with minecraft:gray_dye[item_model="class/mechanic/last_resort_cooldown",minecraft:item_name={color:"white",translate:"class.mechanic.last_resort"},minecraft:lore=[{color:"white","italic":false,translate:"class.mechanic.last_resort.lore.1"},{color:"white",translate:"class.mechanic.last_resort.lore.2"}],minecraft:unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]



# Ultimate Ability: Fast Blast
execute if score @s ultimate_charge >= class.mechanic.ultimate.charge Numbers run function class:4/mechanic/manual_override/ready
execute unless score @s ultimate_charge >= class.mechanic.ultimate.charge Numbers run function class:4/mechanic/manual_override/cooldown

## Melee
execute unless score @s melee.cooldown matches 1.. if entity @s[tag=input.swap_hands] run function class:4/mechanic/punch

tag @e[tag=my_turret] remove my_turret

item replace entity @s weapon.offhand with emerald[item_model="class/mechanic/left_arm",item_name="",tooltip_display={hide_tooltip:true}]
execute unless items entity @s armor.head * run item replace entity @s[tag=!invis] armor.head with emerald[item_model="class/mechanic/head",enchantment_glint_override=false,enchantments={"binding_curse":1},item_name="",tooltip_display={hide_tooltip:true}]
execute unless items entity @s armor.legs * run item replace entity @s[tag=!invis] armor.legs with minecraft:leather_leggings[!attribute_modifiers,dyed_color=12698049,enchantment_glint_override=false,enchantments={"binding_curse":1},unbreakable={},item_name="",tooltip_display={hide_tooltip:true}]
execute unless items entity @s armor.chest * run item replace entity @s[tag=!invis] armor.chest with minecraft:leather_chestplate[!attribute_modifiers,dyed_color=12698049,enchantment_glint_override=false,enchantments={"binding_curse":1},unbreakable={},item_name="",tooltip_display={hide_tooltip:true}]
execute unless items entity @s armor.feet * run item replace entity @s[tag=!invis] armor.feet with minecraft:leather_boots[!attribute_modifiers,dyed_color=12698049,enchantment_glint_override=false,enchantments={"binding_curse":1},unbreakable={},item_name="",tooltip_display={hide_tooltip:true}]
execute unless items entity @s weapon.mainhand * run item replace entity @s weapon.mainhand with paper[item_model="class/mechanic/right_arm",item_name="",tooltip_display={hide_tooltip:true}]
return 1