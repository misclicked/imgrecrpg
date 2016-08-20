local composer = require("composer")
local widget = require( "widget" )
local composer = require( "composer" )
local Explosion = require("effects.Explosion")
local Scores = require("Scores")

local scene = composer.newScene()

local width = 1000
local height = 300

local xStarting = display.contentCenterX
local yStarting = display.contentHeight + (height / 2)

function scene:show( event )

    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)
		local endingsong = audio.loadSound( "ending1.mp3" )

    elseif ( phase == "did" ) then
        -- Code here runs when the scene is entirely on screen
			Scores:stop()
			local background = display.newRect(display.contentCenterX,display.contentCenterY, display.contentWidth, display.contentHeight)
			background:setFillColor(0.5,0.4,0.7,0)
					local options = 
			{
				--parent = textGroup,
				text = "Victory!",     
				x = xStarting,
				y = yStarting,
				width = width,
				height = height,
				
				fontSize = 100,
				align = "center"  -- alignment parameter
			}

		local myText = display.newText( options)
		
	
		myText:setFillColor( 1, 0, 0 )

		transition.to( myText, { time=2000, alpha=1, x= xStarting, y=display.contentHeight/2,xScale = 1.7, yScale = 1.7 } )

    end
end

scene:addEventListener( "show", scene )
return scene