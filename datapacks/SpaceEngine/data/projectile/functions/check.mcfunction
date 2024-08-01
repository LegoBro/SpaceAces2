#Checks if block is valid or not
#execute if block ~ ~ ~ #projectile:ignore_all run tag @s add continue
execute if block ~ ~ ~ #projectile:slabs run function projectile:passable/slab
execute if block ~ ~ ~ #minecraft:stairs run function projectile:passable/stairy
execute if block ~ ~ ~ #minecraft:trapdoors run function projectile:passable/trapdoor
execute if block ~ ~ ~ #minecraft:doors run function projectile:passable/door
execute if block ~ ~ ~ #minecraft:walls run function projectile:passable/wall
execute if block ~ ~ ~ #minecraft:fences run function projectile:passable/fence
execute if block ~ ~ ~ minecraft:scaffolding run function projectile:passable/scaffolding
execute if block ~ ~ ~ minecraft:snow run function projectile:passable/snow
execute if block ~ ~ ~ #projectile:glass_panes run function projectile:passable/glass_pane
