local plr = game.Players.LocalPlayer.Character.HumanoidRootPart
local VirtualUser = game:GetService('VirtualUser')
getgenv().noAfk = true

function claim()
    plr.CFrame = CFrame.new(-51.5656433, 65.0000458, 1369.09009)
    wait(0.2)

    plr.CFrame = CFrame.new(-51.5656433, 65.0000458, 2139.09009)
    wait(0.2)

    plr.CFrame = CFrame.new(-51.5656433, 65.0000458, 2909.09009)
    wait(0.2)

    plr.CFrame = CFrame.new(-51.5656433, 65.0000458, 3679.09009)
    wait(0.2)

    plr.CFrame = CFrame.new(-51.5656433, 65.0000458, 4449.08984)
    wait(0.2)

    plr.CFrame = CFrame.new(-51.5656433, 65.0000458, 5219.08984)
    wait(0.2)

    plr.CFrame = CFrame.new(-51.5656433, 65.0000458, 5989.08984)
    wait(0.2)

    plr.CFrame = CFrame.new(-51.5656433, 65.0000458, 6759.08984)
    wait(0.2)

    plr.CFrame = CFrame.new(-51.5656433, 65.0000458, 7529.08984)
    wait(0.2)

    plr.CFrame = CFrame.new(-51.5656433, 65.0000458, 8299.08984)
    wait(0.1)

    plr.CFrame = CFrame.new(-53.9630127, -328.904144, 9418.69336)

    wait(0.5)

    plr.CFrame = CFrame.new(-54, -360, 9485)
    wait(24)

    workspace.ClaimRiverResultsGold:FireServer()
end

claim()

while noAfk do
    wait(300)
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
end
