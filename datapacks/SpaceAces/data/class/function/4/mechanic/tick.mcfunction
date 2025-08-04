## Techanic (Mechanic) Main Tick:

execute as @e[tag=turret_base] if score @s id = #Class_Start id run tag @s add my_turret

# Primary: Double Chambered Scattergun

execute unless score @s reload matches 1.. unless score @s shoot matches 1.. run function class:4/mechanic/primary/tick
execute if score @s reload matches 1.. run function class:4/mechanic/primary/reloading
execute unless score @s reload matches 1.. if score @s shoot matches 1.. run function class:4/mechanic/primary/use


# 1st Ability: Turret
execute if entity @n[tag=my_turret] run function class:4/mechanic/turret/toggle/ready
execute unless entity @n[tag=my_turret] if score @s ability.1.cooldown matches ..0 run function class:4/mechanic/turret/ready
execute unless entity @n[tag=my_turret] if score @s ability.1.cooldown matches 1.. run function class:4/mechanic/turret/cooldown

# 2nd Ability: Deconstruct
execute if entity @n[tag=my_turret] run function class:4/mechanic/deconstruct/ready
execute if entity @n[tag=my_turret] if score @s ability.2.cooldown matches 1.. run function class:4/mechanic/deconstruct/cooldown
execute unless entity @n[tag=my_turret] run function class:4/mechanic/deconstruct/cooldown

execute if entity @n[tag=my_turret] run item replace entity @s hotbar.3 with minecraft:gray_dye[minecraft:item_model="class/mechanic/last_resort",minecraft:item_name={color:"white",translate:"class.mechanic.last_resort"},minecraft:lore=[{color:"white","italic":false,translate:"class.mechanic.last_resort.lore.1"},{color:"white",translate:"class.mechanic.last_resort.lore.2"}],minecraft:unbreakable={show_in_tooltip:0b},tooltip_display={hidden_components:["unbreakable"]}]
execute unless entity @n[tag=my_turret] run item replace entity @s hotbar.3 with minecraft:gray_dye[minecraft:item_name={color:"white",translate:"class.mechanic.last_resort"},minecraft:lore=[{color:"white","italic":false,translate:"class.mechanic.last_resort.lore.1"},{color:"white",translate:"class.mechanic.last_resort.lore.2"}],minecraft:unbreakable={show_in_tooltip:0b},tooltip_display={hidden_components:["unbreakable"]}]

tag @e[tag=my_turret] remove my_turret
return 1