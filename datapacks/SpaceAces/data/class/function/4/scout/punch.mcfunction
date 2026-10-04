## Normal Punch + Boost
execute unless score @s ultimate.cooldown matches 1.. run scoreboard players operation class.melee.override Numbers = class.scout.melee.damage Numbers
execute if score @s ultimate.cooldown matches 1.. run scoreboard players operation class.melee.override Numbers = class.scout.ultimate.damage Numbers


function class:4/helper/punch

execute unless score @s ultimate.cooldown matches 1.. run scoreboard players operation $strength player_motion.api.launch = class.scout.melee.launch Numbers
execute if score @s ultimate.cooldown matches 1.. run scoreboard players operation $strength player_motion.api.launch = class.scout.ultimate.launch Numbers
## Based on direction moving, launch that way
execute at @s[tag=input.forward,type=player] facing ^ ^ ^1 run return run function player_motion:api/launch_looking
execute at @s[tag=input.backward,type=player] facing ^ ^ ^-1 run return run function player_motion:api/launch_looking
execute at @s[tag=input.left,type=player] facing ^1 ^ ^ run return run function player_motion:api/launch_looking
execute at @s[tag=input.right,type=player] facing ^-1 ^ ^ run return run function player_motion:api/launch_looking
## Bots have to use a different launch function
execute at @s[tag=input.forward,tag=sab.botEntity] facing ^ ^ ^1 run return run function sa_bots:bot/player_motion_alternative/api/launch_looking
execute at @s[tag=input.backward,tag=sab.botEntity] facing ^ ^ ^-1 run return run function sa_bots:bot/player_motion_alternative/api/launch_looking
execute at @s[tag=input.left,tag=sab.botEntity] facing ^1 ^ ^ run return run function sa_bots:bot/player_motion_alternative/api/launch_looking
execute at @s[tag=input.right,tag=sab.botEntity] facing ^-1 ^ ^ run return run function sa_bots:bot/player_motion_alternative/api/launch_looking