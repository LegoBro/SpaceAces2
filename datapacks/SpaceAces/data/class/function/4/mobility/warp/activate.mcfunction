## Blink ability
scoreboard players set travel Numbers 0


scoreboard players operation @s ability.1.cooldown += class.mobility.1.cooldown Numbers
scoreboard players reset @s rightClick

execute at @s[tag=input.backward] positioned ~ ~0.5 ~ facing ^ ^ ^-1 if block ~ ~ ~ #projectile:ignore_all if block ~ ~1 ~ #projectile:ignore_all run return run function class:4/mobility/warp/loop
execute at @s[tag=input.left] positioned ~ ~0.5 ~ facing ^1 ^ ^ if block ~ ~ ~ #projectile:ignore_all if block ~ ~1 ~ #projectile:ignore_all run return run function class:4/mobility/warp/loop
execute at @s[tag=input.right] positioned ~ ~0.5 ~ facing ^-1 ^ ^ if block ~ ~ ~ #projectile:ignore_all if block ~ ~1 ~ #projectile:ignore_all run return run function class:4/mobility/warp/loop
execute at @s positioned ~ ~0.5 ~ facing ^ ^ ^1 if block ~ ~ ~ #projectile:ignore_all if block ~ ~1 ~ #projectile:ignore_all run return run function class:4/mobility/warp/loop

#execute positioned ~ ~1.5 ~ positioned ^ ^ ^1 if block ~ ~ ~ #projectile:ignore_all unless block ~ ~1 ~ #projectile:ignore_all run scoreboard players set @s ability.1.cooldown 20
#execute positioned ~ ~1.5 ~ positioned ^ ^ ^1 unless block ~ ~ ~ #projectile:ignore_all unless block ~ ~1 ~ #projectile:ignore_all run scoreboard players set @s ability.1.cooldown 20
#execute positioned ~ ~1.5 ~ positioned ^ ^ ^1 if block ~ ~ ~ #projectile:ignore_all if block ~ ~1 ~ #projectile:ignore_all run function class:4/mobility/warp/loop


return 1