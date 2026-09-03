#executed by target waypoint


#remove an outgoing connection
execute if score #signal sab.var matches 100000..199999 run return run \
    function sa_bots:editor/utility/trim_input_and_run_function {trim:110000,function:"sa_bots:editor/menu/edit/remove_connection"}
#=====

#next event
execute if score #signal sab.var matches 200000..299999 run return run \
    function sa_bots:editor/utility/trim_input_and_run_function {trim:210000,function:"sa_bots:editor/menu/edit/event_next"}
#=====

#previous event
execute if score #signal sab.var matches 300000..399999 run return run \
    function sa_bots:editor/utility/trim_input_and_run_function {trim:310000,function:"sa_bots:editor/menu/edit/event_previous"}
#=====