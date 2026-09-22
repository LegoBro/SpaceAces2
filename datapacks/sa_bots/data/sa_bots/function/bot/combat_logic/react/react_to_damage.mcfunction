#executed by bot entity


#we have a reference to the last person that damaged us via the score "lastHurter" (attacker's "id" score)


#low skill bot might not react
execute if score @s sab.botSkill matches ..9 if function sa_bots:bot/combat_logic/react/react_odds run return fail
#=====

#don't care if low damage and we have an active target
execute if entity @s[tag=sab.botShootingActiveOpponent,scores={damage=..49,sab.botTargetEntityID=1..,sab.botLookMode=2}] run return fail
#=====

#do nothing if we don't know who hit us
execute unless score @s lastHurter matches -2147483648..2147483647 run return fail
#=====


#look up who hit us (can't be on our team)
scoreboard players set #get_id sab.var -1
scoreboard players operation #team sab.var = @s Team
scoreboard players operation #attacker_id sab.var = @s lastHurter
execute as @e[type=#projectile:players,tag=hb] if score @s id = #attacker_id sab.var \
    unless score @s Team = #team sab.var run function sa_bots:bot/combat_logic/react/get_attacker_targeting_id

#exit out if nothing was found
execute if score #get_id sab.var matches -1 run return fail
#=====


#target the person that shot us
tag @s remove sab.botShootingFriendlyPlayer
scoreboard players set #enemy_shoots_back sab.var 1
scoreboard players set #target_is_teammate sab.var 0
function sa_bots:bot/combat_logic/check_for_targets/adopt_shoot_target