## Shadow Op (infiltraitor) Main Tick:

# Primary: Surge Rifle

execute unless score @s reload matches 1.. unless score @s shoot matches 1.. run function classes:infiltraitor/primary/tick
execute if score @s reload matches 1.. run function classes:infiltraitor/primary/reloading
execute if score @s shoot matches 1.. run function classes:infiltraitor/primary/use


# 1st Ability: Plasma Grenade
execute if score @s ability.1.cooldown matches ..0 run function classes:infiltraitor/cloak/ready
execute if score @s ability.1.cooldown matches 1.. run function classes:infiltraitor/cloak/cooldown

# 2nd Ability: Burst Heal
execute if score @s ability.2.cooldown matches ..0 run function classes:infiltraitor/burst_heal/ready
execute if score @s ability.2.cooldown matches 1.. run function classes:infiltraitor/burst_heal/cooldown

return 1