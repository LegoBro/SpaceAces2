#clean up old tag
tag @s[tag=sab.botShootingActiveOpponent] remove sab.botShootingActiveOpponent

#set score
scoreboard players operation @s sab.botTargetEntityID = #get_id sab.var

#if we were doing something else, forget about it
execute if data entity @s data.tasks[0] run data remove entity @s data.tasks[{is_base_task:0}]

#new task: shoot at thing
data modify entity @s data.tasks prepend value {id:1,name:"SHOOT_TARGET",entity_target:{id:0,can_shoot_back:0},flags:{is_base_task:0},is_base_task:0}
execute store result entity @s data.tasks[0].entity_target.id int 1 run scoreboard players get @s sab.botTargetEntityID
#track whether we're attacking something that's dangerous
execute if score #enemy_shoots_back sab.var matches 1.. run data modify entity @s data.tasks[0].entity_target.can_shoot_back set value 1
execute if score #enemy_shoots_back sab.var matches 1.. run tag @s add sab.botShootingActiveOpponent