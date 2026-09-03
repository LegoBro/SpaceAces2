## Atomic Shrink is on cooldown
item replace entity @s hotbar.4 with minecraft:gray_dye[item_model="class/shocksmith/shocksplosion_cooldown",minecraft:item_name={color:"white",translate:"class.shocksmith.shocksplosion"},minecraft:lore=[{color:"white","italic":false,translate:"class.shocksmith.shocksplosion.lore.0"},{color:"white",translate:"class.shocksmith.shocksplosion.lore.1"},{color:"white",translate:"class.shocksmith.shocksplosion.lore.2"}]]
execute if score @s ultimate.cooldown matches 1.. run function class:4/shocksmith/shocksplosion/deactivate
scoreboard players remove @s ultimate.cooldown 1

scoreboard players operation #class.ult_current Numbers = @s ultimate_charge
scoreboard players operation #class.ult_max Numbers = class.shocksmith.ultimate.charge Numbers
function class:4/helper/actionbar/generic/ultimate