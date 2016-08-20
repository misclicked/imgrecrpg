local composer = require( "composer" )
local scene = composer.newScene()
local widget = require( "widget" )

local ItemBox = {}


ItemBox.new = function (t) 
	local itemBox = display.newGroup()
	local x = t.row
	local y = t.col
	
	local pictures = {}
	local count = 0
	
	--local gap = display.contentWidth / y
	
	local width = 100
	local height = 100
	local buttonWidth = 500
	local buttonHeight = 100
	local gap = 150
	local xa = tonumber(x)
	print (t,x,t.row , xa)
	
	if x % 2 == 0 then
		 xStarting =  display.contentCenterX -((((y/2) - 1)*gap ) + ((1/2)*gap))
	
	else 
		 xStarting =  display.contentCenterX -(((y - 1) / 2)*gap)
	end
	
	if y % 2 == 0 then
		 yStarting =  display.contentCenterY -((((x/2) - 1)*gap ) + ((1/2)*gap))
	else 
		 yStarting =  display.contentCenterY -(((x - 1) / 2)*gap)
	end
	
	local xCoordinate = xStarting
	local yCoordinate = yStarting
		
	local myButtonHandler =  function ( event )
		local background = display.newRect(display.contentCenterX,display.contentCenterY,display.contentWidth,display.contentHeight)
		background:setFillColor(math.random(),math.random(),math.random())
		
	end
	
	local myExitHandler =  function ( event )
		--local background = display.newRect(display.contentCenterX,display.contentCenterY,display.contentWidth,display.contentHeight)
		--background:setFillColor(math.random(),math.random(),math.random())
		--[[local options = {
		isModal = true,
		effect = "fade",
		time = 1000,
		params = {
        sampleVar = "my sample variable"
		}
	}	]]--
	print("Touch ended!!")
	if event.phase == "ended" then
        
		--local background = display.newRect(display.contentCenterX,display.contentCenterY,display.contentWidth,display.contentHeight)
		--background:setFillColor(math.random(),math.random(),math.random())
		print("sdfsd")
		composer.hideOverlay()
        
    end
		 
		
	end
	
	function scene:hide( event )
		local sceneGroup = self.view
		local phase = event.phase
		local parent = event.parent  --reference to the parent scene object

		if ( phase == "will" ) then
			-- Call the "resumeGame()" function in the parent scene
			
		end
	end
	
	for xCount = 1, x do
		for yCount = 1, y do
			
			print( "x:")
			print(xCount)
			print( "y:")
			print(yCount)
			print (xStarting,yStarting,width,height)
			local box = display.newRect( xCoordinate,yCoordinate,width,height )
			box:addEventListener("touch", myButtonHandler)
			--box:setFillColor(0.7,0.8,1)
			itemBox:insert(box)
			
			--local image = newImage(pictures[count], display.ContentCenterX,display.ContentCenterX,display.ContentWidth,display.ContentHeight )
			
			xCoordinate =  xCoordinate + gap
			
			--image:scale(xScale, yScale)
		end
		xCoordinate = xStarting
		yCoordinate = yCoordinate + gap
	end

		xCoordinate = display.contentCenterX
		 box = display.newRect( xCoordinate,yCoordinate,buttonWidth,buttonHeight )
		box:setFillColor(0.5,0.4,1)
		box:addEventListener("touch", myExitHandler)
		itemBox:insert(box)
		
		return itemBox
end
	
scene:addEventListener( "hide", scene )	
return ItemBox
