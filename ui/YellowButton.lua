local NineSliceButton = require("ui.NineSliceButton")
local Panel = {}

Panel.new = function(w, h, options)
    local panel = NineSliceButton.new("yellow_button02", "yellow_button03", w, h, options)
    return panel
end

return Panel