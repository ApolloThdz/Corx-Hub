local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Corx Hub",HidePremium = false,SaveConfig = true,ConfigFolder = "CorxHub",IntroText = "Key System"})

_G.KeySystem = true
_G.KeyInput = "strings"
_G.KeyHub = "strings"
_G.keyLength = 15

local function generateRandomKey(length)
    local key, characters = "", "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    for i = 1, length do
        local randomIndex = math.random(1, #characters)
        key = key .. string.sub(characters, randomIndex, randomIndex)
    end
    return key
end

_G.KeyHub = generateRandomKey(_G.keyLength)

local Tab = Window:MakeTab({
    Name = "Key System",
    Icon = "rbxassetid://7733965118",
    PremiumOnly = false
})
local Section = Tab:AddSection({
    Name = "Key System - - - C o r x H u b"
})
Tab:AddTextbox({
    Name = "Key Inputer",
    Default = "Key Here",
    TextDisappear = true,
    Callback = function(Value)
        _G.KeyInput = Value
    end
})

Tab:AddButton({
    Name = "Check Key!",
    Callback = function()
        if _G.KeyInput == _G.KeyHub then
            print("Key Correct")
        else
            print("Incorrect Key")
        end
    end
})

print("Your Key Generated is:", _G.KeyHub)
