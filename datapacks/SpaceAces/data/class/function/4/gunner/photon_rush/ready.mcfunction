## Burst Heal
item replace entity @s hotbar.1 with minecraft:carrot_on_a_stick[minecraft:item_model="class/gunner/photon_rush",minecraft:item_name='{"color":"white","translate":"class.gunner.photon_rush"}',minecraft:lore=['{"color":"white","italic":false,"translate":"class.gunner.photon_rush"}','{"color":"white","translate":"burst_heal_lore2"}'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={}]
execute if score @s rightClick matches 1.. if score @s SelectedItem matches 1 run function class:4/gunner/photon_rush/activate
