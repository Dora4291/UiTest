-- Gui to Lua
-- Version: 3.2

-- Instances:

local TestGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local HideScriptButton = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local TerminateGUi = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local ReOpenButton = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local UICorner_4 = Instance.new("UICorner")

--Properties:

TestGui.Name = "TestGui"
TestGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
TestGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = TestGui
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.234026164, 0, 0.183697641, 0)
Frame.Size = UDim2.new(0, 675, 0, 390)

HideScriptButton.Name = "HideScriptButton"
HideScriptButton.Parent = Frame
HideScriptButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
HideScriptButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
HideScriptButton.BorderSizePixel = 0
HideScriptButton.Position = UDim2.new(0.90814817, 0, 0, 0)
HideScriptButton.Size = UDim2.new(0, 62, 0, 50)
HideScriptButton.Font = Enum.Font.FredokaOne
HideScriptButton.Text = "Hide Script"
HideScriptButton.TextColor3 = Color3.fromRGB(0, 0, 0)
HideScriptButton.TextScaled = true
HideScriptButton.TextSize = 20.000
HideScriptButton.TextWrapped = true

UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = HideScriptButton

TerminateGUi.Name = "TerminateGUi"
TerminateGUi.Parent = Frame
TerminateGUi.BackgroundColor3 = Color3.fromRGB(170, 0, 255)
TerminateGUi.BorderColor3 = Color3.fromRGB(0, 0, 0)
TerminateGUi.BorderSizePixel = 0
TerminateGUi.Position = UDim2.new(0, 0, 0.871794879, 0)
TerminateGUi.Size = UDim2.new(0, 161, 0, 50)
TerminateGUi.Font = Enum.Font.FredokaOne
TerminateGUi.Text = "Terminate Gui"
TerminateGUi.TextColor3 = Color3.fromRGB(0, 0, 0)
TerminateGUi.TextScaled = true
TerminateGUi.TextSize = 14.000
TerminateGUi.TextWrapped = true

UICorner_2.CornerRadius = UDim.new(0, 12)
UICorner_2.Parent = TerminateGUi

ReOpenButton.Name = "ReOpenButton"
ReOpenButton.Parent = Frame
ReOpenButton.BackgroundColor3 = Color3.fromRGB(85, 255, 0)
ReOpenButton.BorderColor3 = Color3.fromRGB(85, 255, 0)
ReOpenButton.BorderSizePixel = 0
ReOpenButton.Position = UDim2.new(0.90814817, 0, 0, 0)
ReOpenButton.Size = UDim2.new(0, 61, 0, 50)
ReOpenButton.Visible = false
ReOpenButton.Font = Enum.Font.FredokaOne
ReOpenButton.Text = "ReOpen"
ReOpenButton.TextColor3 = Color3.fromRGB(0, 0, 0)
ReOpenButton.TextSize = 14.000

UICorner_3.CornerRadius = UDim.new(0, 12)
UICorner_3.Parent = ReOpenButton

UICorner_4.CornerRadius = UDim.new(0, 12)
UICorner_4.Parent = Frame

-- Scripts:

local function RMHF_fake_script() -- HideScriptButton.HideScript 
	local script = Instance.new('Script', HideScriptButton)

	local player = game.Players.LocalPlayer
	local playerGui = player:WaitForChild("PlayerGui")
	local screenGui = playerGui:WaitForChild("ScreenGui")
	local frame = screenGui:WaitForChild("Frame")
	local button = script.Parent
	button.MouseButton1Click:Connect(function()
		frame.Visible = false
		button.Text = "ReOpen Gui"
	end)
end
coroutine.wrap(RMHF_fake_script)()
local function PSCEQF_fake_script() -- TerminateGUi.TerminateScript 
	local script = Instance.new('Script', TerminateGUi)

	local player = game.Players.LocalPlayer
	local playerGui = player:WaitForChild("PlayerGui")
	local screenGui = playerGui:WaitForChild("ScreenGui")
	local frame = screenGui:WaitForChild("Frame")
	local terminateButton = script.Parent
	terminateButton.MouseButton1Click:Connect(function()
		frame.Visible = false
	end)
end
coroutine.wrap(PSCEQF_fake_script)()
