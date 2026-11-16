#high skill bot has a chance to hold crouch and shoot a ton of stickybombs!
execute store result score #random sab.var run random value 0..9
scoreboard players operation #random sab.var += @s sab.botSkill
execute if score #random sab.var matches 12.. run scoreboard players set @s sab.botCrouchTime 50

#don't crouch if we're doing something else
execute if entity @s[tag=sab.botJumpNextLedge] run scoreboard players set @s sab.botCrouchTime 0

#do it
function sa_bots:bot/class_logic/use_ultimate