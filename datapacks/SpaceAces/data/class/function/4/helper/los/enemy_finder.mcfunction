
# Entity is not in LOS, so check next one
# Automatically iterates on entities that have the: target.enemy tag until the closest one is found

function class:4/helper/los/check
tag @s remove target.enemy
execute as @n[tag=target.enemy,sort=nearest] run function class:4/helper/los/enemy_finder