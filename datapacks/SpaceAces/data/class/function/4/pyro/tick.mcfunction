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
execute if score @s fire matches 1.. run item replace entity @s hotbar.3 with minecraft:gray_dye[minecraft:item_model="class/pyro/retorch",minecraft:item_name={color:"white",translate:"class.pyro.retorch"},minecraft:lore=[{color:"white","italic":false,translate:"class.pyro.retorch.lore.1"},{color:"white",translate:"class.pyro.retorch.lore.2"}],minecraft:unbreakable={show_in_tooltip:0b},tooltip_display={hidden_components:["unbreakable"]}]
execute unless score @s fire matches 1.. run item replace entity @s hotbar.3 with minecraft:gray_dye[minecraft:item_name={color:"white",translate:"class.pyro.retorch"},minecraft:lore=[{color:"white","italic":false,translate:"class.pyro.retorch.lore.1"},{color:"white",translate:"class.pyro.retorch.lore.2"}],minecraft:unbreakable={show_in_tooltip:0b},tooltip_display={hidden_components:["unbreakable"]}]

return 1