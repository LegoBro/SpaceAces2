## Convert time Numbers into time.hours and time.minutes and time.seconds and time.milliseconds
scoreboard players operation time.hours Numbers = time Numbers
scoreboard players operation time.hours Numbers /= 72000 Numbers

scoreboard players operation time.minutes Numbers = time Numbers
scoreboard players operation time.minutes Numbers /= 1200 Numbers
scoreboard players operation time.minutes Numbers %= 60 Numbers

scoreboard players operation time.seconds Numbers = time Numbers
scoreboard players operation time.seconds Numbers /= 20 Numbers
scoreboard players operation time.seconds Numbers %= 60 Numbers

scoreboard players operation time.ms Numbers = time Numbers
scoreboard players operation time.ms Numbers %= 20 Numbers
scoreboard players operation time.ms Numbers *= 5 Numbers

return 1