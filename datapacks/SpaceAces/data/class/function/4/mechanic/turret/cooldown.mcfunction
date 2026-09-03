## Burst Heal is on cooldown
item replace entity @s hotbar.1 with minecraft:gray_dye[item_model="class/mechanic/turret_cooldown",minecraft:item_name={color:"white",translate:"class.mechanic.turret"},minecraft:lore=[{color:"white","italic":false,translate:"class.mechanic.turret.lore.1"},{color:"white",translate:"class.mechanic.turret.lore.2"}]]
#execute if score @s ability.1.cooldown = class.soldier.1.duration Numbers run function class:4/soldier/burst_heal/deactivate
scoreboard players remove @s ability.1.cooldown 1

function class:4/helper/actionbar/generic/secondary