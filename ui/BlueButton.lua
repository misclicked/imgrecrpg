local NineSliceButton = require("ui.NineSliceButton")
local Panel = {}

Panel.new = function(w, h, options)
    local panel = NineSliceButton.new("blue_button02", "blue_button03", w, h, options)
    return panel
end

return Panel