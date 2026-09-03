## Atomic Shrink is on cooldown
item replace entity @s hotbar.4 with minecraft:gray_dye[item_model="class/rocketeer/locking_on_cooldown",minecraft:item_name={color:"white",translate:"class.rocketeer.locking_on"},minecraft:lore=[{color:"white","italic":false,translate:"class.rocketeer.locking_on.lore.0"},{color:"white",translate:"class.rocketeer.locking_on.lore.1"},{color:"white",translate:"class.rocketeer.locking_on.lore.2"}]]
execute if score @s ultimate.cooldown matches 1.. run function class:4/rocketeer/locking_on/deactivate
scoreboard players remove @s ultimate.cooldown 1

execute if score @s ultimate.cooldown matches 1.. run return run function class:4/helper/actionbar/generic/ultimate_cooldown

scoreboard players operation #class.ult_current Numbers = @s ultimate_charge
scoreboard players operation #class.ult_max Numbers = class.rocketeer.ultimate.charge Numbers
function class:4/helper/actionbar/generic/ultimate