## Techanic (Mechanic) Main Tick:

# Primary: Double Chambered Scattergun

execute unless score @s reload matches 1.. unless score @s shoot matches 1.. run function class:4/mechanic/primary/tick
execute if score @s reload matches 1.. run function class:4/mechanic/primary/reloading
execute if score @s shoot matches 1.. run function class:4/mechanic/primary/use


# 1st Ability: Turret
execute as @e[tag=turret_base] if score @s id = #Class_Start id run tag @s add my_turret
execute if entity @n[tag=my_turret] run function class:4/mechanic/turret/toggle/ready
execute unless entity @n[tag=my_turret] if score @s ability.1.cooldown matches ..0 run function class:4/mechanic/turret/ready
execute unless entity @n[tag=my_turret] if score @s ability.1.cooldown matches 1.. run function class:4/mechanic/turret/cooldown

# 2nd Ability: Deconstruct
execute if score @s ability.2.cooldown matches ..0 run function class:4/mechanic/deconstruct/ready
execute if score @s ability.2.cooldown matches 1.. run function class:4/mechanic/deconstruct/cooldown


tag @e[tag=my_turret] remove my_turret
return 1