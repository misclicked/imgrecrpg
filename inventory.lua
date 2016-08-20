local inventory = {}
inventory.items = {}
inventory.dictionary = {}
inventory.translate = {}
function inventory:addItem(item)
    inventory.items[#inventory.items + 1] = item
end

function inventory:getItem(index)
    return inventory.items[index]   
end

function inventory:removeItem( index )
    table.remove(inventory.items,index)
end

function inventory:hasItem(item)
    for i = #inventory.items,1,-1 do
        if item == inventory.items[i] then
            return true
        end
    end
    return false
end

function inventory:makeDictionary( )
   inventory.dictionary["man"] = "items.Man"
   inventory.dictionary["girl"] = "items.Woman"
   inventory.dictionary["boy"] = "items.Man"
   inventory.dictionary["woman"] = "items.Woman"
   inventory.dictionary["old"] = "items.Man"
   inventory.dictionary["adult"] = "items.Man"
   inventory.dictionary["young"] = "items.Man"
   inventory.dictionary["male"] = "items.Man"
   inventory.dictionary["female"] = "items.Woman"

   inventory.dictionary["sword"] = "items.Sword"
   inventory.dictionary["knife"] = "items.Sword"
   inventory.dictionary["sharp"] = "items.Sword"
   inventory.dictionary["steel"] = "items.Sword"

   inventory.dictionary["bottle"] = "items.RedPotion"
   inventory.dictionary["glasses"] = "items.RedPotion"
   inventory.dictionary["potion"] = "items.RedPotion"
   inventory.dictionary["can"] = "items.RedPotion"

   inventory.dictionary["food"] = "items.Food"
   inventory.dictionary["meat"] = "items.Food"
   inventory.dictionary["cookie"] = "items.Food"
   inventory.dictionary["cake"] = "items.Food"
   inventory.dictionary["pizza"] = "items.Food"
   inventory.dictionary["chicken"] = "items.Food"
   inventory.dictionary["pork"] = "items.Food"
   inventory.dictionary["beef"] = "items.Food"
   inventory.dictionary["lamb"] = "items.Food"
   inventory.dictionary["steak"] = "items.Food"
   inventory.dictionary["yummy"] = "items.Food"
   inventory.dictionary["potato"] = "items.Food"

   inventory.translate["items.Food"] = "食物"
   inventory.translate["items.Man"] = "年輕男性"
   inventory.translate["items.RedPotion"] = "藥水"
   inventory.translate["items.Woman"] = "年輕女性"
   inventory.translate["items.Sword"] = "一把劍"
end

return inventory