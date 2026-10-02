#executed by a bot who is currently considered a "leader"


#get ready to count how many people are nearby and following us
scoreboard players set #count sab.var 0

#count how many bots are following us
scoreboard players operation #get_id sab.var = @s id
execute if score @s Team matches 1 as @e[type=mannequin,tag=sab.botEntity,scores={Team=1,sab.botFollowingPlayer=1..},distance=..70] \
    if score @s sab.botFollowingPlayer = #get_id sab.var run scoreboard players add #count sab.var 1
execute if score @s Team matches 2 as @e[type=mannequin,tag=sab.botEntity,scores={Team=2,sab.botFollowingPlayer=1..},distance=..70] \
    if score @s sab.botFollowingPlayer = #get_id sab.var run scoreboard players add #count sab.var 1

#count humans as followers, too, if very close by
execute if score @s Team matches 1 as @a[tag=sab.activePlayer,scores={Team=1},distance=..16] run scoreboard players add #count sab.var 1
execute if score @s Team matches 2 as @e[tag=sab.activePlayer,scores={Team=2},distance=..16] run scoreboard players add #count sab.var 1

#update follower count
scoreboard players operation @s sab.botFollowers = #count sab.var