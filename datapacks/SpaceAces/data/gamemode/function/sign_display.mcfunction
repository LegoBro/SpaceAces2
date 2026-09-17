
data modify block 9 200 65 front_text.messages[1] set value {text:"Mission Type:",color:"green",click_event:{"action":"run_command",command:"/function gamemode:cycle"},"type":"text"}
$data modify block 9 200 65 front_text.messages[2] set value {text:"$(name)",color:"gray","bold":true,"type":"text"}

scoreboard players set Map settings -1
function gamemode:cycle_map


data modify block 5 196 -10 front_text.messages[1] set from block 9 200 65 front_text.messages[2]
clone 5 196 -10 6 196 -10 10 196 -10