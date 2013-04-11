local physics = require ("physics")
physics.start( )

--[[
--normal, debug, hybrid
physics.setDrawMode( "hybrid" )

local circle = display.newImage("ball.png")
--static, dynamic, kinematic
physics.addBody( circle, "dynamic", { density = 1.0, friction = 0.5, bounce = 0.3, radius=50 } )
--]]

--[[
local land = display.newRect( 0, 470, 320, 10 )
physics.addBody( land, "static", { friction = 0.3 } )

local circle = display.newCircle( 50, 50, 25 )
physics.addBody( circle, { bounce = 0.6 } )
--]]

--[[
physics.setGravity( 6, -9.8 )

local land = display.newRect( 
0, 470,  320, 10 )
physics.addBody( land, "static",
 { friction = 0.3 } )
local circle = display.newCircle( 50, 450, 25 )
physics.addBody( circle, { bounce = 0.6 } )
--]]

--[[
local land = display.newRect( 0, 470, 320, 10 )
physics.addBody( land, "static", { friction = 0.3 } )

local circle = display.newCircle( 50, 50, 25 )
physics.addBody( circle, { bounce = 0.6 } )

local function onCollision()
	land:setFillColor(250, 130, 10)
end

land:addEventListener("collision", onCollision)
--]]

local land = display.newRect( 0, 320, 320, 10 )
physics.addBody( land, "static", {isSensor = true} )

local circle = display.newCircle( 50, 50, 25 )
physics.addBody( circle, { bounce = 0.6 } )

local function onCollision()
	land:setFillColor(250, 130, 10)
end

land:addEventListener("collision", onCollision)
