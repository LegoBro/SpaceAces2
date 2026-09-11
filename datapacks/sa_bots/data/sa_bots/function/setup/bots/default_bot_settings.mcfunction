#NOTES:
# team_choice.selection_logic
#   0 -- pick a team entirely at random
#   1 -- pick the team with less players 
#   2 -- pick the team with less bots
# team_choice.desired_team
#   -1 -- no team preference (use selection_logic)
#   n -- join team n if able (1 = blue, 2 = red, n.. = n team)
#       > if there is a team preference, it will take priority over anything in selection_logic

# class_choice.selection_logic
#   0 -- pick class entirely at random
#   1 -- pick class at random, but only classes that haven't been picked
#   2 -- pick class with respect for team composition and gamemode
#       > lower skill bots might make worse choices
# class_choice.desired_class
#       > if value is 1..15, the bot will always choose the corresponding class (ignoring selection_logic)

data modify storage sa_bots:bot_data default.settings set value {\
    team_choice:{\
        allow_team_change:1,\
        wait_until_respawn_to_switch:0,\
        bypass_team_restrictions:0,\
        desired_team:-1,\
        selection_logic:1\
    },\
    class_choice:{\
        allow_class_change:1,\
        desired_class:-1,\
        selection_logic:2\
    },\
    brain:{\
        skill:{min:1,max:10,actual:5},\
        aggression:{min:1,max:10,actual:5},\
        cooperativeness:{min:1,max:10,actual:5},\
        locked_in:0\
    }\
}