#xp add @a[team=blue,tag=in_game] 1 levels
title @a title ["",{"text":"The IGSR Wins!",color:"dark_blue","type":"text"}]
tellraw @a {"text":"The IGSR are victorious!",color:"blue","type":"text"}
execute at @a run playsound minecraft:ui.toast.challenge_complete master @s 8 200 8 50000 2
schedule function gamemode:reset 10s
tag @a[team=blue] add winner

return 1