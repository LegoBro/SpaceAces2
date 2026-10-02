# DATAPACK INFO
This datapack implements computer-controlled bots that play Space Aces.
Space Aces is made by The Brickmasons
This datapack was made by Flamingosaurus, a fan and contributor


# WAYPOINT EDITOR
"/trigger botPathEdit" opens the bot waypoint editor
## WARNING
Do NOT use /kill to destroy bot waypoint Marker entities! You should use the built-in tools to erase them instead.
The built-in tools will prevent stale references on waypoint connections.


# FOLDERS
> "api" -- contains functions for creating and managing bots. look inside the files for a list of macro arguments
> "bot" -- per-entity logic run by bots
> "common" -- general purpose utilities and stuff
> "editor" -- everything related to the bot waypoint path editor
> "setup" -- important setup functions that enable this datapack to slot neatly into a world and work right out the box


# COMMAND STORAGES
"sa_bots:generic" for misc parameters to be used in macros
"sa_bots:bot_data" for all data related to bot players
"sa_bots:team_composition" for data compiled on how many players are on each team and what classes they're playing
"sa_bots:waypoint" for arguments related to working with bot waypoints
"sa_bots:waypoint_info" for dumping the whole data of a waypoint so it can be displayed in text


# ENTITIES
This datapack creates 16 Marker entities at x=0, y=50, z=0.
These entities are summoned when a round is started with bots enabled.
> e-0-0-0-1 ... Used to keep track of data for sector 1 (team occupancy, connections to other sectors)
> ...
> e-0-0-0-10 ... Used to keep track of data for sector 16 (team occupancy, connections to other sectors)

Some of these entities serve a second purpose:
> e-0-0-0-1 ... Used for rotation calculations
> e-0-0-0-2 ... Used for bot movement vector