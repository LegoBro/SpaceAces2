#bot name
data modify storage sa_bots:generic display_name set from entity @s CustomName

#killstreak
data modify storage sa_bots:generic display_objective set value "display"
execute if data storage space_aces:selected_gamemode gamemode{name:"killstreak"} \
    run function sa_bots:bot/setup/set_scoreboard_display_name_macro with storage sa_bots:generic

#...