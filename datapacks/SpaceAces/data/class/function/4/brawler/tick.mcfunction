## Quasar brawler (brawler) Main Tick:

# Primary: Phase Sword, no durability
item replace entity @s hotbar.0 from block 15 -56 0 container.0
execute if score @s rightClick matches 1.. if score @s SelectedItem matches 0 unless score @s shoot matches 1.. run function class:4/brawler/primary/test_swipe
execute if score @s shoot matches 1.. run function class:4/brawler/primary/use



# 1st Ability: Sword Leap
execute if score @s ability.1.cooldown matches ..0 run function class:4/brawler/sword_leap/ready
execute if score @s ability.1.cooldown matches 1.. run function class:4/brawler/sword_leap/cooldown

# 2nd Ability: Burst Heal
execute if score @s ability.2.cooldown matches ..0 run function class:4/brawler/sword_throw/ready
execute if score @s ability.2.cooldown matches 1.. run function class:4/brawler/sword_throw/cooldown



return 1