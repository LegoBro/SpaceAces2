#executed by target waypoint
# $(tag) = the tag this waypoint should toggle


#flip flop on/off
$execute store result score #read sab.var run execute if entity @s[tag=$(tag)]
$execute if score #read sab.var matches 0 run tag @s add $(tag)
$execute if score #read sab.var matches 1 run tag @s remove $(tag)