local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Corx Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "Corx Hub", IntroText = "Corx Hub Loading...", IntroIcon = "rbxassetid://17165070203"})
local Tab = Window:MakeTab({
	Name = "Discord",
	Icon = "rbxassetid://7733964719",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "Copy Discord Invite Link"
})
Tab:AddButton({
	Name = "Copy Discord Invite",
	Callback = function()
             setClipboardContent("https://discord.gg/hWT29VhuKR")
  	end    
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
