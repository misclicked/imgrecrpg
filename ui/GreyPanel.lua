local NineSliceButton = require("ui.NineSliceButton")
local Panel = {}

Panel.new = function(w, h, options)
    local panel = NineSliceButton.new("grey_panel", "grey_panel", w, h, options)
    return panel
end

return Panel