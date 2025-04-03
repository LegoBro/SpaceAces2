## Plasma Grenade ready
item replace entity @s hotbar.2 with minecraft:carrot_on_a_stick[minecraft:item_model="class/infiltraitor/fused_detonator",minecraft:item_name='{"color":"white","translate":"plasma_grenade"}',minecraft:lore=['{"color":"white","italic":false,"translate":"plasma_grenade_lore1"}','{"color":"white","translate":"plasma_grenade_lore2"}'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={}]
execute if score @s rightClick matches 1.. if score @s SelectedItem matches 2 run function class:4/infiltraitor/fused_detonator/activate
