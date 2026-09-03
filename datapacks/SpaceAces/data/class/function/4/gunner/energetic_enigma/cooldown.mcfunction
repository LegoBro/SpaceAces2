## Atomic Shrink is on cooldown
item replace entity @s hotbar.4 with minecraft:gray_dye[item_model="class/gunner/energetic_enigma_cooldown",minecraft:item_name={color:"white",translate:"class.gunner.energetic_enigma"},minecraft:lore=[{color:"white","italic":false,translate:"class.gunner.energetic_enigma.lore.0"},{color:"white",translate:"class.gunner.energetic_enigma.lore.1"},{color:"white",translate:"class.gunner.energetic_enigma.lore.2"}]]
execute if score @s ultimate.cooldown matches 1.. run function class:4/gunner/energetic_enigma/deactivate
scoreboard players remove @s ultimate.cooldown 1

execute if score @s ultimate.cooldown matches 1.. run return run function class:4/helper/actionbar/generic/ultimate_cooldown

scoreboard players operation #class.ult_current Numbers = @s ultimate_charge
scoreboard players operation #class.ult_max Numbers = class.gunner.ultimate.charge Numbers
function class:4/helper/actionbar/generic/ultimate