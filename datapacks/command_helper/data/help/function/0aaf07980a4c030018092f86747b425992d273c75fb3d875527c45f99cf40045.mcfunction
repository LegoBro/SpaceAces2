data modify block ~ ~2 ~ front_text.messages[0] set value '{"text":"","color":"black","type":"text"}'
data modify block ~ ~2 ~ front_text.messages[1] set value '{"text":"Teleport to","color":"dark_gray","clickEvent":{"action":"run_command","value":"/tp @s 10000 100 0"},"type":"text"}'
data modify block ~ ~2 ~ front_text.messages[2] set value '{"text":"Training","color":"dark_red","bold":true,"clickEvent":{"action":"run_command","value":"/tag @s add trainee"},"type":"text"}'
data modify block ~ ~2 ~ front_text.messages[3] set value '{"text":" ","color":"black","clickEvent":{"action":"run_command","value":"/team join blue @s"},"type":"text"}'
return 1