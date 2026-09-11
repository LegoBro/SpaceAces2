## Pathfinder (Scout) Main Tick:

# Primary: Surge Pistol
execute unless score @s reload matches 1.. unless score @s shoot matches 1.. run function class:4/scout/primary/tick
execute if score @s reload matches 1.. run function class:4/scout/primary/reloading
execute unless score @s reload matches 1.. if score @s shoot matches 1.. run function class:4/scout/primary/use


# 1st Ability: Dodge
execute if score @s ability.1.cooldown matches ..0 run function class:4/scout/boost/ready
execute if score @s ability.1.cooldown matches 1.. run function class:4/scout/boost/cooldown


# Passive: Double Jump
item replace entity @s[tag=!scout.double_jump] hotbar.2 from block 15 -62 0 container.2
item replace entity @s[tag=scout.double_jump] hotbar.2 from block 15 -62 0 container.11
execute if entity @s[tag=scout.double_jump.clear] run function class:4/scout/double_jump/deactivate
execute if entity @s[tag=input.jump.start,tag=scout.double_jump.await] unless predicate input:on_ground run function class:4/scout/double_jump/activate
execute if entity @s[tag=input.jump.start,tag=!scout.double_jump] unless predicate input:on_ground run tag @s add scout.double_jump.await
function class:4/helper/actionbar/generic/tertiary_empty

execute if predicate input:on_ground run function class:4/scout/double_jump/reset

# Ultimate Ability: Atomic Shrink
execute if score @s ultimate_charge >= class.scout.ultimate.charge Numbers run function class:4/scout/atomic_shrink/ready
execute unless score @s ultimate_charge >= class.scout.ultimate.charge Numbers run function class:4/scout/atomic_shrink/cooldown

effect give @s jump_boost 1 1 true

execute unless score @s melee.cooldown matches 1.. if entity @s[tag=input.swap_hands] run function class:4/scout/punch

function class:4/scout/equip
return 1