#forget target, clear data
execute if data entity @s data.tasks[0] run data remove entity @s data.tasks[{is_base_task:0}]
scoreboard players reset @s sab.botTargetEntityID
scoreboard players set @s sab.botLookTime 0

#clear last observed position
scoreboard players reset @s sab.botObserveTargetX
scoreboard players reset @s sab.botObserveTargetZ

#clear tags
tag @s remove sab.botShootingFriendlyPlayer
tag @s remove sab.botShootingEnemySustainer
tag @s remove sab.botShootingActiveOpponent