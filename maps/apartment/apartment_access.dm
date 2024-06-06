var/global/const/access_resident = "ACCESS_RESIDENT" //998
/datum/access/resident
	id = access_resident
	desc = "Apartment Resident"
	region = ACCESS_REGION_NONE


/obj/item/card/id/resident
	access = list(access_resident)

/obj/machinery/door/airlock/autoname/resident