#high skill: check LOS to a random target. if valid, aim at it (only care about stuff that is dangerous!)
execute if score @s sab.botSkill matches 8.. at @s positioned ~ ~1.25 ~ as @e[type=#projectile:has_hb,limit=1,sort=random,tag=sab.possibleTarget,tag=sab.possibleTargetCanShoot,distance=1..150] \
    if function sa_bots:bot/combat_logic/check_for_targets/check_if_los_to_target \
    store result score #get_id sab.var run function sa_bots:bot/combat_logic/check_for_targets/fetch_target_id

#second pass: check LOS to a random target. if valid, aim at it
execute if score #get_id sab.var matches ..0 at @s positioned ~ ~1.25 ~ as @e[type=#projectile:has_hb,limit=1,sort=random,tag=sab.possibleTarget,distance=1..150] \
    if function sa_bots:bot/combat_logic/check_for_targets/check_if_los_to_target \
    store result score #get_id sab.var run function sa_bots:bot/combat_logic/check_for_targets/fetch_target_id
