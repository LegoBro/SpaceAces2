#all waypoints will have the same uuid1,2,3
#but uuid4 will be unique & based on an incrementing integer

execute store result score #number sab.var run data get storage sa_bots:waypoint next_uuid4 1
scoreboard players add #number sab.var 1
execute if score #number sab.var matches ..-1 run tellraw @a {text:"[ ! ] Over 2147483647 uuids have been assigned to bot waypoints. Newly spawned waypoints aren't going to work properly!",color:red}
execute if score #number sab.var matches ..-1 run scoreboard players set #number sab.var 1
execute store result storage sa_bots:waypoint next_uuid4 int 1 run scoreboard players get #number sab.var