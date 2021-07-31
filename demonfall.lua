repeat wait() until game:IsLoaded()

    if game['PlaceId'] ~= 5094651510 then return end

wait()

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
