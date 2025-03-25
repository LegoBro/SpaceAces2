## Space Ranger (Soldier) Main Tick:

# Primary: Surge Rifle

execute unless score @s reload matches 1.. unless score @s shoot matches 1.. run function classes:soldier/primary/tick
execute if score @s reload matches 1.. run function classes:soldier/primary/reloading
execute if score @s shoot matches 1.. run function classes:soldier/primary/use


# 1st Ability: Plasma Grenade
execute if score @s ability.1.cooldown matches ..0 run function classes:soldier/plasma_grenade/ready
execute if score @s ability.1.cooldown matches 1.. run function classes:soldier/plasma_grenade/cooldown

# 2nd Ability: Burst Heal
execute if score @s ability.2.cooldown matches ..0 run function classes:soldier/burst_heal/ready
execute if score @s ability.2.cooldown matches 1.. run function classes:soldier/burst_heal/cooldown

return 1