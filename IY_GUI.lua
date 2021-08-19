local Frame = Instance.new("Frame")
local Destroy = Instance.new("TextButton")

function randomString()
	local length = math.random(10,20)
	local array = {}
	for i = 1, length do
		array[i] = string.char(math.random(32, 126))
	end
	return table.concat(array)
end

COREGUI = game:GetService("CoreGui")
PARENT = nil
if (not is_sirhurt_closure) and (syn and syn.protect_gui) then
	local Main = Instance.new("ScreenGui")
	Main.Name = randomString()
	syn.protect_gui(Main)
	Main.Parent = COREGUI
	PARENT = Main
elseif get_hidden_gui or gethui then
	local hiddenUI = get_hidden_gui or gethui
	local Main = Instance.new("ScreenGui")
	Main.Name = randomString()
	Main.Parent = hiddenUI()
	PARENT = Main
elseif COREGUI:FindFirstChild('RobloxGui') then
	PARENT = COREGUI.RobloxGui
else
	local Main = Instance.new("ScreenGui")
	Main.Name = randomString()
	Main.Parent = COREGUI
	PARENT = Main
end

Frame.Name = randomString()
Frame.Parent = PARENT
Frame.Active = true
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.Position = UDim2.new(0.036, 0, 0.75, 0)
Frame.Selectable = true
Frame.Size = UDim2.new(0, 60, 0, 60)
Frame.Draggable = true
Frame.Transparency = 1

Destroy.Name = randomString()
Destroy.Parent = Frame
Destroy.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Destroy.Position = UDim2.new(0.3, 0, 0.3, 0)
Destroy.Size = UDim2.new(0, 25, 0, 25)
Destroy.Font = Enum.Font.SourceSans
Destroy.Text = "IY"
Destroy.TextColor3 = Color3.fromRGB(0, 0, 0)
Destroy.TextScaled = true
Destroy.TextWrapped = true
Destroy.MouseButton1Click:connect(function()
PARENT:Destroy()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Junniebug/susimposta/master/IY.lua'))()
end)
