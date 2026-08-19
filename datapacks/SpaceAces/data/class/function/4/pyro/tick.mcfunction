## Pathfinder (pyro) Main Tick:

# Primary: Plasma Condenser
execute unless score @s reload matches 1.. unless score @s shoot matches 1.. run function class:4/pyro/primary/tick
execute if score @s reload matches 1.. run function class:4/pyro/primary/reloading
execute unless score @s reload matches 1.. if score @s shoot matches 1.. run function class:4/pyro/primary/use

# 1st Ability: Fire Bomb
execute if score @s ability.1.cooldown matches ..0 run function class:4/pyro/fire_bomb/ready
execute if score @s ability.1.cooldown matches 1.. run function class:4/pyro/fire_bomb/cooldown

# 2nd Ability: Toggle
execute if score @s ability.2.cooldown matches ..0 run function class:4/pyro/adaptive_plating/ready
execute if score @s ability.2.cooldown matches 1.. run function class:4/pyro/adaptive_plating/cooldown

# Passive: Retorch, if on fire, fire 2 shots at once
execute if score @s fire matches 1.. run item replace entity @s hotbar.3 with minecraft:gray_dye[minecraft:item_model="class/pyro/retorch",minecraft:item_name={color:"white",translate:"class.pyro.retorch"},minecraft:lore=[{color:"white","italic":false,translate:"class.pyro.retorch.lore.1"},{color:"white",translate:"class.pyro.retorch.lore.2"}],minecraft:unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]
execute unless score @s fire matches 1.. run item replace entity @s hotbar.3 with minecraft:gray_dye[item_model="class/pyro/retorch_cooldown",minecraft:item_name={color:"white",translate:"class.pyro.retorch"},minecraft:lore=[{color:"white","italic":false,translate:"class.pyro.retorch.lore.1"},{color:"white",translate:"class.pyro.retorch.lore.2"}],minecraft:unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]

# Ultimate Ability: Fast Blast
execute if score @s ultimate_charge >= class.pyro.ultimate.charge Numbers run function class:4/pyro/trailblazer/ready
execute unless score @s ultimate_charge >= class.pyro.ultimate.charge Numbers run function class:4/pyro/trailblazer/cooldown

## Melee
execute unless score @s melee.cooldown matches 1.. if entity @s[tag=input.swap_hands] run function class:4/helper/punch

item replace entity @s weapon.offhand with emerald[item_model="class/pyro/left_arm",item_name="",tooltip_display={hide_tooltip:true}]
execute unless items entity @s armor.head * run item replace entity @s[tag=!invis] armor.head with emerald[item_model="class/pyro/head",enchantment_glint_override=false,enchantments={"binding_curse":1},item_name="",tooltip_display={hide_tooltip:true}]
execute unless items entity @s armor.legs * run item replace entity @s[tag=!invis] armor.legs with minecraft:leather_leggings[!attribute_modifiers,dyed_color=16777025,enchantment_glint_override=false,enchantments={"binding_curse":1},unbreakable={},item_name="",tooltip_display={hide_tooltip:true}]
execute unless items entity @s armor.chest * run item replace entity @s[tag=!invis] armor.chest with minecraft:leather_chestplate[!attribute_modifiers,dyed_color=16777025,enchantment_glint_override=false,enchantments={"binding_curse":1},unbreakable={},item_name="",tooltip_display={hide_tooltip:true}]
execute unless items entity @s armor.feet * run item replace entity @s[tag=!invis] armor.feet with minecraft:leather_boots[!attribute_modifiers,dyed_color=16777025,enchantment_glint_override=false,enchantments={"binding_curse":1},unbreakable={},item_name="",tooltip_display={hide_tooltip:true}]
execute unless items entity @s weapon.mainhand * run item replace entity @s weapon.mainhand with paper[item_model="class/pyro/right_arm",item_name="",tooltip_display={hide_tooltip:true}]
return 1