## Boost is on cooldown
item replace entity @s hotbar.2 with minecraft:gray_dye[item_model="class/rocketeer/rocket_wall_cooldown",minecraft:item_name={color:"white",translate:"class.rocketeer.rocket_wall"},minecraft:lore=[{color:"white","italic":false,translate:"class.rocketeer.rocket_wall.lore.1"},{color:"white",translate:"class.rocketeer.rocket_wall.lore.2"}]]
execute if score @s SelectedItem matches 2 run item replace entity @s weapon.offhand with emerald[item_model="class/rocketeer/left_arm",item_name="",tooltip_display={hide_tooltip:true}]

execute if score @s ability.2.cooldown = class.rocketeer.2.duration Numbers run function class:4/rocketeer/rocket_wall/deactivate
scoreboard players remove @s ability.2.cooldown 1

function class:4/helper/actionbar/generic/tertiary