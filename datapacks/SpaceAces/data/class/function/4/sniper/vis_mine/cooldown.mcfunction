## Burst Heal is on cooldown
item replace entity @s hotbar.2 with minecraft:gray_dye[item_model="class/sniper/vis_mine_cooldown",minecraft:item_name={color:"white",translate:"class.sniper.vis_mine"},minecraft:lore=[{color:"white","italic":false,translate:"class.sniper.vis_mine.lore.1"},{color:"white",translate:"class.sniper.vis_mine.lore.2"}]]
execute if score @s ability.2.cooldown = class.sniper.2.duration Numbers run function class:4/sniper/vis_mine/deactivate
scoreboard players remove @s ability.2.cooldown 1

function class:4/helper/actionbar/generic/tertiary