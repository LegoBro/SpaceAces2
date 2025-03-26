## Burst Heal
item replace entity @s hotbar.1 with minecraft:carrot_on_a_stick[minecraft:item_model="sniper/1",minecraft:custom_name='{"color":"white","translate":"vis_mine"}',minecraft:lore=['{"color":"white","translate":"vis_mine_lore1"}','{"color":"white","translate":"vis_mine_lore2"}'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={}]
execute if score @s rightClick matches 1.. if score @s SelectedItem matches 2 run function classes:sniper/vis_mine/activate
