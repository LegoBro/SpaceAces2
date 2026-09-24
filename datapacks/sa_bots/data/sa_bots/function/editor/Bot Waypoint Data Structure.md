# data.uuid4 (the last part of this waypoint's uuid. any waypoint can be referred to by "b-0-0-0-<uuid4>")
string uuid4


# data.outgoing (a list of outgoing connections)
[ [int target-uuid4, string target-uuid4, [int event-id, ...], [int sub-route-endpoint, string endpoint-uuid4] ] ]

   data.outgoing[i][0] target-uuid4: used for id checks when iterating through lists (useful in the editor)

   data.outgoing[i][1] target-uuid4: used to quickly reference target waypoint via macros (useful during gameplay)

   data.outgoing[i][2][0] event-id: defines event id which attaches a condition to this connection
   data.outgoing[i][2][1] additional data, if needed

   data.outgoing[i][3][0] sub-route-endpoint: id of waypoint at the end of a sub-route.
       ...if we aren't connected to a sub-route, this value is -1
   data.outgoing[i][3][1] endpoint-uuid4: used to quickly reference endpoint via macros


# data.incoming (a list of incoming connections)
[ [int source-uuid4, string source-uuid4, int distance, bool conditional, bool subroute-origin-reference] ]

   data.incoming[i][0] source-uuid4: used for id checks when iterating through lists (useful in the editor)

   data.incoming[i][1] source-uuid4: used to quickly reference source waypoint via macros (useful during gameplay)

   data.incoming[i][2] distance: the distance in meters between source and target (calculated automatically while the editor is active, very important for navigation)

   data.incoming[i][3] conditional: whether this connection has a restrictive event attached to it (useful for navigation)

   data.incoming[i][4] subroute-origin-reference: whether this connection is the endpoint of a sub-route


# data.spread (max random spread x and z)
[int x, int z]
   the max for either or these values is 10


# data.sector (defines what sector the waypoint belongs to)
int sector


# data.distanceToSector (records how far away a waypoint is from each of the 16 sectors)
[int nothing, [int distance_to_sector_1, int distance_to_sector_1_with_conditionals], [int distance_to_sector_2, int distance_to_sector_2_with_conditionals], ..., [int distance_to_sector_16, int distance_to_sector_16_with_conditionals] ]
