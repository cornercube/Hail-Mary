/*
 * Contains:
 *		Surgery scrubs
 *		Fire protection
 *		Bomb protection
 *		Radiation protection
 */


/obj/item/clothing/suit/hooded/surgical
	name = "surgical scrubs"
	desc = "A bundle with all the sterile clothing needed to perform safe surgery accoring to the standards set in the Followers' pamphlet on safe surgery. The shoe covers have grip surfaces to prevent slipping in the blood."
	icon = 'icons/fallout/clothing/suits_utility.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/suit_utility.dmi'
	icon_state = "surgical_scrubs"
	w_class = WEIGHT_CLASS_BULKY
	strip_delay = 60
	equip_delay_other = 60
	hoodtype = /obj/item/clothing/head/hooded/surgical
	clothing_flags = NOSLIP
	permeability_coefficient = 0.6
	body_parts_covered = CHEST|GROIN|LEGS|FEET
	pocket_storage_component_path = /datum/component/storage/concrete/pockets/jacket
	armor = ARMOR_VALUE_CLOTHES
	armor_tokens = list(ARMOR_MODIFIER_UP_ENV_T3)

/obj/item/clothing/head/hooded/surgical
	name = "hair net"
	desc = "It's not a good idea to risk hair falling into open wounds."
	icon = 'icons/fallout/clothing/suits_utility.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/suit_utility.dmi'
	icon_state = "hood_surgical_scrubs"
	item_state = "hood_surgical_scrubs"
	flags_inv = HIDEHAIR


/*
 * Fire protection
 */

/obj/item/clothing/suit/fire
	name = "firefighters suit"
	desc = "Faded old asbestos coated suit. Very good protection against fire and heat."
	icon = 'icons/fallout/clothing/suits_utility.dmi'
	mob_overlay_icon = 'icons/fallout/onmob/clothes/suit_utility.dmi'
	icon_state = "firesuit"
	item_state = "firesuit"
	w_class = WEIGHT_CLASS_BULKY
	gas_transfer_coefficient = 0.9
	permeability_coefficient = 0.5
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	slowdown = ARMOR_SLOWDOWN_LIGHT * ARMOR_SLOWDOWN_GLOBAL_MULT
	armor = ARMOR_VALUE_LIGHT
	armor_tokens = list(ARMOR_MODIFIER_UP_FIRE_T3)
	flags_inv = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT
	clothing_flags = STOPSPRESSUREDAMAGE | THICKMATERIAL
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = FIRE_SUIT_MAX_TEMP_PROTECT
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	min_cold_protection_temperature = FIRE_SUIT_MIN_TEMP_PROTECT
	strip_delay = 60
	equip_delay_other = 60
	resistance_flags = FIRE_PROOF


/*
 * Bomb protection
 */
/obj/item/clothing/head/bomb_hood
	name = "bomb hood"
	desc = "Use in case of bomb."
	icon_state = "bombsuit"
	clothing_flags = THICKMATERIAL
	armor = ARMOR_VALUE_LIGHT
	armor_tokens = list(ARMOR_MODIFIER_UP_BOMB_T3)
	flags_inv = HIDEFACE|HIDEMASK|HIDEEARS|HIDEEYES|HIDEHAIR|HIDEFACIALHAIR
	dynamic_hair_suffix = ""
	dynamic_fhair_suffix = ""
	cold_protection = HEAD
	min_cold_protection_temperature = HELMET_MIN_TEMP_PROTECT
	heat_protection = HEAD
	max_heat_protection_temperature = HELMET_MAX_TEMP_PROTECT
	strip_delay = 70
	equip_delay_other = 70
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	resistance_flags = NONE


/obj/item/clothing/suit/bomb_suit
	name = "bomb suit"
	desc = "A suit designed for safety when handling explosives."
	icon_state = "bombsuit"
	item_state = "bombsuit"
	w_class = WEIGHT_CLASS_BULKY
	gas_transfer_coefficient = 0.01
	permeability_coefficient = 0.01
	clothing_flags = THICKMATERIAL
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	slowdown = 2
	armor = ARMOR_VALUE_LIGHT
	armor_tokens = list(ARMOR_MODIFIER_UP_BOMB_T3)
	flags_inv = HIDEJUMPSUIT
	heat_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	max_heat_protection_temperature = ARMOR_MAX_TEMP_PROTECT
	cold_protection = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	min_cold_protection_temperature = ARMOR_MIN_TEMP_PROTECT
	strip_delay = 70
	equip_delay_other = 70
	resistance_flags = NONE
	mutantrace_variation = STYLE_DIGITIGRADE


/obj/item/clothing/head/bomb_hood/security
	icon_state = "bombsuit_sec"
	item_state = "bombsuit_sec"

/obj/item/clothing/suit/bomb_suit/security
	icon_state = "bombsuit_sec"
	item_state = "bombsuit_sec"


/obj/item/clothing/head/bomb_hood/white
	icon_state = "bombsuit_white"
	item_state = "bombsuit_white"

/obj/item/clothing/suit/bomb_suit/white
	icon_state = "bombsuit_white"
	item_state = "bombsuit_white"

/*
* Radiation protection
*/

/obj/item/clothing/head/radiation
	name = "radiation hood"
	icon_state = "rad"
	desc = "A hood with radiation protective properties. The label reads, 'Made with lead. Please do not consume insulation.'"
	clothing_flags = THICKMATERIAL
	flags_inv = HIDEMASK|HIDEEARS|HIDEFACE|HIDEEYES|HIDEHAIR|HIDEFACIALHAIR
	armor = ARMOR_VALUE_LIGHT
	armor_tokens = list(ARMOR_MODIFIER_UP_ENV_T4)
	strip_delay = 60
	equip_delay_other = 60
	flags_cover = HEADCOVERSEYES | HEADCOVERSMOUTH
	resistance_flags = NONE
	rad_flags = RAD_PROTECT_CONTENTS | RAD_NO_CONTAMINATE

/obj/item/clothing/suit/radiation
	name = "radiation suit"
	desc = "A suit that protects against radiation. The label reads, 'Made with lead. Please do not consume insulation.'"
	icon_state = "rad"
	item_state = "rad_suit"
	w_class = WEIGHT_CLASS_BULKY
	gas_transfer_coefficient = 0.9
	permeability_coefficient = 0.5
	clothing_flags = THICKMATERIAL
	body_parts_covered = CHEST|GROIN|LEGS|FEET|ARMS|HANDS
	slowdown = ARMOR_SLOWDOWN_LIGHT
	armor = ARMOR_VALUE_LIGHT
	armor_tokens = list(ARMOR_MODIFIER_UP_ENV_T4)
	strip_delay = 60
	equip_delay_other = 60
	flags_inv = HIDEJUMPSUIT
	resistance_flags = NONE
	rad_flags = RAD_PROTECT_CONTENTS | RAD_NO_CONTAMINATE
	mutantrace_variation = STYLE_DIGITIGRADE
