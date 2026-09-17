scoreboard players set @s over_heal 50

## Give LOS Healing
function class:4/helper/los/check
scoreboard players add @s[tag=los_pass] healing 10
execute as @e[type=#projectile:players,tag=hb] if score @s id = place_id id run scoreboard players add @s game_healing 10

return 1