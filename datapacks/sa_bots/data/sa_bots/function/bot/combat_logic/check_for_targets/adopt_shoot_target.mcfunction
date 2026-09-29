#clean up old tags
tag @s[tag=sab.botShootingActiveOpponent] remove sab.botShootingActiveOpponent
tag @s[tag=sab.botShootingFriendlyPlayer] remove sab.botShootingFriendlyPlayer

#randomized reaction time based on our base reaction time
scoreboard players operation @s sab.botReactionCountdown = @s sab.botReactionTimeBase
execute store result score #random sab.var run random value -4..4
scoreboard players operation @s sab.botReactionCountdown += #random sab.var
#no reaction time if we're already looking at something
execute if entity @s[scores={sab.botLookTime=1..}] run scoreboard players set @s sab.botReactionCountdown 0

#set scores
scoreboard players operation @s sab.botTargetEntityID = #get_id sab.var
scoreboard players operation @s sab.botTargetUUID0 = #get_uuid4_0 sab.var
scoreboard players operation @s sab.botTargetUUID1 = #get_uuid4_1 sab.var
scoreboard players operation @s sab.botTargetUUID2 = #get_uuid4_2 sab.var
scoreboard players operation @s sab.botTargetUUID3 = #get_uuid4_3 sab.var

#forget the person that shot us last (we will re-target if we get mad at them again)
scoreboard players reset @s sab.botAttackerEntityID

#track whether we're attacking something that's dangerous
execute if score #enemy_shoots_back sab.var matches 1.. run tag @s add sab.botShootingActiveOpponent
execute if score #target_is_teammate sab.var matches 1.. run tag @s add sab.botShootingFriendlyPlayer