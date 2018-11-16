/mob/living/simple_animal/hostile/poison/AttackingTarget()
	..()
	if(isliving(target))
		var/mob/living/L = target
		if(L.reagents)
			L.reagents.add_reagent("Doença do macaco", poison_per_bite)
			if(prob(poison_per_bite))
				to_chat(L, "<span class='danger'>You feel a tiny prick.</span>")
				L.reagents.add_reagent(poison_type, poison_per_bite)


//macacos zombie simples
/mob/living/simple_animal/hostile/macacos_zombie
	name = "macaco zombie"
	desc = "Fofinho e mortinho, ele vai comer seu cuzinho."
	icon = 'icons/mob/monkey.dmi'
	icon_state = "macaco_zombie"
	var/butcher_state = 8 // Icon state for dead spider icons
	icon_living = "macaco_zombie"
	icon_dead = "macaco_zombie_morto"
	speak_emote = list("chitters")
	emote_hear = list("chitters")
	speak_chance = 5
	turns_per_move = 5
	see_in_dark = 10
	butcher_results = list(/obj/item/reagent_containers/food/snacks/meat/monkey = 5)
	response_help  = "alizou o demonio"
	response_disarm = "empurrou"
	response_harm   = "acertou"
	maxHealth = 200
	health = 200
	obj_damage = 60
	melee_damage_lower = 15
	melee_damage_upper = 20
	heat_damage_per_tick = 20	//amount of damage applied if animal's body temperature is higher than maxbodytemp
	cold_damage_per_tick = 20	//same as heat_damage_per_tick, only if the bodytemperature it's lower than minbodytemp
	faction = list("macacos zombie")
	var/busy = 0
	pass_flags = PASSTABLE
	move_to_delay = 6
	attacktext = "mordeu"
	attack_sound = 'sound/weapons/bite.ogg'
	gold_core_spawnable = CHEM_MOB_SPAWN_HOSTILE
