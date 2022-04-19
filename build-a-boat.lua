getgenv().speed = 25 -- Lower = faster

local TS = game:GetService("TweenService")
local tween = TS:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(speed), {CFrame = CFrame.new(-54, 65, 9485)})
local plr = game.Players.LocalPlayer.Character.HumanoidRootPart
plr.CFrame = CFrame.new(-54, 65, -70)
tween:Play()
