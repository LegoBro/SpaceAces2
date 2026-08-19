## Sets player speed with what's stored in #speed Numbers

attribute @s scale modifier remove class
$attribute @s scale modifier add class $(scale) add_multiplied_base

tag @s remove hb_player_0.5
tag @s remove hb_player_0.85
tag @s remove hb_player_0.9
tag @s remove hb_player_1
tag @s remove hb_player_1.15
tag @s remove hb_player_1.25

execute store result score @s size run attribute @s scale get 100

tag @s[scores={size=..34}] add hb_player_0.25
tag @s[scores={size=35..59}] add hb_player_0.5
tag @s[scores={size=60..86}] add hb_player_0.85
tag @s[scores={size=87..94}] add hb_player_0.9
tag @s[scores={size=95..109}] add hb_player_1
tag @s[scores={size=110..119}] add hb_player_1.15
tag @s[scores={size=120..}] add hb_player_1.25