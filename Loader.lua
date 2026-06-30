local API_URL = "https://fi15.bot-hosting.net:26080/verify?key="
local inputKey = "QTIEN-VIP" -- Hoặc tạo một ô nhập Key trong UI của bạn

local function LoadScript()
    local success, scriptContent = pcall(function()
        return game:HttpGet(API_URL .. inputKey)
    end)
    
    if success and scriptContent ~= "print('Key sai hoặc không hợp lệ!')" then
        -- Chạy code chính nhận được từ Hosting
        loadstring(scriptContent)()
    else
        warn("Truy cập bị từ chối!")
    end
end

LoadScript()
