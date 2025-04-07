## Space Ranger (healer) Main Tick:

# Primary: Vitalis Pistol

execute unless score @s reload matches 1.. unless score @s shoot matches 1.. run function class:4/healer/primary/tick
execute if score @s reload matches 1.. run function class:4/healer/primary/reloading
execute unless score @s reload matches 1.. if score @s shoot matches 1.. run function class:4/healer/primary/use


# 1st Ability: Plasma Grenade
execute if score @s ability.1.cooldown matches ..0 run function class:4/healer/plasma_grenade/ready
execute if score @s ability.1.cooldown matches 1.. run function class:4/healer/plasma_grenade/cooldown

# 2nd Ability: Burst Heal
execute if score @s ability.2.cooldown matches ..0 run function class:4/healer/burst_heal/ready
execute if score @s ability.2.cooldown matches 1.. run function class:4/healer/burst_heal/cooldown

return 1