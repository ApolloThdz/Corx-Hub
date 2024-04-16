local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/ApolloThdz/Corx-Hub/main/OrionLibS')))()
local Window = OrionLib:MakeWindow({Name = "Corx Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "Corx Hub", IntroText = "Corx Hub Loading...", IntroIcon = "rbxassetid://17165070203"})
local Discord = Window:MakeTab({
	Name = "Discord",
	Icon = "rbxassetid://7733964719",
	PremiumOnly = false
})
local Discord = Tab:AddSection({
	Name = "Copy Discord Invite Link"
})
Discord:AddButton({
    Name = "Copy Discord Invite",
    Callback = function()
        local discordInvite = "https://discord.gg/hWT29VhuKR"
        setclipboard(discordInvite)
    end
})
local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://7733960981",
	PremiumOnly = false
})




























































First_Sea = false
Second_Sea = false
Third_Sea = false
local placeId = game.PlaceId
if placeId == 2753915549 then
      First_Sea = true
elseif placeId == 4442272183 then
      Second_Sea = true
elseif placeId == 7449423635 then
      Third_Sea = true
end

local httpHook;
httpHook = hookfunction(game.HttpGet, function(self,...)
   local Args = {...}
   if Args[1] and type(Args[1]) == "string" then
       if Args[1]:match("checkPremium.php") then
           return "true"
       end
   end
   return httpHook(self,...)
end)
