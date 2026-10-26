
scoreboard players add @s i 1
execute if score @s i >= class.healer.ultimate.duration Numbers run return run kill @s

data modify storage class:healer Pos.X set from entity @s Pos[0]
data modify storage class:healer Pos.Y set from entity @s Pos[1]
data modify storage class:healer Pos.Z set from entity @s Pos[2]

## Shoot
scoreboard players operation gametime Numbers = @s i
scoreboard players operation gametime Numbers %= 20 Numbers

scoreboard players operation #team Team = @s Team
scoreboard players operation place_id id = @s owner
execute as @e[type=#projectile:players,tag=hb,distance=..50] at @s if score @s Team = #team Team run function class:4/healer/over_heal_machine/visualize
execute if score gametime Numbers matches 0 as @e[type=#projectile:players,tag=hb,distance=..50] if score @s Team = #team Team run function class:4/healer/over_heal_machine/apply

execute as @e[type=#projectile:players,tag=hb] if score @s id = #target_owner Numbers run tag @s add target.owner
execute unless entity @e[tag=target.owner,scores={Class=6}] run kill @s
tag @e[type=#projectile:players,tag=hb] remove target.owner

return 1