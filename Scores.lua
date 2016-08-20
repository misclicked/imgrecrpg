local json = require( "json" )

local scoreModule={}
scoreModule.oldTime= nil
scoreModule.newTime = nil
scoreModule.elapsedTime = nil
function scoreModule:start()
	self.oldTime = os.date( '*t' )
end

function scoreModule:stop()
	 self.newTime = os.date( '*t' ) 
	 self.elapsedTime = os.time(newTime) - os.time(oldTime)
	 print("SCORE: ", elapsedTime )
	  
	local function networkListener( event )
		 if ( event.isError ) then
			  print( "Network error: ", event.response )
		 else
			 --print(event.response)
			 return
		 end
	end

	local headers = {}
	headers["Content-Type"] = "application/x-www-form-urlencoded"
	local params = {}
	params.headers = headers
	params.body= string.format("name=Raymond&score=%d&levelId=12345678-001&comment=",self.elapsedTime)
	network.request('http://adventure.cloudapp.net/api/record',"POST",networkListener,params)
end
return scoreModule
