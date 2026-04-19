task.spawn(function()
    task.wait(1)

    local PlaceID = game.PlaceId
    local Player = game:GetService("Players").LocalPlayer

    print("Current PlaceId:", PlaceID)

    task.wait(2.5)

    local scripts = {
        [82866880824588] = "https://raw.githubusercontent.com/s5yuu/67-scripts/refs/heads/main/ff3.lua",
        [81310542478972]  = "https://raw.githubusercontent.com/s5yuu/67-scripts/refs/heads/main/ff3.lua",
        [71832465156084] = "https://raw.githubusercontent.com/s5yuu/67-scripts/refs/heads/main/bbl.lua",
        [14386691987]    = "https://raw.githubusercontent.com/s5yuu/67-scripts/refs/heads/main/bbl.lua"
    }

    local url = scripts[PlaceID]

    if url then
        loadstring(game:HttpGet(url))()
    else
        Player:Kick("Join For Help! discord.gg/six7 Unauthorized game. PlaceId: "..PlaceID)
    end
end)
