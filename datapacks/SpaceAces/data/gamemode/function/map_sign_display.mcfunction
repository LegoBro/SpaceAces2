

data modify block 8 200 65 front_text.messages[1] set value {text:"Map:",color:"blue",click_event:{"action":"run_command",command:"/function gamemode:cycle_map"},"type":"text"}
$data modify block 8 200 65 front_text.messages[2] set value {text:"$(name)",color:"gray","bold":true,"type":"text"}
