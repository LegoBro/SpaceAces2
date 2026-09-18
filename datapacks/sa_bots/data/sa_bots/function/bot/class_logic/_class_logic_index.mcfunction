#very common need: determine when a bot is ready to shoot
execute store result score @s sab.lockedOntoEnemy run execute if entity \
    @s[scores={sab.botTargetEntityID=1..,sab.botTimeSinceLOS=..5,sab.botLookMode=2,sab.botReactionCountdown=..0,sab.botTargetAngleDifferenceYaw=-1000..1000,sab.botTargetAngleDifferencePitch=-1000..1000}]

#"think" as whatever class we are
execute unless score @s Class matches 1..15 run function sa_bots:bot/class_logic/0_fallback/think
execute if score @s Class matches 1 run function sa_bots:bot/class_logic/1_scout/think
execute if score @s Class matches 2 run function sa_bots:bot/class_logic/2_soldier/think
execute if score @s Class matches 3 run function sa_bots:bot/class_logic/3_sniper/think
execute if score @s Class matches 4 run function sa_bots:bot/class_logic/4_bomber/think
execute if score @s Class matches 5 run function sa_bots:bot/class_logic/5_gunner/think
execute if score @s Class matches 6 run function sa_bots:bot/class_logic/6_healer/think
execute if score @s Class matches 7 run function sa_bots:bot/class_logic/7_brawler/think
execute if score @s Class matches 8 run function sa_bots:bot/class_logic/8_mobility/think
execute if score @s Class matches 9 run function sa_bots:bot/class_logic/9_mechanic/think
execute if score @s Class matches 10 run function sa_bots:bot/class_logic/10_scientist/think
execute if score @s Class matches 11 run function sa_bots:bot/class_logic/11_infiltraitor/think
execute if score @s Class matches 12 run function sa_bots:bot/class_logic/12_pyro/think
execute if score @s Class matches 13 run function sa_bots:bot/class_logic/13_seeker/think
execute if score @s Class matches 14 run function sa_bots:bot/class_logic/14_shocksmith/think
execute if score @s Class matches 15 run function sa_bots:bot/class_logic/15_rocketeer/think

#temporary: use ultimate
execute if entity @s[scores={ultimate_charge=1500..}] run scoreboard players set @s SelectedItem 4
