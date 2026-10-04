#executed by a bot who has no followers and has the "PUSH" goal


#we might follow a teammate that is
#A) a bot, who
#   1) is not following someone else
#   2) has sab.botGoal = "PUSH"
#   3) is playing a class that can act as a leader (preferred, but not a hard rule)
#...OR
#B) a human, who
#   1) is playing a class that can act as a leader (preferred, but not a hard rule)


execute store result score #random sab.var run random value 1..30
#high cooperativeness = more likely to follow
scoreboard players operation #random sab.var += @s sab.botCooperativeness
#sustainer = more likely to follow
execute if function sa_bots:bot/combat_logic/check_for_targets/check_if_sustainer run scoreboard players add #random sab.var 5
#more likely to continue following someone if we are already doing so
execute if score @s sab.botFollowingPlayer matches 1.. run scoreboard players add #random sab.var 16

#exit out and don't follow anyone if we rolled low
execute if score #random sab.var matches ..25 run return run scoreboard players reset @s sab.botFollowingPlayer
#=====

scoreboard players set #success sab.var 0

#store who we're currently following
scoreboard players set #get_id sab.var -1
execute if score @s sab.botFollowingPlayer matches 1.. run scoreboard players operation #get_id sab.var = @s sab.botFollowingPlayer

#if we are already following someone, check if they're still around
execute store result score #random sab.var run random value 1..9
execute if score #random sab.var matches ..8 if score @s sab.botFollowingPlayer matches 1.. \
    as @e[type=#projectile:players,tag=sab.activePlayer,distance=..70] if score @s id = #get_id sab.var run scoreboard players set #success sab.var 1

#if they're still around, we can exit out
execute if score #success sab.var matches 1.. run return run \
    execute unless entity @s[tag=sab.botDoingNonBaseTask] unless entity @s[scores={sab.botTask=4}] run \
    function sa_bots:bot/entity_task/switch_base_task_macro {choice:4}
#=====


#still here? pick a new teammate to follow

#log which nearby teammates could be a good leader
scoreboard players set #count_valid sab.var 0
scoreboard players set #best sab.var 0
execute if score @s Team matches 1 as @e[type=#projectile:players,tag=sab.activePlayer,scores={Team=1},distance=..25] run function sa_bots:bot/entity_goal/tag_possible_leader
execute if score @s Team matches 2 as @e[type=#projectile:players,tag=sab.activePlayer,scores={Team=2},distance=..25] run function sa_bots:bot/entity_goal/tag_possible_leader

#follow one of the possible leaders at random
execute as @e[type=#projectile:players,tag=sab.possibleLeader,distance=..25,sort=random] run function sa_bots:bot/entity_goal/become_leader
execute if score #success sab.var matches 1.. run scoreboard players operation @s sab.botFollowingPlayer = #success sab.var
#switch to "follow specific teammate" task if we decided to follow someone
execute if score #success sab.var matches 1.. run function sa_bots:bot/entity_task/switch_base_task_macro {choice:4}