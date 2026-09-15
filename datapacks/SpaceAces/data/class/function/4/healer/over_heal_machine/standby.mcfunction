
scoreboard players add @s i 1
execute if score @s i >= class.healer.ultimate.duration Numbers run return run kill @s

data modify storage class:healer Pos.X set from entity @s Pos[0]
data modify storage class:healer Pos.Y set from entity @s Pos[1]
data modify storage class:healer Pos.Z set from entity @s Pos[2]

## Shoot
scoreboard players operation gametime Numbers = @s i
scoreboard players operation gametime Numbers %= 20 Numbers

scoreboard players operation #team Team = @s Team
scoreboard players operation place_id id = @s id
execute as @e[type=#projectile:players,tag=sab.activePlayer,distance=..50] at @s if score @s Team = #team Team run function class:4/healer/over_heal_machine/visualize
execute if score gametime Numbers matches 0 as @e[type=#projectile:players,tag=sab.activePlayer,distance=..50] if score @s Team = #team Team run function class:4/healer/over_heal_machine/apply

return 1