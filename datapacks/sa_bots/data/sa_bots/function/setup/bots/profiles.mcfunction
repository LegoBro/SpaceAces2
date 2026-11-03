#first entry is the profile ID.
#needed because we pick profiles in a random order and will need to use that ID to add/remove from profiles.in_use and profiles.available

#second entry is username

#third of each entry is profile for mannequins that determines what skin it has
#example 1: {name:'JohnGlacious'}
#example 2: {texture:'custom_objects/skins/cat'}
#this might not be particularly useful in Space Aces since we totally replace the player's skin, but this is nice to have anyways


#bot usernames (this list can be any length)
data modify storage sa_bots:bot_data profiles.all set value [\
    {id:1,username:"LegoBot",profile:"{}"}, \
    {id:2,username:"ThatGreenBot",profile:"{}"}, \
    {id:3,username:"BrickBot",profile:"{}"}, \
    {id:4,username:"ThinkBots12",profile:"{}"}, \
    {id:5,username:"DerpOS",profile:"{}"}, \
    {id:6,username:"FlamingOSrs",profile:"{}"}, \
    {id:7,username:"TDBOT225",profile:"{}"}, \
    {id:8,username:"MrsTrashBot",profile:"{}"}, \
    {id:9,username:"CPU_9",profile:"{}"}, \
    {id:10,username:"CPU_10",profile:"{}"}, \
    {id:11,username:"CPU_11",profile:"{}"}, \
    {id:12,username:"CPU_12",profile:"{}"}, \
    {id:13,username:"CPU_13",profile:"{}"}, \
    {id:14,username:"CPU_14",profile:"{}"}, \
    {id:15,username:"CPU_15",profile:"{}"}, \
    {id:16,username:"CPU_16",profile:"{}"}, \
    {id:17,username:"CPU_17",profile:"{}"}, \
    {id:18,username:"CPU_18",profile:"{}"}, \
    {id:19,username:"CPU_19",profile:"{}"}, \
    {id:20,username:"CPU_20",profile:"{}"}, \
    {id:21,username:"CPU_21",profile:"{}"}, \
    {id:22,username:"CPU_22",profile:"{}"}, \
    {id:23,username:"CPU_23",profile:"{}"}, \
    {id:24,username:"CPU_24",profile:"{}"}, \
    {id:25,username:"CPU_25",profile:"{}"}, \
    {id:26,username:"CPU_26",profile:"{}"}, \
    {id:27,username:"CPU_27",profile:"{}"}, \
    {id:28,username:"CPU_28",profile:"{}"}, \
    {id:29,username:"CPU_29",profile:"{}"}, \
    {id:30,username:"CPU_30",profile:"{}"}, \
    {id:31,username:"CPU_31",profile:"{}"}, \
    {id:32,username:"CPU_32",profile:"{}"}, \
    {id:33,username:"CPU_33",profile:"{}"}, \
    {id:34,username:"CPU_34",profile:"{}"}, \
    {id:35,username:"CPU_35",profile:"{}"}, \
    {id:36,username:"CPU_36",profile:"{}"}, \
    {id:37,username:"CPU_37",profile:"{}"}, \
    {id:38,username:"CPU_37",profile:"{}"}, \
    {id:39,username:"CPU_37",profile:"{}"}, \
    {id:40,username:"CPU_37",profile:"{}"}, \
    {id:41,username:"CPU_37",profile:"{}"}, \
    {id:42,username:"CPU_37",profile:"{}"}, \
    {id:43,username:"CPU_37",profile:"{}"}, \
    {id:44,username:"CPU_37",profile:"{}"}, \
    {id:45,username:"CPU_37",profile:"{}"}, \
    {id:46,username:"CPU_37",profile:"{}"}, \
    {id:47,username:"CPU_37",profile:"{}"}, \
    {id:48,username:"ImaRobot",profile:"{}"}, \
    {id:49,username:"BineBot",profile:"{}"}, \
    {id:50,username:"SK_pulluxx",profile:"{}"} \
]