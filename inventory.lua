local inventory = {}
inventory.items = {}

function inventory:addItem(item)
    inventory.items[#inventory.items + 1] = item
end

function inventory:getItem(index)
    return inventory.items[index]   
end

function inventory:hasItem(item)
    for i = #inventory.items,1,-1 do
        if item == inventory.items[i] then
            return true
        end
    end
    return false
end

return inventory