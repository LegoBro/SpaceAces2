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

# Ultimate Ability: Fast Blast
execute if score @s ultimate_charge >= class.brawler.ultimate.charge Numbers run function class:4/brawler/tornadic_disruption/ready
execute unless score @s ultimate_charge >= class.brawler.ultimate.charge Numbers run function class:4/brawler/tornadic_disruption/cooldown

## Melee?
execute unless score @s melee.cooldown matches 1.. if entity @s[tag=input.swap_hands] run function class:4/helper/punch

item replace entity @s weapon.offhand with emerald[item_model="class/brawler/left_arm",item_name="",tooltip_display={hide_tooltip:true}]
execute unless items entity @s armor.head * run item replace entity @s[tag=!invis] armor.head with emerald[item_model="class/brawler/head",enchantment_glint_override=false,enchantments={"binding_curse":1},item_name="",tooltip_display={hide_tooltip:true}]
execute unless items entity @s armor.legs * run item replace entity @s[tag=!invis] armor.legs with minecraft:leather_leggings[!attribute_modifiers,dyed_color=9192197,enchantment_glint_override=false,enchantments={"binding_curse":1},unbreakable={},item_name="",tooltip_display={hide_tooltip:true}]
execute unless items entity @s armor.chest * run item replace entity @s[tag=!invis] armor.chest with minecraft:leather_chestplate[!attribute_modifiers,dyed_color=9192197,enchantment_glint_override=false,enchantments={"binding_curse":1},unbreakable={},item_name="",tooltip_display={hide_tooltip:true}]
execute unless items entity @s armor.feet * run item replace entity @s[tag=!invis] armor.feet with minecraft:leather_boots[!attribute_modifiers,dyed_color=9192197,enchantment_glint_override=false,enchantments={"binding_curse":1},unbreakable={},item_name="",tooltip_display={hide_tooltip:true}]
execute unless items entity @s weapon.mainhand * run item replace entity @s weapon.mainhand with paper[item_model="class/brawler/right_arm",item_name="",tooltip_display={hide_tooltip:true}]
return 1