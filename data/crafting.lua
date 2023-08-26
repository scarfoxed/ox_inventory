return {
	{
		items = {
			--[[{
				name = 'default',
				ingredients = {
					rubber = 5,
					steel = 5,
					plastic = 5,
					iron = 5,
					glass = 5
				},
				duration = 5000,
				count = 1,
			},--]]
			{
				name = 'rims',
				ingredients = {
					steel = 15,
					plastic = 5,
					rubber = 15
				},
				duration = 5000,
				count = 1,
			},
		},
		points = {
			vec3(-1147.083008, -2002.662109, 13.180260),
			vec3(-345.374969, -130.687088, 39.009613)
		},
		zones = {
			{
				coords = vec3(-1146.2, -2002.05, 13.2),
				size = vec3(3.8, 1.05, 0.15),
				distance = 1.5,
				rotation = 315.0,
			},
			{
				coords = vec3(-346.1, -130.45, 39.0),
				size = vec3(3.8, 1.05, 0.15),
				distance = 1.5,
				rotation = 70.0,
			},
		},
		groups = {
			["mechanic"] = 0,
		},
	},
}
