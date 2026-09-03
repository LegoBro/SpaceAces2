item replace entity @s hotbar.1 with minecraft:gray_dye[item_model="class/shocksmith/secondary_cooldown",minecraft:item_name={translate:"class.shocksmith.secondary"},minecraft:lore=[{color:"white","italic":false,translate:"class.shocksmith.secondary.lore"}]]

scoreboard players add @s ability.1.cooldown 1

scoreboard players set secondary Numbers 0

function class:4/helper/actionbar/generic/secondary_multiple