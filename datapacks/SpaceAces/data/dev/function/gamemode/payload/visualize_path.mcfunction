# Visualized an individual path segment
execute store result storage dev:helper X float .1 run data get entity @s data.gamemode.payload.path.next[0] 10
execute store result storage dev:helper Y float .1 run data get entity @s data.gamemode.payload.path.next[1] 10
execute store result storage dev:helper Z float .1 run data get entity @s data.gamemode.payload.path.next[2] 10
function dev:helper/visualize_macro with storage dev:helper

## Particles
execute if entity @s[tag=gamemode.payload.start] run return run particle copper_fire_flame ~ ~0.5 ~
execute if entity @s[tag=gamemode.payload.end] run return run particle soul_fire_flame ~ ~0.5 ~
execute if entity @s[tag=gamemode.payload.checkpoint] run return run particle flame ~ ~0.5 ~
return run particle small_flame ~ ~0.5 ~