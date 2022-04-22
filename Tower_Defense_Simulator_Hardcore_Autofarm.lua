if not game.PlaceId == 3260590327 or not game.PlaceId == 5591597781 then
    return
end

getgenv().enabled = true

if not enabled then
    return
end

if not game:IsLoaded() then
    game.Loaded:Wait()
end

local lp = game:service"Players".LocalPlayer

if lp.Character == nil then
    lp.CharacterAdded:Wait()
end

if lp == nil then
	game.Players:GetPropertyChangedSignal('LocalPlayer'):wait()
end

if lp.Character:FindFirstChild("Humanoid") == nil then
    lp.Character:WaitForChild("Humanoid")
end

local RS = game:service'ReplicatedStorage'
local RF = RS.RemoteFunction
local GameData = require(RS.Resources.Universal.GameData)
local TeleportService = game:service'TeleportService'
local VIM = game:service'VirtualInputManager'
local mouse = lp:GetMouse()

local GC = getconnections or get_signal_cons
if GC then
	for i,v in pairs(GC(lp.Idled)) do
		if v['Disable'] then
			v['Disable'](v)
		elseif v['Disconnect'] then
			v['Disconnect'](v)
		end
	end
end
	
if game.PlaceId == 3260590327 and enabled then
    repeat 
        wait()
        for i,v in pairs(workspace.Elevators:GetDescendants()) do
            if v:FindFirstChild('Model') then
                print(v)
                if v.State.Players.Value >= 0 then
                    if v.State.Map.Title.Value == 'Crossroads'
                    or v.State.Map.Title.Value == 'Autumn Falling'
                    or v.State.Map.Title.Value == 'Nether' then
                        print(v.State.Map.Title.Value)
                        repeat wait() until v.State.Players.Value <= 0
                        repeat 
                            RF:InvokeServer('Elevators','Enter',v)
                            wait(1)
                        until not enabled or wait(30)
                    end
                end
            end
        end
    until not enabled
end

if game.PlaceId == 5591597781 and enabled then
    local Troops = {}
    repeat
        wait(1)
        for i,v in pairs(lp.PlayerGui.GameGui.Hotbar.Troops:GetDescendants()) do
            if v:IsA'TextLabel' and v.Text == '$750' then
                table.insert(Troops,'Ace Pilot')
            end
            if v:IsA'TextLabel' and v.Text == '$600' then
                table.insert(Troops,'Military Base')
            end
        end
    until table.find(Troops,'Ace Pilot') and table.find(Troops,'Military Base') or not enabled
    getgenv().wave10 = false
    repeat
        if lp.PlayerGui.GameGui.Results.Content.IsLoaded then
            TeleportService:Teleport(GameData('Lobby'))
        end
        wait()
        --VIM:SendKeyEvent(true,50,false,game)
        --VIM:SendKeyEvent(false,50,false,game)
        --mousemoveabs(960+math.random(-480,480),540+math.random(-270,270))
        if not wave10 then
            if lp.PlayerGui.GameGui.Health.Wave.Text == 'WAVE 10' then
                wave10 = true
            end
        end
        if RS.State.Map.Value == 'Crossroads' then
            list = {}
            for i,v in pairs(workspace.Towers:GetChildren()) do
                if v:FindFirstChild('Pad') and v.Owner.Value == lp then
                    table.insert(list,v)
                end
            end
            if #list ~= 2 and not wave10 then
                if table.find(Troops,'Ace Pilot') then
                    RF:InvokeServer('Troops','Place','Ace Pilot',{['Rotation'] = CFrame.new(Vector3.new(0, 0, 0), Vector3.new(-0, -0, -1)), 
                        ['Position'] = Vector3.new(14.32466506958, -0.042298793792725, 9.9408111572266)})
                    RF:InvokeServer('Troops','Place','Ace Pilot',{['Rotation'] = CFrame.new(Vector3.new(0, 0, 0), Vector3.new(-0, -0, -1)), 
                        ['Position'] = Vector3.new(17.582077026367, -0.042412281036377, 9.9493408203125)})
                    --RF:InvokeServer('Troops','Target','Set',{['Troop'] = v})
                end
            else
                if table.find(Troops,'Military Base') then
                    RF:InvokeServer('Troops','Place','Military Base',{['Rotation'] = CFrame.new(Vector3.new(0, 0, 0), Vector3.new(-0, -0, -1)), 
                        ['Position'] = Vector3.new(8.0040044784546, -0.042558670043945, -5.6546907424927)})
                    RF:InvokeServer('Troops','Place','Military Base',{['Rotation'] = CFrame.new(Vector3.new(0, 0, 0), Vector3.new(-0, -0, -1)), 
                        ['Position'] = Vector3.new(11.503828048706, -0.041490077972412, -5.6632351875305)})
                    RF:InvokeServer('Troops','Place','Military Base',{['Rotation'] = CFrame.new(Vector3.new(0, 0, 0), Vector3.new(-0, -0, -1)), 
                        ['Position'] = Vector3.new(14.992331504822, -0.041611671447754, -5.6358299255371)})
                    RF:InvokeServer('Troops','Place','Military Base',{['Rotation'] = CFrame.new(Vector3.new(0, 0, 0), Vector3.new(-0, -0, -1)), 
                        ['Position'] = Vector3.new(18.480304718018, -0.041740417480469, -5.6450142860413)})
                    RF:InvokeServer('Troops','Place','Military Base',{['Rotation'] = CFrame.new(Vector3.new(0, 0, 0), Vector3.new(-0, -0, -1)), 
                        ['Position'] = Vector3.new(21.980304718018, -0.041740417480469, -5.6450142860413)})
                end
            end
            --print('Crossroads')
        elseif RS.State.Map.Value == 'Autumn Falling' then
            list = {}
            for i,v in pairs(workspace.Towers:GetChildren()) do
                if v:FindFirstChild('Pad') and v.Owner.Value == lp then
                    table.insert(list,v)
                end
            end
            if #list ~= 2 and not wave10 then
                if table.find(Troops,'Ace Pilot') then
                    RF:InvokeServer('Troops','Place','Ace Pilot',{['Rotation'] = CFrame.new(Vector3.new(0, 0, 0), Vector3.new(-0, -0, -1)), 
                        ['Position'] = Vector3.new(-30.279186248779, 2.2224984169006, 6.0061264038086)})
                    RF:InvokeServer('Troops','Place','Ace Pilot',{['Rotation'] = CFrame.new(Vector3.new(0, 0, 0), Vector3.new(-0, -0, -1)), 
                        ['Position'] = Vector3.new(-33.454650878906, 2.2458753585815, 6.0466003417969)})
                end
            else
                if table.find(Troops,'Military Base') then
                    RF:InvokeServer('Troops','Place','Military Base',{['Rotation'] = CFrame.new(Vector3.new(0, 0, 0), Vector3.new(-0, -0, -1)), 
                        ['Position'] = Vector3.new(-27.177160263062, 3.0048315525055, -18.330261230469)})
                    RF:InvokeServer('Troops','Place','Military Base',{['Rotation'] = CFrame.new(Vector3.new(0, 0, 0), Vector3.new(-0, -0, -1)), 
                        ['Position'] = Vector3.new(-24.153957366943, 3.0048258304596, -18.322345733643)})
                    RF:InvokeServer('Troops','Place','Military Base',{['Rotation'] = CFrame.new(Vector3.new(0, 0, 0), Vector3.new(-0, -0, -1)), 
                        ['Position'] = Vector3.new(-21.142013549805, 3.004613161087, -18.340084075928)})
                    RF:InvokeServer('Troops','Place','Military Base',{['Rotation'] = CFrame.new(Vector3.new(0, 0, 0), Vector3.new(-0, -0, -1)), 
                        ['Position'] = Vector3.new(-18.118495941162, 3.0046601295471, -18.326103210449)})
                    RF:InvokeServer('Troops','Place','Military Base',{['Rotation'] = CFrame.new(Vector3.new(0, 0, 0), Vector3.new(-0, -0, -1)), 
                        ['Position'] = Vector3.new(-14.618495941162, 3.0046601295471, -18.326103210449)})
                end
            end
            --print('Autumn Falling')
        elseif RS.State.Map.Value == 'Nether' then
            list = {}
            for i,v in pairs(workspace.Towers:GetChildren()) do
                if v:FindFirstChild('Pad') and v.Owner.Value == lp then
                    table.insert(list,v)
                end
            end
            if #list ~= 2 and not wave10 then
                if table.find(Troops,'Ace Pilot') then
                    RF:InvokeServer('Troops','Place','Ace Pilot',{['Rotation'] = CFrame.new(Vector3.new(0, 0, 0), Vector3.new(-0, -0, -1)), 
                        ['Position'] = Vector3.new(6.8225507736206, 0.91462802886963, 10.23609828949)})
                    RF:InvokeServer('Troops','Place','Ace Pilot',{['Rotation'] = CFrame.new(Vector3.new(0, 0, 0), Vector3.new(-0, -0, -1)), 
                        ['Position'] = Vector3.new(3.7188663482666, 0.91850566864014, 10.196330070496)})
                end
            else
                if table.find(Troops,'Military Base') then
                    RF:InvokeServer('Troops','Place','Military Base',{['Rotation'] = CFrame.new(Vector3.new(0, 0, 0), Vector3.new(-0, -0, -1)), 
                        ['Position'] = Vector3.new(-2.2639846801758, 0.91367721557617, -2.072084903717)})
                    RF:InvokeServer('Troops','Place','Military Base',{['Rotation'] = CFrame.new(Vector3.new(0, 0, 0), Vector3.new(-0, -0, -1)), 
                        ['Position'] = Vector3.new(0.93473625183105, 0.91364669799805, -2.0659799575806)})
                    RF:InvokeServer('Troops','Place','Military Base',{['Rotation'] = CFrame.new(Vector3.new(0, 0, 0), Vector3.new(-0, -0, -1)), 
                        ['Position'] = Vector3.new(3.9787750244141, 0.91384983062744, -2.0763893127441)})
                    RF:InvokeServer('Troops','Place','Military Base',{['Rotation'] = CFrame.new(Vector3.new(0, 0, 0), Vector3.new(-0, -0, -1)), 
                        ['Position'] = Vector3.new(7.0567851066589, 0.91393756866455, -2.0734729766846)})
                    RF:InvokeServer('Troops','Place','Military Base',{['Rotation'] = CFrame.new(Vector3.new(0, 0, 0), Vector3.new(-0, -0, -1)), 
                        ['Position'] = Vector3.new(10.275926589966, 0.91402339935303, -2.1180672645569)})
                end
            end
            --print('Nether')
        elseif RS.State.Map.Value == 'Wrecked Battlefield' then
            list = {}
            for i,v in pairs(workspace.Towers:GetChildren()) do
                if v:FindFirstChild('Pad') and v.Owner.Value == lp then
                    table.insert(list,v)
                end
            end
            if #list ~= 2 and not wave10 then
                if table.find(Troops,'Ace Pilot') then
                    RF:InvokeServer('Troops','Place','Ace Pilot',{['Rotation'] = CFrame.new(Vector3.new(0, 0, 0), Vector3.new(-0, -0, -1)), 
                        ['Position'] = Vector3.new(6.5366067886353, 0.61862790584564, -6.5430221557617)})
                    RF:InvokeServer('Troops','Place','Ace Pilot',{['Rotation'] = CFrame.new(Vector3.new(0, 0, 0), Vector3.new(-0, -0, -1)), 
                        ['Position'] = Vector3.new(9.6883640289307, 0.57647168636322, -6.513142108917231)})
                end
            else
                if table.find(Troops,'Military Base') then
                    RF:InvokeServer('Troops','Place','Military Base',{['Rotation'] = CFrame.new(Vector3.new(0, 0, 0), Vector3.new(-0, -0, -1)), 
                        ['Position'] = Vector3.new(15.293462753296, 0.2441554069519, -22.5859069824223)})
                    RF:InvokeServer('Troops','Place','Military Base',{['Rotation'] = CFrame.new(Vector3.new(0, 0, 0), Vector3.new(-0, -0, -1)), 
                        ['Position'] = Vector3.new(12.010837554932, 0.24411487579346, -22.564493179321)})
                    RF:InvokeServer('Troops','Place','Military Base',{['Rotation'] = CFrame.new(Vector3.new(0, 0, 0), Vector3.new(-0, -0, -1)), 
                        ['Position'] = Vector3.new(8.7251653671265, 0.24409675598145, -22.60311126709)})
                    RF:InvokeServer('Troops','Place','Military Base',{['Rotation'] = CFrame.new(Vector3.new(0, 0, 0), Vector3.new(-0, -0, -1)), 
                        ['Position'] = Vector3.new(5.534836769104, 0.24408102035522, -22.61146736145)})
                    RF:InvokeServer('Troops','Place','Military Base',{['Rotation'] = CFrame.new(Vector3.new(0, 0, 0), Vector3.new(-0, -0, -1)), 
                        ['Position'] = Vector3.new(2.3445041179657, 0.244065284729, -22.619821548462)})
                end
            end 
            --print('Wrecked Battlefield')
        end
        for i,v in pairs(workspace.Towers:GetChildren()) do
            RF:InvokeServer('Troops','Upgrade','Set',{['Troop'] = v})
        end
        if lp.PlayerGui.GameGui.Health.Wave.Text ~= 'WAVE 0' and lp.PlayerGui.GameGui.Waves.Content.No.Button.AbsolutePosition == Vector2.new(976, 162) and lp.PlayerGui.GameGui.Waves.Content.Visible == true then
            RF:InvokeServer('Waves','Skip')
        end
    until not enabled
end
