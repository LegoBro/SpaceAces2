## Burst Heal
item replace entity @s hotbar.2 with minecraft:carrot_on_a_stick[minecraft:item_model="class/brawler/sword_throw",minecraft:item_name={color:"white",translate:"class.brawler.sword_throw"},minecraft:lore=[{color:"white","italic":false,translate:"class.brawler.sword_throw.lore.1"},{color:"white",translate:"class.brawler.sword_throw.lore.2"}],minecraft:unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]
execute if score @s rightClick matches 1.. if score @s SelectedItem matches 2 run function class:4/brawler/sword_throw/activate

## Multiple Uses

execute unless score @s ability.2.cooldown < class.brawler.2.minCooldown Numbers run scoreboard players remove @s ability.2.cooldown 1

## Display Charges
scoreboard players operation tertiary Numbers = @s ability.2.cooldown
scoreboard players operation tertiary Numbers -= class.brawler.2.cooldown Numbers
scoreboard players operation tertiary Numbers /= -1 Numbers

scoreboard players operation tertiary Numbers /= class.brawler.2.cooldown Numbers

function class:4/helper/actionbar/generic/tertiary_multiple