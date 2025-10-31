## Chem Cascade ticking
## Lifespan
scoreboard players add @s i 1

execute if score @s i matches 5.. run function class:4/scientist/cascade/chain

execute if score @s health matches ..0 run kill @s