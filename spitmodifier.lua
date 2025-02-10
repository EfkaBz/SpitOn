SLASH_SPITON1 = "/spit"

SlashCmdList["SPITON"] = function()
    local target = UnitName("target")
    
    if target then
        SendChatMessage("Vous crachez sur " .. target .. ".", "EMOTE")
    else
        SendChatMessage("Vous crachez par terre.", "EMOTE")
    end
end
