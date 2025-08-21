## Normal Punch + Boost
execute unless score @s ultimate.cooldown matches 1.. run scoreboard players operation class.melee.override Numbers = class.scout.melee.damage Numbers
execute if score @s ultimate.cooldown matches 1.. run scoreboard players operation class.melee.override Numbers = class.scout.ultimate.damage Numbers


function class:4/helper/punch

execute unless score @s ultimate.cooldown matches 1.. run scoreboard players operation $strength player_motion.api.launch = class.scout.melee.launch Numbers
execute if score @s ultimate.cooldown matches 1.. run scoreboard players operation $strength player_motion.api.launch = class.scout.ultimate.launch Numbers
## Based on direction moving, launch that way
execute at @s[tag=input.forward] facing ^ ^ ^1 run return run function player_motion:api/launch_looking
execute at @s[tag=input.backward] facing ^ ^ ^-1 run return run function player_motion:api/launch_looking
execute at @s[tag=input.left] facing ^1 ^ ^ run return run function player_motion:api/launch_looking
execute at @s[tag=input.right] facing ^-1 ^ ^ run return run function player_motion:api/launch_looking