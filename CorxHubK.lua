local OrionLib = loadstring(game:HttpGet('https://raw.githubusercontent.com/ApolloThdz/Corx-Hub/main/OrionLibS'))()
local Window = OrionLib:MakeWindow({Name = "CorxHub", HidePremium = false, SaveConfig = true, ConfigFolder = "CorxKey", IntroText = "Corx Hub Key System"})
local Tab = Window:MakeTab({
    Name = "Key System",
    Icon = "rbxassetid://7733965118",
    PremiumOnly = false
})
local player = game:GetService("Players").LocalPlayer
OrionLib:MakeNotification({
    Name = "Key System!",
    Content = "Opa tudo bem, " .. player.Name .. ", Bem vindo ao Corx Hub",
    Image = "rbxassetid://7733965118",
    Time = 5
})
OrionLib:MakeNotification({
    Name = "Key System!",
    Content = "Por favor, " .. player.Name .. ", Insira a Chave de Ativação.",
    Image = "rbxassetid://7733965118",
    Time = 5
})

_G.PActivateKey = "#Perm-AKmc3951sad9024"
_G.PActivateInput = "string"
_G.PActivateRKey = "string"

function RandomK()
    local s = ""
    for i = 1, 15 do
        if math.random() > 0.5 then
            s = s .. string.char(math.random(65, 90))
        else
            s = s .. string.char(math.random(97, 122))
        end
    end
    return s
end

function AutoKeyRandomizer()
    while true do
        -- Gera uma nova chave aleatória
        _G.PActivateRKey = RandomK()
        wait(24 * 60 * 60)
        OrionLib:MakeNotification({
            Name = "Key System!",
            Content = "Sua Key Expirou",
            Image = "rbxassetid://7733965118",
            Time = 5
        })
    end
end
spawn(AutoKeyRandomizer)
Tab:AddTextbox({
    Name = "Chave de Ativação",
    Default = "",
    TextDisappear = true,
    Callback = function(Value)
        _G.PActivateInput = Value
    end
})

Tab:AddButton({
    Name = "Verify Key",
    Callback = function()
        if _G.PActivateInput == _G.PActivateKey then
            print("Chave Correta. Ativando Script Hub")
            OrionLib:MakeNotification({
                Name = "Key System!",
                Content = "Chave de Ativação Correta Executando o Script!!",
                Image = "rbxassetid://7733965118",
                Time = 5
            })
            loadstring(game:HttpGet(('https://raw.githubusercontent.com/ApolloThdz/Corx-Hub/main/CorxHub.lua')))()
        else
            OrionLib:MakeNotification({
                Name = "Key System!",
                Content = "Chave de Ativação Incorreta!",
                Image = "rbxassetid://7733965118",
                Time = 5
            })
            print("Chave Incorreta!")
        end
    end
})
