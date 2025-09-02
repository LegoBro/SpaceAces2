## Atomic Shrink is on cooldown
item replace entity @s hotbar.4 with minecraft:gray_dye[item_model="class/ability_cooldown"]
execute if score @s ultimate.cooldown matches 1.. run function class:4/shocksmith/shocksplosion/deactivate
scoreboard players remove @s ultimate.cooldown 1

scoreboard players operation #class.ult_current Numbers = @s ultimate_charge
scoreboard players operation #class.ult_max Numbers = class.shocksmith.ultimate.charge Numbers
function class:4/helper/actionbar/generic/ultimate