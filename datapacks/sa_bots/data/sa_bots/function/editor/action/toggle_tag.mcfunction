$execute store result score #test sab.var run execute if entity @s[tag=$(tag)]
$execute if score #test sab.var matches 0 run tag @s add $(tag)
$execute if score #test sab.var matches 1 run tag @s remove $(tag)

#feedback
playsound block.note_block.hat master @s

#show menu again
function sa_bots:editor/menu/14_clear_data_menu