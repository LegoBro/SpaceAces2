## Burst Heal is on cooldown
item replace entity @s hotbar.2 with minecraft:gray_dye[item_model="class/bomber/smokescreen_cooldown",minecraft:item_name={color:"white",translate:"class.bomber.smokescreen"},minecraft:lore=[{color:"white",italic:false ,translate:"class.bomber.smokescreen.lore.1"},{color:"white",italic:true ,translate:"class.bomber.smokescreen.lore.2"}]]
execute if score @s ability.2.cooldown = class.bomber.2.duration Numbers run function class:4/bomber/smokescreen/deactivate
scoreboard players remove @s ability.2.cooldown 1

function class:4/helper/actionbar/generic/tertiary