local widget = require("widget")
local Sprite = require("Sprite")
local logger = require("logger")
local sfx = require("sfx")
local gameConfig = require("gameConfig")
local TAG = "9-slice"
--local pathOfThisFile = ...
--print("Path! "..pathOfThisFile)
local NineSliceButton = {}

NineSliceButton.new = function(name1, name2, w, h, options)
    local path1 = string.format("UI/9slices/%s", name1)
    local path2 = string.format("UI/9slices/%s", name2)
    local button = display.newGroup()
    button.pressSound = gameConfig.buttonSound

    local _w = math.floor(w)
    local _h = math.floor(h)

    logger:info(TAG, "New 9-slice %s %s with w:%d, h:%d ", path1, path2, _w, _h)

    button.disableClickSound = (options and options.disableClickSound) or false

    local function onEvent(event)
        button.buttonView:onTouch(event)
    end
    button.createView = function(self, w, h)
        --print("!!!!!!!!!", Sprite.myImageSheet)
        self.w = w
        self.h = h
        self.buttonView = widget.newButton({
            width = w,
            height = h,
            sheet = Sprite.myImageSheet,
            topLeftFrame = Sprite.getFrameIndex(string.format("%s_0_0", path1)),
            topMiddleFrame = Sprite.getFrameIndex(string.format("%s_0_1", path1)),
            topRightFrame = Sprite.getFrameIndex(string.format("%s_0_2", path1)),
            middleLeftFrame = Sprite.getFrameIndex(string.format("%s_1_0", path1)),
            middleFrame = Sprite.getFrameIndex(string.format("%s_1_1", path1)),
            middleRightFrame = Sprite.getFrameIndex(string.format("%s_1_2", path1)),
            bottomLeftFrame = Sprite.getFrameIndex(string.format("%s_2_0", path1)),
            bottomMiddleFrame = Sprite.getFrameIndex(string.format("%s_2_1", path1)),
            bottomRightFrame = Sprite.getFrameIndex(string.format("%s_2_2", path1)),
            topLeftOverFrame = Sprite.getFrameIndex(string.format("%s_0_0", path2)),
            topMiddleOverFrame = Sprite.getFrameIndex(string.format("%s_0_1", path2)),
            topRightOverFrame = Sprite.getFrameIndex(string.format("%s_0_2", path2)),
            middleLeftOverFrame = Sprite.getFrameIndex(string.format("%s_1_0", path2)),
            middleOverFrame = Sprite.getFrameIndex(string.format("%s_1_1", path2)),
            middleRightOverFrame = Sprite.getFrameIndex(string.format("%s_1_2", path2)),
            bottomLeftOverFrame = Sprite.getFrameIndex(string.format("%s_2_0", path2)),
            bottomMiddleOverFrame = Sprite.getFrameIndex(string.format("%s_2_1", path2)),
            bottomRightOverFrame = Sprite.getFrameIndex(string.format("%s_2_2", path2)),
            onEvent = onEvent,
            --isEnabled = false,

        })
        self:insert(self.buttonView)
        self.buttonView.x = 0
        self.buttonView.y = 0
        self.propagating = true
    end

    button:createView(_w, _h)

    function button:setText(text, font, fontSize)
        if not text then
            text = ""
        end
        if not font then
            font = ""
        end
        if not fontSize then
            fontSize = 35
        end
        if not self.buttonText then
            self.buttonText = display.newText(text, 0, 0, font, fontSize)
            self.buttonText.x = 0
            self.buttonText.y = 0
            button:insert(self.buttonText)
        else
            self.buttonText.text = text
        end
    end

    function button.buttonView:onTouch(event)
        --print("touch: "..event.phase.."/"..event.phase.." on "..self.id)
        if event.phase == "ended" then
            button:playSound()
        end        
        button:onTouch(event)
        --return false treat as background
        return self.propagating --false
    end
    
    --button:addEventListener("touch", self)
    
    function button:playSound()
        if not button.disableClickSound then
            --sfx:play(self.pressSound)
        end
    end

    function button:onTouch(func, propagating)
        
    end

    function button:setWidth(w)
        --print("set w ", w)
        self.w = w
        if button.buttonView.x then
            button.buttonView:removeSelf()
        end
        
        if w > 0 then
            self:createView(w, self.h)
        end
        --[[
        if w == 0 then
            self.xScale = 0.001
            self.isVisible = false
        else
            self.isVisible = true
            self.xScale = w/self.width
        end
        --]]
    end

    function button:setHeight(h)
        self.h = h
        if button.buttonView.x then
            button.buttonView:removeSelf()
        end
        
        if h > 0 then
            self:createView(self.w, h)
        end
        --[[if h == 0 then
            self.yScale = 0.001
            self.isVisible = false
        else
            self.yScale = h/self.height
            self.isVisible = true
        end--]]
    end
    return button
end

return NineSliceButton