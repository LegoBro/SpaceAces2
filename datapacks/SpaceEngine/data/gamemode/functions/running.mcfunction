# Determines which gamemode is running and runs it (dynamic)
  execute if score ActiveMode Numbers matches 1 run function gamemode:duel/running
  execute if score ActiveMode Numbers matches 2 run function gamemode:tdm/running
  execute if score ActiveMode Numbers matches 3 run function gamemode:setback/running
  execute if score ActiveMode Numbers matches 4 run function gamemode:killstreak/running
  execute if score ActiveMode Numbers matches 5 run function gamemode:escape/running