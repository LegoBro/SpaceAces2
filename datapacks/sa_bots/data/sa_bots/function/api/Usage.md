# Regular functions
Most functions can be run by in any context and they will work fine.
Function names are pretty self-explanatory.

# Functions with arguments
Functions with names starting with "<arg>_macro" must be given function argument {<arg>:<number>}
> <arg> = whatever argument name the function is expecting
> i = the index of the bot the function applies to

# Round setup
Before playing a match on a new map, this command must be run:
"function sa_bots:api/round_setup/reset_sector_nav_cache"