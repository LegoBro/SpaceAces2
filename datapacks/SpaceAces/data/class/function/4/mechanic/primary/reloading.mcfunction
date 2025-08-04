execute unless entity @n[tag=my_turret] run scoreboard players add @s reload 1
data modify storage class:reload class set value "mechanic"
function class:4/helper/reloading with storage class:reload