## Swift Shade ready
item replace entity @s hotbar.2 with minecraft:carrot_on_a_stick[minecraft:item_model="class/seeker/swift_shade",minecraft:item_name={color:"white",translate:"class.seeker.swift_shade"},minecraft:lore=[{color:"white","italic":false,translate:"class.seeker.swift_shade.lore.1"},{color:"white",translate:"class.seeker.swift_shade.lore.2"}],minecraft:unbreakable={show_in_tooltip:0b},tooltip_display={hidden_components:["unbreakable"]}]
execute if score @s rightClick matches 1.. if score @s SelectedItem matches 2 run function class:4/seeker/swift_shade/activate
