
# Entity is not in LOS, so check next one
# Automatically iterates on entities that have the: target.enemy tag until a random valid one is found

function class:4/helper/los/check
tag @s remove target.enemy
execute as @n[tag=target.enemy,sort=random] run function class:4/helper/los/enemy_finder_random