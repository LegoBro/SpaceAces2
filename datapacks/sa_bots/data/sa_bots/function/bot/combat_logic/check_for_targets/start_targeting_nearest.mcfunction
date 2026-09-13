#skill 7+ shoots at very close things that can't shoot back (like sticky bombs)
execute if score @s sab.botSkill matches 7.. at @s as @e[limit=1,sort=nearest,tag=sab.possibleTarget,tag=!sab.possibleTargetCanShoot,distance=2..8] store result score #get_id sab.var \
    run function sa_bots:bot/combat_logic/check_for_targets/fetch_target_id

#shoot at the nearest thing that might shoot us back
execute unless score #get_id sab.var matches 1.. at @s as @e[limit=1,sort=nearest,tag=sab.possibleTarget,tag=sab.possibleTargetCanShoot,distance=1..50] store result score #get_id sab.var \
    run function sa_bots:bot/combat_logic/check_for_targets/fetch_target_id

#still no target? shoot at the nearest thing
execute unless score #get_id sab.var matches 1.. at @s as @e[limit=1,sort=nearest,tag=sab.possibleTarget,distance=1..50] store result score #get_id sab.var \
    run function sa_bots:bot/combat_logic/check_for_targets/fetch_target_id
