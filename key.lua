-- [[ HỆ THỐNG KEY SYSTEM - LBOYD HUB V5 ]] --

-- 1. LINK 4M CỦA BẠN VÀ LINK SCRIPT CHÍNH MỚI
local Link4M = "https://link4m.org/gbmfBY" 
local MainScriptURL = "https://raw.githubusercontent.com/kadit9999/stealanegg/refs/heads/main/ChilliV5BaKhi.lua"

-- 2. TẠO GIAO DIỆN (GUI)
local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local UIStroke = Instance.new("UIStroke")
local Title = Instance.new("TextLabel")

local KeyTextBox = Instance.new("TextBox")
local GetLinkBtn = Instance.new("TextButton")
local CheckKeyBtn = Instance.new("TextButton")

local SubTitle = Instance.new("TextLabel")
local YTCopyBtn = Instance.new("TextButton")
local TikTokCopyBtn = Instance.new("TextButton")

-- Cài đặt GUI
ScreenGui.Parent = game.CoreGui
ScreenGui.Name = "LboydKeySystem"

MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 17, 26)
MainFrame.Position = UDim2.new(0.5, -180, 0.5, -150)
MainFrame.Size = UDim2.new(0, 360, 0, 310)
MainFrame.Active = true
MainFrame.Draggable = true

UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = MainFrame

UIStroke.Parent = MainFrame
UIStroke.Color = Color3.fromRGB(0, 255, 128)
UIStroke.Thickness = 2

-- Tiêu đề
Title.Parent = MainFrame
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0, 15, 0, 10)
Title.Size = UDim2.new(1, -30, 0, 25)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "Lboyd KEY SYSTEM - Chilli Hub V5"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 16
Title.TextXAlignment = Enum.TextXAlignment.Left

-- Ô Nhập Key
KeyTextBox.Parent = MainFrame
KeyTextBox.BackgroundColor3 = Color3.fromRGB(25, 28, 40)
KeyTextBox.Position = UDim2.new(0, 15, 0, 45)
KeyTextBox.Size = UDim2.new(1, -30, 0, 35)
KeyTextBox.Font = Enum.Font.SourceSans
KeyTextBox.PlaceholderText = "Nhập Key Tại Đây..."
KeyTextBox.Text = ""
KeyTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyTextBox.TextSize = 14

local KeyCorner = Instance.new("UICorner")
KeyCorner.CornerRadius = UDim.new(0, 8)
KeyCorner.Parent = KeyTextBox

-- Nút LẤY LINK KEY
GetLinkBtn.Parent = MainFrame
GetLinkBtn.BackgroundColor3 = Color3.fromRGB(0, 200, 230)
GetLinkBtn.Position = UDim2.new(0, 15, 0, 90)
GetLinkBtn.Size = UDim2.new(0, 160, 0, 35)
GetLinkBtn.Font = Enum.Font.SourceSansBold
GetLinkBtn.Text = "🔗 LẤY LINK KEY"
GetLinkBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
GetLinkBtn.TextSize = 14

local BtnCorner1 = Instance.new("UICorner")
BtnCorner1.CornerRadius = UDim.new(0, 8)
BtnCorner1.Parent = GetLinkBtn

-- Nút KIỂM TRA KEY
CheckKeyBtn.Parent = MainFrame
CheckKeyBtn.BackgroundColor3 = Color3.fromRGB(45, 48, 65)
CheckKeyBtn.Position = UDim2.new(1, -175, 0, 90)
CheckKeyBtn.Size = UDim2.new(0, 160, 0, 35)
CheckKeyBtn.Font = Enum.Font.SourceSansBold
CheckKeyBtn.Text = "✔ KIỂM TRA KEY"
CheckKeyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
CheckKeyBtn.TextSize = 14

local BtnCorner2 = Instance.new("UICorner")
BtnCorner2.CornerRadius = UDim.new(0, 8)
BtnCorner2.Parent = CheckKeyBtn

-- Dòng thông báo phụ
SubTitle.Parent = MainFrame
SubTitle.BackgroundTransparency = 1
SubTitle.Position = UDim2.new(0, 15, 0, 132)
SubTitle.Size = UDim2.new(1, -30, 0, 20)
SubTitle.Font = Enum.Font.SourceSans
SubTitle.Text = "Chúc Các Bạn Trải Nghiệm Script Vui Vẻ"
SubTitle.TextColor3 = Color3.fromRGB(150, 160, 180)
SubTitle.TextSize = 12

-- Nút Copy YouTube
YTCopyBtn.Parent = MainFrame
YTCopyBtn.BackgroundColor3 = Color3.fromRGB(80, 70, 230)
YTCopyBtn.Position = UDim2.new(0, 15, 0, 160)
YTCopyBtn.Size = UDim2.new(1, -30, 0, 35)
YTCopyBtn.Font = Enum.Font.SourceSansBold
YTCopyBtn.Text = "▶ BoiZ YouTube (Bấm để Copy)"
YTCopyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
YTCopyBtn.TextSize = 14

local YTCorner = Instance.new("UICorner")
YTCorner.CornerRadius = UDim.new(0, 8)
YTCorner.Parent = YTCopyBtn

-- Nút Copy TikTok
TikTokCopyBtn.Parent = MainFrame
TikTokCopyBtn.BackgroundColor3 = Color3.fromRGB(230, 50, 90)
TikTokCopyBtn.Position = UDim2.new(0, 15, 0, 205)
TikTokCopyBtn.Size = UDim2.new(1, -30, 0, 35)
TikTokCopyBtn.Font = Enum.Font.SourceSansBold
TikTokCopyBtn.Text = "🎵 TikTok: @lboiyz (Bấm để Copy)"
TikTokCopyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
TikTokCopyBtn.TextSize = 14

local TTCorner = Instance.new("UICorner")
TTCorner.CornerRadius = UDim.new(0, 8)
TTCorner.Parent = TikTokCopyBtn

-- 3. XỬ LÝ SỰ KIỆN

-- Nút LẤY LINK KEY
GetLinkBtn.MouseButton1Click:Connect(function()
    setclipboard(Link4M)
    GetLinkBtn.Text = "✓ ĐÃ COPY LINK 4M!"
    task.wait(2)
    GetLinkBtn.Text = "🔗 LẤY LINK KEY"
end)

-- Nút KIỂM TRA KEY & CHẠY SCRIPT CHÍNH (ChilliV5BaKhi.lua)
CheckKeyBtn.MouseButton1Click:Connect(function()
    local userKey = KeyTextBox.Text
    
    if string.sub(userKey, 1, 12) == "CHILLIHUBV2-" and #userKey >= 18 then
        CheckKeyBtn.Text = "✓ KEY ĐÚNG!"
        CheckKeyBtn.BackgroundColor3 = Color3.fromRGB(0, 200, 100)
        task.wait(1)
        
        ScreenGui:Destroy()
        loadstring(game:HttpGet(MainScriptURL))()
    else
        CheckKeyBtn.Text = "❌ KEY SAI!"
        CheckKeyBtn.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
        task.wait(1.5)
        CheckKeyBtn.Text = "✔ KIỂM TRA KEY"
        CheckKeyBtn.BackgroundColor3 = Color3.fromRGB(45, 48, 65)
    end
end)

-- Copy Youtube & TikTok
YTCopyBtn.MouseButton1Click:Connect(function()
    setclipboard("https://youtube.com/@BoiZ")
    YTCopyBtn.Text = "✓ ĐÃ COPY LINK YOUTUBE"
    task.wait(1.5)
    YTCopyBtn.Text = "▶ BoiZ YouTube (Bấm để Copy)"
end)

TikTokCopyBtn.MouseButton1Click:Connect(function()
    setclipboard("https://tiktok.com/@lboiyz")
    TikTokCopyBtn.Text = "✓ ĐÃ COPY TIKTOK"
    task.wait(1.5)
    TikTokCopyBtn.Text = "🎵 TikTok: @lboiyz (Bấm để Copy)"
end)
-- [[ HỆ THỐNG KEY SYSTEM - LBOYD HUB V5 ]] --

-- 1. LINK 4M CỦA BẠN VÀ LINK SCRIPT CHÍNH MỚI
local Link4M = "https://link4m.org/gbmfBY" 
local MainScriptURL = "https://raw.githubusercontent.com/kadit9999/stealanegg/refs/heads/main/ChilliV5BaKhi.lua"

-- 2. TẠO GIAO DIỆN (GUI)
local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local UIStroke = Instance.new("UIStroke")
local Title = Instance.new("TextLabel")

local KeyTextBox = Instance.new("TextBox")
local GetLinkBtn = Instance.new("TextButton")
local CheckKeyBtn = Instance.new("TextButton")

local SubTitle = Instance.new("TextLabel")
local YTCopyBtn = Instance.new("TextButton")
local TikTokCopyBtn = Instance.new("TextButton")

-- Cài đặt GUI
ScreenGui.Parent = game.CoreGui
ScreenGui.Name = "LboydKeySystem"

MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 17, 26)
MainFrame.Position = UDim2.new(0.5, -180, 0.5, -150)
MainFrame.Size = UDim2.new(0, 360, 0, 310)
MainFrame.Active = true
MainFrame.Draggable = true

UICorner.CornerRadius = UDim.new(0, 12)
UICorner.Parent = MainFrame

UIStroke.Parent = MainFrame
UIStroke.Color = Color3.fromRGB(0, 255, 128)
UIStroke.Thickness = 2

-- Tiêu đề
Title.Parent = MainFrame
Title.BackgroundTransparency = 1
Title.Position = UDim2.new(0, 15, 0, 10)
Title.Size = UDim2.new(1, -30, 0, 25)
Title.Font = Enum.Font.SourceSansBold
Title.Text = "Lboyd KEY SYSTEM - Chilli Hub V5"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 16
Title.TextXAlignment = Enum.TextXAlignment.Left

-- Ô Nhập Key
KeyTextBox.Parent = MainFrame
KeyTextBox.BackgroundColor3 = Color3.fromRGB(25, 28, 40)
KeyTextBox.Position = UDim2.new(0, 15, 0, 45)
KeyTextBox.Size = UDim2.new(1, -30, 0, 35)
KeyTextBox.Font = Enum.Font.SourceSans
KeyTextBox.PlaceholderText = "Nhập Key Tại Đây..."
KeyTextBox.Text = ""
KeyTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
KeyTextBox.TextSize = 14

local KeyCorner = Instance.new("UICorner")
KeyCorner.CornerRadius = UDim.new(0, 8)
KeyCorner.Parent = KeyTextBox

-- Nút LẤY LINK KEY
GetLinkBtn.Parent = MainFrame
GetLinkBtn.BackgroundColor3 = Color3.fromRGB(0, 200, 230)
GetLinkBtn.Position = UDim2.new(0, 15, 0, 90)
GetLinkBtn.Size = UDim2.new(0, 160, 0, 35)
GetLinkBtn.Font = Enum.Font.SourceSansBold
GetLinkBtn.Text = "🔗 LẤY LINK KEY"
GetLinkBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
GetLinkBtn.TextSize = 14

local BtnCorner1 = Instance.new("UICorner")
BtnCorner1.CornerRadius = UDim.new(0, 8)
BtnCorner1.Parent = GetLinkBtn

-- Nút KIỂM TRA KEY
CheckKeyBtn.Parent = MainFrame
CheckKeyBtn.BackgroundColor3 = Color3.fromRGB(45, 48, 65)
CheckKeyBtn.Position = UDim2.new(1, -175, 0, 90)
CheckKeyBtn.Size = UDim2.new(0, 160, 0, 35)
CheckKeyBtn.Font = Enum.Font.SourceSansBold
CheckKeyBtn.Text = "✔ KIỂM TRA KEY"
CheckKeyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
CheckKeyBtn.TextSize = 14

local BtnCorner2 = Instance.new("UICorner")
BtnCorner2.CornerRadius = UDim.new(0, 8)
BtnCorner2.Parent = CheckKeyBtn

-- Dòng thông báo phụ
SubTitle.Parent = MainFrame
SubTitle.BackgroundTransparency = 1
SubTitle.Position = UDim2.new(0, 15, 0, 132)
SubTitle.Size = UDim2.new(1, -30, 0, 20)
SubTitle.Font = Enum.Font.SourceSans
SubTitle.Text = "Chúc Các Bạn Trải Nghiệm Script Vui Vẻ"
SubTitle.TextColor3 = Color3.fromRGB(150, 160, 180)
SubTitle.TextSize = 12

-- Nút Copy YouTube
YTCopyBtn.Parent = MainFrame
YTCopyBtn.BackgroundColor3 = Color3.fromRGB(80, 70, 230)
YTCopyBtn.Position = UDim2.new(0, 15, 0, 160)
YTCopyBtn.Size = UDim2.new(1, -30, 0, 35)
YTCopyBtn.Font = Enum.Font.SourceSansBold
YTCopyBtn.Text = "▶ BoiZ YouTube (Bấm để Copy)"
YTCopyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
YTCopyBtn.TextSize = 14

local YTCorner = Instance.new("UICorner")
YTCorner.CornerRadius = UDim.new(0, 8)
YTCorner.Parent = YTCopyBtn

-- Nút Copy TikTok
TikTokCopyBtn.Parent = MainFrame
TikTokCopyBtn.BackgroundColor3 = Color3.fromRGB(230, 50, 90)
TikTokCopyBtn.Position = UDim2.new(0, 15, 0, 205)
TikTokCopyBtn.Size = UDim2.new(1, -30, 0, 35)
TikTokCopyBtn.Font = Enum.Font.SourceSansBold
TikTokCopyBtn.Text = "🎵 TikTok: @lboiyz (Bấm để Copy)"
TikTokCopyBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
TikTokCopyBtn.TextSize = 14

local TTCorner = Instance.new("UICorner")
TTCorner.CornerRadius = UDim.new(0, 8)
TTCorner.Parent = TikTokCopyBtn

-- 3. XỬ LÝ SỰ KIỆN

-- Nút LẤY LINK KEY
GetLinkBtn.MouseButton1Click:Connect(function()
    setclipboard(Link4M)
    GetLinkBtn.Text = "✓ ĐÃ COPY LINK 4M!"
    task.wait(2)
    GetLinkBtn.Text = "🔗 LẤY LINK KEY"
end)

-- Nút KIỂM TRA KEY & CHẠY SCRIPT CHÍNH (ChilliV5BaKhi.lua)
CheckKeyBtn.MouseButton1Click:Connect(function()
    local userKey = KeyTextBox.Text
    
    if string.sub(userKey, 1, 12) == "CHILLIHUBV2-" and #userKey >= 18 then
        CheckKeyBtn.Text = "✓ KEY ĐÚNG!"
        CheckKeyBtn.BackgroundColor3 = Color3.fromRGB(0, 200, 100)
        task.wait(1)
        
        ScreenGui:Destroy()
        loadstring(game:HttpGet(MainScriptURL))()
    else
        CheckKeyBtn.Text = "❌ KEY SAI!"
        CheckKeyBtn.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
        task.wait(1.5)
        CheckKeyBtn.Text = "✔ KIỂM TRA KEY"
        CheckKeyBtn.BackgroundColor3 = Color3.fromRGB(45, 48, 65)
    end
end)

-- Copy Youtube & TikTok
YTCopyBtn.MouseButton1Click:Connect(function()
    setclipboard("https://youtube.com/@BoiZ")
    YTCopyBtn.Text = "✓ ĐÃ COPY LINK YOUTUBE"
    task.wait(1.5)
    YTCopyBtn.Text = "▶ BoiZ YouTube (Bấm để Copy)"
end)

TikTokCopyBtn.MouseButton1Click:Connect(function()
    setclipboard("https://tiktok.com/@lboiyz")
    TikTokCopyBtn.Text = "✓ ĐÃ COPY TIKTOK"
    task.wait(1.5)
    TikTokCopyBtn.Text = "🎵 TikTok: @lboiyz (Bấm để Copy)"
end)
