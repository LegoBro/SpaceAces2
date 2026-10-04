#remember what our last sector was
scoreboard players set @s sab.botInSectorPrevious -1
scoreboard players operation @s sab.botInSectorPrevious = @s sab.botInSector

#adopt sector of input variable
scoreboard players operation @s sab.botInSector = #sector sab.var

#update conditional/unconditional nav if we entered a new sector
execute unless score @s sab.botInSectorPrevious = @s sab.botInSector run function sa_bots:bot/utility/bot_update_nav_preference