scoreboard players set @s ultimate_charge 0

scoreboard players operation #interval Numbers = @s ultimate.cooldown 
scoreboard players operation #interval Numbers %= class.mobility.ultimate.interval Numbers
execute if score #interval Numbers matches 1 run function class:4/mobility/surging_unstability/shoot

return 1