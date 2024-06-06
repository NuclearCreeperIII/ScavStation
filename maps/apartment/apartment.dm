/*
Custom Apartment Map, used for personal RP
*/

#if !defined(USING_MAP_DATUM)

	#define USING_MAP_DATUM /datum/map/apartment

	#include "../random_ruins/exoplanet_ruins/playablecolony/playablecolony.dm"
	#include "../../mods/content/pheromones/_pheromones.dme"
	#include "../../mods/content/xenobiology/_xenobiology.dme"
	#include "../../mods/content/corporate/_corporate.dme"
	#include "../../mods/valsalia/_valsalia.dme"
	#include "../../mods/content/matchmaking/_matchmaking.dme"
	#include "../../mods/species/ascent/_ascent.dme"
	#include "../../mods/species/neoavians/_neoavians.dme"
	//#include "../../mods/species/vox/_vox.dme"
	#include "../../mods/species/serpentid/_serpentid.dme"
	#include "../../mods/species/bayliens/_bayliens.dme"
	#include "../../mods/content/mundane.dm"
	#include "../../mods/content/bigpharma/_bigpharma.dme"
	#include "../../mods/content/government/_government.dme"
	#include "../../mods/content/modern_earth/_modern_earth.dme"
	#include "../../mods/content/mouse_highlights/_mouse_highlight.dme"
	#include "../../mods/content/psionics/_psionics.dme"
	#include "../../mods/content/scaling_descriptors.dm"

	#include "apartment_areas.dm"
	#include "apartment_departments.dm"
	#include "apartment_jobs.dm"
	#include "apartment_unit_testing.dm"
	#include "apartment_access.dm"
	//#include "apartment_overrides.dm"

	#include "apartment-0.dmm"
	//#include "space.dmm"

	#include "jobs/civilian.dm"

#elif !defined(MAP_OVERRIDE)

	#warn A map has already been included, ignoring apartment.

#endif