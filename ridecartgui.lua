--Not obfuscated because I don't care
--Works best with the rdite one Idk about the others

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/revx0012/pastebin-stuff/refs/heads/main/libary.lua"))()
local Window = Library.CreateLib("Cart Ride Into Rdite", "Ocean")

--TABS
local Cart = Window:NewTab("Carts")
local Plr = Window:NewTab("Player")
local Setting = Window:NewTab("Info/Setting")

--SECTIONS INSIDE TABS
local CartMain = Cart:NewSection("Carts")
local AutoCart = Cart:NewSection("Auto Cart")

local PlrMod = Plr:NewSection("Modification")
local PlrTP = Plr:NewSection("Teleports")

local SettingGUI = Setting:NewSection("GUI")

--CART TAB BEGINS
CartMain:NewButton("Toggle All Carts", "Toggles activation on every cart that is spawned", function()
for i,v in pairs(game.workspace:GetDescendants()) do
if v.Name == "On" then
fireclickdetector(v.Click)
end
end
end)

CartMain:NewButton("Speed Up All Carts", "Speeds up every cart", function()
for i,v in pairs(game.workspace:GetDescendants()) do
if v.Name == "Up" then
fireclickdetector(v.Click)
end
end
end)

CartMain:NewButton("Slow Down All Carts", "Slows down every cart", function()
for i,v in pairs(game.workspace:GetDescendants()) do
if v.Name == "Down" then
fireclickdetector(v.Click)
end
end
end)

CartMain:NewButton("Spawn All Cart", "Spawns Every Cart", function()
for i,v in pairs(game.workspace:GetDescendants()) do
if v.Name == "1Regen" or v.Name == "2Regen" or v.Name == "3Regen" or v.Name == "4Regen" then
fireclickdetector(v.Click)
end
end
end)

--AUTO TAB BEGINS
AutoCart:NewToggle("Auto Toggle", "Really Annoying!", function(tog)
if tog == true then
    --yes ik i can just use _G, break or some other but nahhh
local TogAutoToggle = Instance.new("Part")
TogAutoToggle.Parent = workspace
TogAutoToggle.Name = "AutoTogSupport"
workspace.AutoTogSupport.Anchored = true

while workspace:FindFirstChild("AutoTogSupport") do
wait(.5)
for i,v in pairs(game.workspace:GetDescendants()) do
if v.Name == "On" then
fireclickdetector(v.Click)
end
end
end
     else
workspace.AutoTogSupport:Destroy()
    end
end)

AutoCart:NewToggle("Auto Speed Up", "Speeds every cart up super fast", function(tog)
if tog == true then
local TogAutoSpeed = Instance.new("Part")
TogAutoSpeed.Parent = workspace
TogAutoSpeed.Name = "AutoSpeedSupport"
workspace.AutoSpeedSupport.Anchored = true

while workspace:FindFirstChild("AutoSpeedSupport") do
wait(.1)
for i,v in pairs(game.workspace:GetDescendants()) do
if v.Name == "Up" then
fireclickdetector(v.Click)
end
end
end
     else
workspace.AutoSpeedSupport:Destroy()
    end
end)

AutoCart:NewToggle("Auto Slow Down", "Slows down every cart up super fast", function(tog)
if tog == true then
local TogAutoSlow = Instance.new("Part")
TogAutoSlow.Parent = workspace
TogAutoSlow.Name = "AutoSlowSupport"
workspace.AutoSlowSupport.Anchored = true

while workspace:FindFirstChild("AutoSlowSupport") do
wait(.1)
for i,v in pairs(game.workspace:GetDescendants()) do
if v.Name == "Down" then
fireclickdetector(v.Click)
end
end
end
     else
workspace.AutoSlowSupport:Destroy()
    end
end)

AutoCart:NewToggle("Auto Spawn Cart", "Spawns every cart in automatically", function(tog)
if tog == true then
local TogSpawnCart = Instance.new("Part")
TogSpawnCart.Parent = workspace
TogSpawnCart.Name = "AutoSpawnCart"
workspace.AutoSpawnCart.Anchored = true

while workspace:FindFirstChild("AutoSpawnCart") do
wait(.1)
for i,v in pairs(game.workspace:GetDescendants()) do
if v.Name == "1Regen" or v.Name == "2Regen" or v.Name == "3Regen" or v.Name == "4Regen" then
fireclickdetector(v.Click)
end
end
end
     else
workspace.AutoSpawnCart:Destroy()
    end
end)

--PLAYER TAB BEGINS
PlrMod:NewButton("Teleport Tool", "Equip and aim your mouse then click to TP to that position", function()
   mouse = game.Players.LocalPlayer:GetMouse()
tool = Instance.new("Tool")
tool.RequiresHandle = false
tool.Name = "TP Tool"
tool.Activated:connect(function()
local pos = mouse.Hit+Vector3.new(0,2.5,0)
pos = CFrame.new(pos.X,pos.Y,pos.Z)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
end)
tool.Parent = game.Players.LocalPlayer.Backpack
end)

PlrMod:NewButton("Infinite Zoom", "Gives infinite zoom", function()
game.Players.LocalPlayer.CameraMaxZoomDistance = math.huge
end)

PlrMod:NewButton("Get All Paths", "Gets all the paths", function()
local Hitter = game.Players.LocalPlayer.Character.HumanoidRootPart
for i, v in pairs(workspace:GetDescendants()) do
    if v.Name == "Giver" then
firetouchinterest(Hitter, v, 0)
wait(.1)
firetouchinterest(Hitter, v, 1)
end
end
end)

PlrMod:NewTextBox("WalkSpeed", "Type 're' to reset do default", function(txt)
 if txt == "re" then
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
        else
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = txt
end
end)

PlrMod:NewTextBox("JumpPower", "Type 're' to reset do default", function(txt)
if txt == "re" then
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
        else
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = txt
end
end)

PlrTP:NewButton("TP Spawn", "Teleports your character here", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(44, 13, -76)
end)

PlrTP:NewButton("TP Winners", "Teleports your character here", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(310, 863, 322)
end)

PlrTP:NewButton("TP Cart", "Teleports your character here", function()
for i,v in pairs(game.workspace:GetDescendants()) do
if v.Name == "Seat" then
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Position)
end
end
end)

PlrTP:NewTextBox("Goto Player", "Can be shortened", function(txt)
local player = game.Players.LocalPlayer
for i,v in pairs(game.Players:GetChildren()) do
if (string.sub(string.lower(v.Name),1,string.len(txt))) == string.lower(txt) then
txt = v.Name
end
end

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players[txt].Character.Head.Position)

end)

SettingGUI:NewKeybind("Toggle", "Shows/Hides GUI when button has been pressed", Enum.KeyCode.LeftAlt, function()
	Library:ToggleUI()
end)
