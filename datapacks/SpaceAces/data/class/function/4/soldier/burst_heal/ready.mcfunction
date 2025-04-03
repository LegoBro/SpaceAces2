## Burst Heal
item replace entity @s hotbar.2 with minecraft:carrot_on_a_stick[minecraft:item_model="class/soldier/burst_heal",minecraft:item_name='{"color":"white","translate":"burst_heal"}',minecraft:lore=['{"color":"white","italic":false,"translate":"burst_heal_lore1"}','{"color":"white","translate":"burst_heal_lore2"}'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={}]
execute if score @s rightClick matches 1.. if score @s SelectedItem matches 2 run function class:4/soldier/burst_heal/activate
