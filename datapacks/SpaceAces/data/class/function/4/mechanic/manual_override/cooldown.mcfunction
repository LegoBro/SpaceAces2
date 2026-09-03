## Atomic Shrink is on cooldown
item replace entity @s hotbar.4 with minecraft:gray_dye[item_model="class/mechanic/manual_override_cooldown",minecraft:item_name={color:"white",translate:"class.mechanic.manual_override"},minecraft:lore=[{color:"white","italic":false,translate:"class.mechanic.manual_override.lore.0"},{color:"white",translate:"class.mechanic.manual_override.lore.1"},{color:"white",translate:"class.mechanic.manual_override.lore.2"}]]
execute if score @s ultimate.cooldown matches 1.. run function class:4/mechanic/manual_override/deactivate
scoreboard players remove @s ultimate.cooldown 1

execute if score @s ultimate.cooldown matches 1.. run return run function class:4/helper/actionbar/generic/ultimate_cooldown

scoreboard players operation #class.ult_current Numbers = @s ultimate_charge
scoreboard players operation #class.ult_max Numbers = class.mechanic.ultimate.charge Numbers
function class:4/helper/actionbar/generic/ultimate