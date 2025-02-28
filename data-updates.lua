require("prototypes.carbon-asteroid-updates")
require("carbon-recipe-updates")
require("carbon-fiber-recipe-updates")
require("map-gen-preset-updates")
require("carbon-matter")
require("strange-matter")
require("compatibility/248k")
require("compatibility/orewashing")

-- require("omni")

local util = require("data-util");
util.add_gleba_rock("flake-graphite")
util.add_gleba_rock("rough-diamond", 2, 3)

if mods.Asteroid_Mining then
  if util.me.use_flake_graphite() and not data.raw.item["asteroid-flake-graphite"] then
    util.addtype("flake-graphite", {a = 0,r = 0.0,g = 0.2,b = 0.5})
  end
  if util.me.use_rough_diamond() and not data.raw.item["asteroid-rough-diamond"] then
    util.addtype("rough-diamond", {a = 0,r = 0.0,g = 0.2,b = 0.8})
  end
end

util.redo_recycling()

require("compatibility/crafting-efficiency")
-- Must be last
util.create_list()
