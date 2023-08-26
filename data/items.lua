return {
	['testburger'] = {
		label = 'Test Burger',
		weight = 220,
		degrade = 60,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			export = 'ox_inventory_examples.testburger',
			usetime = 3000,
				buff = {
					type = 'super-armor', -- buff type
					time = math.random(25000, 30000), -- how long the buff will last
					amount = 4 -- amount that is increased over time above (mostly used for swimming, health, armor, and stamina)
				},
		},
		server = {
			export = 'ox_inventory_examples.testburger',
			test = 'what an amazingly delicious burger, amirite?'
		},
		buttons = {
			{
				label = 'Lick it',
				action = function(slot)
					print('You licked the burger')
				end
			},
			{
				label = 'Squeeze it',
				action = function(slot)
					print('You squeezed the burger :(')
				end
			},
			{
				label = 'What do you call a vegan burger?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('A misteak.')
				end
			},
			{
				label = 'What do frogs like to eat with their hamburgers?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('French flies.')
				end
			},
			{
				label = 'Why were the burger and fries running?',
				group = 'Hamburger Puns',
				action = function(slot)
					print('Because they\'re fast food.')
				end
			}
		},
		consume = 1.0
	},
-----------------------------------------------Items
	['burger'] = {
		label = 'Burger',
		description = 'A Tasty Burger',
		weight = 220,
		degrade = 20160,
		decay = true,
		client = {
			status = { hunger = 100000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 4000
		},
	},

	['tosti'] = {
		label = 'Grilled Cheese',
		description = 'Delicious Grilled Cheese',
		weight = 220,
		degrade = 20160,
		decay = true,
		client = {
			status = { hunger = 75000 },
			anim = 'eating',
			prop = 'sandwich_01',
			usetime = 4000
		},
	},

	['twerks_candy'] = {
		label = 'Twerks Candy Bar',
		description = 'Tasty Candy Bar',
		weight = 100,
		degrade = 20160,
		decay = true,
		client = {
			status = { hunger = 40000 },
			anim = 'eating',
			prop = 'candy01a',
			usetime = 4000
		},
	},
	['snikkel_candy'] = {
		label = 'Snikkel Candy Bar',
		description = 'Tasty Candy Bar',
		weight = 100,
		degrade = 20160,
		decay = true,
		client = {
			status = { hunger = 40000 },
			anim = 'eating',
			prop = 'candy01a',
			usetime = 4000
		},
	},
	['sandwich'] = {
		label = 'Homemade Sandwich',
		description = 'Delicious Sandwich',
		weight = 100,
		degrade = 20160,
		decay = true,
		client = {
			status = { hunger = 75000 },
			anim = 'eating',
			prop = 'sandwich_01',
			usetime = 4000
		},
	},
	['crisps'] = {
		label = 'Potato Chips',
		description = 'Roofles Original Crisps',
		weight = 100,
		degrade = 20160,
		decay = true,
		client = {
			status = { hunger = 40000 },
			anim = 'eating',
			prop = 'sandwich_01',
			usetime = 4000
		},
	},
	['nachos'] = {
		label = 'Nacho Chips',
		description = 'Pocket Chips',
		weight = 100,
		degrade = 20160,
		decay = true,
		client = {
			status = { hunger = 40000 },
			anim = 'eating',
			prop = 'sandwich_01',
			usetime = 4000
		},
	},


-----------------Drinks

	['water'] = {
		label = 'Water',
		weight = 500,
		client = {
			status = { thirst = 150000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 4000,
			cancel = true,
		}
	},

	['cola'] = {
		label = 'eCola',
		weight = 350,
		client = {
			status = { thirst = 120000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ecola_can`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 4000,
		}
	},
	['coffee'] = {
		label = 'Coffee',
		weight = 350,
		client = {
			status = { thirst = 75000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `p_ing_coffeecup_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 4000,
		}
	},

-----------------Alcohol


-----------------Identifications, Cards and Tools
	['giftbox'] = {
		label = 'Gift Box',
		stack = false,
		weight = 5000,
		client = {
            anim = { dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', 
            clip = 'machinic_loop_mechandplayer', flag = 3 },
            prop = { model = 'prop_box_ammo02a',
            pos = vec3(0.0, 0.7, -0.40), 
            rot = vec3(0.00, 0.00, 90.00), 
            bone = 56604  },
            disable = { move = false, car = false, combat = false },
            usetime = 5000,
        }
	},
	['visa'] = {
		label = 'Visa',
		stack = false,
		weight = 10,
	},
	['driver_license'] = {
		label = 'Drivers License',
		weight = 0,
	},
	['id_card'] = {
		label = 'ID Card',
		weight = 0,
	},
	['firearms_license'] = {
		label = 'Weapons License',
		weight = 0,
	},
    ['lockpick'] = {
        label = 'Lockpick Set',
        weight = 160,
		client = {
			export = 'qb-vehiclekeys.lockpick'
		},
		consume = 0.10,
		decay = true,
	},
	['advancedlockpick'] = {
		label = 'Advanced Lockpick',
		weight = 300,
		client = {
			export = 'qb-vehiclekeys.advancedlockpick'
		},
		consume = 0.05,
		decay = true,
	},
	['drill'] = {
		label = 'Drill',
		weight = 300,
	},
	['screwdriverset'] = {
		label = 'Screwdriver Set',
		weight = 300,
	},
	['fakeplate'] = {
		label = 'Fake Vehicle Plate',
		weight = 300,
	},
	['steelfile'] = {
		label = 'Steel File',
		weight = 300,
		degrade = 10080,
		decay = true,
	},
-----------------Job Items
	['mail'] = {
		label = 'Packages',
		weight = 50,
		degrade = 10080,
		decay = true,
	},
-----------------Police Tools
	['handcuffs'] = {
		label = 'Handcuffs',
		weight = 300,
	},
	['empty_evidence_bag'] = {
		label = 'Empty Evidence Bag',
		weight = 0,
	},
	['filled_evidence_bag'] = {
		label = 'Filled Evidence Bag',
		weight = 0,
	},
	['spikestrip'] = {
		label = 'Spike Strips',
		weight = 5000,
	},
	['mdtcitation'] = {
		label = 'MDT Citation',
		weight = 250,
	},
	['ammobox_22'] = {
        label = 'Case: 45mm (x120)',
        weight = 500,
        --consume = 0,
        client = {
            anim = { dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', 
            clip = 'machinic_loop_mechandplayer', flag = 3 },
            prop = { model = 'prop_box_ammo02a',
            pos = vec3(0.0, 0.7, -0.40), 
            rot = vec3(0.00, 0.00, 90.00), 
            bone = 56604  },
            disable = { move = false, car = false, combat = false },
            usetime = 5000,
        }
    },
	['ammobox_50'] = {
        label = 'Case: 50mm (x120)',
        weight = 500,
        --consume = 0,
        client = {
            anim = { dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', 
            clip = 'machinic_loop_mechandplayer', flag = 3 },
            prop = { model = 'prop_box_ammo02a',
            pos = vec3(0.0, 0.7, -0.40), 
            rot = vec3(0.00, 0.00, 90.00), 
            bone = 56604  },
            disable = { move = false, car = false, combat = false },
            usetime = 5000,
        }
    },

    ['ammobox_38'] = {
        label = 'Case: 38(x120)',
        weight = 5,
        --consume = 0,
        client = {
            anim = { dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', 
            clip = 'machinic_loop_mechandplayer', flag = 3 },
            prop = { model = 'prop_box_ammo02a', -- need badge props repo
            pos = vec3(0.0, 0.7, -0.40), 
            rot = vec3(0.00, 0.00, 90.00), 
            bone = 56604  },
            disable = { move = false, car = false, combat = false },
            usetime = 5000,
        }
    },
	['ammobox_12g'] = {
        label = 'Case: 12G(x120)',
        weight = 5,
        --consume = 0,
        client = {
            anim = { dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', 
            clip = 'machinic_loop_mechandplayer', flag = 3 },
            prop = { model = 'prop_box_ammo02a', -- need badge props repo
            pos = vec3(0.0, 0.7, -0.40), 
            rot = vec3(0.00, 0.00, 90.00), 
            bone = 56604  },
            disable = { move = false, car = false, combat = false },
            usetime = 5000,
        }
    },

	['ammobox_44'] = {
        label = 'Case: 44(x120)',
        weight = 5,
        --consume = 0,
        client = {
            anim = { dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', 
            clip = 'machinic_loop_mechandplayer', flag = 3 },
            prop = { model = 'prop_box_ammo02a',
            pos = vec3(0.0, 0.7, -0.40), 
            rot = vec3(0.00, 0.00, 90.00), 
            bone = 56604  },
            disable = { move = false, car = false, combat = false },
            usetime = 5000,
        }
    }, 

    ['ammobox_45'] = {
        label = 'Case: 45(x120)',
        weight = 5,
        --consume = 0,
        client = {
            anim = { dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', 
            clip = 'machinic_loop_mechandplayer', flag = 3 },
            prop = { model = 'prop_box_ammo02a',
            pos = vec3(0.0, 0.7, -0.40), 
            rot = vec3(0.00, 0.00, 90.00), 
            bone = 56604  },
            disable = { move = false, car = false, combat = false },
            usetime = 5000,
        }
    }, 

	['ammobox_9mm'] = {
        label = 'Case: 9mm(x120)',
        weight = 5,
        --consume = 0,
        client = {
            anim = { dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', 
            clip = 'machinic_loop_mechandplayer', flag = 3 },
            prop = { model = 'prop_box_ammo02a',
            pos = vec3(0.0, 0.7, -0.40), 
            rot = vec3(0.00, 0.00, 90.00), 
            bone = 56604  },
            disable = { move = false, car = false, combat = false },
            usetime = 5000,
        }
    },

    ['ammobox_556'] = {
        label = ' Case: 5.56x45 (x120)',
        weight = 5,
        --consume = 0,
        client = {
            anim = { dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', 
            clip = 'machinic_loop_mechandplayer', flag = 3 },
            prop = { model = 'prop_box_ammo02a',
            pos = vec3(0.0, 0.7, -0.40), 
            rot = vec3(0.00, 0.00, 90.00), 
            bone = 56604  },
            disable = { move = false, car = false, combat = false },
            usetime = 5000,
        }
	},
-----------------Communications/Electronics
	['phone'] = {
		label = 'Phone',
		weight = 190,
		stack = false,
		consume = 0,
	},
	['radio'] = {
		label = 'Radio',
		weight = 1000,
		stack = false,
		allowArmed = true
	},
	['vpn'] = {
		label = 'VPN',
		weight = 1000,
		stack = false,
	},
	['racingusb2'] = {
		label = 'USB Dongle',
		weight = 1000,
		stack = false,
	},
	['ausb2'] = {
		label = 'Alias USB',
		weight = 1000,
		stack = false,
	},
	['electronickit'] = {
		label = 'Electronic Kit',
		weight = 2000,
		stack = true,
	},
	['rfid_disruptor'] = {
		label = 'RFID Disruptor',
		weight = 2000,
		stack = true,
	},
-----------------Mechanic Items
	['customs_receipt'] = {
		label = 'Customs Receipt',
		weight = 0,
		stack = false,
	},
	['mechanic_tools'] = {
		label = 'Mechanic Toolset',
		weight = 2500,
		stack = true,
	},
	['mechboard'] = {
		label = 'Mechanic Board',
		weight = 2500,
		stack = true,
	},
	['toolbox'] = {
		label = 'Toolbox',
		weight = 2500,
		stack = true,
	},
	['ducttape'] = {
		label = 'Duct Tape',
		weight = 250,
		stack = true,
	},
	['underglow_controller'] = {
		label = 'RGB Neon Controller',
		weight = 1000,
		stack = true,
	},
	['headlights'] = {
		label = 'Xenon Headlight Kit',
		weight = 1000,
		stack = true,
	},
	['tint_supplies'] = {
		label = 'Vehicle Tint Kit',
		weight = 1500,
		stack = true,
	},
-----------------Repair Items
	['newoil'] = {
		label = 'Oil Change',
		weight = 500,
		stack = true,
	},
	['sparkplugs'] = {
		label = 'Pre-Gapped Spark Plugs',
		weight = 500,
		stack = true,
	},
	['carbattery'] = {
		label = 'New Battery',
		weight = 1000,
		stack = true,
	},
	['axleparts'] = {
		label = 'New Axles',
		weight = 1500,
		stack = true,
	},
	['sparetire'] = {
		label = 'New Tire',
		weight = 1000,
		stack = true,
	},
-----------------Cosmetic Items
	['hood'] = {
		label = 'Hood Cosmetic',
		weight = 1500,
		stack = true,
	},
	['roof'] = {
		label = 'Roof Cosmetic',
		weight = 1500,
		stack = true,
	},
	['spoiler'] = {
		label = 'Spoiler Cosmetic',
		weight = 1500,
		stack = true,
	},
	['bumper'] = {
		label = 'Bumper Cosmetic',
		weight = 1500,
		stack = true,
	},
	['skirts'] = {
		label = 'Sideskirts Cosmetic',
		weight = 1500,
		stack = true,
	},
	['exhaust'] = {
		label = 'Exhaust Cosmetic',
		weight = 1500,
		stack = true,
	},
	['seats'] = {
		label = 'Seat Cosmetic',
		weight = 1500,
		stack = true,
	},
	['rollcage'] = {
		label = 'Rollcage Cosmetic',
		weight = 1500,
		stack = true,
	},
	['rims'] = {
		label = 'Wheels Cosmetic',
		weight = 5000,
		stack = true,
	},
	['livery'] = {
		label = 'Livery Roll',
		weight = 1500,
		stack = true,
	},
	['paintcan'] = {
		label = 'Spray Can',
		weight = 1500,
		stack = true,
	},
	['tires'] = {
		label = 'Tirewall Cosmetic',
		weight = 1500,
		stack = true,
	},
	['horn'] = {
		label = 'Horn Upgrade',
		weight = 1500,
		stack = true,
	},
	['internals'] = {
		label = 'Internals Cosmetics',
		weight = 1500,
		stack = true,
	},
	['externals'] = {
		label = 'External Cosmetics',
		weight = 1500,
		stack = true,
	},
-----------------Performance Items
	['turbo'] = {
		label = 'Turbo Kit',
		weight = 2500,
		stack = true,
	},
	['car_armor'] = {
		label = 'Vehicle Protection Kit',
		weight = 2500,
		stack = true,
	},
	['engine1'] = {
		label = 'Stage 1 Engine Tune',
		weight = 1000,
		stack = true,
	},
	['engine2'] = {
		label = 'Stage 2 Engine Tune',
		weight = 1000,
		stack = true,
	},
	['engine3'] = {
		label = 'Stage 3 Engine Tune',
		weight = 1000,
		stack = true,
	},
	['engine4'] = {
		label = 'Stage 4 Engine Tune',
		weight = 1000,
		stack = true,
	},
	['engine5'] = {
		label = 'Stage 5 Engine Tune',
		weight = 1000,
		stack = true,
	},
	['transmission1'] = {
		label = 'Transmission Level 1',
		weight = 2000,
		stack = true,
	},
	['transmission2'] = {
		label = 'Transmission Level 2',
		weight = 2000,
		stack = true,
	},
	['transmission3'] = {
		label = 'Transmission Level 3',
		weight = 2000,
		stack = true,
	},
	['transmission4'] = {
		label = 'Transmission Level 4',
		weight = 2000,
		stack = true,
	},
	['brakes1'] = {
		label = 'Stage 1 Brake Kit',
		weight = 500,
		stack = true,
	},
	['brakes2'] = {
		label = 'Stage 2 Brake Kit',
		weight = 1000,
		stack = true,
	},
	['brakes3'] = {
		label = 'Big Brake Kit',
		weight = 2000,
		stack = true,
	},
	['suspension1'] = {
		label = 'Spring Kit',
		weight = 500,
		stack = true,
	},
	['suspension2'] = {
		label = 'Spring & Shock Kit',
		weight = 1000,
		stack = true,
	},
	['suspension3'] = {
		label = 'Coilover Kit',
		weight = 1000,
		stack = true,
	},
	['suspension4'] = {
		label = 'Racing Coilovers',
		weight = 1000,
		stack = true,
	},
	['suspension5'] = {
		label = 'Suspension Overhaul Kit',
		weight = 2000,
		stack = true,
	},
-----------------Money Items
	['money'] = {
		label = 'Money',
		weight = 0,
	},

	['black_money'] = {
		label = 'Dirty Money',
		weight = 0,
	},
	['markedbills'] = {
		label = 'Marked Bills',
		weight = 1000,
	},
	['payticket'] = {
		label = 'Receipt',
		weight = 0,
	},
-----------------Drugs
	["meth"] = {
		label = "Meth",
		weight = 100,
		stack = true,
		close = true,
		description = "A baggie of Meth",
		client = {
			image = "meth_baggy.png",
		}
	},
	['acetone'] = {
		label = 'Acetone',
		weight = 200,
		stack = true,
		close = false,
		description = "It is a colourless, highly volatile and flammable liquid with a characteristic pungent odour."
	},
	['lithium'] = {
		label = 'Lithium',
		weight = 100,
		stack = true,
		close = false,
		description = "Lithium, something you can make Meth with!"
	},
	['methlab'] = {
		label = 'Portable Methlab',
		weight = 5000,
		stack = true,
		close = false,
		description = "A portable Meth Lab. Marked for Police Seizure",
		client = {
			image = "lab.png",
		}
	},
	['weedplant_seedm'] = {
		label = 'Male Weed Seed',
		weight = 0,
		stack = true,
		close = false,
		description = "Male Weed Seed",
		client = {
			image = "weedplant_seed.png",
		}
	},
	['weedplant_seedf'] = {
		label = 'Female Weed Seed',
		weight = 0,
		stack = true,
		close = false,
		description = "Female Weed Seed",
		client = {
			image = "weedplant_seed.png",
		}
	},
	['weedplant_branch'] = {
		label = 'Weed Branch',
		weight = 10000,
		stack = true,
		close = false,
		description = "Weed Plant",
		client = {
			image = "weedplant_branch.png",
		}
	},
	['weedplant_weed'] = {
		label = 'Dried Weed',
		weight = 100,
		stack = true,
		close = false,
		description = "Weed ready for packaging",
		client = {
			image = "weedplant_weed.png",
		}
	},
	['weedplant_packedweed'] = {
		label = 'Packed Branch',
		weight = 100,
		stack = true,
		close = false,
		description = "Weed ready for sale",
		client = {
			image = "weedplant_weed.png",
		}
	},
	['weedplant_package'] = {
		label = 'Suspicious Package',
		weight = 10000,
		stack = true,
		close = false,
		description = "Suspicious package marked with a leaf",
		client = {
			image = "weedplant_package.png",
		}
	},
	['plant_tub'] = {
		label = 'Plant Tub',
		weight = 1000,
		stack = true,
		close = false,
		description = "Pot for planting plants",
		client = {
			image = "plant_tub.png",
		}
	},
	['empty_watering_can'] = {
		label = 'Empty Watering Can',
		weight = 500,
		stack = true,
		close = false,
		description = "Empty watering can",
		client = {
			image = "watering_can.png",
		}
	},
	['full_watering_can'] = {
		label = 'Full Watering Can',
		weight = 1000,
		stack = true,
		close = false,
		description = "Watering can filled with water for watering plants",
		client = {
			image = "watering_can.png",
		}
	},
	['keya'] = {
		label = 'Lab Key A',
		weight = 0,
		stack = true,
		close = false,
		description = "Weed Branch",
		client = {
			image = "Lab Key A. Marked for police seizure",
		}
	},
	
-----------------Ingredients
	['mustard'] = {
		label = 'Mustard',
		weight = 500,
		client = {
			status = { hunger = 25000, thirst = 25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_food_mustard`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
			usetime = 2500,
			notification = 'You.. drank mustard'
		}
	},
-----------------Armor and Healing Items
	['lightarmor'] = {
        label = 'Light Armour',
        weight = 2000,
        stack = true,
        close = true,
        client = {
            anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
            usetime = 3500
        }    
    },
    ['heavyarmor'] = {
        label = 'Heavy Armour',
        weight = 5000,
        stack = false,
        close = true,
        client = {
            anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
            usetime = 3500
        }
    },
    ['armour'] = {
        label = 'Body Armour',
        weight = 3000,
        stack = false,
        close = true,
        client = {
            anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
            usetime = 3500
        }    
    },
	['bandage'] = {
		label = 'Bandage',
		weight = 115,
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
		}
	},
	['medikit'] = {
		label = 'Medical Kit',
		weight = 115,
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
		}
	},
	['ifaks'] = {
		label = 'Ifaks',
		weight = 115,
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
		}
	},
-----------------Fence Items
	['goldchain'] = {
		label = 'Gold Chain',
		weight = 115,
	},
	['rolex'] = {
		label = 'Rolex',
		weight = 115,
	},
	['10kgoldchain'] = {
		label = '10K Gold Chain',
		weight = 115,
	},
	['samsungphone'] = {
		label = 'Samsoong Smartphone',
		weight = 300,
	},
	['iphone'] = {
		label = 'iFruit Smartphone',
		weight = 300,
	},
	['cryptostick'] = {
		label = 'Crypto Stick',
		weight = 0,
	},
	['diamond_ring'] = {
		label = 'Diamond Ring',
		weight = 115,
	},
	['lighter'] = {
		label = 'Lighter',
		weight = 115,
	},
	['diamond'] = {
		label = 'Diamond',
		weight = 115,
	},
	['goldbar'] = {
		label = 'Gold Bar',
		weight = 1000,
	},
	['laptop'] = {
		label = 'Laptop',
		weight = 2000,
	},
	['television'] = {
		label = 'Television',
		weight = 5000,
	},
	['microwave'] = {
		label = 'Microwave',
		weight = 2000,
	},
-----------------Heist Items
	['lab-usb'] = {
		label = 'USB Research',
		weight = 250,
	},
	['lab-files'] = {
		label = 'Research Files',
		weight = 500,
	},
	['lab-samples'] = {
		label = 'Research Samples',
		weight = 1500,
	},
	['thermite'] = {
		label = 'Thermite',
		weight = 1500,
	},
	
	['wood'] = {
		label = 'Wood',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},
-----------------Prison Items	
	['metal'] = {
		label = 'Metal',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},
	
	['rope'] = {
		label = 'Rope',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},
	
	['shovel'] = {
		label = 'Shovel',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

-----------------Vehicle Items
	['repairkit'] = {
		label = 'Vehicle Repair Kit',
		weight = 2000,
	},
	['advancedrepairkit'] = {
		label = 'Advanced Repair Kit',
		weight = 3000,
	},
	['cleaningkit'] = {
		label = 'Car Scrubby',
		weight = 500,
	},
	['harness'] = {
		label = 'Vehicle Harness',
		weight = 2500,
	},
	['driftkit'] = {
		label = 'Vehicle Angle Kit',
		weight = 5000,
	},
	
	["nitrous"] = {
        label = "Nitrous Oxide",
        weight = 35000,
        stack = false,
        degrade = 28800,
        close = true,
        description = "",
        client = {
            image = "nitrous.png",
            export = 'brazzers-nitrous.nitrous',
        }
    },
	["nos"] = {
        label = "Nitrous",
        weight = 20000,
        stack = false,
        degrade = 28800,
        close = true,
        description = "Nitrous Oxide Install System",
    },
	["noscan"] = {
        label = "Empty NOS Bottle",
        weight = 5000,
        stack = false,
        degrade = 28800,
        close = true,
        description = "",
    },
	["noscolour"] = {
        label = "NOS Dye",
        weight = 5000,
        stack = false,
        degrade = 28800,
        close = true,
        description = "Dye for NOS to change the color",
    },
-----------------Random Items
	['parachute'] = {
		label = 'Parachute',
		weight = 8000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		}
	},
	['stopsign'] = {
		label = 'Stop Sign',
		weight = 5000,
	},
	['walkingmansign'] = {
		label = 'Pedestrian Sign',
		weight = 5000,
	},
	['dontblockintersectionsign'] = {
		label = 'Intersection Sign',
		weight = 5000,
	},
	['uturnsign'] = {
		label = 'U-Turn Sign',
		weight = 5000,
	},
	['noparkingsign'] = {
		label = 'No Parking Sign',
		weight = 5000,
	},
	['leftturnsign'] = {
		label = 'Left Turn Sign',
		weight = 5000,
	},
	['rightturnsign'] = {
		label = 'Right Turn Sign',
		weight = 5000,
	},
	['notrespassingsign'] = {
		label = 'No Trespassing Sign',
		weight = 5000,
	},
	['yieldsign'] = {
		label = 'Yield Sign',
		weight = 5000,
	},
	['garbage'] = {
		label = 'Garbage',
	},

	['paperbag'] = {
		label = 'Paper Bag',
		weight = 1,
		stack = false,
		close = false,
		consume = 0
	},

	['panties'] = {
		label = 'Knickers',
		weight = 10,
		consume = 0,
		client = {
			status = { thirst = -100000, stress = -25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_cs_panties_02`, pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
			usetime = 2500,
		}
	},

	['clothing'] = {
		label = 'Clothing',
		consume = 0,
	},
	['scrapmetal'] = {
		label = 'Scrap Metal',
		weight = 80,
	},

	["jar_river_water"] = {
		label = "River Water",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "jar_river_water.png",
		}
	},

	["hot_wings"] = {
		label = "Hot Wings",
		weight = 200,
		stack = true,
		close = true,
		description = "Hotwings",
		client = {
			status = {
				hunger = 20,
			},
			image = "hot_wings.png",
		}
	},

	["coke_small_brick"] = {
		label = "Coke Package",
		weight = 350,
		stack = false,
		close = true,
		description = "Small package of cocaine, mostly used for deals and takes a lot of space",
		client = {
			image = "coke_small_brick.png",
		}
	},

	["bacon_pieces"] = {
		label = "Bacon Pieces",
		weight = 200,
		stack = true,
		close = true,
		description = "Bacon pieces",
		client = {
			image = "bacon_pieces.png",
		}
	},

	["empty_bottle"] = {
		label = "Empty Bottle",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "empty_bottle.png",
		}
	},

	["scrambled_egg"] = {
		label = "Scrambled Eggs",
		weight = 200,
		stack = true,
		close = true,
		description = "Scrabled Eggs",
		client = {
			status = {
				hunger = 27,
			},
			image = "scrambled_egg.png",
		}
	},

	["ww2relic"] = {
		label = "WWII Relic",
		weight = 1000,
		stack = true,
		close = false,
		description = "looks really old might be worth money",
		client = {
			image = "ww2relic.png",
		}
	},

	["coke_brick"] = {
		label = "Coke Brick",
		weight = 1000,
		stack = false,
		close = true,
		description = "Heavy package of cocaine, mostly used for deals and takes a lot of space",
		client = {
			image = "coke_brick.png",
		}
	},

	["diving_fill"] = {
		label = "Diving Tube",
		weight = 3000,
		stack = false,
		close = true,
		client = {
			image = "diving_tube.png",
		}
	},

	["uwucupcake"] = {
		label = "uWu Cupcake",
		weight = 100,
		stack = true,
		close = true,
		description = "Sugar Kitty Cupcake!",
		client = {
			status = {
				hunger = 24,
			},
			image = "uwucupcake.png",
		}
	},

	["brownie4"] = {
		label = "Lemon Brownie",
		weight = 200,
		stack = true,
		close = true,
		description = "Brownie.",
		client = {
			status = {
				hunger = 25,
			},
			image = "brownie4.png",
		}
	},

	["el-mango"] = {
		label = "El Mango",
		weight = 100,
		stack = true,
		close = true,
		description = "Foxstar Energy",
		client = {
			image = "el-mango.png",
		}
	},

	["glass"] = {
		label = "Glass",
		weight = 100,
		stack = true,
		close = false,
		description = "It is very fragile, watch out",
		client = {
			image = "glass.png",
		}
	},

	["brownie6"] = {
		label = "Brownie",
		weight = 200,
		stack = true,
		close = true,
		description = "Brownie.",
		client = {
			status = {
				hunger = 26,
			},
			image = "brownie6.png",
		}
	},

	["veggie"] = {
		label = "Veggies",
		weight = 200,
		stack = true,
		close = true,
		description = "Veggies",
		client = {
			image = "veggie.png",
		}
	},

	["b52"] = {
		label = "b52",
		weight = 100,
		stack = true,
		close = true,
		description = "yummy stiff drink",
		client = {
			image = "b52.png",
		}
	},

	["antiquecoin"] = {
		label = "Antique Coin",
		weight = 100,
		stack = true,
		close = false,
		description = "Older coin might be worth bring it to pawnshop",
		client = {
			image = "antiquecoin.png",
		}
	},

	["watermelon-punch"] = {
		label = "Watermelon Punch",
		weight = 100,
		stack = true,
		close = true,
		description = "Foxstar Energy",
		client = {
			image = "watermelon-punch.png",
		}
	},

	["sirloin_burger"] = {
		label = "Sirloin Burger",
		weight = 200,
		stack = true,
		close = true,
		description = "Sirloin Burger",
		client = {
			status = {
				hunger = 24,
			},
			image = "sirloin_burger.png",
		}
	},

	["shotnuggets"] = {
		label = "Shot Nuggets",
		weight = 100,
		stack = true,
		close = true,
		description = "Burgershot Nuggets",
		client = {
			status = {
				hunger = 29,
			},
			image = "burger-shotnuggets.png",
		}
	},

	["usb2"] = {
		label = "Red USB",
		weight = 100,
		stack = true,
		close = true,
		description = "The Blank USB has downloaded a particular encryption marking it red.",
		client = {
			image = "usbred.png",
		}
	},

	["trojan_usb"] = {
		label = "Trojan USB",
		weight = 0,
		stack = true,
		close = true,
		description = "Handy software to shut down some systems",
		client = {
			image = "usb_device.png",
		}
	},

	["mw-usb"] = {
		label = "Top Secret Data",
		weight = 500,
		stack = true,
		close = true,
		description = "Unencrypted USB containing various pictures and statements of high ranking officials",
		client = {
			image = "mw-usb.png",
		}
	},

	["whiskey"] = {
		label = "Whiskey",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "whiskey.png",
		}
	},

	["sour-bubble"] = {
		label = "Sour Bubble",
		weight = 100,
		stack = true,
		close = true,
		description = "Foxstar Energy",
		client = {
			image = "sour-bubble.png",
		}
	},

	["security_card_02"] = {
		label = "Security Card B",
		weight = 0,
		stack = true,
		close = true,
		description = "A security card... I wonder what it goes to",
		client = {
			image = "security_card_02.png",
		}
	},

	["fries"] = {
		label = "Fries",
		weight = 200,
		stack = true,
		close = true,
		description = "Fries",
		client = {
			image = "fries.png",
		}
	},

	["original"] = {
		label = "Original",
		weight = 100,
		stack = true,
		close = true,
		description = "Foxstar Energy",
		client = {
			image = "original.png",
		}
	},

	["xtcbaggy"] = {
		label = "Bag of XTC",
		weight = 0,
		stack = true,
		close = true,
		description = "Pop those pills baby",
		client = {
			image = "xtc_baggy.png",
		}
	},

	["brownie7"] = {
		label = "Brownie",
		weight = 200,
		stack = true,
		close = true,
		description = "Brownie.",
		client = {
			status = {
				hunger = 27,
			},
			image = "brownie7.png",
		}
	},

	["chicken_strips_raw"] = {
		label = "Chicken Strips Raw",
		weight = 200,
		stack = true,
		close = true,
		description = "Chicken Strips Raw",
		client = {
			image = "chicken_strips_raw.png",
		}
	},

	["bacon_cheese_fries"] = {
		label = "Bacon Cheese Fries",
		weight = 200,
		stack = true,
		close = true,
		description = "Bacon Cheese Fries",
		client = {
			status = {
				hunger = 23,
			},
			image = "bacon_cheese_fries.png",
		}
	},

	["yukka_glass"] = {
		label = "Yukka Juice",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "yukka_glass.png",
		}
	},
	["aluminiumcan"] = {
		label = "Aluminium Can",
		weight = 100,
		stack = true,
		close = false,
		description = "Aluminium Can",
		client = {
			image = "aluminiumcan.png",
		}
	},

	["weed_amnesia"] = {
		label = "Amnesia 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g Amnesia",
		client = {
			image = "weed_baggy.png",
		}
	},

	["weed_brick"] = {
		label = "Weed Brick",
		weight = 1000,
		stack = true,
		close = true,
		description = "1KG Weed Brick to sell to large customers.",
		client = {
			image = "weed_brick.png",
		}
	},

	["weed_ak47"] = {
		label = "AK47 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g AK47",
		client = {
			image = "weed_baggy.png",
		}
	},

	["tropical-punch"] = {
		label = "Tropical Punch",
		weight = 100,
		stack = true,
		close = true,
		description = "Foxstar Energy",
		client = {
			image = "tropical-punch.png",
		}
	},

	["chickenwrap"] = {
		label = "Chicken Wrap",
		weight = 100,
		stack = true,
		close = true,
		description = "BurgerShot Chicken Wrap",
		client = {
			status = {
				hunger = 20,
			},
			image = "burger-goatwrap.png",
		}
	},

	["pinger"] = {
		label = "Pinger",
		weight = 1000,
		stack = true,
		close = true,
		description = "With a pinger and your phone you can send out your location",
		client = {
			image = "pinger.png",
		}
	},

	["grandpa_flask"] = {
		label = "Flask",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "grandpa_flask.png",
		}
	},

	["uwu_matchatea"] = {
		label = "Matchatea",
		weight = 100,
		stack = true,
		close = true,
		description = "Matcha Tea",
		client = {
			image = "uwumatchatea.png",
		}
	},

	["iron"] = {
		label = "Iron",
		weight = 100,
		stack = true,
		close = false,
		description = "Handy piece of metal that you can probably use for something",
		client = {
			image = "iron.png",
		}
	},

	["weed_purple-haze"] = {
		label = "Purple Haze 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g Purple Haze",
		client = {
			image = "weed_baggy.png",
		}
	},

	["weed_skunk_seed"] = {
		label = "Skunk Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of Skunk",
		client = {
			image = "weed_seed.png",
		}
	},

	["aincientcoin"] = {
		label = "Aincient Coin",
		weight = 1,
		stack = true,
		close = false,
		description = "A really old coin",
		client = {
			image = "aincientcoin.png",
		}
	},

	["uwu_bubbleteablueberry"] = {
		label = "Berry Blue B-T",
		weight = 100,
		stack = true,
		close = true,
		description = "Lavender Tea with Blueberry Boba.",
		client = {
			image = "uwububbleteablueberry.png",
		}
	},

	["wraps"] = {
		label = "Wraps",
		weight = 200,
		stack = true,
		close = true,
		description = "Wraps",
		client = {
			image = "wraps.png",
		}
	},

	["usb4"] = {
		label = "Green USB",
		weight = 100,
		stack = true,
		close = true,
		description = "The Blank USB has downloaded a particular encryption marking it green.",
		client = {
			image = "usbgreen.png",
		}
	},

	["usb3"] = {
		label = "Pink USB",
		weight = 100,
		stack = true,
		close = true,
		description = "The Blank USB has downloaded a particular encryption marking it pink.",
		client = {
			image = "usbpink.png",
		}
	},

	["brokendetector"] = {
		label = "Broken Detector",
		weight = 100,
		stack = true,
		close = false,
		description = "Might be worth bring it to pawnshop",
		client = {
			image = "brokendetector.png",
		}
	},

	["gatecrack"] = {
		label = "Gatecrack",
		weight = 0,
		stack = true,
		close = true,
		description = "Handy software to tear down some fences",
		client = {
			image = "usb_device.png",
		}
	},

	["casino_redchip"] = {
		label = "Red Chip",
		weight = 100,
		stack = true,
		close = false,
		description = "Red Chip For casino",
		client = {
			image = "casino_redchip.png",
		}
	},

	["kurkakola"] = {
		label = "Cola",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "cola.png",
		}
	},

	["chips2"] = {
		label = "Chips Stack",
		weight = 100,
		stack = true,
		close = false,
		description = "Stack Of Chips",
		client = {
			image = "chips2.png",
		}
	},

	["ironoxide"] = {
		label = "Iron Powder",
		weight = 100,
		stack = true,
		close = false,
		description = "Some powder to mix with.",
		client = {
			image = "ironoxide.png",
		}
	},

	["jerry_can"] = {
		label = "Jerrycan 20L",
		weight = 20000,
		stack = true,
		close = true,
		description = "A can full of Fuel",
		client = {
			image = "jerry_can.png",
		}
	},

	["steel"] = {
		label = "Steel",
		weight = 100,
		stack = true,
		close = false,
		description = "Nice piece of metal that you can probably use for something",
		client = {
			image = "steel.png",
		}
	},

	["watercup"] = {
		label = "watercup",
		weight = 100,
		stack = true,
		close = true,
		description = "yummy",
		client = {
			image = "watercup.png",
		}
	},

	["copper"] = {
		label = "Copper",
		weight = 100,
		stack = true,
		close = false,
		description = "Nice piece of metal that you can probably use for something",
		client = {
			image = "copper.png",
		}
	},

	["grape"] = {
		label = "Grape",
		weight = 100,
		stack = true,
		close = false,
		description = "Mmmmh yummie, grapes",
		client = {
			image = "grape.png",
		}
	},

	["uwumisosoup"] = {
		label = "uWu Miso Soup",
		weight = 100,
		stack = true,
		close = true,
		description = "Fungus never tasted so good!",
		client = {
			status = {
				hunger = 29,
			},
			image = "uwumisosoup.png",
		}
	},

	["burger_bun"] = {
		label = "Burger Bun",
		weight = 200,
		stack = true,
		close = true,
		description = "Burger bun",
		client = {
			image = "burger_bun.png",
		}
	},

	["antipatharia_coral"] = {
		label = "Antipatharia",
		weight = 1000,
		stack = true,
		close = true,
		description = "Its also known as black corals or thorn corals",
		client = {
			image = "antipatharia_coral.png",
		}
	},

	["brownie3"] = {
		label = "Toffee Brownie",
		weight = 200,
		stack = true,
		close = true,
		description = "Brownie.",
		client = {
			status = {
				hunger = 20,
			},
			image = "brownie3.png",
		}
	},

	["tropical-guava"] = {
		label = "Tropical Guava",
		weight = 100,
		stack = true,
		close = true,
		description = "Foxstar Energy",
		client = {
			image = "tropical-guava.png",
		}
	},

	["burriedtreasure"] = {
		label = "Burried Treasure",
		weight = 1000,
		stack = true,
		close = false,
		description = "Might be worth bring it to pawnshop",
		client = {
			image = "burriedtreasure.png",
		}
	},

	["oxy"] = {
		label = "Prescription Oxy",
		weight = 0,
		stack = true,
		close = true,
		description = "The Label Has Been Ripped Off",
		client = {
			image = "oxy.png",
		}
	},

	["bleeder"] = {
		label = "The Bleeder",
		weight = 100,
		stack = true,
		close = true,
		description = "The Bleeder",
		client = {
			status = {
				hunger = 24,
			},
			image = "burger-bleeder.png",
		}
	},

	["brussian"] = {
		label = "brussian",
		weight = 100,
		stack = true,
		close = true,
		description = "yummy stiff drink",
		client = {
			image = "brussian.png",
		}
	},

	["cheese_burger_fries"] = {
		label = "Cheeseburger Fries",
		weight = 200,
		stack = true,
		close = true,
		description = "Cheeseburger Fries",
		client = {
			status = {
				hunger = 23,
			},
			image = "cheese_burger_fries.png",
		}
	},

	["amarone"] = {
		label = "Amarone",
		weight = 100,
		stack = true,
		close = true,
		description = "yummy stiff drink",
		client = {
			image = "amarone.png",
		}
	},

	["printerdocument"] = {
		label = "Document",
		weight = 500,
		stack = false,
		close = true,
		description = "A nice document",
		client = {
			image = "printerdocument.png",
		}
	},

	["ambeer"] = {
		label = "Ambeer",
		weight = 100,
		stack = true,
		close = true,
		description = "yummy stiff drink",
		client = {
			image = "ambeer.png",
		}
	},

	["treasurekey"] = {
		label = "Treasure Key",
		weight = 100,
		stack = true,
		close = false,
		description = "looks like its starting to rust",
		client = {
			image = "treasurekey.png",
		}
	},

	["walkstick"] = {
		label = "Walking Stick",
		weight = 1000,
		stack = true,
		close = true,
		description = "Walking stick for ya'll grannies out there.. HAHA",
		client = {
			image = "walkstick.png",
		}
	},

	["barr-shandy"] = {
		label = "barr-shandy",
		weight = 100,
		stack = true,
		close = true,
		description = "Bark Soda",
		client = {
			image = "barr-shandy.png",
		}
	},

	["radioscanner"] = {
		label = "Radio Scanner",
		weight = 1000,
		stack = true,
		close = true,
		description = "With this you can get some police alerts. Not 100% effective however",
		client = {
			image = "radioscanner.png",
		}
	},

	["steelcan"] = {
		label = "Steel watering can",
		weight = 100,
		stack = true,
		close = false,
		description = "looks like its starting to rust",
		client = {
			image = "steelcan.png",
		}
	},

	["gold_cards"] = {
		label = "Golden Cards",
		weight = 100,
		stack = true,
		close = false,
		description = "Golden Cards",
		client = {
			image = "gold_cards.png",
		}
	},

	["pbj"] = {
		label = "Paw Butter and Jelly",
		weight = 200,
		stack = true,
		close = true,
		description = "Pawbutter and Jelly Sandwich",
		client = {
			status = {
				hunger = 22,
			},
			image = "pbj.png",
		}
	},

	["fitbit"] = {
		label = "Fitbit",
		weight = 500,
		stack = false,
		close = true,
		description = "I like fitbit",
		client = {
			image = "fitbit.png",
		}
	},

	["chips"] = {
		label = "Chips Stack",
		weight = 100,
		stack = true,
		close = false,
		description = "Stack Of Chips",
		client = {
			image = "chips.png",
		}
	},

	["grapejuice"] = {
		label = "Grape Juice",
		weight = 200,
		stack = true,
		close = false,
		description = "Grape juice is said to be healthy",
		client = {
			image = "grapejuice.png",
		}
	},

	["uwubentobox"] = {
		label = "uWu Bento Box",
		weight = 100,
		stack = true,
		close = true,
		description = "An uWu Selection with a surprise!",
		client = {
			status = {
				hunger = 26,
			},
			image = "uwubentobox.png",
		}
	},

	["joint"] = {
		label = "Joint",
		weight = 0,
		stack = true,
		close = true,
		description = "Sidney would be very proud at you",
		client = {
			image = "joint.png",
		}
	},

	["barr-bubblegum"] = {
		label = "barr-bubblegum",
		weight = 100,
		stack = true,
		close = true,
		description = "Bark Soda",
		client = {
			image = "barr-bubblegum.png",
		}
	},

	["vodka"] = {
		label = "Vodka",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "vodka.png",
		}
	},

	["casino_goldchip"] = {
		label = "Gold Chip",
		weight = 100,
		stack = true,
		close = false,
		description = "Gold Chip For casino",
		client = {
			image = "casino_goldchip.png",
		}
	},

	["cappucc"] = {
		label = "Cappucc",
		weight = 100,
		stack = true,
		close = true,
		description = "yummy stiff drink",
		client = {
			image = "cappucc.png",
		}
	},

	["pickaxe"] = {
		label = "Pickaxe",
		weight = 100,
		stack = true,
		close = false,
		description = "cheap pickaxe",
		client = {
			image = "goldcoin.png",
		}
	},

	["icream-soda"] = {
		label = "icream-soda",
		weight = 100,
		stack = true,
		close = true,
		description = "Bark Soda",
		client = {
			image = "icream-soda.png",
		}
	},

	["jar_coffee"] = {
		label = "Coffee Jar",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "jar_coffee.png",
		}
	},

	["grandpa_whiskey"] = {
		label = "Whiskey",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "grandpa_whiskey.png",
		}
	},

	["diving_gear"] = {
		label = "Diving Gear",
		weight = 30000,
		stack = false,
		close = true,
		description = "An oxygen tank and a rebreather",
		client = {
			image = "diving_gear.png",
		}
	},

	["blue_white_bottle"] = {
		label = "Blue and White bottle",
		weight = 100,
		stack = true,
		close = true,
		description = "yummy stiff drink",
		client = {
			image = "blue_and_white_bottle.png",
		}
	},

	["uwupancake"] = {
		label = "uWu Savory Pancake",
		weight = 100,
		stack = true,
		close = true,
		description = "Korean savory pancake made with scallions.",
		client = {
			status = {
				hunger = 28,
			},
			image = "uwupancake.png",
		}
	},

	["water_bottle"] = {
		label = "Bottle of Water",
		weight = 500,
		stack = true,
		close = true,
		description = "For all the thirsty out there",
		client = {
			image = "water_bottle.png",
		}
	},

	["firework1"] = {
		label = "2Brothers",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks",
		client = {
			image = "firework1.png",
		}
	},

	["tablet"] = {
		label = "Tablet",
		weight = 2000,
		stack = true,
		close = true,
		description = "Expensive tablet",
		client = {
			image = "tablet.png",
		}
	},

	["weed_purple-haze_seed"] = {
		label = "Purple Haze Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of Purple Haze",
		client = {
			image = "weed_seed.png",
		}
	},

	["brokenphone"] = {
		label = "Broken Phone",
		weight = 100,
		stack = true,
		close = false,
		description = "Might be worth bring it to pawnshop",
		client = {
			image = "brokenphone.png",
		}
	},

	["lawyerpass"] = {
		label = "Lawyer Pass",
		weight = 0,
		stack = false,
		close = false,
		description = "Pass exclusive to lawyers to show they can represent a suspect",
		client = {
			image = "lawyerpass.png",
		}
	},

	["weed_nutrition"] = {
		label = "Plant Fertilizer",
		weight = 2000,
		stack = true,
		close = true,
		description = "Plant nutrition",
		client = {
			image = "weed_nutrition.png",
		}
	},

	["french_toast_bacon"] = {
		label = "French Toast Bacon",
		weight = 200,
		stack = true,
		close = true,
		description = "French Toast Bacon",
		client = {
			status = {
				hunger = 23,
			},
			image = "french_toast_bacon.png",
		}
	},

	["eggs"] = {
		label = "Eggs",
		weight = 200,
		stack = true,
		close = true,
		description = "Eggs",
		client = {
			image = "eggs.png",
		}
	},

	["metalscrap"] = {
		label = "Metal Scrap",
		weight = 100,
		stack = true,
		close = false,
		description = "You can probably make something nice out of this",
		client = {
			image = "metalscrap.png",
		}
	},

	["usb1"] = {
		label = "Blue USB",
		weight = 100,
		stack = true,
		close = true,
		description = "The Blank USB has downloaded a particular encryption marking it blue.",
		client = {
			image = "usbblue.png",
		}
	},

	["plastic"] = {
		label = "Plastic",
		weight = 100,
		stack = true,
		close = false,
		description = "Crumpled Plastic for recycle",
		client = {
			image = "plastic.png",
		}
	},

	["bread"] = {
		label = "Bread",
		weight = 200,
		stack = true,
		close = true,
		description = "Bread",
		client = {
			image = "bread.png",
		}
	},

	["empty_weed_bag"] = {
		label = "Empty Weed Bag",
		weight = 0,
		stack = true,
		close = true,
		description = "A small empty bag",
		client = {
			image = "weed_baggy_empty.png",
		}
	},

	["weed_amnesia_seed"] = {
		label = "Amnesia Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of Amnesia",
		client = {
			image = "weed_seed.png",
		}
	},

	["heartstopper"] = {
		label = "HeartStopper",
		weight = 100,
		stack = true,
		close = true,
		description = "Heartstopper",
		client = {
			status = {
				hunger = 21,
			},
			image = "burger-heartstopper.png",
		}
	},

	["uwuchocsandy"] = {
		label = "uWu C-Icecream Sandy",
		weight = 100,
		stack = true,
		close = true,
		description = "Sweet Chocolate Biscuit filled with Icecreamy!",
		client = {
			status = {
				hunger = 29,
			},
			image = "uwuchocsandy.png",
		}
	},

	["sirloin_steak"] = {
		label = "Sirloin steak",
		weight = 200,
		stack = true,
		close = true,
		description = "Sirloin steak",
		client = {
			image = "sirloin_steak.png",
		}
	},

	["shotrings"] = {
		label = "Ring Shots",
		weight = 100,
		stack = true,
		close = true,
		description = "Burgershot Onion Rings",
		client = {
			status = {
				hunger = 20,
			},
			image = "burger-shotrings.png",
		}
	},

	["casino_bluechip"] = {
		label = "Blue Chip",
		weight = 100,
		stack = true,
		close = false,
		description = "Blue Chip For casino",
		client = {
			image = "casino_bluechip.png",
		}
	},

	["cokebaggy"] = {
		label = "Bag of Coke",
		weight = 0,
		stack = true,
		close = true,
		description = "To get happy real quick",
		client = {
			image = "cocaine_baggy.png",
		}
	},

	["wine"] = {
		label = "Wine",
		weight = 300,
		stack = true,
		close = false,
		description = "Some good wine to drink on a fine evening",
		client = {
			image = "wine.png",
		}
	},

	["grilled_cheese_fries"] = {
		label = "Grilled Cheese Fries",
		weight = 200,
		stack = true,
		close = true,
		description = "Grilled Cheese Fries",
		client = {
			status = {
				hunger = 29,
			},
			image = "grilled_cheese_fries.png",
		}
	},

	["dendrogyra_coral"] = {
		label = "Dendrogyra",
		weight = 1000,
		stack = true,
		close = true,
		description = "Its also known as pillar coral",
		client = {
			image = "dendrogyra_coral.png",
		}
	},

	["uwu_bubbletearose"] = {
		label = "Rosey B-T",
		weight = 100,
		stack = true,
		close = true,
		description = "Sakura Rose Tea with Vanilla Boba.",
		client = {
			image = "uwububbletearose.png",
		}
	},

	["irn-bru"] = {
		label = "irn-bru",
		weight = 100,
		stack = true,
		close = true,
		description = "Bark Soda",
		client = {
			image = "irn-bru.png",
		}
	},

	["chicken_caesar_wrap"] = {
		label = "Chicken Caesar Warp",
		weight = 200,
		stack = true,
		close = true,
		description = "Chicken Caesar Wrap",
		client = {
			status = {
				hunger = 27,
			},
			image = "chicken_caesar_wrap.png",
		}
	},

	["brownie2"] = {
		label = "Mint Brownie",
		weight = 200,
		stack = true,
		close = true,
		description = "Brownie.",
		client = {
			status = {
				hunger = 26,
			},
			image = "brownie2.png",
		}
	},

	["meatfree"] = {
		label = "Meat Free",
		weight = 100,
		stack = true,
		close = true,
		description = "Meat Free",
		client = {
			status = {
				hunger = 28,
			},
			image = "burger-meatfree.png",
		}
	},

	["hemp-prickly"] = {
		label = "HempPrickly",
		weight = 100,
		stack = true,
		close = true,
		description = "Foxstar Energy",
		client = {
			image = "hemp-prickly.png",
		}
	},

	["casino_whitechip"] = {
		label = "White Chip",
		weight = 100,
		stack = true,
		close = false,
		description = "White Chip For casino",
		client = {
			image = "casino_whitechip.png",
		}
	},

	["mega_crush"] = {
		label = "Mega Crush",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "mega_crush.png",
		}
	},

	["blueberry-pom"] = {
		label = "Blueberry Pom",
		weight = 100,
		stack = true,
		close = true,
		description = "Foxstar Energy",
		client = {
			image = "blueberry-pom.png",
		}
	},

	["binoculars"] = {
		label = "Binoculars",
		weight = 600,
		stack = true,
		close = true,
		description = "Sneaky Breaky...",
		client = {
			image = "binoculars.png",
		}
	},

	["weed_white-widow"] = {
		label = "White Widow 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g White Widow",
		client = {
			image = "weed_baggy.png",
		}
	},

	["barbera"] = {
		label = "barbera",
		weight = 100,
		stack = true,
		close = true,
		description = "yummy stiff drink",
		client = {
			image = "barbera.png",
		}
	},

	["torpedo"] = {
		label = "Torpedo",
		weight = 100,
		stack = true,
		close = true,
		description = "BurgerShot Torpedo",
		client = {
			status = {
				hunger = 25,
			},
			image = "burger-torpedo.png",
		}
	},

	["weaponlicense"] = {
		label = "Weapon License",
		weight = 0,
		stack = false,
		close = true,
		description = "Weapon License",
		client = {
			image = "weapon_license.png",
		}
	},

	["uwu_misosoup"] = {
		label = "Misosoup",
		weight = 100,
		stack = true,
		close = true,
		description = "Matcha Soup",
		client = {
			image = "uwumisosoup.png",
		}
	},

	["jam"] = {
		label = "Jam",
		weight = 200,
		stack = true,
		close = true,
		description = "Jam",
		client = {
			image = "jam.png",
		}
	},

	["pocketwatch"] = {
		label = "pocketwatch",
		weight = 100,
		stack = true,
		close = false,
		description = "looks like the glass is chipped",
		client = {
			image = "pocketwatch.png",
		}
	},

	["amaretto"] = {
		label = "Amaretto",
		weight = 100,
		stack = true,
		close = true,
		description = "yummy stiff drink",
		client = {
			image = "amaretto.png",
		}
	},

	["weed_skunk"] = {
		label = "Skunk 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g Skunk",
		client = {
			image = "weed_baggy.png",
		}
	},

	["rimjob"] = {
		label = "Rim Job",
		weight = 100,
		stack = true,
		close = true,
		description = "BurgerShot Donut",
		client = {
			status = {
				hunger = 23,
			},
			image = "burger-rimjob.png",
		}
	},

	["brokengameboy"] = {
		label = "Broken Gameboy",
		weight = 100,
		stack = true,
		close = false,
		description = "Might be worth bring it to pawnshop",
		client = {
			image = "brokengameboy.png",
		}
	},

	["ccookie"] = {
		label = "C Cookie",
		weight = 100,
		stack = true,
		close = true,
		description = "yummy",
		client = {
			image = "ccookie.png",
		}
	},

	["uwusushi"] = {
		label = "uWu Sushi",
		weight = 100,
		stack = true,
		close = true,
		description = "Designed as a window to your soul.",
		client = {
			status = {
				hunger = 21,
			},
			image = "uwusushi.png",
		}
	},

	["grandpa_moonshine"] = {
		label = "Moonshine",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "grandpa_moonshine.png",
		}
	},


	["wrap"] = {
		label = "Wrap",
		weight = 200,
		stack = true,
		close = true,
		description = "Wrap",
		client = {
			image = "wrap.png",
		}
	},

	["crack_baggy"] = {
		label = "Bag of Crack",
		weight = 0,
		stack = true,
		close = true,
		description = "To get happy faster",
		client = {
			image = "crack_baggy.png",
		}
	},

	["greek_veggie_wrap"] = {
		label = "Greek Vehhiue Wrap",
		weight = 200,
		stack = true,
		close = true,
		description = "Greek Veggie Wrap",
		client = {
			status = {
				hunger = 20,
			},
			image = "greek_veggie_wrap.png",
		}
	},

	["cheesewrap"] = {
		label = "Cheese Wrap",
		weight = 100,
		stack = true,
		close = true,
		description = "BurgerShot Goat Cheese Wrap",
		client = {
			status = {
				hunger = 22,
			},
			image = "burger-chickenwrap.png",
		}
	},

	["weed_white-widow_seed"] = {
		label = "White Widow Seed",
		weight = 0,
		stack = true,
		close = false,
		description = "A weed seed of White Widow",
		client = {
			image = "weed_seed.png",
		}
	},

	["grandpa_gin"] = {
		label = "Gin",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "grandpa_gin.png",
		}
	},

	["labkey"] = {
		label = "Key",
		weight = 500,
		stack = false,
		close = true,
		description = "Key for a lock...?",
		client = {
			image = "labkey.png",
		}
	},

	["goldcoin"] = {
		label = "goldcoin",
		weight = 100,
		stack = true,
		close = false,
		description = "Might be worth bring it to pawnshop",
		client = {
			image = "goldcoin.png",
		}
	},

	["weed_og-kush_seed"] = {
		label = "OGKush Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of OG Kush",
		client = {
			image = "weed_seed.png",
		}
	},

	["salad"] = {
		label = "Salad",
		weight = 200,
		stack = true,
		close = true,
		description = "Salad",
		client = {
			image = "salad.png",
		}
	},

	["uwubudhabowl"] = {
		label = "uWu Budha Bowl",
		weight = 100,
		stack = true,
		close = true,
		description = "Bowl of nourishment and balance.",
		client = {
			status = {
				hunger = 23,
			},
			image = "uwubudhabowl.png",
		}
	},

	["firework4"] = {
		label = "Weeping Willow",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks",
		client = {
			image = "firework4.png",
		}
	},

	["moneybag"] = {
		label = "Money Bag",
		weight = 0,
		stack = false,
		close = true,
		description = "A bag with cash",
		client = {
			image = "moneybag.png",
		}
	},

	["brokenknife"] = {
		label = "Broken Knive",
		weight = 100,
		stack = true,
		close = false,
		description = "Might be worth bring it to pawnshop",
		client = {
			image = "brokenknife.png",
		}
	},

	["casinochips"] = {
		label = "Casino Chips",
		weight = 0,
		stack = true,
		close = false,
		description = "Chips For Casino Gambling",
		client = {
			image = "casinochips.png",
		}
	},

	["brownie5"] = {
		label = "Choc Brownie",
		weight = 200,
		stack = true,
		close = true,
		description = "Brownie.",
		client = {
			status = {
				hunger = 22,
			},
			image = "brownie5.png",
		}
	},

	["firework3"] = {
		label = "WipeOut",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks",
		client = {
			image = "firework3.png",
		}
	},

	["stickynote"] = {
		label = "Sticky note",
		weight = 0,
		stack = false,
		close = false,
		description = "Sometimes handy to remember something :)",
		client = {
			image = "stickynote.png",
		}
	},

	["police_stormram"] = {
		label = "Stormram",
		weight = 18000,
		stack = true,
		close = true,
		description = "A nice tool to break into doors",
		client = {
			image = "police_stormram.png",
		}
	},

	["jar_goldroot_tea"] = {
		label = "Gold Root Tea",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "jar_goldroot_tea.png",
		}
	},

	["uwuvanillasandy"] = {
		label = "uWu V-Icecream Sandy",
		weight = 100,
		stack = true,
		close = true,
		description = "Sweet Vanilla Biscuit filled with Icecreamy!",
		client = {
			status = {
				hunger = 26,
			},
			image = "uwuvanillasandy.png",
		}
	},

	["certificate"] = {
		label = "Certificate",
		weight = 0,
		stack = true,
		close = true,
		description = "Certificate that proves you own certain stuff",
		client = {
			image = "certificate.png",
		}
	},

	["fob_racing_basic"] = {
		label = "Basic Racing GPS",
		weight = 500,
		stack = false,
		close = true,
		description = "This basic GPS allows someone to join custom races.",
		client = {
			image = "fob_racing_basic.png",
		}
	},

	["brownie1"] = {
		label = "Brownie",
		weight = 200,
		stack = true,
		close = true,
		description = "Brownie.",
		client = {
			status = {
				hunger = 22,
			},
			image = "brownie1.png",
		}
	},

	["rubber"] = {
		label = "Rubber",
		weight = 100,
		stack = true,
		close = false,
		description = "Rubber, I believe you can make your own rubber ducky with it :D",
		client = {
			image = "rubber.png",
		}
	},

	["creampie"] = {
		label = "Creampie",
		weight = 100,
		stack = true,
		close = true,
		description = "BurgerShot Apple Pie",
		client = {
			status = {
				hunger = 29,
			},
			image = "creampie.png",
		}
	},

	["blankusb"] = {
		label = "Blank USB",
		weight = 100,
		stack = true,
		close = true,
		description = "Non-descript USB, wonder if there is anything on it?",
		client = {
			image = "blankusb.png",
		}
	},

	["rolling_paper"] = {
		label = "Rolling Paper",
		weight = 0,
		stack = true,
		close = true,
		description = "Paper made specifically for encasing and smoking tobacco or cannabis.",
		client = {
			image = "rolling_paper.png",
		}
	},

	["steak"] = {
		label = "Steak",
		weight = 200,
		stack = true,
		close = true,
		description = "Steak",
		client = {
			image = "steak.png",
		}
	},

	["fob_racing_master"] = {
		label = "Master Racing GPS",
		weight = 500,
		stack = false,
		close = true,
		description = "This master GPS allows someone to create custom races.",
		client = {
			image = "fob_racing_master.png",
		}
	},

	["aluminumoxide"] = {
		label = "Aluminium Powder",
		weight = 100,
		stack = true,
		close = false,
		description = "Some powder to mix with",
		client = {
			image = "aluminumoxide.png",
		}
	},

	["bs-milkshake"] = {
		label = "burgershot Milkshake",
		weight = 100,
		stack = true,
		close = true,
		description = "yummy milkshake",
		client = {
			image = "bs-milkshake.png",
		}
	},

	["chicken_stips"] = {
		label = "Chicken Strips",
		weight = 200,
		stack = true,
		close = true,
		description = "Chicken Strips",
		client = {
			status = {
				hunger = 29,
			},
			image = "chicken_stips.png",
		}
	},

	["jar_redtea"] = {
		label = "Red Tea",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "jar_redtea.png",
		}
	},

	["cranberry"] = {
		label = "Cranberry Juice",
		weight = 100,
		stack = true,
		close = true,
		description = "yummy",
		client = {
			image = "cranberry.png",
		}
	},

	["casino_blackchip"] = {
		label = "Black Chip",
		weight = 100,
		stack = true,
		close = false,
		description = "Black Chip For casino",
		client = {
			image = "casino_blackchip.png",
		}
	},

	["security_card_01"] = {
		label = "Security Card A",
		weight = 0,
		stack = true,
		close = true,
		description = "A security card... I wonder what it goes to",
		client = {
			image = "security_card_01.png",
		}
	},

	["mastercard"] = {
		label = "Master Card",
		weight = 0,
		stack = false,
		close = false,
		description = "MasterCard can be used via ATM",
		client = {
			image = "mastercard.png",
		}
	},

	["shotfries"] = {
		label = "Shot Fries",
		weight = 100,
		stack = true,
		close = true,
		description = "Shot Fries",
		client = {
			status = {
				hunger = 22,
			},
			image = "burger-fries.png",
		}
	},

	["spicy_chicken_wrap"] = {
		label = "Spicy Chicken Wrap",
		weight = 200,
		stack = true,
		close = true,
		description = "Spicy Chicken Wrap",
		client = {
			status = {
				hunger = 23,
			},
			image = "spicy_chicken_wrap.png",
		}
	},

	["bkamikaze"] = {
		label = "B Kamikaze",
		weight = 100,
		stack = true,
		close = true,
		description = "yummy stiff drink",
		client = {
			image = "bkamikaze.png",
		}
	},

	["firework2"] = {
		label = "Poppelers",
		weight = 1000,
		stack = true,
		close = true,
		description = "Fireworks",
		client = {
			image = "firework2.png",
		}
	},

	["aluminum"] = {
		label = "Aluminium",
		weight = 100,
		stack = true,
		close = false,
		description = "Nice piece of metal that you can probably use for something",
		client = {
			image = "aluminum.png",
		}
	},

	["hot_sauce"] = {
		label = "Hot Sauce",
		weight = 200,
		stack = true,
		close = true,
		description = "Hot sauce",
		client = {
			image = "hot_sauce.png",
		}
	},

	["steakncheese"] = {
		label = "Steak N' Cheese",
		weight = 200,
		stack = true,
		close = true,
		description = "Steak N Cheese",
		client = {
			status = {
				hunger = 30,
			},
			image = "steakncheese.png",
		}
	},

	["weed_ak47_seed"] = {
		label = "AK47 Seed",
		weight = 0,
		stack = true,
		close = true,
		description = "A weed seed of AK47",
		client = {
			image = "weed_seed.png",
		}
	},

	["tunerlaptop"] = {
		label = "Tunerchip",
		weight = 2000,
		stack = false,
		close = true,
		description = "With this tunerchip you can get your car on steroids... If you know what you're doing",
		client = {
			image = "tunerchip.png",
		}
	},

	["jar_beer"] = {
		label = "Beer Jar",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "jar_beer.png",
		}
	},

	["peanut_butter"] = {
		label = "Peanut butter",
		weight = 200,
		stack = true,
		close = true,
		description = "Peanut butter",
		client = {
			image = "peanut_butter.png",
		}
	},

	["moneyshot"] = {
		label = "Money Shot",
		weight = 100,
		stack = true,
		close = true,
		description = "Money Shot",
		client = {
			status = {
				hunger = 27,
			},
			image = "burger-moneyshot.png",
		}
	},

	["blarneys"] = {
		label = "blarneys",
		weight = 100,
		stack = true,
		close = true,
		description = "yummy stiff drink",
		client = {
			image = "blarneys.png",
		}
	},

	["weed_og-kush"] = {
		label = "OGKush 2g",
		weight = 200,
		stack = true,
		close = false,
		description = "A weed bag with 2g OG Kush",
		client = {
			image = "weed_baggy.png",
		}
	},

	["beer"] = {
		label = "beer",
		weight = 100,
		stack = true,
		close = true,
		description = "yummy stiff drink",
		client = {
			image = "beer.png",
		}
	},

	["painkillers"] = {
		label = "Painkillers",
		weight = 0,
		stack = true,
		close = true,
		description = "For pain you can't stand anymore, take this pill that'd make you feel great again",
		client = {
			image = "painkillers.png",
		}
	},

	["firstaid"] = {
		label = "First Aid",
		weight = 2500,
		stack = true,
		close = true,
		description = "You can use this First Aid kit to get people back on their feet",
		client = {
			image = "firstaid.png",
		}
	},

	["uwu_bubbleteamint"] = {
		label = "Minty B-T",
		weight = 100,
		stack = true,
		close = true,
		description = "Matcha Tea with Mint Boba.",
		client = {
			image = "uwububbleteamint.png",
		}
	},

	["jar_yukkajuice"] = {
		label = "Yukka Juice",
		weight = 100,
		stack = true,
		close = true,
		description = "",
		client = {
			image = "jar_yukkajuice.png",
		}
	},
	["small_tv"] = {
		label = "Small TV",
		weight = 30000,
		stack = false,
		close = true,
		description = "TV",
		client = {
			image = "placeholder.png",
		}
	},

	["toaster"] = {
		label = "Toaster",
		weight = 18000,
		stack = false,
		close = true,
		description = "Toast",
		client = {
			image = "placeholder.png",
		}
	},

	["armor"] = {
		label = "Armor",
		weight = 5000,
		stack = true,
		close = true,
		description = "Some protection won't hurt... right?",
		client = {
			image = "armor.png",
		}
	},
}
