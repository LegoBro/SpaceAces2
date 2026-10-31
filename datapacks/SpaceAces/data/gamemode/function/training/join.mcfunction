execute if function gamemode:test/is_gamemode_running run return run tellraw @s [{text:"The Training Range is disabled during games."}]

team join blue @s
scoreboard players set @s Team 1
tag @s add trainee
tp @s 9987 132 -3
#tag @s[tag=!trained] add newb
#execute if entity @s[tag=newb] run tp @s 10031 119 30 180 0
function class:reselect
return 1