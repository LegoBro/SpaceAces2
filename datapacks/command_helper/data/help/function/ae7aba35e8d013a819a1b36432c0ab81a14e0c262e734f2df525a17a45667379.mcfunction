data modify block ~ ~ ~-2 front_text.messages[0] set value '{"text":"","color":"black","clickEvent":{"action":"run_command","value":"/tag @s remove training"},"type":"text"}'
data modify block ~ ~ ~-2 front_text.messages[1] set value '{"text":"[End Mission]","color":"dark_red","bold":true,"clickEvent":{"action":"run_command","value":"/advancement grant @s through training:pyro"},"type":"text"}'
data modify block ~ ~ ~-2 front_text.messages[2] set value '{"text":"","color":"dark_purple","clickEvent":{"action":"run_command","value":"/tp @s 8 200 8"},"type":"text"}'
data modify block ~ ~ ~-2 front_text.messages[3] set value '{"text":"","color":"black","type":"text"}'
return 1