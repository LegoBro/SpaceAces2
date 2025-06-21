## Pathfinder (Scout) Main Tick:

# Primary: Surge Pistol

execute unless score @s reload matches 1.. unless score @s shoot matches 1.. run function class:4/scout/primary/tick
execute if score @s reload matches 1.. run function class:4/scout/primary/reloading
execute unless score @s reload matches 1.. if score @s shoot matches 1.. run function class:4/scout/primary/use


# 1st Ability: Dodge
execute if score @s ability.1.cooldown matches ..0 run function class:4/scout/boost/ready
execute if score @s ability.1.cooldown matches 1.. run function class:4/scout/boost/cooldown


# Passive: Double Jump
item replace entity @s[tag=!scout.double_jump] hotbar.2 with minecraft:turtle_scute[minecraft:item_model="class/scout/double_jump",minecraft:item_name={color:"white",translate:"class.scout.double_jump"},minecraft:lore=[{color:"white","italic":false,translate:"class.scout.double_jump.lore.0"}],minecraft:unbreakable={show_in_tooltip:0b},tooltip_display={hidden_components:["unbreakable"]}]
item replace entity @s[tag=scout.double_jump] hotbar.2 with minecraft:turtle_scute[minecraft:item_model="gray_dye",minecraft:item_name={color:"white",translate:"class.scout.double_jump"},minecraft:lore=[{color:"white","italic":false,translate:"class.scout.double_jump.lore.0"}],minecraft:unbreakable={show_in_tooltip:0b},tooltip_display={hidden_components:["unbreakable"]}]
execute if entity @s[tag=scout.double_jump.clear] run function class:4/scout/double_jump/deactivate
execute if entity @s[tag=input.jump.start,tag=scout.double_jump.await] unless predicate input:on_ground run function class:4/scout/double_jump/activate
execute if entity @s[tag=input.jump.start,tag=!scout.double_jump] unless predicate input:on_ground run tag @s add scout.double_jump.await

execute if predicate input:on_ground run function class:4/scout/double_jump/reset


effect give @s jump_boost 1 1 true
return 1