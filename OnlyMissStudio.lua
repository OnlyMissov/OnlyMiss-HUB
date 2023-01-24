local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
local Window = Library.CreateLib("OnlyMiss HUB V1", "RJTheme7")

local farm = Window:NewTab("Farming")
local Tab = Window:NewTab("Movement")
local Social = Window:NewTab("Other")
local vclip = Social:NewSection("Vclip")
local Section1 = Social:NewSection("JumpPower")
local fly = Social:NewSection("Fly")
local Section3 = Tab:NewSection("Speed (Detected)")
local Section4 = Tab:NewSection("Speed (UnDetected)")
local Teleport =  Tab:NewSection("Teleport")
local Godm = Social:NewSection("GodMode")
local Credfarm = farm:NewSection("Crefit Farm")
local tptp = Social:NewSection("Tp to player")
local creditss = Window:NewTab("Credits")
local creditss2 = creditss:NewSection("Developer")
local creditss3 = creditss:NewSection("Designer")

--- Watermark
math.randomseed(tick())
 
local blurEffect = Instance.new("BlurEffect")
 
local function loadAtom()
	local AtomLoading = Instance.new("ScreenGui")
	local AtomLogo = Instance.new("ImageLabel")
	local soundEffect = Instance.new("Sound")
	local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
 
	AtomLoading.Name = math.random(1, 385)
	AtomLoading.Parent = game.CoreGui
	AtomLoading.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
 
	AtomLogo.Name = math.random(1, 385)
	AtomLogo.Parent = AtomLoading
	AtomLogo.AnchorPoint = Vector2.new(0.5, 0.5)
	AtomLogo.BackgroundColor3 = Color3.new(1, 1, 1)
	AtomLogo.BackgroundTransparency = 1
	AtomLogo.BorderSizePixel = 0
	AtomLogo.Position = UDim2.new(0.5, 0, 0.55, 0)
	AtomLogo.Size = UDim2.new(0.723361611, 0, 0.413349509, 0)
	AtomLogo.Image = "rbxassetid://2897909016"
	AtomLogo.ImageTransparency = 1
	AtomLogo.ScaleType = Enum.ScaleType.Fit
 
	UIAspectRatioConstraint.Name = math.random(1, 385)
	UIAspectRatioConstraint.Parent = AtomLogo
	UIAspectRatioConstraint.AspectRatio = 2.2044892311096
 
	blurEffect.Name = math.random(1, 385)
	blurEffect.Parent = game:GetService("Lighting")
	blurEffect.Size = 0
 
	soundEffect.Name = math.random(1, 385)
	soundEffect.Parent = game.CoreGui
	soundEffect.SoundId = "rbxassetid://2897909016"
	soundEffect.Volume = 2
 
	soundEffect:Play()
 
	spawn(function()
		for i = 1, 20 do
			blurEffect.Size = blurEffect.Size + 1
			wait()
		end
	end)
 
	spawn(function()
		for i = 1, 10 do
			AtomLogo.ImageTransparency = AtomLogo.ImageTransparency - 0.1
			wait()
		end
	end)
 
	spawn(function()
		AtomLogo:TweenPosition(UDim2.new(0.5, 0, 0.5, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quad, 1)
	end)
	wait(2)
	spawn(function()
		for i = 1, 10 do
			AtomLogo.ImageTransparency = AtomLogo.ImageTransparency + 0.1
			wait()
		end
	end)
 
	wait(1)
	soundEffect:Destroy()
	AtomLoading:Destroy()
end
 
local function showUpdates()
	local AtomUpdates = Instance.new("ScreenGui")
	local mainUpdatesFrame = Instance.new("Frame")
	local iconLabel = Instance.new("ImageLabel")
	local updatesLabel = Instance.new("TextLabel")
	local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
	local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
 
	AtomUpdates.Name = math.random(1, 385)
	AtomUpdates.Parent = game.CoreGui
	AtomUpdates.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
 
	mainUpdatesFrame.Name = "mainUpdatesFrame"
	mainUpdatesFrame.Parent = AtomUpdates
	mainUpdatesFrame.AnchorPoint = Vector2.new(0.5, 0.5)
	mainUpdatesFrame.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
	mainUpdatesFrame.BackgroundTransparency = 1
	mainUpdatesFrame.BorderSizePixel = 0
	mainUpdatesFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
	mainUpdatesFrame.Size = UDim2.new(0.300000012, 0, 0.400000006, 0)
 
	iconLabel.Name = math.random(1, 385)
	iconLabel.Parent = mainUpdatesFrame
	iconLabel.BackgroundColor3 = Color3.new(1, 1, 1)
	iconLabel.BackgroundTransparency = 1
	iconLabel.BorderSizePixel = 0
	iconLabel.Size = UDim2.new(1, 0, 0.200000003, 0)
	iconLabel.Image = "rbxassetid://2897909016"
	iconLabel.ImageTransparency = 1
	iconLabel.ScaleType = Enum.ScaleType.Fit
 
	updatesLabel.Name = math.random(1, 385)
	updatesLabel.Parent = mainUpdatesFrame
	updatesLabel.BackgroundColor3 = Color3.new(1, 1, 1)
	updatesLabel.BackgroundTransparency = 1
	updatesLabel.BorderSizePixel = 0
	updatesLabel.Position = UDim2.new(0, 0, 0.200000003, 0)
	updatesLabel.Size = UDim2.new(1, 0, 0.800000012, 0)
	updatesLabel.Font = Enum.Font.SourceSansLight
	updatesLabel.Text = game:HttpGet(("https://robomathost.xyz/AtomWrapper/luamsg.txt"), true)
	updatesLabel.TextColor3 = Color3.new(12, 12, 12)
	updatesLabel.TextScaled = true
	updatesLabel.TextSize = 60
	updatesLabel.TextTransparency = 1
	updatesLabel.TextWrapped = true
	updatesLabel.TextYAlignment = Enum.TextYAlignment.Top

	UITextSizeConstraint.Parent = updatesLabel
	UITextSizeConstraint.MaxTextSize = 35

	UIAspectRatioConstraint.Parent = mainUpdatesFrame
	UIAspectRatioConstraint.AspectRatio = 0.94478154182434
	spawn(function()
		for i = 1, 10 do
			mainUpdatesFrame.BackgroundTransparency = mainUpdatesFrame.BackgroundTransparency - 0.1
			iconLabel.ImageTransparency = iconLabel.ImageTransparency - 0.1
			updatesLabel.TextTransparency = updatesLabel.TextTransparency - 0.1
			wait()
		end
	end)
	wait(2.5)
	spawn(function()
		for i = 1, 10 do
			mainUpdatesFrame.BackgroundTransparency = mainUpdatesFrame.BackgroundTransparency + 0.1
			iconLabel.ImageTransparency = iconLabel.ImageTransparency + 0.1
			updatesLabel.TextTransparency = updatesLabel.TextTransparency + 0.1
			wait()
		end
	end)
	spawn(function()
		for i = 1, 20 do
			blurEffect.Size = blurEffect.Size - 1
			wait()
		end
	end)
	wait(1)
	AtomUpdates:Destroy()
	blurEffect:Destroy()
end
loadAtom()
showUpdates()

--- ESP

local Players = game:GetService("Players"):GetChildren()
local RunService = game:GetService("RunService")
local highlight = Instance.new("Highlight")
highlight.Name = "Highlight"

for i, v in pairs(Players) do
	repeat wait() until v.Character
	if v.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") == nil then
	local highlightClone = highlight:Clone()
	highlightClone.Adornee = v.Character
	highlightClone.Parent = v.Character:FindFirstChild("HumanoidRootPart")
	highlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
	highlightClone.Name = "Highlight"
end		
end

game.Players.PlayerAdded:Connect(function(player)
	repeat wait() until player.Character
	if player.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") == nil then
	local highlightClone = highlight:Clone()
	highlightClone.Adornee = player.Character
	highlightClone.Parent = player.Character:FindFirstChild("HumanoidRootPart")
	highlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
	highlightClone.Name = "Highlight"
end
end)

game.Players.PlayerRemoving:Connect(function(playerRemoved)
	playerRemoved.Character:FindFirstChild("HumanoidRootPart").Highlight:Destroy()
end)

RunService.Heartbeat:Connect(function()
	for i, v in pairs(Players) do
		repeat wait() until v.Character
		if v.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Highlight") == nil then
		local highlightClone = highlight:Clone()
		highlightClone.Adornee = v.Character
		highlightClone.Parent = v.Character:FindFirstChild("HumanoidRootPart")
		highlightClone.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
		highlightClone.Name = "Highlight"
		task.wait()
	end
end
end)	
--- ESP OVER


tptp:NewButton("Not worked!!!", "Future work", function()
	tptp:NewTextBox("Введи ник:", "Вводишь ник и нажимаешь на Enter", function(txt)
		game:GetService("UserInputService").InputBegan:connect(function()
			local ooooooof = TextBoxs.Text
			local plr1 = game.Players.LocalPlayer.Character
			local plr2 = game.Workspace:FindFirstChild(ooooooof)
			plr1.HumanoidRootPart.CFrame = plr2.HumanoidRootPart.CFrame * CFrame.new(0,2,0)
		end)
	end)	
end)

Credfarm:NewButton("Кликни чтобы начать фармить", "Фарм кредитов в режиме Hide in Seek Extreme", function(cred)
	while wait(0.5) do
		for i,v in pairs(game:GetDescendants()) do
			if v.Name == 'Credit' then
				v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			end	
		end
	end	
end)

fly:NewButton("Fly presS (E)", "Нажимая на E у вас включается Fly", function(fly)
	repeat wait() 
		until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Head") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid") 
		local mouse = game.Players.LocalPlayer:GetMouse() 
		repeat wait() until mouse
		local plr = game.Players.LocalPlayer 
		local torso = plr.Character.Head 
		local flying = false
		local deb = true 
		local ctrl = {f = 0, b = 0, l = 0, r = 0} 
		local lastctrl = {f = 0, b = 0, l = 0, r = 0} 
		local maxspeed = 400 
		local speed = 5000 
	function Fly() 
	local bg = Instance.new("BodyGyro", torso) 
	bg.P = 9e4 
	bg.maxTorque = Vector3.new(9e9, 9e9, 9e9) 
	bg.cframe = torso.CFrame 
	local bv = Instance.new("BodyVelocity", torso) 
	bv.velocity = Vector3.new(0,0.1,0) 
	bv.maxForce = Vector3.new(9e9, 9e9, 9e9) 
	repeat wait() 
	plr.Character.Humanoid.PlatformStand = true 
	if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then 
	speed = speed+.5+(speed/maxspeed) 
	if speed > maxspeed then 
	speed = maxspeed 
end 
		elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then 
		speed = speed-1 
		if speed < 0 then 
		speed = 0 
	end 
end 
	if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then 
	bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
	lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r} 
	elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then 
	bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
	else 
	bv.velocity = Vector3.new(0,0.1,0) 
end 
	bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0) 
	until not flying 
	ctrl = {f = 0, b = 0, l = 0, r = 0} 
	lastctrl = {f = 0, b = 0, l = 0, r = 0} 
	speed = 0 
	bg:Destroy() 
	bv:Destroy() 
	plr.Character.Humanoid.PlatformStand = false 
end 
		mouse.KeyDown:connect(function(key) 
		if key:lower() == "e" then 
		if flying then flying = false 
		else 
		flying = true 
	Fly() 
end 
		elseif key:lower() == "w" then 
		ctrl.f = 1 
		elseif key:lower() == "s" then 
		ctrl.b = -1 
		elseif key:lower() == "a" then 
		ctrl.l = -1 
		elseif key:lower() == "d" then 
		ctrl.r = 1 
	end 
end) 
			mouse.KeyUp:connect(function(key) 
			if key:lower() == "w" then 
			ctrl.f = 0 
			elseif key:lower() == "s" then 
			ctrl.b = 0 
			elseif key:lower() == "a" then 
			ctrl.l = 0 
			elseif key:lower() == "d" then 
			ctrl.r = 0 
		end 
	end)
Fly()
end)

Godm:NewButton("On GodMode", "Включает годмод у вас будет 10к хп, обходит все сервера", function(god)
	if god then
		while game:GetService("RunService").RenderStepped:wait() do
			game.Players.LocalPlayer.Character.Humanoid.MaxHealth = 10000
			game.Players.LocalPlayer.Character.Humanoid.Health = 10000
		end
	else
		game.Players.LocalPlayer.Character.Humanoid.MaxHealth = 150
		game.Players.LocalPlayer.Character.Humanoid.Health = 150	
	end	
end)

Teleport:NewButton("Click (Q) to teleport", "Телепортирует туда куда вы смотрите мышью нажатием на букву Q", function(tp)
	plr = game.Players.LocalPlayer
	hum = plr.Character.HumanoidRootPart
 	mouse = plr:GetMouse()
	mouse.KeyDown:connect(function(key)
		if key == "q" then
			if mouse.Target then
				hum.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z)
			end
		end
	end)
end)

Section3:NewSlider("Скорость бега", "Макс. 500 мин. 0", 500, 0, function(s)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section4:NewButton("Жоски андетект", "Скорость 50 зато андетект", function(state)
	if state then
		while game:GetService("RunService").RenderStepped:wait() do
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 50
		end
	else
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
	end
end)

Section1:NewSlider("Высота прыжка", "Макс. 500 мин. 0", 500, 0, function(f)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = f
end)

vclip:NewSlider("VClip", "Поднимает вас вверх, может багаться", 1000, 2, function(vclip)
	game.Players.LocalPlayer.Character.Humanoid.HipHeight = vclip	
end)

creditss2:NewButton("Discord:! [OnlyMiss]#0001", "Number one developer", function()
end)

creditss3:NewButton("Discord:! [OnlyMiss]#0001", "Number one designer", function()
end)

while game:GetService("RunService").RenderStepped:wait() do
	game.Players.LocalPlayer.Character.Humanoid.MaxHealth = 10000
	game.Players.LocalPlayer.Character.Humanoid.Health = 10000
end
