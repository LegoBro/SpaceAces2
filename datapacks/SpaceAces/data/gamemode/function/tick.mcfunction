# Entry point for gamemodes


# if player is in training area
execute if loaded 10002 99 0 if entity @a[tag=trainee] run function gamemode:training/tick

# No gamemode is loaded
execute unless function gamemode:test/is_gamemode_running run return run function gamemode:none/tick

# Blue & Red particles to deny entry once game is started
particle minecraft:angry_villager 5.75 195.06 9.49 .5 .5 .5 .01 2 force
particle minecraft:angry_villager 11.75 195.06 9.49 .5 .5 .5 .01 2 force

# Prepare countdown
execute if score Mission Numbers matches 1.. run return run function gamemode:countdown

# Map/gamemode is loading
execute if score Prestart Numbers matches ..119 run return run function gamemode:loading_gamemode

# Gamemode is running
return run function gamemode:running with storage space_aces:selected_gamemode gamemode