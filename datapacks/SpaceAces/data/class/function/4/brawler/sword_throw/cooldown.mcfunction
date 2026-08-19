## Burst Heal is on cooldown
item replace entity @s hotbar.2 with minecraft:gray_dye[item_model="class/brawler/sword_throw_cooldown",minecraft:item_name={color:"white",translate:"class.brawler.sword_throw"},minecraft:lore=[{color:"white","italic":false,translate:"class.brawler.sword_throw.lore.1"},{color:"white",translate:"class.brawler.sword_throw.lore.2"}]]
execute if score @s ability.2.cooldown = class.brawler.2.duration Numbers run function class:4/brawler/sword_throw/deactivate
scoreboard players remove @s ability.2.cooldown 1

function class:4/helper/actionbar/generic/tertiary