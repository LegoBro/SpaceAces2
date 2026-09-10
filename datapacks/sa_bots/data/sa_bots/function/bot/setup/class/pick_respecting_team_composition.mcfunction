#executed by a newly spawned bot entity

#we need to decide which class to pick


#summon markers for decision making (and assume all classes are viable by default)
summon marker ~ ~ ~ {UUID:[I;12,0,0,1],Tags:["sab.classOption","sab.classOptionViable", \
    "sab.classOption.1","sab.striker","sab.highMobility","sab.squishy"]}
summon marker ~ ~ ~ {UUID:[I;12,0,0,2],Tags:["sab.classOption","sab.classOptionViable", \
    "sab.classOption.2","sab.striker"]}
summon marker ~ ~ ~ {UUID:[I;12,0,0,3],Tags:["sab.classOption","sab.classOptionViable", \
    "sab.classOption.3","sab.striker","sab.goodForPicks"]}
summon marker ~ ~ ~ {UUID:[I;12,0,0,4],Tags:["sab.classOption","sab.classOptionViable", \
    "sab.classOption.4","sab.striker","sab.highMobility"]}
summon marker ~ ~ ~ {UUID:[I;12,0,0,5],Tags:["sab.classOption","sab.classOptionViable", \
    "sab.classOption.5","sab.guardian"]}
summon marker ~ ~ ~ {UUID:[I;12,0,0,6],Tags:["sab.classOption","sab.classOptionViable", \
    "sab.classOption.6","sab.sustainer"]}
summon marker ~ ~ ~ {UUID:[I;12,0,0,7],Tags:["sab.classOption","sab.classOptionViable", \
    "sab.classOption.7","sab.guardian","sab.highMobility"]}
summon marker ~ ~ ~ {UUID:[I;12,0,0,8],Tags:["sab.classOption","sab.classOptionViable", \
    "sab.classOption.8","sab.striker","sab.highMobility","sab.squishy"]}
summon marker ~ ~ ~ {UUID:[I;12,0,0,9],Tags:["sab.classOption","sab.classOptionViable", \
    "sab.classOption.9","sab.guardian","sab.ctfFlagDefender"]}
summon marker ~ ~ ~ {UUID:[I;12,0,0,10],Tags:["sab.classOption","sab.classOptionViable", \
    "sab.classOption.10","sab.sustainer"]}
summon marker ~ ~ ~ {UUID:[I;12,0,0,11],Tags:["sab.classOption","sab.classOptionViable", \
    "sab.classOption.11","sab.striker","sab.goodForPicks","sab.squishy"]}
summon marker ~ ~ ~ {UUID:[I;12,0,0,12],Tags:["sab.classOption","sab.classOptionViable", \
    "sab.classOption.12","sab.guardian"]}
summon marker ~ ~ ~ {UUID:[I;12,0,0,13],Tags:["sab.classOption","sab.classOptionViable", \
    "sab.classOption.13","sab.striker","sab.goodForPicks","sab.squishy"]}
summon marker ~ ~ ~ {UUID:[I;12,0,0,14],Tags:["sab.classOption","sab.classOptionViable", \
    "sab.classOption.14","sab.sustainer"]}
summon marker ~ ~ ~ {UUID:[I;12,0,0,15],Tags:["sab.classOption","sab.classOptionViable", \
    "sab.classOption.15","sab.guardian","sab.highMobility"]}
#zero all options to start with
scoreboard players set @e[type=marker,distance=..1,tag=sab.classOption] sab.var 0
#add to scores depending on who's on what team
execute if score @s Team matches 1 run function sa_bots:bot/setup/class/get_class_count_blue
execute if score @s Team matches 2 run function sa_bots:bot/setup/class/get_class_count_red
#we might make different considerations depending on gamemode
scoreboard players set #class_loggic_defense sab.var 0
scoreboard players set #class_loggic_ctf sab.var 0
scoreboard players set #class_loggic_limited_lives sab.var 0
execute if score @s Team matches 1 run function sa_bots:bot/setup/class/determine_logic_blue
execute if score @s Team matches 2 run function sa_bots:bot/setup/class/determine_logic_red


#success = 1 means we will update our class
scoreboard players set #success sab.var 1


#apply a bunch of filters for what we can pick

#skill 3+ -- if we're the only player on the team, don't play sustainer
execute if entity @s[scores={sab.botSkill=4..,Team=1..2}] if score #playerCountCurrentTeam sab.var matches ..1 run \
    tag @e[type=marker,tag=sab.classOption,distance=..1,tag=sab.sustainer] remove sab.classOptionViable
#skill 7+ -- don't play sustainer in ffa
execute if score @s sab.botSkill matches 7.. unless score @s Team matches 1..2 run \
    tag @e[type=marker,tag=sab.classOption,distance=..1,tag=sab.sustainer] remove sab.classOptionViable
#-----------------------
#minimum sustainer rules:
#first, count sustainers
scoreboard players set #count sab.var 0
execute as @e[type=marker,tag=sab.classOption,tag=sab.sustainer,distance=..1] run scoreboard players operation #count sab.var += @s sab.var
#skill 4..5 -- need at least 1 sustainer on a team of 6+ players! don't pick anything else if we need one
execute if entity @s[scores={sab.botSkill=4..5,Team=1..2}] if score #playerCountCurrentTeam sab.var matches 6.. if score #count sab.var matches ..0 run \
    tag @e[type=marker,tag=sab.classOption,distance=..1,tag=!sab.sustainer] remove sab.classOptionViable
#skill 6+ -- need at least 1 sustainer on a team of 4+ players! don't pick anything else
execute if entity @s[scores={sab.botSkill=6..,Team=1..2}] if score #playerCountCurrentTeam sab.var matches 4.. if score #count sab.var matches ..0 run \
    tag @e[type=marker,tag=sab.classOption,distance=..1,tag=!sab.sustainer] remove sab.classOptionViable
#skill 7+ -- need at least 1 sustainer on a team of 3+ players! don't pick anything else (modes with limited lives)
execute if score #class_loggic_limited_lives sab.var matches 1 \
    if entity @s[scores={sab.botSkill=7..,Team=1..2}] if score #playerCountCurrentTeam sab.var matches 3.. if score #count sab.var matches ..0 run \
    tag @e[type=marker,tag=sab.classOption,distance=..1,tag=!sab.sustainer] remove sab.classOptionViable
#-----------------------
#skill 7+ -- don't choose single-target-pick-classes if they comprise >25% of the team
scoreboard players set #count sab.var 0
execute as @e[type=marker,tag=sab.classOption,tag=sab.goodForPicks,distance=..1] run scoreboard players operation #count sab.var += @s sab.var
execute if entity @s[scores={sab.botSkill=7..,Team=1..2}] if score #count sab.var > #player_threshold_25_percent sab.var run \
    tag @e[type=marker,tag=sab.classOption,distance=..1,tag=sab.goodForPicks] remove sab.classOptionViable
#any skill -- don't stack more than 2 players onto a single class (0-6 players on team)
execute if score #playerCountCurrentTeam sab.var matches ..6 run \
    tag @e[type=marker,tag=sab.classOption,distance=..1,scores={sab.var=2..}] remove sab.classOptionViable
#any skill -- don't stack more than 3 players onto a single class (7-16 players on team)
execute if score #playerCountCurrentTeam sab.var matches 7..16 run \
    tag @e[type=marker,tag=sab.classOption,distance=..1,scores={sab.var=3..}] remove sab.classOptionViable
#any skill -- don't stack more than 4 players onto a single class (17-32 players on team)
execute if score #playerCountCurrentTeam sab.var matches 17..32 run \
    tag @e[type=marker,tag=sab.classOption,distance=..1,scores={sab.var=4..}] remove sab.classOptionViable
#any skill -- don't run more than 50% guardian
scoreboard players set #count sab.var 0
execute as @e[type=marker,tag=sab.classOption,tag=sab.guardian,distance=..1] run scoreboard players operation #count sab.var += @s sab.var
execute if entity @s[scores={Team=1..2}] if score #count sab.var > #player_threshold_50_percent sab.var run \
    tag @e[type=marker,tag=sab.classOption,distance=..1,tag=sab.guardian] remove sab.classOptionViable
#any skill -- don't run more than 67% striker
scoreboard players set #count sab.var 0
execute as @e[type=marker,tag=sab.classOption,tag=sab.striker,distance=..1] run scoreboard players operation #count sab.var += @s sab.var
execute if entity @s[scores={Team=1..2}] if score #count sab.var > #player_threshold_67_percent sab.var run \
    tag @e[type=marker,tag=sab.classOption,distance=..1,tag=sab.striker] remove sab.classOptionViable
#any skill -- don't run more than 34% sustainer (unless there are limited lives)
scoreboard players set #count sab.var 0
execute as @e[type=marker,tag=sab.classOption,tag=sab.sustainer,distance=..1] run scoreboard players operation #count sab.var += @s sab.var
execute unless score #class_loggic_limited_lives sab.var matches 1 if entity @s[scores={Team=1..2}] if score #count sab.var > #player_threshold_34_percent sab.var run \
    tag @e[type=marker,tag=sab.classOption,distance=..1,tag=sab.sustainer] remove sab.classOptionViable
#skill 6+ -- on modes with limited lives, don't run more than 34% squishy classes (like scout for example)
scoreboard players set #count sab.var 0
execute as @e[type=marker,tag=sab.classOption,tag=sab.squishy,distance=..1] run scoreboard players operation #count sab.var += @s sab.var
execute if score #class_loggic_limited_lives sab.var matches 1 if entity @s[scores={Team=1..2}] if score #count sab.var > #player_threshold_34_percent sab.var run \
    tag @e[type=marker,tag=sab.classOption,distance=..1,tag=sab.squishy] remove sab.classOptionViable
#skill 5+ -- less likely to run squishy classes when playing defense (like scout for example)
execute store result score #random sab.var run random value 1..100
execute if score #class_loggic_defense sab.var matches 1 if score #random sab.var matches ..35 if entity @e[type=marker,tag=sab.classOption,distance=..1,tag=!sab.squishy,tag=sab.classOptionViable] run \
    tag @e[type=marker,tag=sab.classOption,distance=..1,tag=sab.squishy] remove sab.classOptionViable
#skill 7+ -- should have a class on the team that is good at guarding the flag when playing ctf with 5+ on the team
execute if score #class_logic_ctf sab.var matches 1 if entity @s[scores={sab.botSkill=7..,Team=1..2}] if score #playerCountCurrentTeam sab.var matches 5.. \
    unless entity @e[type=marker,tag=sab.classOption,tag=sab.ctfFlagDefender,distance=..1,scores={sab.var=1..}] \
    if entity @e[type=marker,tag=sab.classOption,distance=..1,tag=sab.ctfFlagDefender,tag=sab.classOptionViable] run \
    tag @e[type=marker,tag=sab.classOption,distance=..1,tag=!sab.ctfFlagDefender] remove sab.classOptionViable
#skill 4+ -- more likely to run high mobility classes in ctf
execute store result score #random sab.var run random value 1..100
execute if score #class_loggic_ctf sab.var matches 1 if score @s sab.botSkill matches 4.. \
    if score #random sab.var matches ..35 if entity @e[type=marker,tag=sab.classOption,distance=..1,tag=sab.highMobility,tag=sab.classOptionViable] run \
    tag @e[type=marker,tag=sab.classOption,distance=..1,tag=!sab.highMobility] remove sab.classOptionViable
#if no options are viable, make everything viable again
execute unless entity @e[type=marker,tag=sab.classOption,distance=..1,tag=sab.classOptionViable] run \
    tag @e[type=marker,tag=sab.classOption,distance=..1] add sab.classOptionViable


#do we have a class selected that is already a viable option? if so, there's a high chance we don't switch
execute store result score #random sab.var run random value 1..100
execute if data storage sa_bots:bot_data this.class if score #random sab.var matches ..80 \
    if function sa_bots:bot/setup/class/check_if_current_class_considered_viable run scoreboard players set #success sab.var 0


#pick one of the available options at random
execute if score #success sab.var matches 1 as @e[type=marker,distance=..1,tag=sab.classOptionViable,limit=1,sort=random] \
    store result storage sa_bots:bot_data this.class int 1 run function sa_bots:bot/setup/class/interpret_class_pick

#clean up
kill @e[type=marker,distance=..1,tag=sab.classOption]