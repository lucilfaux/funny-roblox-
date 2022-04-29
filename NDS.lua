local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()

local w = library:CreateWindow("Natural Disaster")

local b = w:CreateFolder("Main")

local c = w:CreateFolder("Local Player")

local cred = w:CreateFolder("Credits")

local d = w:CreateFolder("Debug")

b:Button("Remove Fall Damage",function()
    game:GetService("Workspace").PLAYERNAME.FallDamageScript:Destroy()
end)

--b:Button("Reset"function()
--    game.Players.LocalPlayer
--end)

b:Toggle("Autowin",function(bool)
    local winning = bool
    autoWin(winning)
end)

b:Dropdown("Teleports",{"Spawn","Game Area"},true,function(teleport)
    local player = game:GetService('Players').LocalPlayer
    local character = player.Character or player.CharacterAdded:wait()
    local HumanoidRootPart = character:WaitForChild('HumanoidRootPart')

    if teleport == Spawn then
        HumanoidRootPart.CFrame = CFrame.new(-309, 180, 311)
    elseif teleport !== Spawn then
        HumanoidRootPart.CFrame = CFrame.new(-116, 47, 3)
    else
        warn('Teleport does not exist')
    end
end)


c:Slider("Walkspeed",{
    min = 16;
    max = 500;
},function(value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
end)

c:Slider("Jump Power",{
    min = 50;
    max = 500;
},function(value)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
end)

c:Slider("Gravity",{
    min = 0;
    max = 500;
},function(value)
    game.Workspace.Gravity = value
end)

cred:Label("Banaanae",{
    TextSize = 25;
    TextColor = Color3.fromRGB(255,255,255);
    BgColor = Color3.fromRGB(69,69,69);
})

d:DestroyGui()

function autoWin(winning)
    local player = game:GetService('Players').LocalPlayer
    local character = player.Character or player.CharacterAdded:wait()
    local HumanoidRootPart = character:WaitForChild('HumanoidRootPart')
    
    while true do
        wait(1)
        if winning == true then
            HumanoidRootPart.CFrame = CFrame.new(-309, 180, 311)
            wait(1)
        end
    end
end

game.Players.LocalPlayer.Character.Head.Nametag:Destroy()
