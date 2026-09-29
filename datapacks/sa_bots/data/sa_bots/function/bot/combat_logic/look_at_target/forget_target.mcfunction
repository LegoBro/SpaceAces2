#forget target, clear data
scoreboard players reset @s sab.botTargetEntityID
scoreboard players reset @s sab.botAttackerEntityID
scoreboard players set @s sab.botLookTime 0

#clear last observed position
scoreboard players reset @s sab.botObserveTargetX
scoreboard players reset @s sab.botObserveTargetZ

#clear tags
tag @s remove sab.botShootingFriendlyPlayer
tag @s remove sab.botShootingEnemySustainer
tag @s remove sab.botShootingActiveOpponent