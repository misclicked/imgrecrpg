local json = require( "json" )
local MultipartFormData = require("class_MultiPartData")
local cameraMod={}
function cameraMod.new()
	local cameraModule={}

	cameraModule.apiInfo={
		url_general= "https://api.clarifai.com/v1/tag/",
		url_color= "https://api.clarifai.com/v1/color/",
		url_usage= "https://api.clarifai.com/v1/usage/",
		token_type="",
		expires_in=-1,
		access_token="",
		client_secret="UnwEMqgOR5IsEusVoE30x20aP_hXyuJ6jhaFRKoC",
		client_id="kjs1TMz0Hm9wZfuS5IfAKZ6Q6sD5oHwL9bc_LVwY",
		resizeImage = function(oldFileName,newFileName, width, height)
			local endWidth = width * display.contentScaleX
			local endHeight = height * display.contentScaleY

			local tempGroup = display.newGroup()
			local photo= display.newImage( oldFileName,system.DocumentsDirectory )
			photo.anchorX   = 0.5
			photo.anchorY   = 0.5
			photo.x         = display.contentCenterX
			photo.y         = display.contentCenterY
			tempGroup:insert(photo)

			-- Find the bigger scale out of widht or height so it will fill in the crop
			local scale = math.max(endWidth / photo.contentWidth, endHeight / photo.contentHeight)
			photo.width = photo.width * scale
			photo.height = photo.height * scale

			-- This object will be used as screen capture boundaries object
			local cropArea   = display.newRect(display.contentCenterX, display.contentCenterY, endWidth, endHeight)
			cropArea.anchorX = 0.5
			cropArea.anchorY = 0.5
			cropArea.x       = display.contentCenterX
			cropArea.y       = display.contentCenterY
			cropArea.alpha   = 0
			tempGroup:insert(cropArea)

			-- Now capture the crop area which the user image will be underneith
			local myCaptureImage = display.captureBounds(cropArea.contentBounds)

			myCaptureImage.anchorX  = 0.5
			myCaptureImage.anchorY  = 0.5
			myCaptureImage.x        = display.contentCenterX
			myCaptureImage.y        = display.contentCenterY

			display.save(myCaptureImage, newFileName)
			myCaptureImage:removeSelf() -- Remove captured image since we have the image already visible
			myCaptureImage = nil

			tempGroup:removeSelf()
			tempGroup = nil
		end,
		isImageExist = function(self)
			local path = system.pathForFile("UnProsImage.jpg", system.DocumentsDirectory )
			local fhd = io.open( path )
			if fhd then
			   fhd:close()
			   return true
			else
			    return false
			end
		end,
		sendUsageReq = function(self)
			local function networkListener( event )
			 if ( event.isError ) then
				  print( "Network error: ", event.response )
			 else
				 print(event.response)
				 return event.response
			 end
			end

			local headers = {}
			headers["Content-Type"] = "application/x-www-form-urlencoded"
			headers["Authorization"]=string.format("%s %s",self.token_type,self.access_token)
			local params = {}
			params.headers = headers
			params.body=""
			network.request(self.url_usage,"GET",networkListener,params)
		end,
		sendImages = function(self,onComplete)
			self.resizeImage("UnProsImage.jpg","NewImage.jpg", 250, 250)
			local multipart = MultipartFormData.new()
			multipart:addHeader("Authorization", string.format("%s %s",self.token_type,self.access_token))
			multipart:addFile("encoded_data", system.pathForFile( "NewImage.jpg", system.DocumentsDirectory ), "multipart/form-data", "NewImage.jpg")

			local params = {}
			params.body = multipart:getBody() -- Must call getBody() first!
			params.headers = multipart:getHeaders() -- Headers not valid until getBody() is called.

			local function networkListener( event )
			        if ( event.isError ) then
						  	print("ERROR ",event.response)
			            native.showAlert("Corona","NetWork Error. Please retry!",{"OK"})
			        else
			             if event.response then
								 local _tableR=json.decode(event.response)
								--  print("RESPONSE",event.response)
								 onComplete(_tableR.results[1].result.tag.classes)
								 return
							 else
								 return nil
							end
			        end
			end

			network.request(self.url_general, "POST", networkListener, params)
		end,
		getToken= function(self,is,onComplete)
			local function networkListener( event )
			 if ( event.isError ) then
				  print( "Network error: ", event.response )
			 else
				 local res=json.decode(event.response)
				 self.access_token=res.access_token
				 self.expires_in=res.expires_in
				 self.token_type=res.token_type
				--  print ( "RESPONSE: " , event.response )
				 -- call back
				 if is==1 then
				 	return self:sendImages(onComplete)
				elseif is==2	then
					return self:sendUsageReq()
			 	 end
			 end
			end
			local headers = {}
			headers["Content-Type"] = "application/x-www-form-urlencoded"
			headers["Accept-Language"] = "en-US"
			local body = string.format("client_id=%s&client_secret=%s&grant_type=client_credentials",self.client_id,self.client_secret)
			local params = {}
			params.headers = headers
			params.body = body
			network.request("https://api.clarifai.com/v1/token/","POST",networkListener,params)
		end,
		getUsage = function(self)
			res={}
			if self.access_token=="" then
				res=self:getToken(2)
			else
				res=self:sendUsageReq()
			end
			print(json.encode(res))
		end,
		--get Tags
		getTags = function(self, onComplete)
			res={}
			if not self:isImageExist() then
				print("Image Doesn't Exist")
				return nil
			else
				self:getToken(1,onComplete)
			end
		end,
	}

	function cameraModule:shoot(cb,debug)
		local function onComplete( event )
			self.apiInfo:getTags(cb)
		end
		if debug~=nil then
			cb({"young","food","bottle","adult","pencil","glasses"})
		elseif media.hasSource( media.Camera ) then
		    media.capturePhoto( { listener=onComplete,
			 destination ={
				 baseDir=system.DocumentsDirectory,
				 filename="UnProsImage.jpg",
				 type="image"
			 }
			 })
		else
		    native.showAlert( "Corona", "This device does not have a camera.", { "OK" } )
		end
	return cameraModule
end
return cameraMod
