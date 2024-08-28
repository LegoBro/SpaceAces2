data modify block ~ ~2 ~ front_text.messages[0] set value '{"text":"","color":"black","type":"text"}'
data modify block ~ ~2 ~ front_text.messages[1] set value '{"text":"Return to","color":"dark_gray","clickEvent":{"action":"run_command","value":"/function load:spawn"},"type":"text"}'
data modify block ~ ~2 ~ front_text.messages[2] set value '{"text":"Mothership","color":"dark_green","bold":true,"type":"text"}'
return 1