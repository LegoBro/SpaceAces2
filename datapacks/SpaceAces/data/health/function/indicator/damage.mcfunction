## Summons damage indicator
scoreboard players operation #damage damage = @s damage
scoreboard players operation #Class_Start id = @s id

# Renew the indicator
execute anchored eyes positioned ^ ^ ^ as @e[tag=damage_indicator,distance=..5] if score @s owner = #Class_Start id run return run function health:indicator/damage/renew
# Spawn new indicator
execute anchored eyes positioned ^ ^ ^ run summon minecraft:text_display ~ ~0.5 ~ {Tags:["damage_indicator","new","ignore.projectiles"],billboard:center,text:{"score":{"name":"#damage","objective":"damage"},color:"red","type":"score"},teleport_duration:1}
execute as @n[tag=damage_indicator,tag=new,distance=..5] at @s run function health:indicator/damage/summon
