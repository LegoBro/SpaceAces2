#executed a the waypoint that just got hit with the sector paint tool


#apply sector
execute if score #sector sab.var matches 1.. store result entity @s data.sector int 1 run scoreboard players get #sector sab.var
execute unless score #sector sab.var matches 1.. run data remove entity @s data.sector

#feedback
particle effect ~ ~.25 ~ 0.25 0.25 0.25 0 10 force

#we did it
scoreboard players set #success sab.var 1