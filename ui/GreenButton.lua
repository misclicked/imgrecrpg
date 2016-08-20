local NineSliceButton = require("ui.NineSliceButton")
local Panel = {}

Panel.new = function(w, h, options)
    local panel = NineSliceButton.new("green_button02", "green_button03", w, h, options)
    return panel
end

return Panel