scoreboard players set #multiplier sab.var 30
#just like humans, bots can sneak slightly faster at an angle
execute if score @s sab.botAngleDiffMoveAndFace matches -50..-40 run scoreboard players set #multiplier sab.var 40
execute if score @s sab.botAngleDiffMoveAndFace matches 40..50 run scoreboard players set #multiplier sab.var 40
scoreboard players operation #x2 sab.var *= #multiplier sab.var
scoreboard players operation #z2 sab.var *= #multiplier sab.var
scoreboard players operation #x2 sab.var /= #100 sab.var
scoreboard players operation #z2 sab.var /= #100 sab.var