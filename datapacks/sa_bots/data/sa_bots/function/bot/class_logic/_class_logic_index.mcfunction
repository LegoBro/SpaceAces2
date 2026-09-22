#very common need: determine when a bot is ready to shoot
#1 = targeting someone, but we don't have our crosshair near them yet
#2 = targeting someone and our crosshair is near the enemy
#3 = targeting someone and our crosshair is on the money
execute store result score @s sab.lockedOntoEnemy run execute if entity \
    @s[scores={sab.botTargetEntityID=1..,sab.botTimeSinceLOS=..5,sab.botLookMode=2,sab.botReactionCountdown=..0}]
scoreboard players set @s[scores={sab.lockedOntoEnemy=1..,sab.botTargetAngleDifferenceYaw=-2000..2000,sab.botTargetAngleDifferencePitch=-2000..2000}] sab.lockedOntoEnemy 2
scoreboard players set @s[scores={sab.lockedOntoEnemy=2..,sab.botTargetAngleDifferenceYaw=-1000..1000,sab.botTargetAngleDifferencePitch=-1000..1000}] sab.lockedOntoEnemy 3

#"think" as whatever class we are
execute unless score @s Class matches 1..15 run function sa_bots:bot/class_logic/0_fallback/_think
execute if score @s Class matches 1 run function sa_bots:bot/class_logic/1_scout/_think
execute if score @s Class matches 2 run function sa_bots:bot/class_logic/2_soldier/_think
execute if score @s Class matches 3 run function sa_bots:bot/class_logic/3_sniper/_think
execute if score @s Class matches 4 run function sa_bots:bot/class_logic/4_bomber/_think
execute if score @s Class matches 5 run function sa_bots:bot/class_logic/5_gunner/_think
execute if score @s Class matches 6 run function sa_bots:bot/class_logic/6_healer/_think
execute if score @s Class matches 7 run function sa_bots:bot/class_logic/7_brawler/_think
execute if score @s Class matches 8 run function sa_bots:bot/class_logic/8_mobility/_think
execute if score @s Class matches 9 run function sa_bots:bot/class_logic/9_mechanic/_think
execute if score @s Class matches 10 run function sa_bots:bot/class_logic/10_scientist/_think
execute if score @s Class matches 11 run function sa_bots:bot/class_logic/11_infiltraitor/_think
execute if score @s Class matches 12 run function sa_bots:bot/class_logic/12_pyro/_think
execute if score @s Class matches 13 run function sa_bots:bot/class_logic/13_seeker/_think
execute if score @s Class matches 14 run function sa_bots:bot/class_logic/14_shocksmith/_think
execute if score @s Class matches 15 run function sa_bots:bot/class_logic/15_rocketeer/_think
