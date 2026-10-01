## Techanic (Mechanic) Main Tick:

execute if entity @s[tag=class.mechanic.manual_override.drone_operator] run return run function class:4/mechanic/manual_override/drone

execute as @e[tag=turret_base,type=item_display] if score @s id = #Class_Start id run tag @s add my_turret
execute store result score @s sab.hasTurret run execute if entity @e[tag=my_turret,type=item_display,distance=..500,limit=1]

# Primary: Double Chambered Scattergun

execute unless score @s reload matches 1.. unless score @s shoot matches 1.. run function class:4/mechanic/primary/tick
execute if score @s reload matches 1.. run function class:4/mechanic/primary/reloading
execute unless score @s reload matches 1.. if score @s shoot matches 1.. run function class:4/mechanic/primary/use


# 1st Ability: Turret
execute if score @s sab.hasTurret matches 1 run function class:4/mechanic/turret/detonate/ready
execute if score @s ability.1.cooldown matches ..0 unless score @s sab.hasTurret matches 1 run function class:4/mechanic/turret/ready
execute if score @s ability.1.cooldown matches 1.. unless score @s sab.hasTurret matches 1 run function class:4/mechanic/turret/cooldown

# 2nd Ability: Projector
execute unless score @s ability.2.cooldown matches 1.. run function class:4/mechanic/projector/ready
execute if score @s ability.2.cooldown matches 1.. run function class:4/mechanic/projector/cooldown

# Passive: Last Resort
execute unless score @s sab.hasTurret matches 1 run item replace entity @s hotbar.3 with minecraft:gray_dye[minecraft:item_model="class/mechanic/last_resort",minecraft:item_name={color:"white",translate:"class.mechanic.last_resort"},minecraft:lore=[{color:"white","italic":false,translate:"class.mechanic.last_resort.lore.1"},{color:"white",translate:"class.mechanic.last_resort.lore.2"}],minecraft:unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]
execute if score @s sab.hasTurret matches 1 run item replace entity @s hotbar.3 with minecraft:gray_dye[item_model="class/mechanic/last_resort_cooldown",minecraft:item_name={color:"white",translate:"class.mechanic.last_resort"},minecraft:lore=[{color:"white","italic":false,translate:"class.mechanic.last_resort.lore.1"},{color:"white",translate:"class.mechanic.last_resort.lore.2"}],minecraft:unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]



# Ultimate Ability: Fast Blast
execute if score @s ultimate_charge >= class.mechanic.ultimate.charge Numbers run function class:4/mechanic/manual_override/ready
execute unless score @s ultimate_charge >= class.mechanic.ultimate.charge Numbers run function class:4/mechanic/manual_override/cooldown

## Melee
execute unless score @s melee.cooldown matches 1.. if entity @s[tag=input.swap_hands] run function class:4/mechanic/punch

tag @e[tag=my_turret,type=item_display] remove my_turret

function class:4/mechanic/equip
return 1