#different multiplier depending on the block

#default: assume ice, blue ice, or packed ice
scoreboard players set #multiplier sab.var 22
#slime block is the other weird case
execute if block ~ ~ ~ slime_block run scoreboard players set #multiplier sab.var 40
#i expected soul_sand, honey_block, and cobweb to behave weird, but those work fine without a multiplier


#now apply it
scoreboard players operation #x2 sab.var *= #multiplier sab.var
scoreboard players operation #z2 sab.var *= #multiplier sab.var
scoreboard players operation #x2 sab.var /= #100 sab.var
scoreboard players operation #z2 sab.var /= #100 sab.var