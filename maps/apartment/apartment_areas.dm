/area/apartment
	name = "\improper apartment"
	ambience = list('sound/ambience/ambigen3.ogg','sound/ambience/ambigen4.ogg','sound/ambience/ambigen5.ogg','sound/ambience/ambigen6.ogg','sound/ambience/ambigen7.ogg','sound/ambience/ambigen8.ogg','sound/ambience/ambigen9.ogg','sound/ambience/ambigen10.ogg','sound/ambience/ambigen11.ogg','sound/ambience/ambigen12.ogg')
	icon = 'maps/apartment/apartment_areas.dmi'
	icon_state = "default"

//Hallways
/area/apartment/hall
	icon_state = "white"
	area_flags = AREA_FLAG_HALLWAY

/area/apartment/hall/offlimits
	icon_state = "orange"
	area_flags = AREA_FLAG_HALLWAY
	secure = TRUE

/area/apartment/hall/offlimits/exit

/area/apartment/hall/offlimits/e

/area/apartment/hall/offlimits/n

/area/apartment/hall/offlimits/apt115

/area/apartment/hall/offlimits/apt112

//Maintenance
/area/apartment/maint
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_MAINTENANCE
	req_access = list(access_maint_tunnels)
	turf_initializer = /decl/turf_initializer/maintenance
	icon_state = "orange"
	secure = TRUE



//Apartment 101
/area/apartment/apartment_114
	area_flags = AREA_FLAG_RAD_SHIELDED
	name = "\improper Apartment 101"
	icon_state = "red"
	//req_access = list(access_hop)
	//secure = TRUE

/area/apartment/apartment_114/bathroom
	name = "\improper Apartment 101 Bathroom"

/area/apartment/apartment_114/bedroom
	name = "\improper Apartment 101 Bedroom"

/area/apartment/apartment_114/office
	name = "\improper Apartment 101 Office"

/area/apartment/apartment_114/closet
	name = "\improper Apartment 101 Closet"


/area/apartment/lobby
	name = "\improper Apartment 101 Closet"
	icon_state = "green"

//departments

/area/apartment/atmospherics
	name = "\improper Atmospherics"
	req_access = list(access_atmospherics)
	icon_state = "ATMOS"
