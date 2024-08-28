## Takes value stored in xp Numbers and creates a xp bar based on it for the player who runs the command Works for all values less than 512
xp set @s 0 levels
execute if score xp Numbers matches 256.. run function scoreboard:score_to_xp/256
execute if score xp Numbers matches 128.. run function scoreboard:score_to_xp/128
execute if score xp Numbers matches 64.. run function scoreboard:score_to_xp/64
execute if score xp Numbers matches 32.. run function scoreboard:score_to_xp/32
execute if score xp Numbers matches 16.. run function scoreboard:score_to_xp/16
execute if score xp Numbers matches 8.. run function scoreboard:score_to_xp/8
execute if score xp Numbers matches 4.. run function scoreboard:score_to_xp/4
execute if score xp Numbers matches 2.. run function scoreboard:score_to_xp/2
execute if score xp Numbers matches 1.. run function scoreboard:score_to_xp/1

return 1