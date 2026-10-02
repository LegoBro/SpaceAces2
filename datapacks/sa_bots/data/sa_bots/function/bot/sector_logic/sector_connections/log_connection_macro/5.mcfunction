$execute unless data storage sa_bots:waypoint sector_connections[$(sector)].list{sector:5} run data modify storage sa_bots:waypoint sector_connections[$(sector)].list append value {sector:5}
$tag e-0-0-0-5 add sab.connectedToSector.$(sector)
tag e-0-0-0-5 add sab.sectorInformationValid