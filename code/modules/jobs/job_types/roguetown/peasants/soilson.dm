/datum/job/roguetown/farmer
	title = "Soilson"
	flag = FARMER
	department_flag = PEASANTS
	faction = "Station"
	total_positions = 3
	spawn_positions = 5
	display_order = JDO_SOILSON
	selection_color = JCOLOR_PEASANT
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_ALL_KINDS

	tutorial = "Your's is the simple, pastoral life, but the land is kin to you. The world is perfect to you, and you are perfect back; you know a good day's work, the sweat on your brow your own. A master of flora and fauna both, till the soil, care for the animals and harvest them when ready. The town looks to you for food, and the church blesses you are something greater then a simple farmer."


	f_title = "Soilbride"
	outfit = /datum/outfit/job/roguetown/farmer
	display_order = 24
	give_bank_account = 17
	min_pq = -10
	max_pq = null

/datum/outfit/job/roguetown/farmer/pre_equip(mob/living/carbon/human/H)
	..()
	if(H.mind)
		H.mind.adjust_skillrank(/datum/skill/combat/bows, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/whipsflails, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/knives, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/polearms, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/crafting, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/alchemy, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/labor/farming, 5, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/medicine, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/sewing, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/cooking, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/carpentry, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/masonry, 1, TRUE)
		H.mind.adjust_skillrank(/datum/skill/craft/tanning, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/riding, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/labor/butchering, 5, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/reading, 1, TRUE)
		if(H.age == AGE_OLD)
			H.mind.adjust_skillrank(/datum/skill/labor/farming, 1, TRUE)
		H.change_stat("strength", 1)
		H.change_stat("constitution", 1)
		H.change_stat("speed", 1)

	if(H.pronouns == SHE_HER)
		head = /obj/item/clothing/head/roguetown/armingcap
//		pants = /obj/item/clothing/under/roguetown/trou
		armor = /obj/item/clothing/suit/roguetown/shirt/dress/gen/random
		shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt
		shoes = /obj/item/clothing/shoes/roguetown/simpleshoes
		belt = /obj/item/storage/belt/rogue/leather/rope
	else
		head = /obj/item/clothing/head/roguetown/roguehood/random
		if(prob(50))
			head = /obj/item/clothing/head/roguetown/strawhat
		pants = /obj/item/clothing/under/roguetown/tights/random
		armor = /obj/item/clothing/suit/roguetown/armor/workervest
		shirt = /obj/item/clothing/suit/roguetown/shirt/undershirt/random
		shoes = /obj/item/clothing/shoes/roguetown/simpleshoes
		belt = /obj/item/storage/belt/rogue/leather/rope
		beltl = /obj/item/roguekey/farm
