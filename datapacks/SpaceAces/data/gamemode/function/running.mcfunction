# Determines which gamemode is running and runs it (dynamic)
execute if score ActiveMode Numbers matches 1 run function gamemode:duel/tick
execute if score ActiveMode Numbers matches 2 run function gamemode:tdm/tick
execute if score ActiveMode Numbers matches 3 run function gamemode:setback/tick
execute if score ActiveMode Numbers matches 4 run function gamemode:killstreak/tick
execute if score ActiveMode Numbers matches 5 run function gamemode:escape/tick
execute if score ActiveMode Numbers matches 6 run function gamemode:payload/tick
execute if score ActiveMode Numbers matches 7 run function gamemode:lockout/tick
execute if score ActiveMode Numbers matches 8 run function gamemode:ctf/tick
execute if score ActiveMode Numbers matches 9 run function gamemode:pd/tick
execute if score ActiveMode Numbers matches 10 run function gamemode:aliens/tick
execute if score ActiveMode Numbers matches 11 run function gamemode:ffa/tick
return 1