// This is special hardware configuration program.
// It is to be used only with modular computers.
// It allows you to toggle components of your device.

/datum/computer_file/program/computerconfig
	filename = "compconfig"
	filedesc = "Computer Configuration Tool"
	extended_desc = "This program allows configuration of computer's hardware"
	program_icon_state = "generic"
	program_key_state = "generic_key"
	program_menu_icon = "gear"
	unsendable = 1
	undeletable = 1
	size = 4
	available_on_network = 0
	nanomodule_path = /datum/nano_module/program/computer_configurator/
	usage_flags = PROGRAM_ALL
	category = PROG_UTIL

/datum/nano_module/program/computer_configurator
	name = "Computer Configuration Tool"

/datum/nano_module/program/computer_configurator/ui_interact(mob/user, ui_key = "main", var/datum/nanoui/ui = null, var/force_open = 1, var/datum/topic_state/state = global.default_topic_state)
	name = "[program.computer.os_name] [initial(name)]" // i.e. GOOSE Computer Configuration Tool

	var/list/data = list()

	data = program.get_header_data()

	data["disk_size"] = program.computer.max_disk_capacity()
	data["disk_used"] = program.computer.used_disk_capacity()
	data["power_usage"] = program.computer.get_power_usage()
	var/obj/item/stock_parts/computer/battery_module/battery_module = program.computer.get_component(PART_BATTERY)
	data["battery_exists"] = !!battery_module
	if(battery_module)
		var/obj/item/cell/battery = battery_module.get_cell()
		data["battery_rating"] = battery?.maxcharge || 0
		data["battery_percent"] = battery ? round(battery.percent()) : 0

	var/obj/item/stock_parts/computer/network_card/network_card = program.computer.get_component(PART_NETWORK)
	data["nic_exists"] = !!network_card
	if(network_card)
		var/datum/extension/network_device/D = get_extension(network_card, /datum/extension/network_device)
		data["signal_strength"] = D.get_signal_wordlevel()
		data["net_id"] = D.network_id ? D.network_id : "Not Set"
		if(program.computer.emagged())
			data["key"] = D.key
		else
			data["key"] = D.key ? "************" : "Not Set"
		data["tag"] = D.network_tag

	var/list/all_entries[0]
	var/list/hardware = program.computer.get_all_components()
	for(var/obj/item/stock_parts/computer/H in hardware)
		all_entries.Add(list(list(
		"name" = H.name,
		"desc" = H.desc,
		"enabled" = H.enabled,
		"critical" = H.critical,
		"powerusage" = H.power_usage,
		"ref" = "\ref[H]"
		)))

	data["hardware"] = all_entries

	data["receives_updates"] = program.computer.receives_updates

	data["os_full_name"] = program.computer.os_full_name

	ui = SSnano.try_update_ui(user, src, ui_key, ui, data, force_open)
	if (!ui)
		ui = new(user, src, ui_key, "laptop_configuration.tmpl", "[program.computer.os_name] Configuration Utility", 575, 700, state = state)
		ui.auto_update_layout = 1
		ui.set_initial_data(data)
		ui.open()

/datum/nano_module/program/computer_configurator/Topic(href, href_list)
	. = ..()
	if(.)
		return
	var/obj/item/stock_parts/computer/network_card/network_card = program.computer.get_component(PART_NETWORK)
	var/datum/extension/network_device/D = get_extension(network_card, /datum/extension/network_device)
	if(href_list["PRG_newid"])
		D.do_change_id(usr)
		return TOPIC_REFRESH
	else if(href_list["PRG_newkey"])
		D.do_change_key(usr)
		return TOPIC_REFRESH
	else if(href_list["PRG_newtag"])
		D.do_change_net_tag(usr)
		return TOPIC_REFRESH