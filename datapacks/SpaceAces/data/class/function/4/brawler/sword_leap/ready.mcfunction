## Burst Heal
item replace entity @s hotbar.1 with minecraft:carrot_on_a_stick[minecraft:item_model="class/brawler/sword_leap",minecraft:item_name={color:"white",translate:"class.brawler.sword_leap"},minecraft:lore=[{color:"white","italic":false,translate:"class.brawler.sword_leap"},{color:"white",translate:"burst_heal_lore2"}],minecraft:unbreakable={show_in_tooltip:0b},tooltip_display={hidden_components:["unbreakable"]}]
execute if score @s rightClick matches 1.. if score @s SelectedItem matches 1 run function class:4/brawler/sword_leap/activate
