## Boost is on cooldown
item replace entity @s hotbar.1 with minecraft:gray_dye[item_model="class/healer/angry_medic_cooldown",minecraft:item_name={color:"white",translate:"class.healer.angry_medic"},minecraft:lore=[{color:"white","italic":false,translate:"class.healer.angry_medic.lore.1"},{color:"white",translate:"class.healer.angry_medic.lore.2"},{color:"white",translate:"class.healer.angry_medic.lore.3"}]]

execute if score @s ability.1.cooldown = class.healer.1.duration Numbers run function class:4/healer/angry_medic/deactivate
scoreboard players remove @s ability.1.cooldown 1

function class:4/helper/actionbar/generic/secondary