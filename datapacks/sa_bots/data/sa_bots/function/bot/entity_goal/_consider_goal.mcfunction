#executed by bot entity

#pick = 0, 3
#   > Roam the map solo looking for opportunities to pick off targets (by sniping, flanking, etc)
#push = 1
#   > Push enemy territory with our team
#defend = 2
#   > Stay behind the front line to protect our team's base and defend points of interest


#if we have a goal already, remove self from count
execute if entity @s[scores={sab.botGoal=1,Team=1}] run scoreboard players remove #playerCountBluePush sab.var 1
execute if entity @s[scores={sab.botGoal=2,Team=1}] run scoreboard players remove #playerCountBlueDefend sab.var 1
execute if entity @s[scores={sab.botGoal=1,Team=2}] run scoreboard players remove #playerCountRedPush sab.var 1
execute if entity @s[scores={sab.botGoal=2,Team=2}] run scoreboard players remove #playerCountRedDefend sab.var 1

#each class considers goals differently
execute unless score @s Class matches 1..15 run function sa_bots:bot/class_logic/0_fallback/determine_goal
execute unless score @s Class matches 1 run function sa_bots:bot/class_logic/1_scout/determine_goal
execute unless score @s Class matches 2 run function sa_bots:bot/class_logic/2_soldier/determine_goal
execute unless score @s Class matches 3 run function sa_bots:bot/class_logic/3_sniper/determine_goal
execute unless score @s Class matches 4 run function sa_bots:bot/class_logic/4_bomber/determine_goal
execute unless score @s Class matches 5 run function sa_bots:bot/class_logic/5_gunner/determine_goal
execute unless score @s Class matches 6 run function sa_bots:bot/class_logic/6_healer/determine_goal
execute unless score @s Class matches 7 run function sa_bots:bot/class_logic/7_brawler/determine_goal
execute unless score @s Class matches 8 run function sa_bots:bot/class_logic/8_mobility/determine_goal
execute unless score @s Class matches 9 run function sa_bots:bot/class_logic/9_mechanic/determine_goal
execute unless score @s Class matches 10 run function sa_bots:bot/class_logic/10_scientist/determine_goal
execute unless score @s Class matches 11 run function sa_bots:bot/class_logic/11_infiltraitor/determine_goal
execute unless score @s Class matches 12 run function sa_bots:bot/class_logic/12_pyro/determine_goal
execute unless score @s Class matches 13 run function sa_bots:bot/class_logic/13_seeker/determine_goal
execute unless score @s Class matches 14 run function sa_bots:bot/class_logic/14_shocksmith/determine_goal
execute unless score @s Class matches 15 run function sa_bots:bot/class_logic/15_rocketeer/determine_goal

#if we already have a goal, there is a much lower chance we switch goals
execute store result score #random sab.var run random value 1..3
#much less likely to switch goals if we're in "PUSH" mode and following a leader into battle
execute if entity @s[scores={sab.botFollowingPlayer=1..,sab.botGoal=1,sab.botSkill=4..}] store result score #random sab.var run random value 1..7
execute if score @s sab.botGoal matches 0.. unless score @s sab.botGoal = #choice sab.var if score #random sab.var matches 1 run \
    scoreboard players operation @s sab.botGoal = #choice sab.var
#always set goal if we don't already have one
execute unless score @s sab.botGoal matches 0.. run \
    scoreboard players operation @s sab.botGoal = #choice sab.var


#are our teammates not doing the objective? do the job nobody else is doing
#(this will be especially helpful if we do something funny like run a team of all mechanics)
execute if score @s Team matches 1 run function sa_bots:bot/entity_goal/enforce_restrictions_blue
execute if score @s Team matches 2 run function sa_bots:bot/entity_goal/enforce_restrictions_red

#--------------------------
#special behavior for "PUSH" mode

#if we have followers, we must stay in "PUSH" mode
execute if score @s sab.botFollowers matches 1.. run function sa_bots:bot/entity_goal/leader_refresh_follower_count
execute if score @s sab.botFollowers matches 1.. run scoreboard players set @s sab.botGoal 1

#don't follow anyone else if we're a leader
execute if score @s sab.botFollowers matches 1.. run scoreboard players reset @s sab.botFollowingPlayer

#if we've left "PUSH" mode, we are no longer following a player
execute unless score @s sab.botGoal matches 1 run scoreboard players reset @s sab.botFollowingPlayer

#"PUSH" goal: we might follow other players into battle (if we aren't already a leader)
execute if score @s sab.botGoal matches 1 unless score @s sab.botFollowers matches 1.. run function sa_bots:bot/entity_goal/push_consider_following_someone
#--------------------------


#re-add ourself to goal counts for the sake of other bots who want to evaluate their goal within the next 2 seconds
execute if entity @s[scores={sab.botGoal=1,Team=1}] run scoreboard players add #playerCountBluePush sab.var 1
execute if entity @s[scores={sab.botGoal=2,Team=1}] run scoreboard players add #playerCountBlueDefend sab.var 1
execute if entity @s[scores={sab.botGoal=1,Team=2}] run scoreboard players add #playerCountRedPush sab.var 1
execute if entity @s[scores={sab.botGoal=2,Team=2}] run scoreboard players add #playerCountRedDefend sab.var 1


#consider again in a random amount of time
execute store result score @s sab.reEvaluateBehaviorTime run random value 80..160