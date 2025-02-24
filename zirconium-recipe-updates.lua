local util = require("__bzzirconium__.data-util");

local nuclear_plate = mods.bzlead and "lead-plate" or "iron-plate"


util.replace_some_ingredient("stone-furnace", "stone", 1, "zircon", 1)
if not mods["Krastorio2"] then
  util.replace_some_ingredient("steel-furnace", "stone-brick", 4, "zircon", 6)
  util.replace_some_ingredient("electric-furnace", "stone-brick", 5, "zirconia", 5)
end

if mods["Krastorio2"] then
  util.replace_some_ingredient("low-density-structure", "copper-plate", 5, "zirconia", 5)
else
  util.replace_some_ingredient("low-density-structure", "copper-plate", 10, "zirconia", 10)
end

util.add_ingredient("explosives", "zirconium-plate", 1)
util.add_ingredient("nuclear-reactor", "zirconium-plate", 100)

local ufc_amt = mods["Krastorio2"] and 1 or 5
util.replace_some_ingredient("uranium-fuel-cell", nuclear_plate, 5, "zirconium-plate", ufc_amt) 

if not mods.bztungsten then
  util.add_ingredient("nuclear-fuel", "zirconium-plate", 1)
end

util.add_ingredient("rocket-engine-nozzle", "zirconia", 1)
util.add_to_product("rocket-engine-nozzle", "rocket-engine-nozzle", 1)
util.add_time("rocket-engine-nozzle", 5)

if util.me.use_cermet() then
  util.add_ingredient("rocket-control-unit", "cermet", 1)
  util.add_ingredient("speed-module-3", "cermet", 1)
  util.add_ingredient("productivity-module-3", "cermet", 1)
  util.add_ingredient("effectivity-module-3", "cermet", 1)
  util.add_ingredient("beacon", "cermet", 10)
  util.add_ingredient("spidertron", "cermet", 8)
  if not util.fe_plus("Machines") then
    util.add_ingredient("assembling-machine-3", "cermet", 2)
  else
    util.add_ingredient("assembling-machine-4", "cermet", 2)
    util.add_ingredient("assembling-machine-5", "cermet", 2)
    util.add_ingredient("chemical-plant-mk3", "cermet", 2)
    util.add_ingredient("oil-refinery-mk3", "cermet", 4)
  end

end

-- More FE+
if util.fe_plus("Machines") then
  util.add_ingredient("electric-furnace-mk2", "zirconia", 10)
  util.add_ingredient("electric-furnace-mk3", "zirconia", 10)
  util.add_ingredient("oil-refinery-mk2", "zirconia", 10)
  util.add_ingredient("pumpjack-mk2", "zirconia", 10)
end

-- Krastorio2
if mods["Krastorio2"] then

  util.replace_some_ingredient("matter-stabilizer", "imersium-plate", 1, "zirconium-plate", 5)
  util.add_ingredient("kr-advanced-furnace", "zirconia", 60)
  if util.me.use_cermet() then
    util.add_ingredient("ai-core", "cermet", 2)
    util.add_ingredient("kr-matter-assembler", "cermet", 4)
  end

  util.replace_some_ingredient("stone-brick", "stone", 5, "zircon", 5)
  if mods["space-exploration"] then
    util.replace_some_ingredient("se-stone-brick-vulcanite", "stone", 2, "zircon", 2)
  end

  if not mods.bztungsten then
    util.add_ingredient("matter-research-data", "zirconia", 5)
  end
end

-- Space Exploration
if mods["space-exploration"] then
  util.replace_some_ingredient("se-aeroframe-scaffold", "se-aeroframe-pole", 1, "zirconia", 2)
  util.replace_some_ingredient("se-heat-shielding", "stone-tablet", 10, "zirconia", 10)
  util.replace_ingredient("se-heat-shielding-iridium", "stone-tablet", "zirconia")
  util.add_ingredient("se-thruster-suit", "zirconium-plate", 10)
  util.add_ingredient("se-space-thermodynamics-laboratory", "zirconium-plate", 20)
  if util.me.use_cermet() then
    util.add_ingredient("se-quantum-processor", "cermet", 1)
    util.add_ingredient("se-space-mechanical-laboratory", "cermet", 40)
  end
  if not mods.bztungsten then
    util.add_ingredient("se-hot-thermodynamics-data", "zirconium-plate", 1)
    util.add_product("se-hot-thermodynamics-data", {name="zirconium-plate", amount=1, probability=0.50})
  end

  util.add_ingredient("se-experimental-alloys-data", "zirconium-plate", 1)
  util.add_to_product("se-experimental-alloys-data", "se-experimental-alloys-data", 1)
  util.add_to_product("se-experimental-alloys-data", "se-scrap", 1)
  util.add_to_ingredient("se-experimental-alloys-data", "se-empty-data", 1)
end
-- AAI
util.add_ingredient("industrial-furnace", "zirconium-plate", 4)

-- Aircraft
util.add_ingredient("gunship", "zirconia", 10)
util.add_ingredient("cargo-plane", "zirconia", 20)
util.add_ingredient("jet", "zirconia", 50)
util.add_ingredient("flying-fortress", "zirconia", 80)
util.add_ingredient("aircraft-afterburner", "zirconia", 5)

util.add_ingredient("mega-furnace", "zirconia", 5)

util.add_ingredient("nuclear-furnace-4", "zirconia", 400)
util.add_ingredient("nuclear-furnace-5", "zirconium-plate", 400)


util.replace_some_ingredient("breeder-fuel-cell", nuclear_plate, 5, "zirconium-plate", 5) 
util.replace_some_ingredient("mox-fuel-cell", nuclear_plate, 5, "zirconium-plate", 5) 
util.replace_some_ingredient("MOX-fuel", nuclear_plate, 5, "zirconium-plate", 5) 
util.add_ingredient("advanced-electric-furnace-rampant-industry", "zirconia", 50)

-- Realistic Reactors
util.add_ingredient("realistic-reactor", "zirconium-plate", 100)
util.add_ingredient("breeder-reactor", "zirconium-plate", 100)

-- Plutonium Energy
util.add_ingredient("MOX-reactor", "zirconium-plate", 400)

-- Schall 
util.add_ingredient("Schall-radioactive-waste-incinerator", "zirconia", 25)


-- RITEG
util.add_ingredient("RITEG-1", "zirconium-plate", 10)
util.add_ingredient("RITEG-cyan", "zirconium-plate", 10)
util.add_ingredient("RITEG-breeder", "zirconium-plate", 10)

-- Nixie tubes
util.add_ingredient("nixie-tube", "zirconium-plate", 1)
util.add_ingredient("nixie-tube-alpha", "zirconium-plate", 1)
util.add_ingredient("nixie-tube-small", "zirconium-plate", 1)
util.add_ingredient("SNTD-old-nixie-tube", "zirconium-plate", 1)
util.add_ingredient("SNTD-nixie-tube", "zirconium-plate", 1)
util.add_ingredient("SNTD-nixie-tube-small", "zirconium-plate", 1)

-- RFP
util.add_ingredient("rfp-reactor", "zirconium-plate", 1000)
util.add_ingredient("rfp-reactor", "zirconia", 1000)
util.add_ingredient("rfp-aneutronic-reactor", "zirconium-plate", 5000)
util.add_ingredient("rfp-particle-accelerator", "zirconium-plate", 1000)
util.add_ingredient("rfp-particle-decelerator", "zirconium-plate", 1000)
util.replace_some_ingredient("rfp-matter-antimatter-fuel-cell-empty", "steel-plate", 10, "zirconium-plate", 10)





-- Cermet in other mods
if util.me.use_cermet() then
  util.add_ingredient("advanced-assembler-rampant-industry", "cermet", 30)
  util.add_ingredient("advanced-electric-furnace-rampant-industry", "cermet", 30)
  util.add_ingredient("advanced-oil-refinery-rampant-industry", "cermet", 30)

  if mods["modules-t4"] then
    util.add_ingredient("speed-module-4", "cermet", 6)
    util.add_ingredient("productivity-module-4", "cermet", 6)
    util.add_ingredient("effectivity-module-4", "cermet", 6)
  end

  -- Various assemblers
  if mods["zombiesextended-core"] then
    util.add_ingredient("assembling-machine-mk1", "cermet", 1)
    util.add_ingredient("assembling-machine-mk2", "cermet", 1)
    util.add_ingredient("assembling-machine-mk3", "cermet", 1)
  end

  -- Bob's machines
  util.add_ingredient("chemical-plant-3", "cermet", 2)
  util.add_ingredient("chemical-plant-4", "cermet", 2)
  util.add_ingredient("assembling-machine-4", "cermet", 3)
  util.add_ingredient("assembling-machine-5", "cermet", 4)
  util.add_ingredient("assembling-machine-6", "cermet", 5)
  util.add_ingredient("oil-refinery-3", "cermet", 10)
  util.add_ingredient("oil-refinery-4", "cermet", 10)
  util.add_ingredient("bob-mining-drill-4", "cermet", 5)
  util.add_ingredient("bob-area-mining-drill-4", "cermet", 5)
end


-- Bob's - bobplates
util.replace_some_ingredient("plutonium-fuel-cell", nuclear_plate, 5, "zirconium-plate", 5) 

-- True nukes
util.replace_some_ingredient("tritium-breeder-fuel-cell", nuclear_plate, 5, "zirconium-plate", 5) 

-- Hazmat suit
util.replace_some_ingredient("mil-grade-fuel-cell", nuclear_plate, 5, "zirconium-plate", 5) 

-- Power Armor Mk3
util.add_ingredient("pamk3-battmk3", "zirconium-plate", 5)
util.add_ingredient("pamk3-pamk4", "zirconium-plate", 10)

