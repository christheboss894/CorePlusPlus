data:extend(
{
  {
    type = "resource-category",
    name = "basic-gas"
  },
}
)
if mods["FluidsPlusPlus"] then data:extend(
{
  {
    type = "noise-layer",
    name = "natural-gas"
  },
  {
    type = "autoplace-control",
    name = "natural-gas",
    richness = true,
    order = "b-a",
    category = "resource",
  },
}
)
data:extend({
  {
    type = "resource",
    name = "natural-gas",
    icon = "__base__/graphics/icons/crude-oil.png",
    icon_size = 32,
    flags = {"placeable-neutral"},
    category = "basic-gas",
    order="a-b-a",
    infinite = true,
    highlight = true,
    minimum = 60000,
    normal = 300000,
    infinite_depletion_amount = 10,
    resource_patch_search_radius = 12,
    tree_removal_probability = 0.7,
    tree_removal_max_distance = 32 * 32,
    minable =
    {
      hardness = 1,
      mining_time = 1,
	  required_fluid = "pressurized-water",
	  fluid_amount = 10,
      results =
      {
        {
          type = "fluid",
          name = "natural-gas",
		  temperature=15,
          amount_min = 10,
          amount_max = 10,
          probability = 1
        }
      }
    },
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace =
    {
      sharpness = 0.75,
	  max_probability = 0.02,
      richness_base = 240000,
      richness_multiplier = 300000,
      richness_multiplier_distance_bonus = 1500,
      coverage = 0.0003 / 2,
      peaks =
      {
        {
          noise_layer = "natural-gas",
          noise_octaves_difference = -0.85,
          noise_persistence = 0.4,
        },
        --no natural-gas in the starting area
        {
          influence = -1.0,
          starting_area_weight_optimal = 1,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },

      },
    },
    stage_counts = {0},
    stages =
    {
      sheet =
      {
        filename = "__base__/graphics/entity/crude-oil/crude-oil.png",
        priority = "extra-high",
        width = 75,
        height = 61,
        frame_count = 4,
        variation_count = 1
      }
    },
    map_color = {r=0.81, g=0.91, b=0.27},
    map_grid = false
  },
}
) end