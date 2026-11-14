#execute if score @s fire matches 1.. run return 0
scoreboard players operation @s fire += class.pyro.ultimate.fire Numbers
function health:assign_hurter
#execute as @e[type=#projectile:players,tag=hb] if score @s id = place_id id run scoreboard players operation @s stat.game.damage_dealt += class.pyro.ultimate.fire Numbers

return 1