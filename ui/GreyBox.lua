local NineSliceButton = require("ui.NineSliceButton")
local Panel = {}

Panel.new = function(w, h, options)
    local panel = NineSliceButton.new("grey_box", "grey_box", w, h, options)
    return panel
end

return Panel