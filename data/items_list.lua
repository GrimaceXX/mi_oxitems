return {
	--[[ --------------------------------------------------------------------------------
                                        <! FOOD !>
    -------------------------------------------------------------------------------- ]]--
	['sandwich'] = { -- A simple sandwich for a simple day
        label = 'Sandwich',
        weight = 350,
        stack = true,
        close = true,
        description = "A simple sandwich for a simple day",
        client = {
            status = { thirst = 60000 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
            prop = { model = 'prop_sandwich_01', pos = vec3(0.05, -0.02, -0.03), rot = vec3(150.0, 340.0, 170.0) },
            usetime = 7500,
        },
    },

	['burger'] = { -- A test hamburger that you can eat
        label = 'Hamburger',
        weight = 350,
        stack = true,
        close = true,
        description = "A test hamburger that you can eat",
        client = {
            status = { thirst = 60000 },
            anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
            prop = { model = 'prop_cs_burger_01', pos = vec3(0.05, -0.02, -0.03), rot = vec3(150.0, 340.0, 170.0) },
            usetime = 7500,
        },
    },

    --[[ --------------------------------------------------------------------------------
                                        <! DRINKS !>
    -------------------------------------------------------------------------------- ]]--
    ['ecola'] = { -- Carbonized syrup is good for the soul
        label = 'eCola',
        weight = 350,
        stack = true,
        close = true,
        description = "Carbonized syrup is good for the soul",
        client = {
            status = { thirst = 60000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = 'prop_ecola_can', pos = vec3(0.025, 0.010, 0.05), rot = vec3(5.0, 5.0, -180.5) },
            usetime = 7500,
        },
    },

	['ejunk'] = { -- Drinking too much of this wont kill you. I think.
        label = 'Junk Energy',
        weight = 350,
        stack = true,
        close = true,
        description = "Drinking too much of this wont kill you. I think.",
        client = {
            status = { thirst = 60000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = 'sf_prop_sf_can_01a', pos = vec3(0.025, 0.010, 0.05), rot = vec3(5.0, 5.0, -180.5) },
            usetime = 7500,
        },
    },

    --[[ --------------------------------------------------------------------------------
                                        <! ALCOHOL !>
    -------------------------------------------------------------------------------- ]]--
    ['rancho_beer'] = { -- Good ol imported beer from mexico
        label = 'Cerbesa Barracho',
        weight = 580,
        stack = true,
        close = true,
        description = "Good ol imported beer from mexico",
        client = {
            status = { drunk = 60000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = 'prop_beer_bottle', pos = vec3(0.02, -0.01, -0.14), rot = vec3(1.0, 5.0, -182.5) },
            usetime = 7500,
        },
    },

	['dusche_beer'] = { -- Good ol imported beer from germany
        label = 'Dusche Beer',
        weight = 580,
        stack = true,
        close = true,
        description = "Good ol imported beer from germany",
        client = {
            status = { drunk = 60000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = 'prop_beerdusche', pos = vec3(0.01, -0.01, -0.12), rot = vec3(5.0, 5.0, -180.5) },
            usetime = 7500,
        },
    },

    ['stronzo_beer'] = { -- Good ol imported beer from italy
        label = 'Stronzo Beer',
        weight = 580,
        stack = true,
        close = true,
        description = "Good ol imported beer from italy",
        client = {
            status = { drunk = 60000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = 'prop_beer_stz', pos = vec3(0.01, -0.02, -0.15), rot = vec3(5.0, 5.0, -180.5) },
            usetime = 7500,
        },
    },

    ['patriot_beer'] = { -- Good ol homemade beer from the brewery
        label = 'Patriot Beer',
        weight = 580,
        stack = true,
        close = true,
        description = "Good ol homemade beer from the brewery",
        client = {
            status = { drunk = 60000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = 'prop_beer_patriot', pos = vec3(0.01, -0.02, -0.15), rot = vec3(5.0, 5.0, -180.5) },
            usetime = 7500,
        },
    },

	--[[ --------------------------------------------------------------------------------
                                        <! USABLE ITEMS !>
    -------------------------------------------------------------------------------- ]]--

    ['phone'] = { -- If you aren't using NPWD, remove the client section of this item
		label = 'Phone',
		weight = 190,
		stack = false,
		consume = 0,
		client = {
			add = function(total)
				if total > 0 then
					pcall(function() return exports.npwd:setPhoneDisabled(false) end)
				end
			end,

			remove = function(total)
				if total < 1 then
					pcall(function() return exports.npwd:setPhoneDisabled(true) end)
				end
			end
		}
	},
	
    ['bandage'] = { -- Use to partially heal self
		label = 'Bandage',
		weight = 115,
	description = "Yes, this definetly will heal that gunshot wound",
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
		}
	},

    ['wallet'] = { -- Use to hold licenses
		label = 'Wallet',
		weight = 115,
        description = "If you lose this, you're gonna be sorry",
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
		}
	},

    ['cigarette'] = { -- social item that causes slight damage to health
		label = 'Cigarettes',
		weight = 115,
        description = "These probably aren't good for you, but fuck it",
		client = {
			anim = { dict = 'amb@world_human_aa_smoke@male@idle_a', clip = 'idle_c', flag = 49 },
			prop = { model = `prop_cs_ciggy_01`, 
            pos = vec3(0.0, 0.0, 0.0), 
            rot = vec3(0.0, 0.0, 0.0), bone = 28422 },
			disable = { move = false, car = false, combat = false },
			usetime = 8000,
		}
	},

    ['vape'] = { -- social item that causes slight damage to health
		label = 'Vape',
		weight = 115,
        description = "Vape-nash bruh, tastes like dissapointment",
        consume = 0,
        degrade = 60,
		client = {
			anim = { dict = 'amb@world_human_smoking@male@male_b@base', clip = 'base', flag = 49 },
			prop = { model = `xm3_prop_xm3_vape_01a`, 
            pos = vec3(-0.02, -0.02, 0.02), 
            rot = vec3(70.0, 110.0, 10.0), bone = 28422 },

			disable = { move = false, car = false, combat = false },
			usetime = 7000,
		}
	},

    ['bodyarmor_1'] = { --  Use to set body armor to 30%
		label = 'Light Ballistic Vest',
		weight = 3000,
		stack = false,
        description = "Bullts hurt a bit less with this",
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 6500
		}
	},

    ['bodyarmor_2'] = { --  Use to set body armor to 60%
		label = 'Medium Ballistic Vest',
		weight = 4500,
		stack = false,
        description = "Bullets hurt a lot less with this",
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 6500
		}
	},

    ['bodyarmor_3'] = { --  Use to set body armor to 100%
		label = 'Heavy Ballistic Vest',
		weight = 4500,
		stack = false,
        description = "Keep the extra bullets for personal vest flair",
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 6500
		}
	},

	['parachute'] = { -- Use to equip parachute tool
		label = 'Parachute',
		weight = 8000,
		stack = false,
        description = "For your sake, I hope it opens at the last second",
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		}
	},

	['lockpick'] = { -- Use for doors and cars
		label = 'Lockpicks',
		weight = 115,
        description = "Modern problems require sneaky solutions",
	},

	['money'] = { -- Player currency
		label = 'Money',
        weight = 2,
        description = "The root of all evil and payer of rent",
	},

    ['black_money'] = { -- Player currency
		label = 'Dirty Money',
        weight = 2,
        description = "If you don't wash this, you're gonna be stinky",
	},

}
