local Sprite = require("Sprite")
local Bubble = require("ui.GreyPanel")
local Character = {}
local inventory = require( "inventory" )
--
Character.new = function()
    local character = display.newGroup()
    character.sprite = Sprite.new("Player/p3_front")
    character:insert(character.sprite)
    character.bubble = Bubble.new(character.sprite.contentWidth * 3, character.sprite.contentWidth)
    character.bubble.alpha = 0
    character:insert(character.bubble)
    character.questionText = "我好餓 :("
    character.clearIcon = Sprite.new("UI/Icon/check4")
    character.bubble:insert(character.clearIcon)
    character.bubble:setText("")
    character.bubble.buttonText.fill = {0,0,0}

    function character:showBubble()
        self.bubble.x = 0
        self.bubble.y = - self.sprite.contentHeight

        transition.to(self.bubble, {time = 250, alpha = 1})

        if false then
            self:setClear()
        else
            self:setUnClear()
        end
    end

    function character:hideBubble()
        transition.to(self.bubble, {time = 250, alpha = 0})
    end

    function character:isFinishQuest(item)
        print("Kevin-----------".. item)
        return inventory:hasItem(item)
        --return false
    end

    function character:setUnClear()
        self.bubble:setText(character.questionText)
        self.clearIcon.alpha = 0
    end

    function character:setClear()
        self.bubble:setText("")
        self.clearIcon.alpha = 1
    end

    return character
end

return Character