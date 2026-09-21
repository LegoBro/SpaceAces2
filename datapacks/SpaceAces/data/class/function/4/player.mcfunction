## Player Class tick
function class:4/main


#Lobby for team selection
execute if entity @s[x=3,y=195,z=-10,dx=11,dy=1,dz=15,tag=!awaiting,tag=!in_game] run function gamemode:new_player


# prevents right clicking in Lobby (except (re)spawning)
scoreboard players reset @s[x=8,y=200,z=8,distance=..250,nbt=!{SelectedItemSlot:8}] rightClick


## Badge for armor
function class:4/helper/actionbar/health


## Spacing for health
execute if score @s health matches 100.. run data modify storage health:space translate set value {translate: "space.0"}
execute if score @s health matches 10..99 run data modify storage health:space translate set value {translate: "space.7"}
execute if score @s health matches ..9 run data modify storage health:space translate set value {translate: "space.14"}
execute if score @s health matches ..-1 run scoreboard players set @s health 0

## Spacing for ammo
execute if score @s totalShots matches 10.. run data modify storage health:ammo translate set value {translate: "space.0"}
execute if score @s totalShots matches ..9 run data modify storage health:ammo translate set value {translate: "space.5"}
execute if score @s totalShots matches ..-1 run scoreboard players set @s totalShots 0

## Spacing for ult

# Final hotbar assortment
function class:4/helper/actionbar/assemble
scoreboard players remove @s[scores={damage_display=1..}] damage_display 1
scoreboard players add @s[scores={damage_display=..-1}] damage_display 1

execute if entity @s[tag=reselect] run scoreboard players operation @s health = @s maxHealth
tag @s[tag=reselect] remove reselect

return 1