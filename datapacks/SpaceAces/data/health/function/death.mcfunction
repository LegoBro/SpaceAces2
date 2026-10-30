scoreboard players operation #Finder lastHurter = @s lastHurter
execute as @e[type=#projectile:players,tag=hb] if score @s id = #Finder lastHurter run tag @s add killer

scoreboard players operation #Finder nextLastHurter = @s nextLastHurter
execute as @e[type=#projectile:players,tag=hb] if score @s id = #Finder nextLastHurter run tag @s add assist_killer

execute if entity @n[tag=killer] if entity @n[tag=assist_killer] run tellraw @a ["",{"selector":"@s","type":"selector"},{"text":" was knocked down by ","type":"text"},{"selector":"@n[tag=killer]","type":"selector"},{"text":" (assist ","type":"text"},{"selector":"@n[tag=assist_killer]","type":"selector"},{"text":")","type":"text"}]
execute if entity @n[tag=killer] unless entity @n[tag=assist_killer] run tellraw @a ["",{"selector":"@s","type":"selector"},{"text":" was knocked down by ","type":"text"},{"selector":"@n[tag=killer]","type":"selector"}]
execute unless entity @n[tag=killer] run tellraw @a ["",{"selector":"@s","type":"selector"},{"text":" was knocked down","type":"text"}]
#xp add @p[tag=killer] 1
scoreboard players add @n[tag=killer] kills 1
scoreboard players add @n[tag=killer] totalKills 1
scoreboard players add @n[tag=killer] stat.game.player_kills 1

scoreboard players add @n[tag=assist_killer] stat.game.assists 1

tag @e[tag=killer] remove killer
tag @e[tag=assist_killer] remove assist_killer

return 1