## Burst Heal is on cooldown
item replace entity @s hotbar.1 with minecraft:gray_dye[item_model="class/soldier/plasma_grenade_cooldown",minecraft:item_name={color:"white",translate:"class.soldier.plasma_grenade"},minecraft:lore=[{color:"white",italic:false ,translate:"class.soldier.plasma_grenade.lore.1"},{color:"white",italic:false ,translate:"class.soldier.plasma_grenade.lore.2"}]]
execute if score @s ability.1.cooldown = class.soldier.1.duration Numbers run function class:4/soldier/plasma_grenade/deactivate
scoreboard players remove @s ability.1.cooldown 1

function class:4/helper/actionbar/generic/secondary