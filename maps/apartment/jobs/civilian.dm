/datum/job/apartment/resident
	title = "Resident"
	total_positions = -1
	spawn_positions = -1
	supervisors = "no one, this is your day off"
	economic_power = 1
	access = list(
		access_resident
	)
	minimal_access = list()
	//hud_icon = "hudassistant"
	outfit_type = /decl/hierarchy/outfit/job/apartment_resident
	department_types = list(/decl/department/civilian)
	//event_categories = list(ASSIGNMENT_GARDENER)

/datum/job/apartment/visitor
	title = "Visitor"
	total_positions = -1
	spawn_positions = -1
	supervisors = "no one, this is your day off"
	economic_power = 1
	access = list()
	minimal_access = list()
	//hud_icon = "hudassistant"
	//outfit_type = /decl/hierarchy/outfit/job/apartment_resident
	department_types = list(/decl/department/civilian)
	//event_categories = list(ASSIGNMENT_GARDENER)

/decl/hierarchy/outfit/job/apartment_resident
	abstract_type = /decl/hierarchy/outfit/job/apartment_resident
	name = "Job - Resident"
	id_type = /obj/item/card/id/resident
	pda_type = /obj/item/modular_computer/pda
	pda_slot = slot_l_store_str
	r_pocket = /obj/item/radio
	l_ear = null
	r_ear = null