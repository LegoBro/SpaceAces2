scoreboard players add @s reload 1
execute facing entity @n[tag=los_pass] eyes run tp @s ^ ^ ^ ~ ~
execute if entity @n[tag=los_pass] run function class:4/mechanic/turret/visualize
execute if score @s reload >= class.mechanic.1.turret.sniper.firerate Numbers run function class:4/mechanic/turret/sniper/shoot
execute if score @s reload >= class.mechanic.1.turret.sniper.firerate Numbers run scoreboard players set @s reload 0
return 1