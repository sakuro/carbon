local util = require("data-util");

if mods["space-age"] then
  data:extend({
    {
      type = "recipe",
      name = "alternative-carbonic-asteroid-crushing",
      icons = 
      {
        {icon="__space-age__/graphics/icons/carbonic-asteroid-crushing.png", size=64},
        {icon="__bzcarbon__/graphics/icons/flake-graphite.png", icon_size=128, scale=0.125, shift={8,0}},
        {icon="__bzcarbon__/graphics/icons/rough-diamond.png", icon_size=128, scale=0.125, shift={-8,0}},
      },
      category = "crushing",
      subgroup="space-crushing",
      order = "b-a-z-b",
      auto_recycle = false,
      enabled = false,
      ingredients =
      {
        {type = "item", name = "carbonic-asteroid-chunk", amount = 1}
      },
      energy_required = 5,
      results =
      {
        {type = "item", name = "flake-graphite", amount = 10},
        {type = "item", name = "rough-diamond", amount = 1, probability=0.5},
        {type = "item", name = "carbonic-asteroid-chunk", amount = 1, probability = 0.1}
      },
      allow_productivity = true,
      allow_decomposition = false
    },
  })
  util.add_unlock("space-platform-thruster", "alternative-carbonic-asteroid-crushing")
end
