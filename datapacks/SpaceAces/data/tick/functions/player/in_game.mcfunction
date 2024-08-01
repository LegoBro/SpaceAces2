## Players with tag "in_game", meaning they are in an active gamemode

# tells the player what to do
execute if score Prestart Numbers matches 120.. run title @s[tag=in_game,x=8,y=200,z=8,distance=..250,tag=!escape] subtitle {"translate":"respawn_message"}
execute if score Prestart Numbers matches 120.. run title @s[tag=in_game,x=8,y=200,z=8,distance=..250,tag=!escape] title ""
execute unless score ActiveMode Numbers matches 1.. run function load:spawn
