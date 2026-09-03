## Burst Heal is on cooldown
item replace entity @s hotbar.2 with minecraft:gray_dye[item_model="class/mechanic/field_projector_cooldown",minecraft:item_name={color:"white",translate:"class.mechanic.projector"},minecraft:lore=[{color:"white","italic":false,translate:"class.mechanic.projector.lore.1"},{color:"white",translate:"class.mechanic.projector.lore.2"}]]
#execute if score @s ability.2.cooldown = class.mechanic.2.duration Numbers run function class:4/mechanic/projector/deactivate
scoreboard players remove @s ability.2.cooldown 1

function class:4/helper/actionbar/generic/tertiary