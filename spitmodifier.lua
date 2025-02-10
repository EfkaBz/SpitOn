SLASH_SPITON1 = "/spit"
SLASH_SPITON2 = "/spucken"
SLASH_SPITON3 = "/escupir"
SLASH_SPITON4 = "/плевать"
SLASH_SPITON5 = "/cracher"


SlashCmdList["SPITON"] = function()
    local target = UnitName("target")
    local playerLang = GetLocale()

    -- Si la langue est l'anglais
    if playerLang == "enUS" or playerLang == "enGB" then
        if target then
            SendChatMessage("You spit on " .. target .. ".", "EMOTE")
        else
            SendChatMessage("You spit on the ground.", "EMOTE")
        end
    -- Si la langue est l'allemand
    elseif playerLang == "deDE" then
        if target then
            SendChatMessage("Du spuckst auf " .. target .. ".", "EMOTE")
        else
            SendChatMessage("Du spuckst auf den Boden.", "EMOTE")
        end
    -- Si la langue est l'espagnol
    elseif playerLang == "esES" or playerLang == "esMX" then
        if target then
            SendChatMessage("Escupes sobre " .. target .. ".", "EMOTE")
        else
            SendChatMessage("Escupes sobre el suelo.", "EMOTE")
        end
    -- Si la langue est le russe
    elseif playerLang == "ruRU" then
        if target then
            SendChatMessage("Ты плюешь на " .. target .. ".", "EMOTE")
        else
            SendChatMessage("Ты плюешь на землю.", "EMOTE")
        end
    -- Par défaut (pour le français ou autres langues)
    else
        if target then
            SendChatMessage("Vous crachez sur " .. target .. ".", "EMOTE")
        else
            SendChatMessage("Vous crachez par terre.", "EMOTE")
        end
    end
end
