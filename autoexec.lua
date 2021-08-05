spawn(function() -- infinite yield
game.Loaded:Wait()

local lp = game:GetService('Players').LocalPlayer

if lp.Name == "Juneuari" then
--loadstring(game:HttpGet('https://raw.githubusercontent.com/Junniebug/susimposta/master/IY_GUI.lua'))()
elseif lp.Name == "sjlyant" then
--loadstring(game:HttpGet('https://raw.githubusercontent.com/Junniebug/susimposta/master/IY_GUI.lua'))()
elseif lp.Name == "d5qt" then
print(lp)
loadstring(game:HttpGet('https://raw.githubusercontent.com/Junniebug/susimposta/master/IY_GUI.lua'))()
elseif lp.Name == "junniekangbug" and game['PlaceId'] == 537413528 then
loadstring(game:HttpGet('https://raw.githubusercontent.com/Junniebug/susimposta/master/IY.lua'))()
execCmd('hideiy')
execCmd('antiafk')
execCmd('nosit')
wait(10800)
execCmd('rj')
else
loadstring(game:HttpGet('https://raw.githubusercontent.com/Junniebug/susimposta/master/IY.lua'))()
execCmd('hideiy')
execCmd('antiafk')
end
--[[
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
]]
end)

spawn(function() -- frosthub
loadstring(game:HttpGet('https://raw.githubusercontent.com/Junniebug/susimposta/master/FH.lua'))()
end)

spawn(function() -- gpo rejoin dungeon farm thing
if game['PlaceId'] ~= 3978370137 then return end
game.Loaded:Wait()

local poo = game.Players.LocalPlayer
		
if poo.Name == "Juneuari" then
wait(1200)
loadstring(game:HttpGet('https://raw.githubusercontent.com/Junniebug/susimposta/master/IY.lua'))()
execCmd('rj')
elseif poo.Name == "sjlyant" then
wait(1200)
loadstring(game:HttpGet('https://raw.githubusercontent.com/Junniebug/susimposta/master/IY.lua'))()
execCmd('rj')
else 
return 
end
end)

spawn(function() -- demonfall
if game['PlaceId'] ~= 5094651510 then return end

getgenv().poopoo = true
while poopoo do
    if workspace:FindFirstChild("Sound") and workspace:FindFirstChild("Sound").Volume ~= 0 then
        workspace:FindFirstChild("Sound").Volume = 0
    end
    
    if workspace:FindFirstChild("Theme") and workspace:FindFirstChild("Theme").Volume ~= 0 then
        workspace:FindFirstChild("Theme").Volume = 0
    end
    
    if workspace:FindFirstChild("AmbientSounds") then
        for i, v in pairs(workspace.AmbientSounds:GetChildren()) do wait(.5)
            if v:IsA("Sound") and v.Volume ~= 0 then
                v.Volume = 0   
wait(1)
            end
         end
      end
   end
end)

spawn(function() -- babft
if game['PlaceId'] ~= 537413528 then return end 

game.Loaded:Wait()
		
getgenv().ligmaxD = false

if ligmaxD then return end

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Destroy = Instance.new("TextButton")
local OffButton = Instance.new("TextButton")
local OnButton = Instance.new("TextButton")

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

Destroy.Name = "Destroy"
Destroy.Parent = Frame
Destroy.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Destroy.Position = UDim2.new(0.0928495973, 0, 0.493851483, 0)
Destroy.Size = UDim2.new(0, 80, 0, 20)
Destroy.Font = Enum.Font.SourceSans
Destroy.Text = "Destroy GUI"
Destroy.TextColor3 = Color3.fromRGB(0, 0, 0)
Destroy.TextScaled = true
Destroy.TextSize = 14.000
Destroy.TextWrapped = true
Destroy.MouseButton1Click:connect(function()
	ScreenGui:Destroy()
	getgenv().poop = false
	getgenv().ligmaxD = false
end)

OffButton.Name = "OffButton"
OffButton.Parent = Frame
OffButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
OffButton.Position = UDim2.new(0.0905555636, 0, 0.157666683, 0)
OffButton.Size = UDim2.new(0, 40, 0, 20)
OffButton.Font = Enum.Font.SourceSans
OffButton.Text = "Off"
OffButton.TextColor3 = Color3.fromRGB(0, 0, 0)
OffButton.TextScaled = true
OffButton.TextSize = 14.000
OffButton.TextWrapped = true
OffButton.MouseButton1Click:connect(function()
	getgenv().poop = false
end)

OnButton.Name = "OnButton"
OnButton.Parent = Frame
OnButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
OnButton.Position = UDim2.new(0.490940154, 0, 0.15773055, 0)
OnButton.Size = UDim2.new(0, 40, 0, 20)
OnButton.Font = Enum.Font.SourceSans
OnButton.Text = "On"
OnButton.TextColor3 = Color3.fromRGB(0, 0, 0)
OnButton.TextScaled = true
OnButton.TextSize = 14.000
OnButton.TextWrapped = true
OnButton.MouseButton1Click:connect(function()
getgenv().poop = true
	
function Tween(time,pos)
	if getgenv().poop == true then
		pcall(function()
	workspace.Gravity = 0
	game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(time, Enum.EasingStyle.Linear), {CFrame = pos}):Play() wait(time)
	workspace.Gravity = 196.19999694824
		end)
	end
end
				
function Repeat()
if getgenv().poop == true then
    wait(3)
	getgenv().leeleelooloo = true
	game:GetService("RunService").Heartbeat:Connect(function(step)
	    if leeleelooloo then
	        if game.Players.LocalPlayer.Character.HumanoidRootPart then
	            leeleelooloo = false
	        end
	    end
	end)
	if leeleelooloo == false then
	leeleelooloo = true
	local Stage = workspace.BoatStages.NormalStages
        Tween(0.5,game:GetService("Workspace").BoatStages.NormalStages.CaveStage1.DarknessPart.CFrame - Vector3.new(0,0,50))
	for i = 1,10 do
	Tween(2,Stage["CaveStage"..i].DarknessPart.CFrame)
	end
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Stage.TheEnd.GoldenChest.Trigger.CFrame
	wait(5)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Stage.TheEnd.GoldenChest.Trigger.CFrame
        end
    end
end
Repeat()
game.Players.LocalPlayer.CharacterAdded:Connect(Repeat)
game.Players.LocalPlayer.CharacterAdded:Connect(function()
workspace.ClaimRiverResultsGold:FireServer()
   end)
end)
getgenv().ligmaxD = true
-- delete below if i am not trying to do the auto rejoin every hour thing Lol Xd!
getgenv().poop = true
	
function Tween(time,pos)
	if getgenv().poop == true then
		pcall(function()
	workspace.Gravity = 0
	game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(time, Enum.EasingStyle.Linear), {CFrame = pos}):Play() wait(time)
	workspace.Gravity = 196.19999694824
		end)
	end
end
				
function Repeat()
if getgenv().poop == true then
	wait(5)
	local Stage = workspace.BoatStages.NormalStages
        Tween(0.5,game:GetService("Workspace").BoatStages.NormalStages.CaveStage1.DarknessPart.CFrame - Vector3.new(0,0,50))
	for i = 1,10 do
	Tween(2,Stage["CaveStage"..i].DarknessPart.CFrame)
	end
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Stage.TheEnd.GoldenChest.Trigger.CFrame
	wait(5)
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Stage.TheEnd.GoldenChest.Trigger.CFrame
    end
end
Repeat()
game.Players.LocalPlayer.CharacterAdded:Connect(Repeat)
game.Players.LocalPlayer.CharacterAdded:Connect(function()
workspace.ClaimRiverResultsGold:FireServer()
   end)
end)
