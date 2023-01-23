local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()
local Window = Library.CreateLib("OnlyMiss HUB V1", "RJTheme7")

local farm = Window:NewTab("Farming")
local Tab = Window:NewTab("Movement")
local Tab2 = Window:NewTab("Esp")
local Social = Window:NewTab("Other")
local vclip = Social:NewSection("Vclip")
local Section1 = Social:NewSection("JumpPower")
local fly = Social:NewSection("Fly")
local Section2 = Tab2:NewSection("ESP")
local Section3 = Tab:NewSection("Speed (Detected)")
local Section4 = Tab:NewSection("Speed (UnDetected)")
local Teleport =  Tab:NewSection("Teleport")
local Godm = Social:NewSection("GodMode")
local Credfarm = farm:NewSection("Crefit Farm")
local tptp = Social:NewSection("Tp to player")
local ScreenGuis = Instance.new("ScreenGui")
local TextBoxs = Instance.new("TextBox")


 tptp:NewButton("Открыть меню", "Вводишь ник и нажимаешь Y ", function(tpt)
 	Frame = script.Parent.ScreenGuis
	Frame.Draggable = true
	Frame.Active = true
	Frame.Selectable = true
	ScreenGuis.Parent = game.CoreGui	
		TextBoxs.Parent = ScreenGuis
		TextBoxs.BackgroundColor3 = Color3.new(0.333333, 0.333333, 0.333333)
		TextBoxs.Position = UDim2.new(0, 0, 1, -25)
		TextBoxs.Size = UDim2.new(0, 150, 0, 25)
		TextBoxs.Font = Enum.Font.SourceSans
		TextBoxs.Text = "Введите ник игрока press Y"
		TextBoxs.TextColor3 = Color3.new(1, 1, 1)
		TextBoxs.TextScaled = true
		TextBoxs.TextSize = 14
		TextBoxs.TextWrapped = true
			game:GetService("UserInputService").InputBegan:connect(function(key)
			if key.KeyCode == Enum.KeyCode.Y then
			local ooooooof = TextBoxs.Text
			local plr1 = game.Players.LocalPlayer.Character
			local plr2 = game.Workspace:FindFirstChild(ooooooof)
			plr1.HumanoidRootPart.CFrame = plr2.HumanoidRootPart.CFrame * CFrame.new(0,2,0)
		end
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

while game:GetService("RunService").RenderStepped:wait() do
	game.Players.LocalPlayer.Character.Humanoid.MaxHealth = 10000
	game.Players.LocalPlayer.Character.Humanoid.Health = 10000
end
