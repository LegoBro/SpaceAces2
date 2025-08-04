scoreboard players add @s reload 1
execute facing entity @n[tag=los_pass] feet run tp @s ^ ^ ^ ~ ~
execute if score @s reload >= class.mechanic.1.turret.standard.firerate Numbers run function class:4/mechanic/turret/standard/shoot
execute if score @s reload >= class.mechanic.1.turret.standard.firerate Numbers run scoreboard players set @s reload 0
return 1