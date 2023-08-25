local ScreenGui = Instance.new("ScreenGui")
local mainscreen = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local closeui = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local activate = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

mainscreen.Name = "mainscreen"
mainscreen.Parent = ScreenGui
mainscreen.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
mainscreen.BorderColor3 = Color3.fromRGB(0, 0, 0)
mainscreen.BorderSizePixel = 0
mainscreen.Position = UDim2.new(0.409536749, 0, 0.338740468, 0)
mainscreen.Size = UDim2.new(0, 233, 0, 203)

UICorner.Parent = mainscreen

TextLabel.Parent = mainscreen
TextLabel.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.0686695278, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Leopold's Anti-Afk Script"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 25.000

closeui.Name = "closeui"
closeui.Parent = mainscreen
closeui.BackgroundColor3 = Color3.fromRGB(107, 107, 107)
closeui.BorderColor3 = Color3.fromRGB(0, 0, 0)
closeui.BorderSizePixel = 0
closeui.Position = UDim2.new(0.0686695278, 0, 0.635468006, 0)
closeui.Size = UDim2.new(0, 200, 0, 50)
closeui.Font = Enum.Font.SourceSans
closeui.Text = "Close UI"
closeui.TextColor3 = Color3.fromRGB(0, 0, 0)
closeui.TextSize = 14.000
closeui.MouseButton1Click:connect(function()
    mainscreen.Visible = false
end)

UICorner_2.Parent = closeui

activate.Name = "activate"
activate.Parent = mainscreen
activate.BackgroundColor3 = Color3.fromRGB(107, 107, 107)
activate.BorderColor3 = Color3.fromRGB(0, 0, 0)
activate.BorderSizePixel = 0
activate.Position = UDim2.new(0.0686695278, 0, 0.275862068, 0)
activate.Size = UDim2.new(0, 200, 0, 50)
activate.Font = Enum.Font.SourceSans
activate.Text = "Activate Anti-AFK"
activate.TextColor3 = Color3.fromRGB(0, 0, 0)
activate.TextSize = 14.000
activate.MouseButton1Down:connect(function()
    local Bindable = Instance.new("BindableFunction")
    Bindable.OnInvoke = Callback

    game.StarterGui:SetCore("SendNotification", {
        Title = "Script Activated";
        Text = "The Anti-Afk is now activated you can click 'Close UI' to get rid of the UI";
        Duration = "300";
        Icon = "rbxassetid://7635712200";
        Callback = Bindable
    })
	local vu = game:GetService("VirtualUser")
	game:GetService("Players").LocalPlayer.Idled:connect(function()
		vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		wait(1)
		vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	end)
end)

UICorner_3.Parent = activate

-- Scripts:

local function XYDL_fake_script() -- activate.LocalScript 
	local script = Instance.new('LocalScript', activate)

	
	
end
coroutine.wrap(XYDL_fake_script)()