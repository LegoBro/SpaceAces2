## Player Class tick
function class:4/main


#Lobby for team selection
execute if entity @s[x=3,y=195,z=-10,dx=11,dy=1,dz=15,tag=!awaiting,tag=!in_game] run function gamemode:new_player


# prevents right clicking in Lobby (except (re)spawning)
scoreboard players reset @s[x=8,y=200,z=8,distance=..250,nbt=!{SelectedItemSlot:8}] rightClick