## Atomic Shrink is on cooldown
item replace entity @s hotbar.4 with minecraft:gray_dye[item_model="class/pyro/trailblazer_cooldown",minecraft:item_name={color:"white",translate:"class.pyro.trailblazer"},minecraft:lore=[{color:"white","italic":false,translate:"class.pyro.trailblazer.lore.0"},{color:"white",translate:"class.pyro.trailblazer.lore.1"},{color:"white",translate:"class.pyro.trailblazer.lore.2"}]]
execute if score @s ultimate.cooldown matches 1.. run function class:4/pyro/trailblazer/tick
scoreboard players remove @s ultimate.cooldown 1

execute if score @s ultimate.cooldown matches 1.. run return run function class:4/helper/actionbar/generic/ultimate_cooldown

scoreboard players operation #class.ult_current Numbers = @s ultimate_charge
scoreboard players operation #class.ult_max Numbers = class.pyro.ultimate.charge Numbers
function class:4/helper/actionbar/generic/ultimate