local HttpService = game:GetService("HttpService")

local ItemList = {
    ["Murderers vs Sheriffs"] = {},
    ["Blox Fruits"] = {}
}

local Urls = {
    ["Murderers vs Sheriffs"] = "https://123demands.com/api/value-list?gameId=mvsd",
    ["Blox Fruits"] = "https://123demands.com/api/value-list?gameId=bf"
}

for GameName, Url in pairs(Urls) do
    for Index, Value in pairs(HttpService:JSONDecode(game:HttpGet(Url))) do
        ItemList[GameName][string.lower(Value.pets)] = Value
    end
end

local GetItemInfo = function(Game, Name, Property)
    return ItemList[Game][Name][Property]
end

print(GetItemInfo("Murderers vs Sheriffs", "Chrome Knife", "value"))
