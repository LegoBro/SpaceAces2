title @a[tag=escape] times 0 50 10
title @a[tag=escape] subtitle ""
title @a[tag=escape] title ["",{"text":"All Players Down!","color":"dark_red","type":"text"}]
scoreboard players remove @p[tag=escape] i 1
execute if score @p[tag=escape] i matches ..-200 run function gamemode:reset
kill @e[type=minecraft:area_effect_cloud,tag=terminal,tag=active]
gamemode spectator @a[gamemode=!spectator,tag=escape]
team join spectator @a[tag=escape,team=!spectator]
execute as @a[tag=escape,team=spectator] run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 minecraft:air replace minecraft:creeper_head

return 1