// Byond direction defines, because I want to put them somewhere.
// #define NORTH 1
// #define SOUTH 2
// #define EAST 4
// #define WEST 8

#define TEXT_NORTH			"[NORTH]"
#define TEXT_SOUTH			"[SOUTH]"
#define TEXT_EAST			"[EAST]"
#define TEXT_WEST			"[WEST]"

/// world.icon_size
#define PIXELS 32

// These get to go at the top, because they're special
//You can use these defines to get the typepath of the currently running proc/verb (yes procs + verbs are objects)
/* eg:
/mob/living/carbon/human/death()
	to_chat(world, THIS_PROC_TYPE_STR)	// You can only output the string versions
Will print: "/mob/living/carbon/human/death" (you can optionally embed it in a string with () (eg: the _WITH_ARGS defines) to make it look nicer)
*/
#define THIS_PROC_TYPE .....
#define THIS_PROC_TYPE_STR "[THIS_PROC_TYPE]"	// Because you can only obtain a string of THIS_PROC_TYPE using "[]", and it's nice to just +/+= strings
#define THIS_PROC_TYPE_STR_WITH_ARGS "[THIS_PROC_TYPE]([args.Join(",")])"
#define THIS_PROC_TYPE_WEIRD ......				// This one is WEIRD, in some cases (When used in certain defines? (eg: ASSERT)) THIS_PROC_TYPE will fail to work, but THIS_PROC_TYPE_WEIRD will work instead

//define THIS_PROC_TYPE_WEIRD_STR "[THIS_PROC_TYPE_WEIRD]" //Included for completeness
//define THIS_PROC_TYPE_WEIRD_STR_WITH_ARGS "[THIS_PROC_TYPE_WEIRD]([args.Join(",")])" //Ditto

#define NOT_IMPLEMENTED	"NOT_IMPLEMENTED"

// Invisibility constants. These should only be used for TRUE invisibility, AKA nothing living players touch
#define INVISIBILITY_LIGHTING		20
#define INVISIBILITY_LEVEL_ONE		35
#define INVISIBILITY_LEVEL_TWO		45
#define INVISIBILITY_OBSERVER		60
#define INVISIBILITY_EYE			61

#define SEE_INVISIBLE_LIVING		25
#define SEE_INVISIBLE_NOLIGHTING	15
#define SEE_INVISIBLE_LEVEL_ONE		35
#define SEE_INVISIBLE_LEVEL_TWO		45
#define SEE_INVISIBLE_CULT			60
#define SEE_INVISIBLE_OBSERVER		61

#define SEE_INVISIBLE_MINIMUM		5
#define INVISIBILITY_MAXIMUM		100

// Pseudo-Invis, like Ninja, Ling, Etc.
#define EFFECTIVE_INVIS				50	// Below this, can't be examined, may as well be invisible to the game

// For the client FPS pref and anywhere else
#define MAX_CLIENT_FPS	200

// Some arbitrary defines to be used by self-pruning global lists. (see master_controller)
#define PROCESS_KILL	26	// Used to trigger removal from a processing list.
#define MAX_GEAR_COST	15	// Used in chargen for accessory loadout limit.


// For secHUDs and medHUDs and variants. The number is the location of the image on the list hud_list of humans.
#define HEALTH_HUD		1	// A simple line rounding the mob's number health.
#define STATUS_HUD		2	// Alive, dead, diseased, etc.
#define ID_HUD			3	// The job asigned to your ID.
#define WANTED_HUD		4	// Wanted, released, paroled, security status.
#define IMPLOYAL_HUD	5	// Loyality implant.
#define IMPCHEM_HUD		6	// Chemical implant.
#define IMPTRACK_HUD	7	// Tracking implant.
#define SPECIALROLE_HUD	8	// AntagHUD image.
#define STATUS_HUD_OOC	9	// STATUS_HUD without virus DB check for someone being ill.
#define LIFE_HUD		10	// STATUS_HUD that only reports dead or alive

// Because of omnihud having overlapping issues, we have extra ones.
#define BACKUP_HUD		11	// HUD for showing whether or not they have a backup implant.
#define STATUS_R_HUD	12	// HUD for showing the same STATUS_HUD info on the right side, but not for 'boring' statuses (transparent icons)
#define HEALTH_VR_HUD	13	// HUD with blank 100% bar so it's hidden most of the time.
#define VANTAG_HUD		14	// HUD for showing being-an-antag-target prefs

// Total number of HUDs. Like body layers, and other things, it comes up sometimes.
#define TOTAL_HUDS 14

//	Shuttles.

// These define the time taken for the shuttle to get to the space station, and the time before it leaves again.
#define SHUTTLE_PREPTIME				300	// 5 minutes = 300 seconds - after this time, the shuttle departs centcom and cannot be recalled.
#define SHUTTLE_LEAVETIME				180	// 3 minutes = 180 seconds - the duration for which the shuttle will wait at the station after arriving.
#define SHUTTLE_TRANSIT_DURATION		300	// 5 minutes = 300 seconds - how long it takes for the shuttle to get to the station.
#define SHUTTLE_TRANSIT_DURATION_RETURN	120	// 2 minutes = 120 seconds - for some reason it takes less time to come back, go figure.

// Shuttle moving status.
#define SHUTTLE_IDLE		0
#define SHUTTLE_WARMUP		1
#define SHUTTLE_INTRANSIT	2

// Sound defines for shuttles.
#define HYPERSPACE_WARMUP	0
#define HYPERSPACE_PROGRESS	1
#define HYPERSPACE_END		2

// Ferry shuttle processing status.
#define IDLE_STATE		0
#define WAIT_LAUNCH		1
#define FORCE_LAUNCH	2
#define WAIT_ARRIVE		3
#define WAIT_FINISH		4
#define DO_AUTOPILOT	5

// Shuttle madness!
#define SHUTTLE_CRASHED	3	// Yup that can happen now

#define BLUE_SHIELDED	2		// Shield from bluespace teleportation (telescience)


// Bluespace shelter deploy checks
#define SHELTER_DEPLOY_ALLOWED			"allowed"
#define SHELTER_DEPLOY_BAD_TURFS		"bad turfs"
#define SHELTER_DEPLOY_BAD_AREA			"bad area"
#define SHELTER_DEPLOY_ANCHORED_OBJECTS	"anchored objects"


// Setting this much higher than 1024 could allow spammers to DOS the server easily.
#define MAX_MESSAGE_LEN			4096	// I'm not sure about "easily". It can be a lot longer.
#define MAX_PAPER_MESSAGE_LEN	6144
#define MAX_BOOK_MESSAGE_LEN	24576
#define MAX_RECORD_LENGTH		24576
#define MAX_LNAME_LEN			64
#define MAX_NAME_LEN			52
#define MAX_TEXTFILE_LENGTH		128000		// 512GQ file

// Event defines.
#define EVENT_LEVEL_MUNDANE		1
#define EVENT_LEVEL_MODERATE	2
#define EVENT_LEVEL_MAJOR		3

// General-purpose life speed define for plants.
#define HYDRO_SPEED_MULTIPLIER	1

#define ANNOUNCER_NAME "Facility PA"

#define DEFAULT_JOB_TYPE /datum/job/assistant

//Assistant/Visitor/Whatever
#define USELESS_JOB	"Visitor"

#define ECO_MODIFIER 10

// Area flags, possibly more to come
#define RAD_SHIELDED	1	// Shielded from radiation, clearly

// Convoluted setup so defines can be supplied by Bay12 main server compile script.
// Should still work fine for people jamming the icons into their repo.
#ifndef CUSTOM_ITEM_OBJ
#define CUSTOM_ITEM_OBJ		'icons/obj/custom_items_obj.dmi'
#endif
#ifndef CUSTOM_ITEM_MOB
#define CUSTOM_ITEM_MOB		'icons/mob/custom_items_mob.dmi'
#endif
#ifndef CUSTOM_ITEM_SYNTH
#define CUSTOM_ITEM_SYNTH	'icons/mob/custom_synthetic.dmi'
#endif

#define WALL_CAN_OPEN	1
#define WALL_OPENING	2

#define DEFAULT_TABLE_MATERIAL	"plastic"
#define DEFAULT_WALL_MATERIAL	"steel"

// TODO - Standarize this, some mats don't have these. - Zandario
#define MAT_IRON			"iron"
#define MAT_MARBLE			"marble"
#define MAT_STEEL			"steel"
#define MAT_PLASTIC			"plastic"
#define MAT_GLASS			"glass"
#define MAT_SILVER			"silver"
#define MAT_GOLD			"gold"
#define MAT_URANIUM			"uranium"
#define MAT_TITANIUM		"titanium"
#define MAT_PHORON			"phoron"
#define MAT_DIAMOND			"diamond"
#define MAT_SNOW			"snow"
#define MAT_WOOD			"wood"
#define MAT_LOG				"log"
#define MAT_SIFWOOD			"alien wood"
#define MAT_SIFLOG			"alien log"
#define MAT_STEELHULL		"steel hull"
#define MAT_PLASTEEL		"plasteel"
#define MAT_PLASTEELHULL	"plasteel hull"
#define MAT_DURASTEEL		"durasteel"
#define MAT_DURASTEELHULL	"durasteel hull"
#define MAT_TITANIUMHULL	"titanium hull"
#define MAT_VERDANTIUM		"verdantium"
#define MAT_MORPHIUM		"morphium"
#define MAT_MORPHIUMHULL	"morphium hull"
#define MAT_VALHOLLIDE		"valhollide"
#define MAT_LEAD			"lead"
#define MAT_SUPERMATTER		"supermatter"
#define MAT_METALHYDROGEN	"mhydrogen"
#define MAT_OSMIUM			"osmium"
#define MAT_VAUDIUM			"vaudium"
#define MAT_BANANIUM		"bananium"
#define MAT_SILENCIUM		"silencium"

#define SHARD_SHARD			"shard"
#define SHARD_SHRAPNEL		"shrapnel"
#define SHARD_STONE_PIECE	"piece"
#define SHARD_SPLINTER		"splinters"
#define SHARD_NONE			""

#define MATERIAL_UNMELTABLE	0x1
#define MATERIAL_BRITTLE	0x2
#define MATERIAL_PADDING	0x4

#define TABLE_BRITTLE_MATERIAL_MULTIPLIER 4	// Amount table damage is multiplied by if it is made of a brittle material (e.g. glass)

#define BOMBCAP_DVSTN_RADIUS	(max_explosion_range/4)
#define BOMBCAP_HEAVY_RADIUS	(max_explosion_range/2)
#define BOMBCAP_LIGHT_RADIUS	max_explosion_range
#define BOMBCAP_FLASH_RADIUS	(max_explosion_range*1.5)
											// NTNet module-configuration values. Do not change these. If you need to add another use larger number (5..6..7 etc)
#define NTNET_SOFTWAREDOWNLOAD	1			// Downloads of software from NTNet
#define NTNET_PEERTOPEER		2			// P2P transfers of files between devices
#define NTNET_COMMUNICATION		3			// Communication (messaging)
#define NTNET_SYSTEMCONTROL		4			// Control of various systems, RCon, air alarm control, etc.

// NTNet transfer speeds, used when downloading/uploading a file/program.
#define NTNETSPEED_LOWSIGNAL	0.25		// GQ/s transfer speed when the device is wirelessly connected and on Low signal
#define NTNETSPEED_HIGHSIGNAL	0.5			// GQ/s transfer speed when the device is wirelessly connected and on High signal
#define NTNETSPEED_ETHERNET		1.0			// GQ/s transfer speed when the device is using wired connection
#define NTNETSPEED_DOS_AMPLIFICATION	5	// Multiplier for Denial of Service program. Resulting load on NTNet relay is this multiplied by NTNETSPEED of the device

// Program bitflags
#define PROGRAM_ALL			15
#define PROGRAM_CONSOLE		1
#define PROGRAM_LAPTOP		2
#define PROGRAM_TABLET		4
#define PROGRAM_TELESCREEN	8

#define PROGRAM_STATE_KILLED		0
#define PROGRAM_STATE_BACKGROUND	1
#define PROGRAM_STATE_ACTIVE		2

// Caps for NTNet logging. Less than 10 would make logging useless anyway, more than 500 may make the log browser too laggy. Defaults to 100 unless user changes it.
#define MAX_NTNET_LOGS	500
#define MIN_NTNET_LOGS	10


// Special return values from bullet_act(). Positive return values are already used to indicate the blocked level of the projectile.
#define PROJECTILE_CONTINUE		-1	// If the projectile should continue flying after calling bullet_act()
#define PROJECTILE_FORCE_MISS	-2	// If the projectile should treat the attack as a miss (suppresses attack and admin logs) - only applies to mobs.


// Vending stuff
#define CAT_NORMAL	1
#define CAT_HIDDEN	2
#define CAT_COIN	4


// Antag Faction Visbility
#define ANTAG_HIDDEN	"Hidden"
#define ANTAG_SHARED	"Shared"
#define ANTAG_KNOWN		"Known"

// Take a guess what the V stands for
#define VANTAG_NONE		"hudblank"
#define VANTAG_VORE		"vantag_vore"
#define VANTAG_KIDNAP	"vantag_kidnap"
#define VANTAG_KILL		"vantag_kill"


// Job groups
#define DEPARTMENT_COMMAND			"command"
#define DEPARTMENT_SECURITY			"security"
#define DEPARTMENT_ENGINEERING		"engineering"
#define DEPARTMENT_MEDICAL			"medical"
#define DEPARTMENT_RESEARCH			"research"
#define DEPARTMENT_CARGO				"cargo"
#define DEPARTMENT_CIVILIAN			"civilian"
#define DEPARTMENT_SYNTHETIC			"synthetic"
#define DEPARTMENT_UNKNOWN			"unknown"
#define DEPARTMENT_EVERYONE			"everyone"
#define DEPARTMENT_PLANET			"exploration"
#define DEPARTMENT_OFFDUTY			"offduty"
#define DEPARTMENT_TALON			"talon"

// vorstation off-duty time
#define PTO_SECURITY		"Security"
#define PTO_MEDICAL			"Medical"
#define PTO_ENGINEERING 	"Engineering"
#define PTO_SCIENCE			"Science"
#define PTO_EXPLORATION 	"Exploration"
#define PTO_CARGO			"Cargo"
#define PTO_CIVILIAN		"Civilian"
#define PTO_CYBORG			"Cyborg"
#define PTO_COMMAND			"Command"

// Canonical spellings of TSCs, so typos never have to happen again due to human error.
#define TSC_NT		"NanoTrasen"
#define TSC_HEPH	"Hephaestus"	// Because everyone misspells it
#define TSC_VM		"Vey Med"
#define TSC_ZH		"Zeng-Hu"
#define TSC_WT		"Ward-Takahashi"
#define TSC_BC		"Bishop Cybernetics"
#define TSC_MORPH	"Morpheus"
#define TSC_XION	"Xion"			// Not really needed but consistancy I guess.
#define TSC_GIL 	"Gilthari"

#define MIDNIGHT_ROLLOVER		864000	//number of deciseconds in a day

#define WORLD_ICON_SIZE 32	// Needed for the R-UST port
#define PIXEL_MULTIPLIER WORLD_ICON_SIZE/32 //Needed for the R-UST port
#define MAX_CLIENT_VIEW	34	// Maximum effective value of client.view (According to DM references)

// Maploader bounds indices
#define MAP_MINX	1
#define MAP_MINY	2
#define MAP_MINZ	3
#define MAP_MAXX	4
#define MAP_MAXY	5
#define MAP_MAXZ	6

// /atom/proc/use_check flags
#define USE_ALLOW_NONLIVING			1
#define USE_ALLOW_NON_ADV_TOOL_USR	2
#define USE_ALLOW_DEAD				4
#define USE_ALLOW_INCAPACITATED		8
#define USE_ALLOW_NON_ADJACENT		16
#define USE_FORCE_SRC_IN_USER		32
#define USE_DISALLOW_SILICONS		64

#define USE_SUCCESS					0
#define USE_FAIL_NON_ADJACENT		1
#define USE_FAIL_NONLIVING			2
#define USE_FAIL_NON_ADV_TOOL_USR	3
#define USE_FAIL_DEAD				4
#define USE_FAIL_INCAPACITATED		5
#define USE_FAIL_NOT_IN_USER		6
#define USE_FAIL_IS_SILICON			7

// This creates a consistant definition for creating global lists, automatically inserting objects into it when they are created, and removing them when deleted.
// It is very good for removing the 'in world' junk that exists in the codebase painlessly.
// First argument is the list name/path desired, e.g. 'all_candles' would be 'var/list/all_candles = list()'.
// Second argument is the path the list is expected to contain. Note that children will also get added to the global list.
// If the GLOB system is ever ported, you can change this macro in one place and have less work to do than you otherwise would.
#define GLOBAL_LIST_BOILERPLATE(LIST_NAME, PATH)\
GLOBAL_LIST_EMPTY(##LIST_NAME);\
##PATH/Initialize(mapload, ...)\
	{\
	GLOB.##LIST_NAME += src;\
	return ..();\
	}\
##PATH/Destroy(force, ...)\
	{\
	GLOB.##LIST_NAME -= src;\
	return ..();\
	}\


// 'Normal'ness						  v								 v								 v
// Various types of colorblindness	 R2R	R2G		R2B		G2R		G2G		G2B		B2R		B2G		B2B
#define MATRIX_Monochromia		list(0.33,	0.33,	0.33,	0.59,	0.59,	0.59,	0.11,	0.11,	0.11)
#define MATRIX_Protanopia		list(0.57,	0.43,	0,		0.56, 	0.44,	0,		0,		0.24,	0.76)
#define MATRIX_Protanomaly		list(0.82,	0.18,	0,		0.33,	0.67,	0,		0,		0.13,	0.88)
#define MATRIX_Deuteranopia		list(0.63,	0.38,	0,		0.70, 	0.30,	0,		0,		0.30,	0.70)
#define MATRIX_Deuteranomaly	list(0.80,	0.20,	0,		0.26,	0.74,	0,		0,		0.14,	0.86)
#define MATRIX_Tritanopia		list(0.95,	0.05,	0,		0,		0.43,	0.57,	0,		0.48,	0.53)
#define MATRIX_Tritanomaly		list(0.97,	0.03,	0,		0,		0.73,	0.27,	0,		0.18,	0.82)
#define MATRIX_Achromatopsia	list(0.30,	0.59,	0.11,	0.30,	0.59,	0.11,	0.30,	0.59,	0.11)
#define MATRIX_Achromatomaly	list(0.62,	0.32,	0.06,	0.16,	0.78,	0.06,	0.16,	0.32,	0.52)
#define MATRIX_Vulp_Colorblind	list(0.50,	0.40,	0.10,	0.50,	0.40,	0.10,	0,		0.20,	0.80)
#define MATRIX_Taj_Colorblind	list(0.40,	0.20,	0.40,	0.40,	0.60,	0,		0.20,	0.20,	0.60)


// Tool substitution defines
#define IS_SCREWDRIVER		"screwdriver"
#define IS_CROWBAR			"crowbar"
#define IS_WIRECUTTER		"wirecutter"
#define IS_WRENCH			"wrench"


// Diagonal movement
#define FIRST_DIAG_STEP 1
#define SECOND_DIAG_STEP 2

// RCD modes. Used on the RCD, and gets passed to an object's rcd_act() when an RCD is used on it, to determine what happens.
#define RCD_FLOORWALL		"Floor / Wall"		// Builds plating on space/ground/open tiles. Builds a wall when on floors. Finishes walls when used on girders.
#define RCD_AIRLOCK			"Airlock"			// Builds an airlock on the tile if one isn't already there.
#define RCD_WINDOWGRILLE	"Window / Grille" 	// Builds a full tile window and grille pair on floors.
#define RCD_DECONSTRUCT		"Deconstruction"	// Removes various things. Still consumes compressed matter.

#define RCD_VALUE_MODE		"mode"
#define RCD_VALUE_DELAY		"delay"
#define RCD_VALUE_COST		"cost"

#define RCD_SHEETS_PER_MATTER_UNIT	4	// Each physical material sheet is worth four matter units.
#define RCD_MAX_CAPACITY			30 * RCD_SHEETS_PER_MATTER_UNIT


// Preference save/load cooldown. This is in deciseconds.
#define PREF_SAVELOAD_COOLDOWN	2	// Should be sufficiently hard to achieve without a broken mouse or autoclicker while still fulfilling its intended goal.


// Radiation 'levels'. Used for the geiger counter, for visuals and sound. They are in different files so this goes here.
#define RAD_LEVEL_LOW		0.5		// Around the level at which radiation starts to become harmful
#define RAD_LEVEL_MODERATE	5
#define RAD_LEVEL_HIGH		25
#define RAD_LEVEL_VERY_HIGH	75

#define CLIENT_FROM_VAR(I) (ismob(I) ? I:client : (istype(I, /client) ? I : (istype(I, /datum/mind) ? I:current?:client : null)))
#define RADIATION_THRESHOLD_CUTOFF	0.1	// Radiation will not affect a tile when below this value.


#define PR_ANNOUNCEMENTS_PER_ROUND	5

//https://secure.byond.com/docs/ref/info.html#/atom/var/mouse_opacity
#define MOUSE_OPACITY_TRANSPARENT	0
#define MOUSE_OPACITY_ICON			1
#define MOUSE_OPACITY_OPAQUE		2

//world/proc/shelleo
#define SHELLEO_ERRORLEVEL 1
#define SHELLEO_STDOUT 2
#define SHELLEO_STDERR 3

// Embed chance unset for embed_chance var on /obj/item.
#define EMBED_CHANCE_UNSET	-1337


// No hitsound define
#define HITSOUND_UNSET	"UNSET"


// Herm Gender	// Snowflake Global that throws a fit
#define HERM "herm"

// For custom species
#define STARTING_SPECIES_POINTS	1
#define MAX_SPECIES_TRAITS		5

// Xenochimera thing mostly
#define REVIVING_NOW		-1
#define REVIVING_DONE		 0
#define REVIVING_READY		 1

// Resleeving Mind Record Status
#define MR_NORMAL	0
#define MR_UNSURE	1
#define MR_DEAD		2

//Holy Weapon defines from Main. Lists null rod weapons and classifies them as HOLY.
#define HOLY_WEAPONS /obj/item/nullrod
#define HOLY_ICONS /obj/item/godfig

// Used by radios to indicate that they have sent a message via something other than subspace
#define RADIO_CONNECTION_FAIL 0
#define RADIO_CONNECTION_NON_SUBSPACE 1

#define JOB_CARBON			0x1
#define JOB_SILICON_ROBOT	0x2
#define JOB_SILICON_AI		0x4
#define JOB_SILICON			0x6 // 2|4, probably don't set jobs to this, but good for checking

#define SPAN_NOTICE(X) "<span class='notice'>[X]</span>"
#define SPAN_WARNING(X) "<span class='warning'>[X]</span>"
#define SPAN_DANGER(X) "<span class='danger'>[X]</span>"
#define SPAN_OCCULT(X) "<span class='cult'>[X]</span>"
