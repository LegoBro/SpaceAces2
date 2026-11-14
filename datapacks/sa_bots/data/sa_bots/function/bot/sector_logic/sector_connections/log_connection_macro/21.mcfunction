$execute unless data storage sa_bots:waypoint sector_connections[$(sector)].list{sector:21} run data modify storage sa_bots:waypoint sector_connections[$(sector)].list append value {sector:21}
$tag e-0-0-0-15 add sab.connectedToSector.$(sector)
tag e-0-0-0-15 add sab.sectorInformationValid