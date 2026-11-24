#xp add @a[team=blue,tag=in_game] 1 levels
title @a title ["",{"text":"The IGSR Wins!",color:"dark_blue","type":"text"}]
tellraw @a {"text":"The IGSR are victorious!",color:"blue","type":"text"}
execute at @a run playsound minecraft:ui.toast.challenge_complete master @s 8 200 8 50000 2
schedule function gamemode:reset 10s
tag @e[team=blue] add winner
data modify storage game_history:current game.winner set value "blue"
execute as @e[team=blue,type=mannequin,tag=hb] at @s run function sa_bots:bot/class_logic/0_fallback/pick_random_victory_animation
return 1