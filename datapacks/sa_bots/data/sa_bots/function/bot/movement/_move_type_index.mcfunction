#airborne or grounded?
scoreboard players operation @s sab.botMoveState = @s sab.onGround
#water takes priority
execute if block ~ ~ ~ water run scoreboard players set @s sab.botMoveState 2
execute if block ~ ~ ~ #sa_bots:waterloggable[waterlogged=true] run scoreboard players set @s sab.botMoveState 2
#airborne + fallflying = gliding
execute if score @s sab.botMoveState matches 0 if entity @s[nbt={FallFlying:1b}] run scoreboard players set @s sab.botMoveState 3

#perform the type of movement we need to do
execute if score @s sab.botMoveState matches 0 run function sa_bots:bot/movement/0_airborne/_move_airborne
execute if score @s sab.botMoveState matches 1 run function sa_bots:bot/movement/1_grounded/_move_grounded
execute if score @s sab.botMoveState matches 2 run function sa_bots:bot/movement/2_swimming/_move_swimming
execute if score @s sab.botMoveState matches 3 run function sa_bots:bot/movement/3_gliding/_move_gliding
#4=control a vehicle?

#remember what our move state was for next tick
scoreboard players operation @s sab.botMoveStateLastTick = @s sab.botMoveState