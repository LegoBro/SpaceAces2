## Detonator is ready
item replace entity @s hotbar.1 with minecraft:carrot_on_a_stick[item_model="bomber/1",minecraft:custom_name='{"color":"white","translate":"detonator"}',minecraft:lore=['{"color":"white","translate":"detonator_lore1"}','{"color":"white","translate":"detonator_lore2"}'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={}]
execute if score @s rightClick matches 1.. if score @s SelectedItem matches 1 run function classes:4/bomber/detonator/activate
