## Atomic Shrink is on cooldown
item replace entity @s hotbar.4 with minecraft:gray_dye[item_model="class/healer/over_heal_machine_cooldown",minecraft:item_name={color:"white",translate:"class.healer.over_heal_machine"},minecraft:lore=[{color:"white","italic":false,translate:"class.healer.over_heal_machine.lore.0"},{color:"white",translate:"class.healer.over_heal_machine.lore.1"},{color:"white",translate:"class.healer.over_heal_machine.lore.2"}]]
execute if score @s ultimate.cooldown matches 1.. run function class:4/healer/over_heal_machine/deactivate
scoreboard players remove @s ultimate.cooldown 1

execute if score @s ultimate.cooldown matches 1.. run return run function class:4/helper/actionbar/generic/ultimate_cooldown

scoreboard players operation #class.ult_current Numbers = @s ultimate_charge
scoreboard players operation #class.ult_max Numbers = class.healer.ultimate.charge Numbers
function class:4/helper/actionbar/generic/ultimate