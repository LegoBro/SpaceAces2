#executed by a newly spawned bot entity

#we need to decide which class to pick


#summon markers for decision making
summon marker ~ ~ ~ {UUID:[I;12,0,0,1],Tags:["sab.classOption","sab.classOption.1"]}
summon marker ~ ~ ~ {UUID:[I;12,0,0,2],Tags:["sab.classOption","sab.classOption.2"]}
summon marker ~ ~ ~ {UUID:[I;12,0,0,3],Tags:["sab.classOption","sab.classOption.3"]}
summon marker ~ ~ ~ {UUID:[I;12,0,0,4],Tags:["sab.classOption","sab.classOption.4"]}
summon marker ~ ~ ~ {UUID:[I;12,0,0,5],Tags:["sab.classOption","sab.classOption.5"]}
summon marker ~ ~ ~ {UUID:[I;12,0,0,6],Tags:["sab.classOption","sab.classOption.6"]}
summon marker ~ ~ ~ {UUID:[I;12,0,0,7],Tags:["sab.classOption","sab.classOption.7"]}
summon marker ~ ~ ~ {UUID:[I;12,0,0,8],Tags:["sab.classOption","sab.classOption.8"]}
summon marker ~ ~ ~ {UUID:[I;12,0,0,9],Tags:["sab.classOption","sab.classOption.9"]}
summon marker ~ ~ ~ {UUID:[I;12,0,0,10],Tags:["sab.classOption","sab.classOption.10"]}
summon marker ~ ~ ~ {UUID:[I;12,0,0,11],Tags:["sab.classOption","sab.classOption.11"]}
summon marker ~ ~ ~ {UUID:[I;12,0,0,12],Tags:["sab.classOption","sab.classOption.12"]}
summon marker ~ ~ ~ {UUID:[I;12,0,0,13],Tags:["sab.classOption","sab.classOption.13"]}
summon marker ~ ~ ~ {UUID:[I;12,0,0,14],Tags:["sab.classOption","sab.classOption.14"]}
summon marker ~ ~ ~ {UUID:[I;12,0,0,15],Tags:["sab.classOption","sab.classOption.15"]}
#zero all options to start with
scoreboard players set @e[type=marker,distance=..1,tag=sab.classOption] sab.var 0

#add to scores depending on who's on what team
execute if score @s Team matches 1 run function sa_bots:bot/setup/class/get_class_count_blue
execute if score @s Team matches 2 run function sa_bots:bot/setup/class/get_class_count_red
#other teams (FFA) will leave all at 0, meaning the bot can pick anything at all

#subtract self from class count
execute if data storage sa_bots:bot_data this.class run function sa_bots:bot/setup/class/subtract_self_from_class_counts


#success = 1 means we will update our class
scoreboard players set #success sab.var 1


#find minimum
scoreboard players set #min sab.var 2147483647
scoreboard players operation #min sab.var < @e[type=marker,distance=..1,tag=sab.classOption] sab.var
#classes are viable if they're one of the least populated
execute as @e[type=marker,distance=..1,tag=sab.classOption] if score @s sab.var <= #min sab.var run tag @s add sab.classOptionViable


#do we have a class selected that is already a viable option? if so, there's a high chance we don't switch
execute store result score #random sab.var run random value 1..100
execute if data storage sa_bots:bot_data this.class if score #random sab.var matches ..80 \
    if function sa_bots:bot/setup/class/check_if_current_class_considered_viable run scoreboard players set #success sab.var 0


#pick one of the available options at random
execute if score #success sab.var matches 1 as @e[type=marker,distance=..1,tag=sab.classOptionViable,limit=1,sort=random] \
    store result storage sa_bots:bot_data this.class int 1 run function sa_bots:bot/setup/class/interpret_class_pick

#clean up
kill @e[type=marker,distance=..1,tag=sab.classOption]