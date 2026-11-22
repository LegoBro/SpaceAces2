
execute store result score #arena.test_spawn Numbers run time query gametime

scoreboard players operation #arena.test_spawn Numbers %= 200 Numbers

execute if score #arena.test_spawn Numbers matches 0 run summon minecraft:happy_ghast 13375 62 0 {Tags:[arena.magma_forge.moving_box_west,arena.magma_forge,arena.magma_forge.box,arena.magma_forge.moving_box_scares_bots.west],Silent:1b,NoAI:1b}
execute if score #arena.test_spawn Numbers matches 0 run summon minecraft:happy_ghast 13291 43 10 {Tags:[arena.magma_forge.moving_box_up,arena.magma_forge,arena.magma_forge.box],Silent:1b,NoAI:1b}
#execute if score #arena.test_spawn Numbers matches 0 run summon minecraft:happy_ghast 13375 62 0 {Tags:[arena.magma_forge.moving_box_east],Silent:1b,NoAI:1b}
execute if score #arena.test_spawn Numbers matches 0 run summon minecraft:happy_ghast 13304 113 -10 {Tags:[arena.magma_forge.moving_box_down,arena.magma_forge,arena.magma_forge.box],Silent:1b,NoAI:1b}
#execute if score #arena.test_spawn Numbers matches 0 run summon minecraft:happy_ghast 13375 62 0 {Tags:[arena.magma_forge.moving_box_north],Silent:1b,NoAI:1b}
execute if score #arena.test_spawn Numbers matches 0 run summon minecraft:happy_ghast 13263 75 -65 {Tags:[arena.magma_forge.moving_box_south,arena.magma_forge,arena.magma_forge.box],Silent:1b,NoAI:1b}

#Run code for happy ghasts
scoreboard players set $strength player_motion.api.launch -3000
execute positioned 13311 102 0 as @e[type=happy_ghast,tag=arena.magma_forge.box,distance=..200] at @s run function arena:tick/magma_forge/moving_box
