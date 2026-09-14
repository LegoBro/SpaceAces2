## Poison Jab is on cooldown
item replace entity @s[tag=!invis] hotbar.1 with minecraft:gray_dye[item_model="class/seeker/poison_jab_cooldown",minecraft:item_name={color:"white",translate:"class.seeker.poison_jab"},minecraft:lore=[{color:"white","italic":false,translate:"class.seeker.poison_jab.lore.1"},{color:"white",translate:"class.seeker.poison_jab.lore.2"},{color:"white",translate:"class.seeker.poison_jab.lore.3"}]]
item replace entity @s[tag=invis] hotbar.1 with minecraft:gray_dye[item_model="class/seeker/invis/poison_jab_cooldown",minecraft:item_name={color:"white",translate:"class.seeker.poison_jab"},minecraft:lore=[{color:"white","italic":false,translate:"class.seeker.poison_jab.lore.1"},{color:"white",translate:"class.seeker.poison_jab.lore.2"},{color:"white",translate:"class.seeker.poison_jab.lore.3"}]]
execute if score @s ability.1.cooldown = class.seeker.1.duration Numbers run function class:4/seeker/poison_jab/deactivate
scoreboard players remove @s ability.1.cooldown 1

function class:4/helper/actionbar/generic/secondary