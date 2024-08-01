title @a[tag=escape] times 0 50 10
title @a[tag=escape] subtitle ""
title @a[tag=escape] title ["",{"text":"All Players Down!","color":"dark_red"}]
scoreboard players remove @p[tag=escape] i 1
execute if score @p[tag=escape] i matches ..-200 run function gamemode:reset
kill @e[type=area_effect_cloud,tag=terminal,tag=active]
gamemode spectator @a[tag=escape,gamemode=!spectator]
team join spectator @a[tag=escape,team=!spectator]
execute as @a[team=spectator,tag=escape] run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace creeper_head
