module("ItemDatabase")

--  [""]={},
--  [""]={resource=1}, =,

--[[CRAFTED ITEMS]]--

craftitems =
{
	-- Base Game Items --
	["wood"]={resource=0.5},
	["wooden-chest"]={["wood"]=4, chest=1},
	["iron-stick"]={plates=0.5, tech=0.5},
	["iron-axe"]={plates=3, mining=1, ["iron-stick"]=2},
	["stone-furnace"]={resource=5, machine=1},
	["boiler"]={["stone-furnace"]=1, ["pipe"]=1, machine=1, energy=1},
	["steam-engine"]={["iron-gear-wheel"]=5, ["pipe"]=5, plates=5, machine=1, energy=1},
	["iron-gear-wheel"]={plates=2, gear=1},
	["electronic-circuit"]={plates=1, tech=1, ["copper-cable"]=3},
	["basic-transport-belt"]={plates=1, ["iron-gear-wheel"]=1, belt=1},
	["basic-mining-drill"]={["electronic-circuit"]=3, ["iron-gear-wheel"]=5, plates=10, mining=2, machine=1},
	["burner-mining-drill"]={["iron-gear-wheel"]=3, ["stone-furnace"]=1, plates=3, mining=1, machine=1},
	["basic-inserter"]={["electronic-circuit"]=1, ["iron-gear-wheel"]=1, plates=1, inserter=1},
	["burner-inserter"]={plates=1, ["iron-gear-wheel"]=1, inserter=1},
	["pipe"]={plates=1, tech=1},
	["offshore-pump"]={["electronic-circuit"]=2, ["pipe"]=1, ["iron-gear-wheel"]=1, machine=1},
	["copper-cable"]={plates=0.5, tech=0.5},
	["small-electric-pole"]={["wood"]=2, ["copper-cable"]=2, energy=1},
	["pistol"]={plates=10, gun=1},
	["submachine-gun"]={gun=1, ["iron-gear-wheel"]=10, plates=15},
	["basic-bullet-magazine"]={ammo=1, plates=2},
	["basic-armor"]={armor=1, plates=40},
	["radar"]={machine=1, ["electronic-circuit"]=5, ["iron-gear-wheel"]=5, plates=10},
	["small-lamp"]={["electronic-circuit"]=1, ["iron-stick"]=3, plates=1, machine=1, energy=1},
	["pipe-to-ground"]={["pipe"]=10, plates=5, tech=1},
	["assembling-machine-1"]={["electronic-circuit"]=3, ["iron-gear-wheel"]=5, plates=9, machine=1},
	["repair-pack"]={["electronic-circuit"]=1, ["iron-gear-wheel"]=1, tech=1},
	["piercing-bullet-magazine"]={ammo=1, plates=6},
	["rocket"]={["electronic-circuit"]=1, ["explosives"]=2, plates=2, ammo=1},
	["explosive-rocket"]={["rocket"]=1, ["explosives"]=5, ammo=1},
	["shotgun-shell"]={ammo=1, plates=4},
	["piercing-shotgun-shell"]={ammo=1, plates=4},
	["railgun-dart"]={ammo=1, plates=5, ["electronic-circuit"]=5},
	["poison-capsule"]={plates=3, capsule=1, ["electronic-circuit"]=3, resource=10},
	["slowdown-capsule"]={plates=2, capsule=1, ["electronic-circuit"]=2, resource=5},
	["basic-grenade"]={plates=5, resource=10, capsule=1},
	["defender-capsule"]={capsule=1, ["piercing-bullet-magazine"]=1, ["electronic-circuit"]=2, ["iron-gear-wheel"]=3},
	["distractor-capsule"]={capsule=5, ["defender-capsule"]=4, ["advanced-circuit"]=3},
	["destroyer-capsule"]={capsule=5, ["distractor-capsule"]=4, ["speed-module"]=1},
	["basic-electric-discharge-defense-remote"]={capsule=1, ["electronic-circuit"]=1},
	["plastic-bar"]={resource=4, tech=1},
	["night-vision-equipment"]={armor=1, ["advanced-circuit"]=5, plates=10},
	["energy-shield-equipment"]={armor=1, ["advanced-circuit"]=5, plates=10},
	["energy-shield-mk2-equipment"]={armor=1, ["energy-shield-equipment"]=10, ["processing-unit"]=10},
	["battery-equipment"]={armor=1, ["battery"]=5, plates=10},
	["battery-mk2-equipment"]={armor=1, ["battery-equipment"]=10, ["processing-unit"]=20},
	["solar-panel-equipment"]={armor=1, ["solar-panel"]=5, ["processing-unit"]=1, plates=5},
	["fusion-reactor-equipment"]={armor=1, ["processing-unit"]=100, alien=30},
	["basic-laser-defense-equipment"]={armor=1, ["processing-unit"]=1, plates=5, ["laser-turret"]=5},
	["basic-electric-discharge-defense-equipment"]={armor=1, ["processing-unit"]=5, plates=20, ["laser-turret"]=10},
	["basic-exoskeleton-equipment"]={armor=1, ["processing-unit"]=10, plates=20, ["electric-engine-unit"]=30},
	["gun-turret"]={turret=1, ["iron-gear-wheel"]=5, plates=15},
	["laser-turret"]={turret=2, ["electronic-circuit"]=5, ["battery"]=3, plates=5},
	["speed-module"]={["advanced-circuit"]=5, ["processing-unit"]=5, modules=1},
	["speed-module-2"]={["speed-module"]=4, ["advanced-circuit"]=5, ["processing-unit"]=5, modules=1},
	["speed-module-3"]={["speed-module-2"]=5, ["advanced-circuit"]=5, ["processing-unit"]=5, alien=1, modules=1},
	["effectivity-module"]={["advanced-circuit"]=5, ["processing-unit"]=5, modules=1},
	["effectivity-module-2"]={["effectivity-module"]=4, ["advanced-circuit"]=5, ["processing-unit"]=5, modules=1},
	["effectivity-module-3"]={["effectivity-module-2"]=5, ["advanced-circuit"]=5, ["processing-unit"]=5, alien=1, modules=1},
	["productivity-module"]={["advanced-circuit"]=5, ["processing-unit"]=5, modules=1},
	["productivity-module-2"]={["productivity-module"]=4, ["advanced-circuit"]=5, ["processing-unit"]=5, modules=1},
	["productivity-module-3"]={["productivity-module-2"]=5, ["advanced-circuit"]=5, ["processing-unit"]=5, alien=1, modules=1},
	["long-handed-inserter"]={inserter=1, ["iron-gear-wheel"]=1, plates=1, ["basic-inserter"]=1},
	["fast-inserter"]={inserter=1, ["electronic-circuit"]=2, plates=2, ["basic-inserter"]=1},
	["smart-inserter"]={inserter=1, ["fast-inserter"]=1, ["electronic-circuit"]=4},
	["player-port"]={["electronic-circuit"]=10, ["iron-gear-wheel"]=5, plates=1, machine=1},
	["fast-transport-belt"]={belt=1, ["iron-gear-wheel"]=5, ["basic-transport-belt"]=1},
	["express-transport-belt"]={belt=1, ["iron-gear-wheel"]=5, ["fast-transport-belt"]=1},
	["solar-panel"]={energy=3, plates=10, ["electronic-circuit"]=15, machine=1},
	["assembling-machine-2"]={plates=9, ["iron-gear-wheel"]=5, ["electronic-circuit"]=3, ["assembling-machine-1"]=1, machine=1},
	["assembling-machine-3"]={["speed-module"]=4, ["assembling-machine-2"]=2, machine=1},
	["car"]={["engine-unit"]=8, plates=25},
	["straight-rail"]={["iron-stick"]=1, plates=1, resource=1},
	["curved-rail"]={["iron-stick"]=4, plates=4, resource=4},
	["diesel-locomotive"]={["engine-unit"]=15, ["electronic-circuit"]=5, plates=10},
	["cargo-wagon"]={["iron-gear-wheel"]=10, plates=25},
	["train-stop"]={["electronic-circuit"]=5, plates=13},
	["rail-signal"]={["electronic-circuit"]=1, plates=5},
	["heavy-armor"]={armor=2, plates=150},
	["basic-modular-armor"]={["advanced-circuit"]=30, ["processing-unit"]=5, plates=50},
	["power-armor"]={armor=8, ["processing-unit"]=100, ["electric-engine-unit"]=30, plates=100, alien=10},
	["power-armor-mk2"]={armor=16, ["effectivity-module-3"]=5, ["speed-module-3"]=5, ["processing-unit"]=200, plates=50, alien=50},
	["iron-chest"]={chest=1, plates=8},
	["steel-chest"]={chest=1, plates=8},
	["smart-chest"]={chest=1, ["electronic-circuit"]=3, ["steel-chest"]=1},
--	["wall"]={wall=1, resource=5},
	["land-mine"]={ammo=1, plates=1, ["explosives"]=2},
	["flame-thrower"]={gun=1, plates=5, ["iron-gear-wheel"]=10},
	["rocket-launcher"]={gun=1, plates=5, ["iron-gear-wheel"]=5, ["electronic-circuit"]=5},
	["shotgun"]={gun=1, plates=25, ["iron-gear-wheel"]=5, ["wood"]=5},
	["combat-shotgun"]={gun=1, plates=25, ["iron-gear-wheel"]=5, ["wood"]=10},
	["railgun"]={gun=1, plates=30, ["advanced-circuit"]=10, ["electronic-circuit"]=5},
	["science-pack-1"]={science=1, plates=1, ["iron-gear-wheel"]=1},
	["science-pack-2"]={science=2, ["basic-inserter"]=1, ["basic-transport-belt"]=1},
	["science-pack-3"]={science=3, ["battery"]=1, ["advanced-circuit"]=1, ["smart-inserter"]=1, plates=1},
	["alien-science-pack"]={science=4, alien=1},
	["lab"]={["electronic-circuit"]=10, ["iron-gear-wheel"]=10, ["basic-transport-belt"]=4, machine=1},
	["red-wire"]={["electronic-circuit"]=1, ["copper-cable"]=1},
	["green-wire"]={["electronic-circuit"]=1, ["copper-cable"]=1},
	["basic-transport-belt-to-ground"]={["basic-transport-belt"]=5, plates=10},
	["fast-transport-belt-to-ground"]={["iron-gear-wheel"]=20, ["basic-transport-belt-to-ground"]=2},
	["express-transport-belt-to-ground"]={["iron-gear-wheel"]=40, ["fast-transport-belt-to-ground"]=2},
	["basic-splitter"]={["electronic-circuit"]=5, plates=5, ["basic-transport-belt"]=4},
	["fast-splitter"]={["electronic-circuit"]=10, ["iron-gear-wheel"]=10, ["fast-transport-belt"]=4},
	["express-splitter"]={["advanced-circuit"]=10, ["iron-gear-wheel"]=10, ["express-transport-belt"]=4},
	["advanced-circuit"]={["electronic-circuit"]=2, ["plastic-bar"]=2, ["copper-cable"]=4},
	["processing-unit"]={["electronic-circuit"]=20, ["advanced-circuit"]=2},
	["logistic-robot"]={robot=1, ["flying-robot-frame"]=1, ["advanced-circuit"]=2},
	["construction-robot"]={robot=1, ["flying-robot-frame"]=1, ["electronic-circuit"]=2},
	["logistic-chest-passive-provider"]={robot=1, ["smart-chest"]=1, ["advanced-circuit"]=1},
	["logistic-chest-active-provider"]={robot=1, ["smart-chest"]=1, ["advanced-circuit"]=1},
	["logistic-chest-requester"]={robot=1, ["smart-chest"]=1, ["advanced-circuit"]=1},
	["logistic-chest-storage"]={robot=1, ["smart-chest"]=1, ["advanced-circuit"]=1},
	["rocket-defense"]={["rocket"]=100, ["advanced-circuit"]=128, ["processing-unit"]=128, ["speed-module-3"]=50, ["productivity-module-3"]=50},
	["roboport"]={robot=5, plates=45, ["iron-gear-wheel"]=45, ["advanced-circuit"]=45, machine=1},
	["steel-axe"]={plates=5, mining=1, ["iron-stick"]=2},
	["big-electric-pole"]={energy=1, plates=10},
	["substation"]={energy=5, plates=15, ["advanced-circuit"]=5},
	["medium-electric-pole"]={energy=1, plates=4},
	["basic-accumulator"]={energy=25, plates=2, ["battery"]=5},
	["steel-furnace"]={energy=1, plates=8, machine=1, resource=10},
	["electric-furnace"]={energy=3, plates=15, resource=10, ["advanced-circuit"]=5, machine=1},
	["basic-beacon"]={["electronic-circuit"]=20, ["advanced-circuit"]=20, plates=10, ["copper-cable"]=10, machine=1},
	["blueprint"]={["advanced-circuit"]=1},
	["deconstruction-planner"]={["advanced-circuit"]=1},
	["pumpjack"]={machine=1, plates=15, ["iron-gear-wheel"]=10, ["electronic-circuit"]=10, ["pipe"]=10},
	["oil-refinery"]={machine=1, plates=15, resource=10, ["iron-gear-wheel"]=10, ["electronic-circuit"]=10, ["pipe"]=10},
	["engine-unit"]={plates=1, ["iron-gear-wheel"]=1, ["pipe"]=2},
	["electric-engine-unit"]={["engine-unit"]=1, ["electronic-circuit"]=2},
	["flying-robot-frame"]={["electric-engine-unit"]=1, ["battery"]=2, plates=1, ["electronic-circuit"]=3},
	["explosives"]={resource=2},
	["battery"]={plates=2, tech=1},
	["storage-tank"]={machine=1, plates=25},
	["small-pump"]={["electric-engine-unit"]=1, ["pipe"]=1, plates=1, machine=1},
	["chemical-plant"]={plates=5, ["pipe"]=5, ["iron-gear-wheel"]=5, ["electronic-circuit"]=5, machine=1},
	["small-plane"]={["plastic-bar"]=120, ["advanced-circuit"]=250, ["electric-engine-unit"]=20, ["battery"]=150},
	-- DyTech Core --
	["advanced-processing-unit"]={["processing-unit"]=5, ["bundled-wire"]=5, plates=2, tech=1},
	["bundled-wire"]={["red-wire"]=1, ["green-wire"]=1, ["copper-cable"]=1, resource=2},
	["rubber-seed"]={resource=1},
	["stone-gear-wheel"]={resource=1, gear=1},
	["steel-gear-wheel"]={plates=1, gear=1},
	-- DyTech Automation --
	["basic-mining-drill-mk2"]={["basic-mining-drill"]=1, ["rotor1"]=2, ["item-exit1"]=1, ["frame1"]=1, mining=1},
	["basic-mining-drill-mk3"]={["basic-mining-drill-mk2"]=1, ["rotor2"]=2, ["item-exit2"]=1, ["frame2"]=1, mining=1},
	["basic-mining-drill-mk4"]={["basic-mining-drill-mk3"]=1, ["rotor3"]=2, ["item-exit3"]=2, ["frame3"]=1, mining=1},
	["basic-mining-drill-mk5"]={["basic-mining-drill-mk4"]=1, ["rotor4"]=2, ["item-exit4"]=4, ["frame4"]=1, mining=1},
	["basic-mining-drill-mk6"]={["basic-mining-drill-mk5"]=3, ["advanced-processing-unit"]=250, mining=500, plates=500},
	["frame1"]={["iron-stick"]=30, ["electronic-circuit"]=15, plates=45},
	["frame2"]={["frame1"]=1, ["advanced-circuit"]=5, plates=10},
	["frame3"]={["frame2"]=1, ["advanced-circuit"]=15, ["processing-unit"]=18, ["copper-cable"]=20},
	["frame4"]={["frame3"]=1, ["advanced-processing-unit"]=10, ["bundled-wire"]=50, plates=25},
	["item-exit1"]={["wooden-chest"]=1, plates=12, resource=5},
	["item-exit2"]={["item-exit1"]=1, ["iron-chest"]=1, plates=12, resource=25},
	["item-exit3"]={["item-exit2"]=1, ["steel-chest"]=1, ["bundled-wire"]=10, plates=15},
	["item-exit4"]={["item-exit3"]=1, ["advanced-processing-unit"]=5, ["smart-chest"]=1, ["smart-inserter"]=1},
	["rotor1"]={["blade1"]=3, ["stone-gear-wheel"]=4, plates=10},
	["rotor2"]={["rotor1"]=1, ["blade2"]=3, ["iron-gear-wheel"]=4, plates=6},
	["rotor3"]={["rotor2"]=1, ["blade3"]=3, ["steel-gear-wheel"]=4, plates=12},
	["rotor4"]={["rotor3"]=1, ["blade3"]=9, ["steel-gear-wheel"]=12, ["advanced-circuit"]=5},
	["blade1"]={["wood"]=1, ["iron-stick"]=1, resource=4},
	["blade2"]={plates=12, resource=12},
	["blade3"]={["blade2"]=1, plates=4},
	["steel-furnace-mk2"]={["steel-furnace"]=1, ["item-exit1"]=1, plates=10, machine=1},
	["steel-furnace-mk3"]={["steel-furnace-mk2"]=1, ["item-exit2"]=1, plates=20, machine=1},
	["steel-furnace-mk4"]={["steel-furnace-mk3"]=1, ["item-exit3"]=1, plates=40, machine=1},
	["steel-furnace-mk5"]={["steel-furnace-mk4"]=1, ["item-exit4"]=1, plates=80, machine=1},
	["electric-furnace-mk2"]={["electric-furnace"]=1, ["item-exit1"]=1, ["processing-unit"]=2, plates=10, machine=1},
	["electric-furnace-mk3"]={["electric-furnace-mk2"]=1, ["item-exit2"]=1, ["processing-unit"]=2, plates=20, machine=1},
	["electric-furnace-mk4"]={["electric-furnace-mk3"]=1, ["item-exit3"]=1, ["processing-unit"]=2, plates=40, machine=1},
	["electric-furnace-mk5"]={["electric-furnace-mk4"]=1, ["item-exit4"]=1, ["processing-unit"]=2, plates=80, machine=1},
	["assembling-machine-4"]={["assembling-machine-3"]=1, ["processing-unit"]=2, plates=10, machine=1},
	["assembling-machine-5"]={["assembling-machine-4"]=1, ["processing-unit"]=4, plates=20, machine=1},
	["assembling-machine-6"]={["assembling-machine-5"]=1, ["advanced-processing-unit"]=2, plates=40, machine=1},
	["assembling-machine-7"]={["assembling-machine-6"]=1, ["advanced-processing-unit"]=4, plates=80, machine=1},
	["radar-mk2"]={["radar"]=1, ["advanced-circuit"]=4, plates=20, machine=1},
	["radar-mk3"]={["radar-mk2"]=1, ["processing-unit"]=4, plates=40, machine=1},
	["radar-mk4"]={["radar-mk3"]=1, ["advanced-processing-unit"]=4, plates=80, machine=1},
	["radar-mk5"]={["radar-mk4"]=1, ["advanced-processing-unit"]=10, plates=160, machine=1},
	-- DyTech Compatibility --
	-- DyTech Dynamic --
	-- DyTech Energy --
	["boiler-mk2"]={["boiler"]=1, ["advanced-circuit"]=2, plates=10, energy=1, machine=1},
	["boiler-mk3"]={["boiler-mk2"]=1, ["advanced-circuit"]=10, plates=2, energy=1, machine=1},
	["boiler-mk4"]={["boiler-mk3"]=1, ["advanced-processing-unit"]=12, plates=10, energy=1, machine=1},
	["boiler-mk5"]={["boiler-mk4"]=1, ["advanced-processing-unit"]=40, plates=100, energy=1, machine=1},
	["small-pump-mk2"]={["small-pump"]=1, ["electric-engine-unit"]=1, ["pipe-mk2"]=1, plates=1, energy=1},
	["small-pump-mk3"]={["small-pump-mk2"]=1, ["electric-engine-unit"]=1, ["pipe-mk3"]=1, plates=1, energy=1},
	["small-pump-mk4"]={["small-pump-mk3"]=1, ["electric-engine-unit"]=1, ["pipe-mk4"]=1, plates=1, energy=1},
	["small-pump-mk5"]={["small-pump-mk4"]=1, ["electric-engine-unit"]=1, ["pipe-mk5"]=1, plates=1, energy=1},
	["pipe-mk2"]={["pipe"]=1, plates=1, energy=1},
	["pipe-mk3"]={["pipe-mk2"]=1, plates=2, energy=1},
	["pipe-mk4"]={["pipe-mk3"]=1, plates=4, energy=1},
	["pipe-mk5"]={["pipe-mk4"]=1, plates=8, energy=1},
	["pipe-to-ground-mk2"]={["pipe-to-ground"]=1, plates=4, energy=1},
	["pipe-to-ground-mk3"]={["pipe-to-ground-mk2"]=1, plates=8, energy=1},
	["pipe-to-ground-mk4"]={["pipe-to-ground-mk3"]=1, plates=16, energy=1},
	["pipe-to-ground-mk5"]={["pipe-to-ground-mk4"]=1, plates=32, energy=1},
	["steam-engine-primary"]={["stone-gear-wheel"]=5, ["pipe"]=5, plates=5, machine=1, energy=1},
	["steam-engine-primary-mk2"]={["steam-engine-primary"]=1, ["pipe-mk2"]=5, ["electronic-circuit"]=5, energy=1, machine=1},
	["steam-engine-primary-mk3"]={["steam-engine-primary-mk2"]=1, ["pipe-mk3"]=5, ["advanced-circuit"]=5, energy=1, machine=1},
	["steam-engine-primary-mk4"]={["steam-engine-primary-mk3"]=1, ["pipe-mk4"]=5, ["processing-unit"]=5, energy=1, machine=1},
	["steam-engine-primary-mk5"]={["steam-engine-primary-mk4"]=1, ["pipe-mk5"]=5, ["advanced-processing-unit"]=5, energy=1, machine=1},
	["steam-engine-secondary-mk2"]={["steam-engine"]=1, ["pipe-mk2"]=5, ["electronic-circuit"]=5, energy=1, machine=1},
	["steam-engine-secondary-mk3"]={["steam-engine-secondary-mk2"]=1, ["pipe-mk3"]=5, ["advanced-circuit"]=5, energy=1, machine=1},
	["steam-engine-secondary-mk4"]={["steam-engine-secondary-mk3"]=1, ["pipe-mk4"]=5, ["processing-unit"]=5, energy=1, machine=1},
	["steam-engine-secondary-mk5"]={["steam-engine-secondary-mk4"]=1, ["pipe-mk5"]=5, ["advanced-processing-unit"]=5, energy=1, machine=1},
	["steam-engine-terciary"]={["stone-gear-wheel"]=5, ["pipe"]=5, plates=5, machine=1, energy=1},
	["steam-engine-terciary-mk2"]={["steam-engine-terciary"]=1, ["pipe-mk2"]=5, ["electronic-circuit"]=5, energy=1, machine=1},
	["steam-engine-terciary-mk3"]={["steam-engine-terciary-mk2"]=1, ["pipe-mk3"]=5, ["advanced-circuit"]=5, energy=1, machine=1},
	["steam-engine-terciary-mk4"]={["steam-engine-terciary-mk3"]=1, ["pipe-mk4"]=5, ["processing-unit"]=5, energy=1, machine=1},
	["steam-engine-terciary-mk5"]={["steam-engine-terciary-mk4"]=1, ["pipe-mk5"]=5, ["advanced-processing-unit"]=5, energy=1, machine=1},
	["solar-panel-secondary"]={["electronic-circuit"]=15, plates=10, energy=1, machine=1},
	["solar-panel-primary-mk2"]={["solar-panel"]=1, ["advanced-circuit"]=15, plates=10, energy=1, machine=1},
	["solar-panel-secondary-mk2"]={["solar-panel-secondary"]=1, ["advanced-circuit"]=15, plates=10, energy=1, machine=1},
	["solar-panel-primary-mk3"]={["solar-panel-primary-mk2"]=1, ["processing-unit"]=15, plates=20, energy=1, machine=1},
	["solar-panel-secondary-mk3"]={["solar-panel-secondary-mk2"]=1, ["processing-unit"]=15, plates=20, energy=1, machine=1},
	["solar-panel-primary-mk4"]={["solar-panel-primary-mk3"]=1, ["advanced-processing-unit"]=15, plates=40, energy=1, machine=1},
	["solar-panel-secondary-mk4"]={["solar-panel-secondary-mk3"]=1, ["advanced-processing-unit"]=15, plates=40, energy=1, machine=1},
	["solar-panel-primary-mk5"]={["solar-panel-primary-mk4"]=1, ["advanced-processing-unit"]=45, plates=80, energy=1, machine=1},
	["solar-panel-secondary-mk5"]={["solar-panel-secondary-mk4"]=1, ["advanced-processing-unit"]=45, plates=80, energy=1, machine=1},
	["basic-accumulator-mk2"]={["basic-accumulator"]=1, ["battery"]=5, ["advanced-circuit"]=5, energy=5, machine=1},
	["basic-accumulator-mk3"]={["basic-accumulator"]=1, ["battery"]=5, ["advanced-circuit"]=5, energy=5, machine=1},
	["basic-accumulator-mk4"]={["basic-accumulator-mk2"]=1, ["battery"]=10, ["processing-unit"]=5, energy=10, machine=1},
	["basic-accumulator-mk5"]={["basic-accumulator-mk3"]=1, ["battery"]=10, ["processing-unit"]=5, energy=10, machine=1},
	["basic-accumulator-mk6"]={["basic-accumulator-mk4"]=1, ["basic-accumulator-mk5"]=1, ["battery"]=110, ["advanced-processing-unit"]=25, energy=50, machine=1},
	["offshore-pump-mk2"]={["offshore-pump"]=1, ["pipe-mk2"]=1, ["iron-gear-wheel"]=1, machine=1, energy=1},
	["offshore-pump-mk3"]={["offshore-pump-mk2"]=1, ["pipe-mk3"]=1, ["iron-gear-wheel"]=4, machine=1, energy=1},
	["offshore-pump-mk4"]={["offshore-pump-mk3"]=1, ["pipe-mk4"]=1, ["steel-gear-wheel"]=1, machine=1, energy=1},
	["offshore-pump-mk5"]={["offshore-pump-mk4"]=1, ["pipe-mk5"]=1, ["steel-gear-wheel"]=4, machine=1, energy=1},
	-- DyTech Inserters --
	["inserter-half"]={inserter=1, ["electronic-circuit"]=1, ["iron-gear-wheel"]=1, plates=1},
	["inserter-long"]={inserter=2, plates=2, ["basic-inserter"]=1, ["electronic-circuit"]=2},
	["inserter-half-long"]={inserter=2, plates=2, ["basic-inserter"]=1, ["electronic-circuit"]=2},
	["inserter-fast-half"]={inserter=2, plates=2, ["basic-inserter"]=1, ["electronic-circuit"]=2},
	["inserter-veryfast"]={inserter=2, plates=2, ["basic-inserter"]=1, ["electronic-circuit"]=2},
	["inserter-veryfast-half"]={inserter=2, plates=2, ["basic-inserter"]=1, ["electronic-circuit"]=2},
	["inserter-half-filter"]={inserter=3, plates=1, ["inserter-half"]=1, ["advanced-circuit"]=1},
	["inserter-long-filter"]={inserter=3, plates=1, ["inserter-long"]=1, ["advanced-circuit"]=2},
	["inserter-long-half-filter"]={inserter=3, plates=1, ["inserter-long"]=1, ["advanced-circuit"]=2},
	["inserter-fast-half-filter"]={inserter=3, plates=1, ["inserter-long"]=1, ["advanced-circuit"]=2},
	["inserter-veryfast-filter"]={inserter=3, plates=1, ["inserter-long"]=1, ["advanced-circuit"]=2},
	["inserter-veryfast-half-filter"]={inserter=3, plates=1, ["inserter-long"]=1, ["advanced-circuit"]=2},
	["inserter-half-smart"]={inserter=4, ["processing-unit"]=6, ["inserter-half-filter"]=1, plates=15},
	["inserter-long-smart"]={inserter=4, ["processing-unit"]=8, ["inserter-long-filter"]=1, plates=15},
	["inserter-long-half-smart"]={inserter=4, ["processing-unit"]=8, ["inserter-long-filter"]=1, plates=15},
	["inserter-fast-half-smart"]={inserter=4, ["processing-unit"]=10, ["inserter-long-filter"]=1, plates=15},
	["inserter-veryfast-smart"]={inserter=4, ["processing-unit"]=10, ["inserter-long-filter"]=1, plates=15},
	["inserter-veryfast-half-smart"]={inserter=4, ["processing-unit"]=10, ["inserter-long-filter"]=1, plates=15},
	["dytech-inserter"]={inserter=5, ["iron-gear-wheel"]=10, ["advanced-processing-unit"]=10, plates=10},
	["dytech-inserter-fast"]={inserter=6, ["advanced-processing-unit"]=25, ["steel-gear-wheel"]=25, plates=15},
	["long-handed-inserter-filter"]={inserter=1, ["iron-gear-wheel"]=1, ["advanced-circuit"]=2, ["basic-inserter"]=1, plates=1},
	-- DyTech Logistic --
	["logistic-robot-1"]={["processing-unit"]=5, ["logistic-robot"]=1, robot=1},
	["logistic-robot-2"]={["advanced-processing-unit"]=5, ["logistic-robot-1"]=1, robot=1},
	["logistic-chest-passive-provider-1"]={["processing-unit"]=5, ["logistic-chest-passive-provider"]=1, robot=1},
	["logistic-chest-passive-provider-2"]={["advanced-processing-unit"]=5, ["logistic-chest-passive-provider-1"]=1, robot=1},
	["logistic-chest-active-provider-1"]={["processing-unit"]=5, ["logistic-chest-active-provider"]=1, robot=1},
	["logistic-chest-active-provider-2"]={["advanced-processing-unit"]=5, ["logistic-chest-active-provider-1"]=1, robot=1},
	["logistic-chest-storage-1"]={["processing-unit"]=5, ["logistic-chest-storage"]=1, robot=1},
	["logistic-chest-storage-2"]={["advanced-processing-unit"]=5, ["logistic-chest-storage-1"]=1, robot=1},
	["logistic-chest-requester-1"]={["processing-unit"]=5, ["logistic-chest-requester"]=1, robot=1},
	["logistic-chest-requester-2"]={["advanced-processing-unit"]=5, ["logistic-chest-requester-1"]=1, robot=1},
	["roboport-1"]={plates=90, ["steel-gear-wheel"]=45, ["processing-unit"]=45, machine=1},
	["roboport-2"]={plates=180, ["steel-gear-wheel"]=90, ["advanced-processing-unit"]=45, machine=1},
	["construction-robot-1"]={["advanced-processing-unit"]=5, ["construction-robot"]=1, robot=1},
	["construction-robot-2"]={["advanced-processing-unit"]=5, ["construction-robot-1"]=1, robot=1},
	["repair-pack-0"]={plates=1, ["wood"]=1},
	["repair-pack-2"]={["processing-unit"]=1, ["iron-gear-wheel"]=1},
	["stone-collector"]={["processing-unit"]=1, plates=25, resource=25, chest=1, robot=1},
	["sand-collector"]={["processing-unit"]=1, plates=25, resource=25, chest=1, robot=1},
	["coal-collector"]={["processing-unit"]=1, plates=25, resource=25, chest=1, robot=1},
	-- DyTech Metallurgy --
	["empty-temptyungsten-barrel"]={plates=8},
	["metallurgy-machine-gear"]={tech=5, machine=1},
	["metallurgy-machine-wire"]={tech=5, machine=1},
	["metallurgy-machine-circuit"]={tech=5, machine=1},
	["metallurgy-machine-tools"]={tech=5, machine=1},
	["metallurgy-machine-ammo-basic"]={tech=5, machine=1},
	["metallurgy-machine-ammo-advanced"]={tech=5, machine=1},
	["brass-gear-wheel"]={plates=1, gear=1},
	["copper-tungsten-gear-wheel"]={plates=1, gear=1},
	["tungsten-gear-wheel"]={plates=1, gear=1},
	["pipe-mainline"]={plates=4, energy=1, machine=1},
	["pump-to-mainline"]={plates=14, energy=1, machine=1},
	["pump-from-mainline"]={plates=14, energy=1, machine=1},
	["pump-inline-mainline"]={plates=14, energy=1, machine=1},
	["mold-gear"]={resource=5, ["stone-gear-wheel"]=5, ["iron-gear-wheel"]=5, ["steel-gear-wheel"]=5},
	["mold-wire"]={resource=5, ["copper-cable"]=5},
	["mold-circuit"]={resource=5, ["electronic-circuit"]=5},
	["mold-ammo-basic"]={resource=5, ["basic-bullet-magazine"]=5},
	["mold-ammo-advanced"]={resource=5, ["piercing-bullet-magazine"]=5},
	["mold-tool"]={resource=5, ["steel-axe"]=2},
	["blast-furnace"]={["advanced-circuit"]=10, plates=60, resource=150, machine=1},
	["forge"]={["electronic-circuit"]=25, ["steel-gear-wheel"]=9, plates=50, machine=1},
	["air-intake"]={["copper-cable"]=10, plates=25, machine=1},
	["centrifuge"]={["steel-gear-wheel"]=25, ["copper-cable"]=10, plates=50, machine=1},
	["geothermal-extractor"]={["iron-gear-wheel"]=10, ["electronic-circuit"]=10, ["pipe"]=10, plates=15, machine=1, mining=1},
	["lava-handler"]={["boiler"]=2, ["steel-gear-wheel"]=5, ["advanced-circuit"]=8, ["pipe"]=8, machine=1},
	-- DyTech Meteors --
	-- DyTech Modules --
	["pollution-clean-module-1"]={plates=10, modules=1, ["electronic-circuit"]=5},
	["pollution-create-module-1"]={plates=10, modules=1, ["electronic-circuit"]=5},
	["pollution-clean-module-2"]={plates=10, modules=1, ["electronic-circuit"]=5, ["pollution-clean-module-1"]=1},
	["pollution-create-module-2"]={plates=10, modules=1, ["electronic-circuit"]=5, ["pollution-create-module-1"]=1},
	["pollution-clean-module-3"]={plates=5, modules=1, ["electronic-circuit"]=5, ["advanced-circuit"]=5, ["pollution-clean-module-2"]=1},
	["pollution-create-module-3"]={plates=5, modules=1, ["electronic-circuit"]=5, ["advanced-circuit"]=5, ["pollution-create-module-2"]=1},
	["pollution-clean-module-4"]={plates=5, modules=1, ["advanced-circuit"]=5, ["pollution-clean-module-3"]=1},
	["pollution-create-module-4"]={plates=5, modules=1, ["advanced-circuit"]=5, ["pollution-create-module-3"]=1},
	["speed-module-4"]={plates=5, modules=1, ["advanced-circuit"]=5, ["speed-module-3"]=1},
	["effectivity-module-4"]={plates=5, modules=1, ["advanced-circuit"]=5, ["effectivity-module-3"]=1},
	["productivity-module-4"]={plates=5, modules=1, ["advanced-circuit"]=5, ["productivity-module-3"]=1},
	["pollution-clean-module-5"]={plates=5, modules=1, ["processing-unit"]=5, ["pollution-clean-module-4"]=1},
	["pollution-create-module-5"]={plates=5, modules=1, ["processing-unit"]=5, ["pollution-create-module-4"]=1},
	["speed-module-5"]={plates=5, modules=1, ["processing-unit"]=5, ["speed-module-4"]=1},
	["effectivity-module-5"]={plates=5, modules=1, ["processing-unit"]=5, ["effectivity-module-4"]=1},
	["productivity-module-5"]={plates=5, modules=1, ["processing-unit"]=5, ["productivity-module-4"]=1},
	["pollution-clean-module-6"]={modules=1, ["processing-unit"]=5, ["pollution-clean-module-5"]=1},
	["pollution-create-module-6"]={modules=1, ["processing-unit"]=5, ["pollution-create-module-5"]=1},
	["speed-module-6"]={modules=1, ["processing-unit"]=5, ["speed-module-5"]=1},
	["effectivity-module-6"]={modules=1, ["processing-unit"]=5, ["effectivity-module-5"]=1},
	["productivity-module-6"]={modules=1, ["processing-unit"]=5, ["productivity-module-5"]=1},
	["pollution-clean-module-7"]={modules=1, ["processing-unit"]=5, ["advanced-processing-unit"]=5, ["pollution-clean-module-6"]=1},
	["pollution-create-module-7"]={modules=1, ["processing-unit"]=5, ["advanced-processing-unit"]=5, ["pollution-create-module-6"]=1},
	["speed-module-7"]={modules=1, ["processing-unit"]=5, ["advanced-processing-unit"]=5, ["speed-module-6"]=1},
	["effectivity-module-7"]={modules=1, ["processing-unit"]=5, ["advanced-processing-unit"]=5, ["effectivity-module-6"]=1},
	["productivity-module-7"]={modules=1, ["processing-unit"]=5, ["advanced-processing-unit"]=5, ["productivity-module-6"]=1},
	["pollution-clean-module-8"]={modules=1, ["advanced-processing-unit"]=25, ["pollution-clean-module-7"]=1},
	["pollution-create-module-8"]={modules=1, ["advanced-processing-unit"]=25, ["pollution-create-module-7"]=1},
	["speed-module-8"]={modules=1, ["advanced-processing-unit"]=25, ["speed-module-7"]=1},
	["effectivity-module-8"]={modules=1, ["advanced-processing-unit"]=25, ["effectivity-module-7"]=1},
	["productivity-module-8"]={modules=1, ["advanced-processing-unit"]=25, ["productivity-module-7"]=1},
	-- DyTech Storage --
	["stone-collector-1"]={plates=25, resource=25, chest=1},
	["sand-collector-1"]={plates=25, resource=25, chest=1},
	["coal-collector-1"]={plates=25, resource=25, chest=1},
	["wooden-chest-medium"]={["wood"]=16, chest=1},
	["wooden-chest-big"]={["wood"]=36, chest=1},
	["steel-chest-medium"]={plates=32, chest=1},
	["steel-chest-big"]={plates=72, chest=1},
	["iron-chest-medium"]={plates=32, chest=1},
	["iron-chest-big"]={plates=72, chest=1},
	-- DyTech Tools --
	["wooden-axe"]={["wood"]=4, mining=1},
	["stone-axe"]={["wood"]=2, resource=4, mining=1},
	["copper-axe"]={["iron-stick"]=2, plates=3, mining=1},
	["advanced-steel-axe"]={["iron-stick"]=2, plates=21, mining=1},
	["ruby-axe"]={["iron-stick"]=2, gems=8, mining=1},
	["sapphire-axe"]={["iron-stick"]=2, gems=8, mining=1},
	["emerald-axe"]={["iron-stick"]=2, gems=8, mining=1},
	["topaz-axe"]={["iron-stick"]=2, gems=8, mining=1},
	["diamond-axe"]={["iron-stick"]=2, gems=8, mining=1},
	["brass-axe"]={["iron-stick"]=2, plates=15, mining=1},
	["bronze-axe"]={["iron-stick"]=2, plates=15, mining=1},
	["gold-axe"]={["iron-stick"]=2, plates=15, mining=1},
	["silver-axe"]={["iron-stick"]=2, plates=15, mining=1},
	["tin-axe"]={["iron-stick"]=2, plates=15, mining=1},
	["tungsten-axe"]={["iron-stick"]=2, plates=15, mining=1},
	-- DyTech Transportation --
	["super-transport-belt"]={["steel-gear-wheel"]=2, ["express-transport-belt"]=1, belt=1},
	["super-transport-belt-to-ground"]={plates=20, belt=1, ["super-transport-belt"]=6},
	["super-splitter"]={["advanced-processing-unit"]=4, ["steel-gear-wheel"]=10, ["super-transport-belt"]=2, belt=1},
	["extreme-transport-belt"]={["advanced-processing-unit"]=1, ["steel-gear-wheel"]=5, ["super-transport-belt"]=1, belt=1},
	["extreme-transport-belt-to-ground"]={["extreme-transport-belt"]=6, plates=40, belt=1},
	["extreme-splitter"]={["advanced-processing-unit"]=10, ["steel-gear-wheel"]=20, ["extreme-transport-belt"]=2, belt=1},
	["car2"]={plates=75, tech=1, ["advanced-processing-unit"]=2, ["iron-stick"]=12},
	["diesel-locomotive-armor"]={["steel-gear-wheel"]=20, plates=45, tech=1, ["advanced-circuit"]=5},
	["diesel-locomotive-fast"]={["steel-gear-wheel"]=10, ["advanced-processing-unit"]=5, plates=20, tech=1},
	["cargo-wagon-armor"]={["steel-gear-wheel"]=10, resource=20, plates=20, tech=1},
	["cargo-wagon-fast"]={["steel-gear-wheel"]=10, plates=20, resource=5, tech=1},
	["cargo-wagon-large"]={plates=20, tech=1, resource=5, ["steel-gear-wheel"]=10},
	-- DyTech Warfare --
	["alien-artifact"]={alien=4},
	["sniper"]={["electronic-circuit"]=2, ["advanced-circuit"]=2, plates=45, gun=1},
	["gem-crusher"]={["steel-gear-wheel"]=5, ["assembling-machine-3"]=1, machine=1},
	["gem-grinder"]={["assembling-machine-2"]=2, ["steel-gear-wheel"]=5, plates=15, machine=1},
	["gem-polisher"]={["assembling-machine-3"]=2, gems=20, machine=1, plates=40},
	["compressor"]={["assembling-machine-2"]=2, plates=50, machine=1},
	["power-armor-mk3"]={["effectivity-module-3"]=56, ["power-armor-mk2"]=2, ["speed-module-3"]=30, plates=100, alien=150, armor=1},
	["basic-mining-drill-gem"]={["basic-mining-drill"]=1, gems=6, plates=10, mining=1, machine=1},
	["basic-laser-defense-equipment-2"]={["speed-module-3"]=2, ["laser-turret-5"]=5, plates=15, armor=1},
	["basic-laser-defense-equipment-3"]={["speed-module-3"]=8, ["laser-turret-8"]=5, plates=45, armor=1},
	["sniper-magazine"]={resource=3, plates=5, ammo=1},
	["sniper-turret"]={["sniper"]=1, ["advanced-circuit"]=25, ["advanced-processing-unit"]=5, plates=25, turret=1},
	["laser-turret-2"]={["battery"]=6, ["stone-gear-wheel"]=10, ["electronic-circuit"]=10, plates=10, gems=8, turret=1},
	["laser-turret-3"]={["battery"]=12, ["stone-gear-wheel"]=20, ["electronic-circuit"]=20, plates=20, gems=20, turret=1},
	["laser-turret-4"]={["battery"]=3, ["advanced-circuit"]=5, ["steel-gear-wheel"]=5, plates=5, gems=3, turret=1},
	["laser-turret-5"]={["battery"]=6, ["advanced-circuit"]=10, ["steel-gear-wheel"]=10, plates=10, gems=8, turret=1},
	["laser-turret-6"]={["battery"]=12, ["advanced-circuit"]=20, ["steel-gear-wheel"]=20, plates=20, gems=20, turret=1},
	["laser-turret-7"]={["battery"]=3, ["advanced-processing-unit"]=5, ["steel-gear-wheel"]=5, plates=5, gems=3, turret=1},
	["laser-turret-8"]={["battery"]=6, ["advanced-processing-unit"]=10, ["steel-gear-wheel"]=10, plates=10, gems=8, turret=1},
	["laser-turret-9"]={["battery"]=12, ["advanced-processing-unit"]=20, ["steel-gear-wheel"]=20, plates=20, gems=20, turret=1},
	["laser-turret-sniper-1"]={["battery"]=12, ["electronic-circuit"]=20, ["steel-gear-wheel"]=20, plates=20, gems=12, turret=1},
	["laser-turret-sniper=2"]={["battery"]=12, ["advanced-circuit"]=20, ["steel-gear-wheel"]=20, plates=40, gems=16, turret=1},
	["laser-turret-sniper=3"]={["battery"]=12, ["advanced-processing-unit"]=20, ["steel-gear-wheel"]=20, plates=80, gems=20, turret=1},
	["emerald-bullet-magazine"]={["piercing-bullet-magazine"]=2, gems=12},
	["diamond-bullet-magazine"]={["piercing-bullet-magazine"]=2, gems=12},
	["topaz-bullet-magazine"]={["piercing-bullet-magazine"]=2, gems=12},
	["sapphire-bullet-magazine"]={["piercing-bullet-magazine"]=2, gems=12},
	["ruby-bullet-magazine"]={["piercing-bullet-magazine"]=2, gems=12},
}