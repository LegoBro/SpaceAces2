scoreboard players set @s ultimate_charge 0

effect give @s speed 1 0 true
scoreboard players set @s invis 5

execute as @e[distance=..5,tag=!ignore,tag=!ignore.projectiles] unless score @s Team = #Class_Start Team run function class:4/seeker/into_the_void/weaken


particle white_smoke ~ ~ ~ 1.5 0 1.5 0.01 25 force @a
particle large_smoke ~ ~ ~ 1.5 0 1.5 0.01 25 force @a

return 1