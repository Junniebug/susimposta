loadstring(game:HttpGet('https://raw.githubusercontent.com/Junniebug/susimposta/master/sussybaka.lua'))()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Junniebug/susimposta/master/babft.lua'))()
execCmd('hideiy')
execCmd('antiafk')
wait()
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
    