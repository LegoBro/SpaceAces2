playsound block.beacon.ambient player @a ~ ~ ~ .1 2 0
execute if entity @s[team=blue] as @a[team=blue,distance=..5,limit=1,sort=nearest] unless score @s over_heal matches 10.. run function classes:healer/over_heal_machine/deploy
execute if entity @s[team=red] as @a[team=red,distance=..5,limit=1,sort=nearest] unless score @s over_heal matches 10.. run function classes:healer/over_heal_machine/deploy
