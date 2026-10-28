# Entry point for gamemodes


# if player is in training area
execute if loaded 10002 99 0 if entity @a[tag=trainee] run function gamemode:training/tick

# Prepare countdown
execute if score Mission Numbers matches 1.. run return run function gamemode:countdown

# No gamemode is loaded
execute if score ActiveMode Numbers matches ..-1 run return run function gamemode:none/tick

# Map/gamemode is loading
execute if score Prestart Numbers matches ..119 run return run function gamemode:loading_gamemode

# Gamemode is running
return run function gamemode:running with storage space_aces:selected_gamemode gamemode

