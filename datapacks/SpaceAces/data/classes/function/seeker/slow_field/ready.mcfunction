## Swift Shade ready
item replace entity @s hotbar.2 with minecraft:carrot_on_a_stick[minecraft:item_model="seeker/2",minecraft:custom_name='{"color":"white","translate":"slow_field"}',minecraft:lore=['{"color":"white","translate":"slow_field_lore1"}','{"color":"white","translate":"slow_field_lore2"}'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={}]
execute if score @s rightClick matches 1.. if score @s SelectedItem matches 2 run function classes:seeker/slow_field/activate
