scoreboard players operation #Finder lastHurter = @s lastHurter
execute as @a if score @s id = #Finder lastHurter run tag @s add killer
execute if entity @e[tag=killer] run tellraw @a ["",{"selector":"@s","type":"selector"},{"text":" was knocked down by ","type":"text"},{"selector":"@p[tag=killer]","type":"selector"}]
execute unless entity @e[tag=killer] run tellraw @a ["",{"selector":"@s","type":"selector"},{"text":" was knocked down","type":"text"}]
#xp add @p[tag=killer] 1
scoreboard players add @p[tag=killer] kills 1
scoreboard players add @p[tag=killer] totalKills 1
scoreboard players add @p[tag=killer] game_kills 1

tag @a[tag=killer] remove killer

return 1