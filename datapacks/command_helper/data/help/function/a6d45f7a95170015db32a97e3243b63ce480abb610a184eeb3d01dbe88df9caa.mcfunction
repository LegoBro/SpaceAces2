data modify block 7 205 40 front_text.messages[0] set value '{"text":"","color":"black","type":"text"}'
data modify block 7 205 40 front_text.messages[1] set value '{"text":"Map Name","color":"dark_blue","bold":true,"clickEvent":{"action":"run_command","value":"/tellraw @a [\\"\\",{\\"text\\":\\"Selected Map [name]\\",\\"color\\":\\"dark_green\\",\\"bold\\":true,\\"type\\":\\"text\\"}]"},"type":"text"}'
data modify block 7 205 40 front_text.messages[2] set value '{"text":"[Select]","color":"green","clickEvent":{"action":"run_command","value":"/scoreboard players set Maps Numbers 2"},"type":"text"}'
return 1