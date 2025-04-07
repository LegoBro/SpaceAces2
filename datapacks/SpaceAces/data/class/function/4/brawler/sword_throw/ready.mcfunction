## Burst Heal
item replace entity @s hotbar.2 with minecraft:carrot_on_a_stick[minecraft:item_model="class/gunner/photon_rush",minecraft:item_name='{"color":"white","translate":"class.brawler.sword_throw"}',minecraft:lore=['{"color":"white","italic":false,"translate":"class.brawler.sword_throw"}','{"color":"white","translate":"burst_heal_lore2"}'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={}]
execute if score @s rightClick matches 1.. if score @s SelectedItem matches 2 run function class:4/brawler/sword_throw/activate

## Multiple Uses

execute unless score @s ability.2.cooldown < class.brawler.2.minCooldown Numbers run scoreboard players remove @s ability.2.cooldown 1