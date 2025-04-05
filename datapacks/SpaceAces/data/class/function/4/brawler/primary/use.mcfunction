scoreboard players add @s shoot 1
scoreboard players set @s rightClick 0
execute if score @s shoot >= class.brawler.primary.firerate Numbers run scoreboard players set @s shoot 0
