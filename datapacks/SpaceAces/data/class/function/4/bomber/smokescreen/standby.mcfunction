## Standby for smokescreen
scoreboard players add @s i 1
execute if score @s i matches ..10 run return run particle campfire_signal_smoke ~ ~ ~ 0.3 0.3 0.3 0.015 100 force @a
execute if score @s i matches 11..25 run return run particle campfire_cosy_smoke ~ ~ ~ 0.5 0.5 0.5 0.01 75 force @a
execute if score @s i matches 26..45 run particle campfire_cosy_smoke ~ ~ ~ 1 1 1 0.005 50 force @a
execute if score @s i matches 46..150 run particle campfire_cosy_smoke ~ ~ ~ 2 2 2 0.0 25 force @a

scoreboard players operation #target_id Numbers = @s id
execute as @e[tag=entity,distance=..8] unless score @s id = #target_id Numbers run effect give @s slowness 1 0 true
execute as @a[distance=..8] unless score @s id = #target_id Numbers run effect give @s slowness 1 0 true

#execute if score @s i matches 200.. run say over
execute if score @s i matches 200.. run kill @s

return 1