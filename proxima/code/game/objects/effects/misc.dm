//The effect when you wrap a dead body in gift wrap
/obj/effect/spresent
	name = "strange present"
	desc = "It's a ... present?"
	icon = 'icons/obj/items.dmi'
	icon_state = "strangepresent"
	density = TRUE
	anchored = FALSE

//Paints the wall it spawns on, then dies
/obj/effect/paint
	name = "coat of paint"
	icon = 'icons/effects/effects.dmi'
	icon_state = "wall_paint_effect"
	layer = TURF_PLATING_DECAL_LAYER
	blend_mode = BLEND_MULTIPLY

/obj/effect/paint/Initialize()
	. = ..()
	return INITIALIZE_HINT_LATELOAD

/obj/effect/paint/LateInitialize()
	var/turf/simulated/wall/W = get_turf(src)
	if(istype(W))
		W.paint_color = color
		W.update_icon()
	qdel(src)

/obj/effect/paint/pink
	color = COLOR_PINK

/obj/effect/paint/sun
	color = COLOR_SUN

/obj/effect/paint/red
	color = COLOR_RED

/obj/effect/paint/silver
	color = COLOR_SILVER

/obj/effect/paint/black
	color = COLOR_DARK_GRAY

/obj/effect/paint/green
	color = COLOR_GREEN_GRAY

/obj/effect/paint/blue
	color = COLOR_NAVY_BLUE

/obj/effect/paint/ocean
	color =	COLOR_OCEAN

/obj/effect/paint/palegreengray
	color =	COLOR_PALE_GREEN_GRAY

/obj/effect/paint/brown
	color = COLOR_DARK_BROWN

/obj/effect/paint/gunmetal_dark
	color = COLOR_WALL_GUNMETAL

/obj/effect/paint/hull_blue
	color = COLOR_HULL_BLUE

//Stripes the wall it spawns on, then dies
/obj/effect/paint_stripe
	name = "stripe of paint"
	icon = 'icons/effects/effects.dmi'
	icon_state = "white"
	layer = TURF_PLATING_DECAL_LAYER
	blend_mode = BLEND_MULTIPLY

/obj/effect/paint_stripe/Initialize()
	. = ..()
	return INITIALIZE_HINT_LATELOAD

/obj/effect/paint_stripe/LateInitialize()
	var/turf/simulated/wall/W = get_turf(src)
	if(istype(W))
		W.stripe_color = color
		W.update_icon()
	qdel(src)

/obj/effect/paint_stripe/green
	color = COLOR_GREEN_GRAY

/obj/effect/paint_stripe/red
	color = COLOR_RED_GRAY

/obj/effect/paint_stripe/paleblue
	color = COLOR_PALE_BLUE_GRAY

/obj/effect/paint_stripe/yellow
	color = COLOR_BROWN

/obj/effect/paint_stripe/blue
	color = COLOR_BLUE_GRAY

/obj/effect/paint_stripe/brown
	color = COLOR_DARK_BROWN

/obj/effect/paint_stripe/mauve
	color = COLOR_PALE_PURPLE_GRAY

/obj/effect/paint_stripe/white
	color = COLOR_SILVER

/obj/effect/paint_stripe/gunmetal
	color = COLOR_GUNMETAL

/obj/effect/paint_stripe/gunmetal_dark
	color = COLOR_WALL_GUNMETAL

/obj/effect/paint_stripe/hull_blue
	color = COLOR_HULL_BLUE
/*
/obj/effect/gas_setup	//cryogenic
	icon = 'icons/mob/screen1.dmi'
	icon_state = "x3"
	var/tempurature = 70
	var/pressure = 20* ONE_ATMOSPHERE

/obj/effect/gas_setup/Initialize()
	SHOULD_CALL_PARENT(FALSE)
	atom_flags |= ATOM_FLAG_INITIALIZED
	var/obj/machinery/atmospherics/pipe/P = locate() in loc
	if(P && !P.air_temporary)
		P.air_temporary = new(P.volume, tempurature)
		var/datum/gas_mixture/G = P.air_temporary
		G.adjust_gas(GAS_OXYGEN,((pressure*P.volume)/(R_IDEAL_GAS_EQUATION*temperature)))
	return INITIALIZE_HINT_QDEL


/obj/effect/heat
	icon = 'icons/effects/fire.dmi'
	icon_state = "3"
	render_target = HEAT_EFFECT_TARGET
	mouse_opacity = MOUSE_OPACITY_UNCLICKABLE

/// Example of a warp filter
/obj/effect/effect/warp
	plane = WARP_EFFECT_PLANE
	appearance_flags = PIXEL_SCALE
	icon = 'icons/effects/352x352.dmi'
	icon_state = "singularity_s11"
	pixel_x = -176
	pixel_y = -176
	z_flags = ZMM_IGNORE
*/