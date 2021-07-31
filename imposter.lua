loadstring(game:HttpGet('https://raw.githubusercontent.com/Junniebug/susimposta/master/babft.lua'))()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Junniebug/susimposta/master/demonfall.lua'))()

local sheeesh = {
3978370137, -- gpo
6360478118, -- gpo universe hub
1730877806, -- gpo main menu
2809202155, -- yba
5094651510 -- demonfall
}

for _,xD in pairs(sheeesh) do
	if game['PlaceId'] == xD then
	loadstring(game:HttpGet('https://raw.githubusercontent.com/Junniebug/susimposta/master/fh.lua'))()
    end
end

spawn(function()
local lp = game:GetService('Players').LocalPlayer

if game['PlaceId'] == 2809202155 then return end
		
if lp.Name == "sjlyant" or "Juneuari" then

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Destroy = Instance.new("TextButton")

ScreenGui.Name = "ScreenGui"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

Frame.Parent = ScreenGui
Frame.Active = true
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.Position = UDim2.new(0.157894731, 0, 0.321041226, 0)
Frame.Selectable = true
Frame.Size = UDim2.new(0, 100, 0, 60)
Frame.Draggable = true
Frame.Transparency = 1

Destroy.Name = "Destroy"
Destroy.Parent = Frame
Destroy.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Destroy.Position = UDim2.new(0.0928495973, 0, 0.493851483, 0)
Destroy.Size = UDim2.new(0, 80, 0, 20)
Destroy.Font = Enum.Font.SourceSans
Destroy.Text = "Turn on IY"
Destroy.TextColor3 = Color3.fromRGB(0, 0, 0)
Destroy.TextScaled = true
Destroy.TextSize = 14.000
Destroy.TextWrapped = true
Destroy.MouseButton1Click:connect(function()
ScreenGui:Destroy()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Junniebug/susimposta/master/sussybaka.lua'))()
execCmd('hideiy')
execCmd('antiafk')
end)
else
loadstring(game:HttpGet('https://raw.githubusercontent.com/Junniebug/susimposta/master/sussybaka.lua'))()
execCmd('hideiy')
execCmd('antiafk')
end
            
getgenv().ws = false
            
local function sus()
    if ws == true then
 -- loadstring(game:HttpGet("https://pastebin.com/raw/UwFCVrhS", true))() someone else's pastebin
    loadstring(game:HttpGet("https://pastebin.com/raw/14V388Az", true))() -- mine :D
game.Players.LocalPlayer.Character.Humanoid:AddPropertyEmulator("WalkSpeed")
    end
end

game.Players.LocalPlayer.CharacterAdded:Connect(sus)
sus()
end)

    
