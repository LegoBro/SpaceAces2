scoreboard players operation #Finder lastHurter = @s lastHurter
execute as @a if score @s id = #Finder lastHurter run tag @s add killer
execute if entity @e[tag=killer] run tellraw @a ["",{"selector":"@s"},{"text":" was knocked down by "},{"selector":"@p[tag=killer]"}]
execute unless entity @e[tag=killer] run tellraw @a ["",{"selector":"@s"},{"text":" was knocked down"}]
#xp add @p[tag=killer] 1
scoreboard players add @p[tag=killer] kills 1
scoreboard players add @p[tag=killer] totalKills 1
scoreboard players add @p[tag=killer] game_kills 1

tag @a[tag=killer] remove killer
