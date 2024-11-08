## Takes value stored in xp Numbers and creates a xp bar based on it for the player who runs the command Works for all values less than 512
xp set @s 0 levels
execute store result storage score xp int 1 run scoreboard players get xp Numbers
function scoreboard:score_to_xp/set with storage score
return 1