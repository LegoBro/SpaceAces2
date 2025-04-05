## Quasar brawler (brawler) Main Tick:

# Primary: Phase Sword, no durability
item replace entity @s hotbar.0 with minecraft:carrot_on_a_stick[minecraft:item_model="brawler/0",minecraft:item_name='{"translate":"plasma_sword"}',minecraft:lore=['{"color":"white","italic":false,"translate":"plasma_sword_lore"}','{"color":"white","italic":false,"text":" - damage: 35"}','{"color":"white","italic":false,"text":" - ammo: 12"}','{"color":"white","italic":false,"text":" - reload with speed: 2s"}'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={}]
execute if score @s rightClick matches 1.. if score @s SelectedItem matches 0 unless score @s shoot matches 1.. run function class:4/brawler/primary/test_swipe
execute if score @s shoot matches 1.. run function class:4/brawler/primary/use



# 1st Ability: Sword Leap
execute if score @s ability.1.cooldown matches ..0 run function class:4/brawler/sword_leap/ready
execute if score @s ability.1.cooldown matches 1.. run function class:4/brawler/sword_leap/cooldown

# 2nd Ability: Burst Heal
execute if score @s ability.2.cooldown matches ..0 run function class:4/brawler/sword_throw/ready
execute if score @s ability.2.cooldown matches 1.. run function class:4/brawler/sword_throw/cooldown



return 1