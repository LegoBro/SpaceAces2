# returns 1+ if a gamemode is currently running, 0 if not
# 1 = countdown
execute if score Mission Numbers matches 1.. run return 1
# 2 = Loading
execute if score ActiveMode Numbers matches 0.. if score Prestart Numbers matches ..119 run return 2
# 3 = Running
execute if score ActiveMode Numbers matches 0.. unless score Prestart Numbers matches ..119 run return 3

return 0