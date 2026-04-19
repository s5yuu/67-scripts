task.spawn(function()
    task.wait(1)

    local PlaceID = game.PlaceId
    local Player = game:GetService("Players").LocalPlayer

    print("Current PlaceId:", PlaceID)

    task.wait(2.5)

    local scripts = {
        [82866880824588] = "loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/ac69cb6855ac9e9c1f3711ad140d5818.lua"))()",
        [81310542478972]  = "loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/ac69cb6855ac9e9c1f3711ad140d5818.lua"))()",
        [71832465156084] = "loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/c27099bd74ba1246c7494d46059b98e7.lua"))()",
        [14386691987]    = "loadstring(game:HttpGet("https://api.luarmor.net/files/v4/loaders/c27099bd74ba1246c7494d46059b98e7.lua"))()"
    }

    local url = scripts[PlaceID]

    if url then
        loadstring(game:HttpGet(url))()
    else
        Player:Kick("Join For Help! discord.gg/six7 Unauthorized game. PlaceId: "..PlaceID)
    end
end)
