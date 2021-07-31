spawn(function()
if game['PlaceId'] == 2809202155 then return end

local lp = game:GetService('Players').LocalPlayer

local names = {
"sjlyant",
"Juneuari"
}

for i,v in pairs(names) do
if v.Name == lp.Name then
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

spawn(function()
if game['PlaceId'] ~= 5094651510 then return end

game.Loaded:Wait()

while wait(1) do
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
            end
        end
    end
end
   end)



spawn(function()
if game['PlaceId'] ~= 537413528 then return end

game.Loaded:Wait()

if getgenv().GUI == true then
    return
end

local CoreGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Exit = Instance.new("TextButton")
local TitleBar = Instance.new("Frame")

local Enable = Instance.new("TextButton")
local Disable = Instance.new("TextButton")

CoreGui.Name = "CoreGui"
CoreGui.Parent = game.CoreGui
CoreGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Name = "Frame"
Frame.Parent = CoreGui
Frame.BackgroundColor3 = Color3.fromRGB(255,255,255)
Frame.BackgroundTransparency = 0
Frame.BorderSizePixel = 1
Frame.Position = UDim2.new(0, 100, 0, 300)
Frame.Size = UDim2.new(0, 60, 0, 11+(32*2))
Frame.Active = true
Frame.Draggable = true

TitleBar.Name = "TitleBar"
TitleBar.Parent = Frame
TitleBar.BackgroundColor3 = Color3.fromRGB(0,0,0)
TitleBar.BackgroundTransparency = 0
TitleBar.BorderSizePixel = 0
TitleBar.Position = UDim2.new(0, 0, 0, 0)
TitleBar.Size = UDim2.new(0, 60, 0, 6)
TitleBar.Active = true

Exit.Name = "Exit"
Exit.Parent = Frame
Exit.BackgroundColor3 = Color3.fromRGB(255,0,0)
Exit.BackgroundTransparency = 0
Exit.BorderSizePixel = 0
Exit.Text = "x"
Exit.Position = UDim2.new(1, -10, 0, 0)
Exit.Size = UDim2.new(0, 10, 0, 5)
Exit.MouseButton1Down:connect(function()
    getgenv().Enabled = false
    getgenv().GUI = false
    CoreGui:Destroy()
end)

Enable.Name = "Enable"
Enable.Parent = Frame
Enable.BackgroundColor3 = Color3.fromRGB(255,255,255)
Enable.BackgroundTransparency = 0
Enable.BorderSizePixel = 1
Enable.Text = "Enable"
Enable.TextWrapped = true
Enable.AutoButtonColor = false
Enable.Position = UDim2.new(0.075, 0, 0, 5+(32*0)+7)
Enable.Size = UDim2.new(0, 50, 0, 25)

Disable.Name = "Disable"
Disable.Parent = Frame
Disable.BackgroundColor3 = Color3.fromRGB(255,255,255)
Disable.BackgroundTransparency = 0
Disable.BorderSizePixel = 1
Disable.Text = "Disable"
Disable.TextWrapped = true
Disable.AutoButtonColor = false
Disable.Position = UDim2.new(0.075, 0, 0, 5.5+(32*1)+7)
Disable.Size = UDim2.new(0, 50, 0, 25)

Enable.MouseButton1Down:connect(function()
    Enable.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
end)

Enable.MouseEnter:connect(function()
    Enable.BackgroundColor3 = Color3.fromRGB(171, 173, 172)
end)
Enable.MouseLeave:connect(function()
    Enable.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
end)

Disable.MouseButton1Down:connect(function()
    Disable.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
end)
Disable.MouseButton1Up:connect(function()
    getgenv().Enabled = false
    Disable.BackgroundColor3 = Color3.fromRGB(171, 173, 172)
end)
Disable.MouseEnter:connect(function()
    Disable.BackgroundColor3 = Color3.fromRGB(171, 173, 172)
end)
Disable.MouseLeave:connect(function()
    Disable.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
end)

local Player = game.Players.LocalPlayer
local Stage = workspace.BoatStages.NormalStages

local function respawn(plr)
	local char = plr.Character
	if char:FindFirstChildOfClass("Humanoid") then char:FindFirstChildOfClass("Humanoid"):ChangeState(15) end
	char:ClearAllChildren()
	local newChar = Instance.new("Model")
	newChar.Parent = workspace
	plr.Character = newChar
	wait()
	plr.Character = char
	newChar:Destroy()
end

function Tween(time,pos)
    local HRP = Player.Character.HumanoidRootPart
		pcall(function()
	workspace.Gravity = 0
	game:GetService("TweenService"):Create(HRP, TweenInfo.new(time, Enum.EasingStyle.Linear), {CFrame = pos}):Play() wait(time)
	workspace.Gravity = 196.19999694824
	end)
end

local function Bruh()
    if getgenv().Enabled == true then
        local HRP = Player.Character.HumanoidRootPart
        workspace.Gravity = 0
        local function Teleport() -- 30 seconds
            for i = 1,10 do
                if getgenv().Enabled == true then
                    Tween(2,Stage["CaveStage"..i].DarknessPart.CFrame)
                else
                    if i == 1 then
                        Bruh:Disconnect()
                        return
                    end
                    respawn(Player)
                    Bruh:Disconnect()
                    return
                end
            end
            HRP.CFrame = Stage.TheEnd.GoldenChest.Trigger.CFrame
            workspace.Gravity = 198.2
        end
        Teleport()
    else
        Bruh:Disconnect()
        return
    end
end

Player.CharacterAdded:Connect(function()
    if getgenv().Enabled == true then
        _G.Wait = false
        local function Check()
            local gmt = getrawmetatable(game)
            setreadonly(gmt, false)
            local old = gmt.__namecall
                gmt.__namecall = newcclosure(function(self, ...)
                local args = {...}
                if getnamecallmethod() == "InvokeServer" and self.Name == "Check" then
                    workspace.ClaimRiverResultsGold:FireServer()
                    print("Total Gold Gained: "..Player.PlayerGui.RiverResultsGui.Frame.TotalGoldGained.Text)
                    _G.Wait = true
                end
                return old(self, ...)
            end)
        end
        if getgenv().Enabled == true then
            Check()
        else
            Player.CharacterAdded:Disconnect()
            return
        end
        repeat wait() until _G.Wait == true
        if getgenv().Enabled == true then
            Bruh()
        else
            Player.CharacterAdded:Disconnect()
            return
        end
    else
        Player.CharacterAdded:Disconnect()
        return
    end
end)

Enable.MouseButton1Up:connect(function()
    if getgenv().Enabled == true then
        return
    end
    getgenv().Enabled = true
    Enable.BackgroundColor3 = Color3.fromRGB(171, 173, 172)
    Bruh()
end)

getgenv().GUI = true
end)
