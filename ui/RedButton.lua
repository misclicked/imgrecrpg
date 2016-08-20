local NineSliceButton = require("ui.NineSliceButton")
local Panel = {}

Panel.new = function(w, h, options)
    local panel = NineSliceButton.new("red_button01", "red_button00", w, h, options)
    return panel
end

return Panel