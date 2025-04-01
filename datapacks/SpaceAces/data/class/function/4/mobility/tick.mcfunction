## Warp Walker (mobility) Main Tick:

# Primary: Flux Burst Rifle

execute unless score @s reload matches 1.. unless score @s shoot matches 1.. run function class:4/mobility/primary/tick
execute if score @s reload matches 1.. run function class:4/mobility/primary/reloading
execute if score @s shoot matches 1.. run function class:4/mobility/primary/use


# 1st Ability: Dodge
execute if score @s ability.1.cooldown matches ..0 run function class:4/mobility/warp/ready
execute if score @s ability.1.cooldown matches 1.. run function class:4/mobility/warp/cooldown

# 2nd Ability: Flash Grenade
execute if score @s ability.2.cooldown matches ..0 run function class:4/mobility/flash_grenade/ready
execute if score @s ability.2.cooldown matches 1.. run function class:4/mobility/flash_grenade/cooldown

return 1