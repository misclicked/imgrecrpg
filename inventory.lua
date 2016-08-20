local inventory = {}
inventory.items = {}
inventory.dictionary = {}
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
   inventory.dictionary["man"] = "Items.Man"
   inventory.dictionary["girl"] = "Items.Woman"
   inventory.dictionary["boy"] = "Items.Man"
   inventory.dictionary["woman"] = "Items.Woman"
   inventory.dictionary["old"] = "Items.Man"
   inventory.dictionary["adult"] = "Items.Man"
   inventory.dictionary["young"] = "Items.Man"
   inventory.dictionary["male"] = "Items.Man"
   inventory.dictionary["female"] = "Items.Woman"

   inventory.dictionary["sword"] = "Items.Sword"
   inventory.dictionary["knife"] = "Items.Sword"
   inventory.dictionary["sharp"] = "Items.Sword"

   inventory.dictionary["bottle"] = "Items.RedPotion"
   inventory.dictionary["glasses"] = "Items.RedPotion"
   inventory.dictionary["potion"] = "Items.RedPotion"
   inventory.dictionary["can"] = "Items.RedPotion"

   inventory.dictionary["food"] = "Items.Food"
   inventory.dictionary["meat"] = "Items.Food"
   inventory.dictionary["cookie"] = "Items.Food"
   inventory.dictionary["cake"] = "Items.Food"
   inventory.dictionary["pizza"] = "Items.Food"
   inventory.dictionary["chicken"] = "Items.Food"
   inventory.dictionary["pork"] = "Items.Food"
   inventory.dictionary["beef"] = "Items.Food"
   inventory.dictionary["lamb"] = "Items.Food"
   inventory.dictionary["steak"] = "Items.Food"
   inventory.dictionary["yummy"] = "Items.Food"
   inventory.dictionary["potato"] = "Items.Food"


end

return inventory