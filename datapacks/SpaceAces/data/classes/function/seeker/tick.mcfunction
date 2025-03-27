## Void Stalker (seeker) Main Tick:

# Primary: Surge Rifle

execute unless score @s reload matches 1.. unless score @s shoot matches 1.. run function classes:seeker/primary/tick
execute if score @s reload matches 1.. run function classes:seeker/primary/reloading
execute if score @s shoot matches 1.. run function classes:seeker/primary/use


# 1st Ability: Plasma Grenade
execute if score @s ability.1.cooldown matches ..0 run function classes:seeker/plasma_grenade/ready
execute if score @s ability.1.cooldown matches 1.. run function classes:seeker/plasma_grenade/cooldown

# 2nd Ability: Burst Heal
execute if score @s ability.2.cooldown matches ..0 run function classes:seeker/burst_heal/ready
execute if score @s ability.2.cooldown matches 1.. run function classes:seeker/burst_heal/cooldown

# Passive Weak Glow:


return 1