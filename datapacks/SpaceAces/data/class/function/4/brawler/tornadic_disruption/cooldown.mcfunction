## Atomic Shrink is on cooldown
item replace entity @s hotbar.4 with minecraft:gray_dye[item_model="class/brawler/tornadic_disruption_cooldown",minecraft:item_name={color:"white",translate:"class.brawler.tornadic_disruption"},minecraft:lore=[{color:"white","italic":false,translate:"class.brawler.tornadic_disruption.lore.0"},{color:"white",translate:"class.brawler.tornadic_disruption.lore.1"},{color:"white",translate:"class.brawler.tornadic_disruption.lore.2"}]]
execute if score @s ultimate.cooldown matches 1.. run function class:4/brawler/tornadic_disruption/deactivate
scoreboard players remove @s ultimate.cooldown 1

execute if score @s ultimate.cooldown matches 1.. run return run function class:4/helper/actionbar/generic/ultimate_cooldown

scoreboard players operation #class.ult_current Numbers = @s ultimate_charge
scoreboard players operation #class.ult_max Numbers = class.brawler.ultimate.charge Numbers
function class:4/helper/actionbar/generic/ultimate