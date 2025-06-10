-- imagine skidding kid

game:GetService("StarterGui"):SetCore("SendNotification",{ 	
	Title = "wait...",  	
	Text = "loading...",
})

wait()

game:GetService("StarterGui"):SetCore("SendNotification",{ 	
	Title = "Loaded Rev Hub!",  	
	Text = "Have fun! Made by Ron144.",
})

-- The Script itself

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/revx0012/RevHub/refs/heads/main/library.lua"))()

-- The hub configuration
local Window = Library.CreateLib("Rev Hub", "GrapeTheme")

-- Scripts Tab
local Tab = Window:NewTab("Scripts")
local Section = Tab:NewSection("Script")

Section:NewButton("Infinite Yield", "infinite yield fe", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
end)

Section:NewButton("Fling GUI", "fling gui",function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/revx0012/RevHub/refs/heads/main/flinggui.lua', true))()
end)

Section:NewButton("Keyboard v1", "keyboard script on mobile",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))() 
end)

Section:NewButton("Keyboard v2", "better version",function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/revx0012/RevHub/refs/heads/main/keyboardv2.lua'))()
end)

Section:NewButton("Fly gui v3", "fly gui script",function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/revx0012/RevHub/refs/heads/main/flyguiv3.lua'),true))()
end)

Section:NewButton("VFly GUI", "vehicle fly gui",function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/revx0012/RevHub/refs/heads/main/vflygui.lua'))()
end)

Section:NewButton("Chat Bypasser (Vadrfits, might not work)", "old chat bypass that doesnt work well",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/revx0012/RevHub/refs/heads/main/vadrfits-old.lua"))()
end)

Section:NewButton("Chat Bypasser (UC)", "good free chat bypass",function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/cheatplug/usercreated/refs/heads/main/main.lua'))()
end)

Section:NewButton("Forsaken GUI (Key Req, see info)", "key for free users are Photon-Free-User also bad ui in mobile",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/NittarPP/PhotonScript/refs/heads/main/Loading/Loading.lua"))()
end)

Section:NewButton("RNG Droids", "has just 3 button like kill all stuff",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/revx0012/RevHub/refs/heads/main/RGDGui.lua"))()
end)

Section:NewButton("Ride Cart GUI", "lol cart go boom boom",function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/revx0012/RevHub/refs/heads/main/ridecartgui.lua'))()
end)

Section:NewButton("Backdoor.exe (Discontinued)", "sad script",function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/revx0012/RevHub/refs/heads/main/backdoor.lua'))()
end)

Section:NewButton("Animations for R15/R6", "c'mon man it works!", function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/revx0012/RevHub/refs/heads/main/animationsr15r6.lua'))()
end)

Section:NewButton("Anti Chat Logger", "yo chat is this real?",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AnthonyIsntHere/anthonysrepository/main/scripts/AntiChatLogger.lua"))()
end)

Section:NewButton("Sword Burst Gui", "hehehe",function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/noobscripter38493/Swordburst-2/main/script.lua'))()
end)

-- Other Things Tab
local Tab2 = Window:NewTab("Other Things")
local SectionO = Tab2:NewSection("Others")

SectionO:NewSlider("Speed", "Boost Your Speed!", 300, 16, function(v)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
end)

SectionO:NewButton("Infinite Zoom", "makes your camera zoom infinite",function()
	game.Players.LocalPlayer.CameraMaxZoomDistance = math.huge
end)

SectionO:NewKeybind("Toggle", "Shows/Hides GUI when button has been pressed", Enum.KeyCode.LeftAlt, function()
	Library:ToggleUI()
end)

-- Arceus X Tab
local Tab3 = Window:NewTab("Arceus X")
local ArceusX = Tab3:NewSection("Arceus X")

ArceusX:NewButton("Arceus X Aimbot", "aim bot from arceus x only",function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/Arceus%20Aimbot.lua'))()
end)

ArceusX:NewButton("Arceus X V3", "arceus x",function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/Arceus%20X%20V3'))()
end)

-- Prison Life
local Tab4 = Window:NewTab("Prison Life")
local prisonlife = Tab4:NewSection("Scripts")

prisonlife:NewButton("Prison Life Gui", "hehehe",function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/revx0012/RevHub/refs/heads/main/prisonlife1.lua'))()
end)

prisonlife:NewButton("Prison Life Ruiner Gui", "hey, I think it's bad?",function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/revx0012/RevHub/refs/heads/main/prisonlife2.lua'))()
end)

prisonlife:NewButton("Prison Life Tiger Admin", "is it powerful?",function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/revx0012/RevHub/refs/heads/main/prisonlife3.lua'))()
end)

prisonlife:NewButton("PrisonBreaker V1.5", "lol!",function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/revx0012/RevHub/refs/heads/main/prisonlife4.lua'))()
end)

prisonlife:NewButton("Aimbot", "yeah, it might work in some games not just prison life!",function()
	local Players = game.Players
	local LocalPlayer = Players.LocalPlayer
	local GetPlayers = Players.GetPlayers
	local Camera = workspace.CurrentCamera
	local WTSP = Camera.WorldToScreenPoint
	local FindFirstChild = game.FindFirstChild
	local Vector2_new = Vector2.new
	local Mouse = LocalPlayer.GetMouse(LocalPlayer)

	function ClosestChar()
		local Max, Close = math.huge
		for I,V in pairs(GetPlayers(Players)) do
			if V ~= LocalPlayer and V.Team ~= LocalPlayer.Team and V.Character then
				local Head = FindFirstChild(V.Character, "Head")
				if Head then
					local Pos, OnScreen = WTSP(Camera, Head.Position)
					if OnScreen then
						local Dist = (Vector2_new(Pos.X, Pos.Y) - Vector2_new(Mouse.X, Mouse.Y)).Magnitude
						if Dist < Max then
							Max = Dist
							Close = V.Character
						end
					end
				end
			end
		end
		return Close
	end

	local MT = getrawmetatable(game)
	local __namecall = MT.__namecall
	setreadonly(MT, false)
	MT.__namecall = newcclosure(function(self, ...)
		local Method = getnamecallmethod()
		if Method == "FindPartOnRay" and not checkcaller() and tostring(getfenv(0).script) == "GunInterface" then
			local Character = ClosestChar()
			if Character then
				return Character.Head, Character.Head.Position
			end
		end
		return __namecall(self, ...)
	end)
	setreadonly(MT, true)
end)

-- Natural Disaster
local naturally = Window:NewTab("Natural Disaster")
local natural = naturally:NewSection("Scripts (they may not work)")

natural:NewButton("Script 1", "...",function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/2dgeneralspam1/scripts-and-stuff/master/scripts/LoadstringUjHI6RQpz2o8", true))()
end)

natural:NewButton("Script 2", "...",function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/SmartModBoy/VortexAblity/main/SV'))()
end)

natural:NewButton("Block Ring (See info)", "Makes blocks spin around you like a ring which also can fling and destroy the map which is funny",function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/revx0012/RevHub/refs/heads/main/blockfling.lua'))()
end)

-- Blox Fruits 
local Tab5 = Window:NewTab("Blox Fruit")
local SectionB = Tab5:NewSection("Keyless Scripts")

SectionB:NewButton("Blox Fruit Script 1", "yo chat is this real?",function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/revx0012/RevHub/refs/heads/main/BloxFruit.lua'))()
end)

SectionB:NewButton("Blox Fruit Script 2", "yo chat is this real?",function() 
	loadstring(game:HttpGet("https://raw.githubusercontent.com/PNguyen0199/Script/main/Fai-Fao.lua",true))()
end)

-- Saber Showdown
local Tab6 = Window:NewTab("Prison Life")
local saber = Tab6:NewSection("Scripts")

SectionB:NewButton("Speed Swing & Auto Block", "Not bad",function() 
	loadstring(game:HttpGet("https://raw.githubusercontent.com/revx0012/RevHub/refs/heads/main/speedswing-autoblock.txt",true))()
end)

SectionB:NewButton("Blox Fruit Script 2", "stamina, auto kills, god mode, in one button.",function() 
	loadstring(game:HttpGet("https://raw.githubusercontent.com/revx0012/RevHub/refs/heads/main/infstam-godmode.txt",true))()
end)
