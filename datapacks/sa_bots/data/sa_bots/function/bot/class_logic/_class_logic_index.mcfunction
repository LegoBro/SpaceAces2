#"think" as whatever class we are
execute unless score @s Class matches 1..15 run return run function sa_bots:bot/class_logic/0_fallback/think
execute if score @s Class matches 1 run return run function sa_bots:bot/class_logic/1_scout/think
execute if score @s Class matches 2 run return run function sa_bots:bot/class_logic/2_soldier/think
execute if score @s Class matches 3 run return run function sa_bots:bot/class_logic/3_sniper/think
execute if score @s Class matches 4 run return run function sa_bots:bot/class_logic/4_bomber/think
execute if score @s Class matches 5 run return run function sa_bots:bot/class_logic/5_gunner/think
execute if score @s Class matches 6 run return run function sa_bots:bot/class_logic/6_healer/think
execute if score @s Class matches 7 run return run function sa_bots:bot/class_logic/7_brawler/think
execute if score @s Class matches 8 run return run function sa_bots:bot/class_logic/8_mobility/think
execute if score @s Class matches 9 run return run function sa_bots:bot/class_logic/9_mechanic/think
execute if score @s Class matches 10 run return run function sa_bots:bot/class_logic/10_scientist/think
execute if score @s Class matches 11 run return run function sa_bots:bot/class_logic/11_infiltraitor/think
execute if score @s Class matches 12 run return run function sa_bots:bot/class_logic/12_pyro/think
execute if score @s Class matches 13 run return run function sa_bots:bot/class_logic/13_seeker/think
execute if score @s Class matches 14 run return run function sa_bots:bot/class_logic/14_shocksmith/think
execute if score @s Class matches 15 run return run function sa_bots:bot/class_logic/15_rocketeer/think