## Poison Dart ready
item replace entity @s hotbar.1 with minecraft:carrot_on_a_stick[minecraft:item_model="seeker/1",minecraft:custom_name='{"color":"white","translate":"poison_jab"}',minecraft:lore=['{"color":"white","translate":"poison_jab_lore1"}','{"color":"white","translate":"poison_jab_lore2"}'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={}]
execute if score @s rightClick matches 1.. if score @s SelectedItem matches 1 run function classes:4/seeker/poison_jab/activate

## Multiple Uses

execute unless score @s ability.1.cooldown < class.seeker.1.minCooldown Numbers run scoreboard players remove @s ability.1.cooldown 1