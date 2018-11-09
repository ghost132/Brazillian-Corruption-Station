
/datum/species/human/synthetic
	name = "Synthetic"
	name_plural = "synthetics"
	total_health = 150 //more health than regular humans
	brute_mod = 0.75
	burn_mod = 1.1
	cold_level_1 = -1
	cold_level_2 = -1
	cold_level_3 = -1
	heat_level_1 = 500
	heat_level_2 = 1000
	heat_level_3 = 2000
	body_temperature = 350
	can_revive_by_healing = 1
	species_traits = list(IS_WHITELISTED, NO_BREATHE, NO_SCAN, NO_INTORGANS, NO_PAIN, NO_DNA, RADIMMUNE, VIRUSIMMUNE, NOTRANSSTING)
	clothing_flags = HAS_UNDERWEAR | HAS_UNDERSHIRT | HAS_SOCKS
	bodyflags = HAS_SKIN_TONE | HAS_BODY_MARKINGS
	dietflags = 0
	blood_color = "#EEEEEE"
	has_organ = list(
		"brain" = /obj/item/organ/internal/brain/mmi_holder/posibrain,
		"cell" = /obj/item/organ/internal/cell,
		"optics" = /obj/item/organ/internal/eyes/optical_sensor, //Default darksight of 2.
		"charger" = /obj/item/organ/internal/cyberimp/arm/power_cord
		)
	vision_organ = /obj/item/organ/internal/eyes/optical_sensor