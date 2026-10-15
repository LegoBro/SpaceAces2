data modify storage dev:helper X set from entity @n[type=marker,tag=gamemode.setback.point] Pos[0]
data modify storage dev:helper Y set from entity @n[type=marker,tag=gamemode.setback.point] Pos[1]
data modify storage dev:helper Z set from entity @n[type=marker,tag=gamemode.setback.point] Pos[2]

function dev:helper/visualize_macro with storage dev:helper

# Also get point value
execute store result score #point_value Numbers run data get entity @n[type=marker,tag=gamemode.setback.point] data.gamemode.setback.point
execute if score #point_value Numbers matches 0 run title @s actionbar [{text:"Point Value: ", color:white},{score:{name:"#point_value",objective:"Numbers"},color:gold}]

execute if score #point_value Numbers matches ..-1 run title @s actionbar [{text:"Point Value: ", color:blue},{score:{name:"#point_value",objective:"Numbers"},color:gold}]
execute if score #point_value Numbers matches 1.. run title @s actionbar [{text:"Point Value: ", color:red},{score:{name:"#point_value",objective:"Numbers"},color:gold}]