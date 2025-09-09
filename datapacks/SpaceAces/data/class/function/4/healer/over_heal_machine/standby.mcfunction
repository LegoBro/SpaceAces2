
scoreboard players add @s i 1
execute if score @s i >= class.healer.ultimate.duration Numbers run return run kill @s

## Shoot
scoreboard players operation gametime Numbers = @s i
scoreboard players operation gametime Numbers %= 20 Numbers

scoreboard players operation #team Team = @s Team
scoreboard players operation place_id id = @s id
execute if score gametime Numbers matches 0 as @a[distance=..50] if score @s Team = #team Team run function class:4/healer/over_heal_machine/apply

return 1