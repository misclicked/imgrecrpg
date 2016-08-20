local NineSliceButton = require("ui.NineSliceButton")
local Panel = {}

Panel.new = function(w, h, options)
    local panel = NineSliceButton.new("grey_button03", "grey_button02", w, h, options)
    return panel
end

return Panel