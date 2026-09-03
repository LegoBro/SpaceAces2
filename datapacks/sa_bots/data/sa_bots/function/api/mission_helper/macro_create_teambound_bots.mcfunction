# $(number) = number of bots to add
# $(skill) = skill level of the bots
# $(subtract_human_players) = whether to subtract human player count from number of bots to add
# $(team) = what team the bots will be on


#read $(subtract_human_players)
$scoreboard players set #input sab.var $(subtract_human_players)


#bots created for missions should ignore team restriction
data modify storage sa_bots:bot_data bot_template.settings.team_choice.bypass_team_restrictions set value 1

#team
$data modify storage sa_bots:bot_data bot_template.settings.team_choice.desired_team set value $(team)

#set skill
$data modify storage sa_bots:bot_data bot_template.settings.brain merge value {skill:{min:$(skill),max:$(skill),actual:$(skill)},locked_in:0}


#------------------------------
#create bots

#use static bot count?
$execute if score #input sab.var matches ..0 run return run function sa_bots:api/create_bots/count_macro_create_bots {count:$(number)}
#=====

#still here? that means we're doing it the other way

#count humans
execute store result score #player_count sab.var run execute if entity @a

#add ($number - player_count) bots
$scoreboard players set #var sab.var $(number)
scoreboard players operation #var sab.var -= #player_count sab.var
execute store result storage sa_bots:generic count int 1 run scoreboard players get #var sab.var
function sa_bots:api/create_bots/count_macro_create_bots with storage sa_bots:generic
#^ totally fine if count is 0 or less, count_macro_create_bots will react appropriately
#------------------------------