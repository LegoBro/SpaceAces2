#set bots' broad game sense to suit different gamemodes
#(this should be executed after the gamemode is selected and stored)


#read data
data modify storage sa_bots:bot_data objective.type set from storage space_aces:selected_gamemode name

#-------------------------------------
#0 = none (unset)
scoreboard players set #bot_objective sab.var 0

#1 = basic team fighting
execute if data storage sa_bots:bot_data objective{type:"tdm"} run scoreboard players set #bot_objective sab.var 1
execute if data storage sa_bots:bot_data objective{type:"killstreak"} run scoreboard players set #bot_objective sab.var 1
execute if data storage sa_bots:bot_data objective{type:"pd"} run scoreboard players set #bot_objective sab.var 1

#2 = limited lives team fighting
execute if data storage sa_bots:bot_data objective{type:"duel"} run scoreboard players set #bot_objective sab.var 2
execute if data storage sa_bots:bot_data objective{type:"lockout"} run scoreboard players set #bot_objective sab.var 2
execute if data storage sa_bots:bot_data objective{type:"aliens"} run scoreboard players set #bot_objective sab.var 2

#3 = 3 control point
execute if data storage sa_bots:bot_data objective{type:"setback"} run scoreboard players set #bot_objective sab.var 3

#4 = payload
execute if data storage sa_bots:bot_data objective{type:"payload"} run scoreboard players set #bot_objective sab.var 4

#5 = ctf
execute if data storage sa_bots:bot_data objective{type:"ctf"} run scoreboard players set #bot_objective sab.var 5

#6 = ffa
execute if data storage sa_bots:bot_data objective{type:"ffa"} run scoreboard players set #bot_objective sab.var 6
#-------------------------------------

#debug: force objective
scoreboard players set #bot_objective sab.var 1


#based on #bot_objective, set quota for how much of the team should have the goal of PUSH or DEFEND (or PICK, but we don't really police that)

#defaults
scoreboard players set #bot_percent_quota_push sab.var 25
scoreboard players set #bot_percent_quota_defend sab.var 25
scoreboard players set #bot_percent_quota_asymmetric sab.var 0

#specific modes

#basic team fight
execute if score #bot_objective sab.var matches 1 run scoreboard players set #bot_percent_quota_push sab.var 50
execute if score #bot_objective sab.var matches 1 run scoreboard players set #bot_percent_quota_defend sab.var 0

#limited lives teams
#(defaults)

#control point
execute if score #bot_objective sab.var matches 3 run scoreboard players set #bot_percent_quota_push sab.var 40
execute if score #bot_objective sab.var matches 3 run scoreboard players set #bot_percent_quota_defend sab.var 20

#payload
execute if score #bot_objective sab.var matches 4 run scoreboard players set #bot_percent_quota_asymmetric sab.var 1
execute if score #bot_objective sab.var matches 4 run scoreboard players set #bot_percent_quota_push_blue sab.var 50
execute if score #bot_objective sab.var matches 4 run scoreboard players set #bot_percent_quota_defend_blue sab.var 0
execute if score #bot_objective sab.var matches 4 run scoreboard players set #bot_percent_quota_push_red sab.var 0
execute if score #bot_objective sab.var matches 4 run scoreboard players set #bot_percent_quota_defend_red sab.var 67

#ctf
execute if score #bot_objective sab.var matches 5 run scoreboard players set #bot_percent_quota_push sab.var 40
execute if score #bot_objective sab.var matches 5 run scoreboard players set #bot_percent_quota_defend sab.var 25

#ffa
execute if score #bot_objective sab.var matches 6 run scoreboard players set #bot_percent_quota_push sab.var 0
execute if score #bot_objective sab.var matches 6 run scoreboard players set #bot_percent_quota_defend sab.var 0



#don't need to sync variables if playing a mode where red/blue do different things
execute if score #bot_percent_quota_asymmetric sab.var matches 1 run return 1
#=====

#symmetric modes: same quotas for both teams
scoreboard players operation #bot_percent_quota_push_blue sab.var = #bot_percent_quota_push sab.var
scoreboard players operation #bot_percent_quota_defend_blue sab.var = #bot_percent_quota_defend sab.var
scoreboard players operation #bot_percent_quota_push_red sab.var = #bot_percent_quota_push sab.var
scoreboard players operation #bot_percent_quota_defend_red sab.var = #bot_percent_quota_defend sab.var