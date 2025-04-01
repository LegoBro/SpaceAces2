playsound minecraft:block.beacon.ambient player @a ~ ~ ~ .1 2 0
execute if entity @s[team=blue] as @a[distance=..5,sort=nearest,limit=1,team=blue] unless score @s over_heal matches 10.. run function class:healer/over_heal_machine/deploy
execute if entity @s[team=red] as @a[distance=..5,sort=nearest,limit=1,team=red] unless score @s over_heal matches 10.. run function class:healer/over_heal_machine/deploy

return 1