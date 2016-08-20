local lfs = require "lfs"
local logger = require("logger")
local config = require("gameConfig")
local TAG = "audio"
local sfx = {}

sfx.CHANNEL_BG = 1
sfx.CHANNEL_UI = 2
sfx.CHANNEL_CH1_LASER = 3

function sfx:initVolumn()
  --local masterVolume = audio.getVolume()  
  --print( "volume "..masterVolume )
  audio.setVolume( 0.7, { channel = self.CHANNEL_BG } )  --music track
  audio.setVolume( 0.8, { channel = self.CHANNEL_UI } )  --ui
  audio.setVolume( 0.8, { channel = self.CHANNEL_CH1_LASER } )

  --audio.setVolume( 0.8,  { channel = 3 } )  --Lesser
end

sfx.bg = {
  handle = audio.loadSound( "sounds/bg1.mp3" ),
  channel = sfx.CHANNEL_BG
}

sfx.hit = {
	handle = audio.loadSound( "sounds/hit.mp3" ),
}

function sfx:init()
  audio.reserveChannels(3)
  self:initVolumn()
end

function sfx:play(name, options)
    if not config.soundOn then
      return
    end
    self:initVolumn()

    if not options then
      options = {}
    end

    local reservedChannel = self[name].channel

    if reservedChannel and reservedChannel ~= 0 then
      audio.stop(reservedChannel)
      options.channel = reservedChannel
    else
      local availableChannel = audio.findFreeChannel( 4 )
      audio.setVolume( 1, { channel=availableChannel } )
      options.channel = availableChannel
    end

    local currentVolumn = audio.getVolume( { channel = options.channel } )

    --logger:debug(TAG, "Play sound %s at channel %d with volume %d", name, options.channel, currentVolumn)


    return audio.play(self[name].handle, options)
    
end

function sfx:fadeOut(channel, time)
  audio.fadeOut(channel, time)
end

function sfx:pause(channel)
    audio.pause(channel)
end

function sfx:stop(channel)
    if not channel then
      audio.stop()
    else
      audio.stop(channel)
    end
end

function sfx:pause(channel)
  audio.pause(channel)
end

function sfx:resume(channel)
  audio.resume(channel)
end

sfx:init()

return sfx