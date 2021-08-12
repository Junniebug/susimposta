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
loadstring(game:HttpGet('https://raw.githubusercontent.com/Junniebug/susimposta/master/IY.lua'))()
end)
