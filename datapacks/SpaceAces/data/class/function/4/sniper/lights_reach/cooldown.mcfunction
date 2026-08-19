## Atomic Shrink is on cooldown
item replace entity @s hotbar.4 with minecraft:gray_dye[item_model="class/sniper/lights_reach_cooldown",minecraft:item_name={color:"white",translate:"class.sniper.lights_reach"},minecraft:lore=[{color:"white","italic":false,translate:"class.sniper.lights_reach.lore.0"},{color:"white",translate:"class.sniper.lights_reach.lore.1"},{color:"white",translate:"class.sniper.lights_reach.lore.2"}]]
execute if score @s ultimate.cooldown matches 1.. run function class:4/sniper/lights_reach/deactivate
scoreboard players remove @s ultimate.cooldown 1

execute if score @s ultimate.cooldown matches 1.. run return run function class:4/helper/actionbar/generic/ultimate_cooldown

scoreboard players operation #class.ult_current Numbers = @s ultimate_charge
scoreboard players operation #class.ult_max Numbers = class.sniper.ultimate.charge Numbers
function class:4/helper/actionbar/generic/ultimate