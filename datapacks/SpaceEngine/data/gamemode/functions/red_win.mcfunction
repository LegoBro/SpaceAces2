#xp add @a[team=red,tag=in_game] 1 levels
title @a title ["",{"text":"The RLU Wins!","color":"dark_red"}]
tellraw @a {"text":"The RLU are victorious!","color":"red"}
execute at @a run playsound minecraft:ui.toast.challenge_complete master @s 8 200 8 50000 2
schedule function gamemode:reset 10s
tag @a[team=red] add winner
