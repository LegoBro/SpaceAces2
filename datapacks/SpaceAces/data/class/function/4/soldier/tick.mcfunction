## Space Ranger (soldier) Main Tick:

# Primary: Surge Rifle

execute unless score @s reload matches 1.. unless score @s shoot matches 1.. run function class:4/soldier/primary/tick
execute if score @s reload matches 1.. run function class:4/soldier/primary/reloading
execute unless score @s reload matches 1.. if score @s shoot matches 1.. run function class:4/soldier/primary/use


# 1st Ability: Plasma Grenade
execute if score @s ability.1.cooldown matches ..0 run function class:4/soldier/plasma_grenade/ready
execute if score @s ability.1.cooldown matches 1.. run function class:4/soldier/plasma_grenade/cooldown

# 2nd Ability: Burst Heal
execute if score @s ability.2.cooldown matches ..0 run function class:4/soldier/burst_heal/ready
execute if score @s ability.2.cooldown matches 1.. run function class:4/soldier/burst_heal/cooldown

# Ultimate Ability: Fast Blast
execute if score @s ultimate_charge >= class.soldier.ultimate.charge Numbers run function class:4/soldier/fast_blast/ready
execute unless score @s ultimate_charge >= class.soldier.ultimate.charge Numbers run function class:4/soldier/fast_blast/cooldown

execute unless score @s melee.cooldown matches 1.. if entity @s[tag=input.swap_hands] run function class:4/helper/punch

return 1