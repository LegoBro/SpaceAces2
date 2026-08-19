## Atomic Shrink is on cooldown
execute if score @s ultimate.cooldown matches 1.. run item replace entity @s hotbar.4 with minecraft:gray_dye[item_model="class/mobility/surging_unstability",minecraft:item_name={color:"white",translate:"class.mobility.surging_unstability"},minecraft:lore=[{color:"white","italic":false,translate:"class.mobility.surging_unstability.lore.0"},{color:"white",translate:"class.mobility.surging_unstability.lore.1"},{color:"white",translate:"class.mobility.surging_unstability.lore.2"}]]
execute unless score @s ultimate.cooldown matches 1.. run item replace entity @s hotbar.4 with minecraft:gray_dye[item_model="class/mobility/surging_unstability_cooldown",minecraft:item_name={color:"white",translate:"class.mobility.surging_unstability"},minecraft:lore=[{color:"white","italic":false,translate:"class.mobility.surging_unstability.lore.0"},{color:"white",translate:"class.mobility.surging_unstability.lore.1"},{color:"white",translate:"class.mobility.surging_unstability.lore.2"}]]
execute if score @s ultimate.cooldown matches 1.. run function class:4/mobility/surging_unstability/deactivate
scoreboard players remove @s ultimate.cooldown 1

execute if score @s ultimate.cooldown matches 1.. run return run function class:4/helper/actionbar/generic/ultimate_cooldown

scoreboard players operation #class.ult_current Numbers = @s ultimate_charge
scoreboard players operation #class.ult_max Numbers = class.mobility.ultimate.charge Numbers
function class:4/helper/actionbar/generic/ultimate