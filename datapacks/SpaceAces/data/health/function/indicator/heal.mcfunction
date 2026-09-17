
## Summons heal indicator
scoreboard players operation #healing healing = @s healing
scoreboard players operation #Class_Start id = @s id

effect give @s minecraft:poison 1 0 true
# Renew the indicator
execute anchored eyes positioned ^ ^ ^ as @e[tag=heal_indicator,distance=..5] if score @s owner = #Class_Start id run return run function health:indicator/heal/renew
# Spawn new indicator
execute anchored eyes positioned ^ ^ ^ run summon minecraft:text_display ~ ~0.5 ~ {Tags:["heal_indicator","new","ignore.projectiles"],billboard:center,text:{"score":{"name":"#healing","objective":"healing"},color:"green","type":"score"},teleport_duration:1}
execute as @n[tag=heal_indicator,tag=new,distance=..5] at @s run function health:indicator/heal/summon



