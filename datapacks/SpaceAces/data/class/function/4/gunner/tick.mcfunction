## Quasar Gunner (gunner) Main Tick:

# Primary: Surge Rifle

execute if entity @s[tag=input.right_click] run scoreboard players add @s rightClick 1

execute unless score @s reload matches 1.. run function class:4/gunner/primary/tick
execute if score @s reload matches 1.. run function class:4/gunner/primary/reloading



# 1st Ability: Plasma Grenade
execute if score @s ability.1.cooldown matches ..0 run function class:4/gunner/photon_rush/ready
execute if score @s ability.1.cooldown matches 1.. run function class:4/gunner/photon_rush/cooldown

# 2nd Ability: Burst Heal
execute if score @s ability.2.cooldown matches ..0 run function class:4/gunner/large_heal/ready
execute if score @s ability.2.cooldown matches 1.. run function class:4/gunner/large_heal/cooldown

# Passive: Radiant Capacitors
scoreboard players remove @s[scores={reload=0}] shoot 1
execute if score @s shoot matches ..-20 run function class:4/gunner/radiant_capacitors/tick

return 1