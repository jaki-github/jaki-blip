Citizen.CreateThread(function()
    for _, blipData in pairs(Config.blips) do
        local blip = AddBlipForCoord(blipData.coords)

        SetBlipSprite(blip, blipData.blipicon)
        SetBlipDisplay(blip, 4)
        SetBlipScale(blip, blipData.scale)
        SetBlipColour(blip, blipData.color)
        SetBlipAsShortRange(blip, true)

        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(blipData.name)
        EndTextCommandSetBlipName(blip)
    end
end)
