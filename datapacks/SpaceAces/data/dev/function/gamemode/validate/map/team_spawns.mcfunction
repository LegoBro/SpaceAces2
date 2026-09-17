## Is there a blue and red spawnpoint?

execute unless entity @n[type=marker,tag=blue_spawn_point,distance=..500] run return 0
execute unless entity @n[type=marker,tag=red_spawn_point,distance=..500] run return 0
return 1