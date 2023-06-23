local PLUGIN = PLUGIN
PLUGIN.name = "Flag Languages"
PLUGIN.author = "army"
PLUGIN.description = "Adds three languages that are able to be used."

local languages = {
    ["Z"] = "Russian",
    ["X"] = "Polish",
    ["Y"] = "Ukranian",
    ["V"] = "Vortigese",
    ["G"] = "German",
    ["J"] = "Japanese",
    ["M"] = "Mandarian",
    ["H"] = "Czech",
    ["L"] = "Spanish",
["B"] = "Binary",
    ["K"] = "French"
}

local languageChatTypes = {}

local function OnLanguageChatAdd(lang, flag, meta, speaker, text)
    local localCharacter = LocalPlayer():GetCharacter()
    local characterName = hook.Run("GetCharacterName", speaker, meta.uniqueID) or speaker:GetName()

    if localCharacter:HasFlags(flag) then
        chat.AddText(meta.GetColor(), string.format(meta.format,
            characterName, lang, text
        ))
    else
        chat.AddText(meta.GetColor(), string.format(meta.unknownFormat,
            characterName
        ))
    end
end

for flag, lang in pairs(languages) do
    ix.flag.Add(flag, "Lets you speak " .. lang .. ".")

    ix.chat.Register(lang, {
        format = "%s says in %s \"%s\"",
        unknownFormat = "%s talks in a language unknown to you.",
        indicator = "chatTalking",
        prefix = {"/" .. lang},
        GetColor = function(self, speaker, text)
            if (LocalPlayer():GetEyeTrace().Entity == speaker) then
                return ix.config.Get("chatListenColor")
            end

            return ix.config.Get("chatColor")
        end,
        CanHear = ix.config.Get("chatRange", 280),
        CanSay = function(self, speaker, text)
            if speaker:GetCharacter():HasFlags(flag) then
                return
            else player:Notify("You can't speak this language!")
                return false
            end
        end,
        OnChatAdd = function(self, speaker, text)
            OnLanguageChatAdd(lang, flag, self, speaker, text)
        end
    })

    ix.chat.Register(lang .. "W", {
        format = "%s whispers in %s \"%s\"",
        unknownFormat = "%s whispers in a language unknown to you.",
        description = "@cmdW",
        indicator = "chatWhispering",
        prefix = {"/" .. lang .. "W", "/" .. lang .. "Whisper"},
        GetColor = function(self, speaker, text)
            local color = ix.chat.classes.ic:GetColor(speaker, text)

            return Color(color.r - 35, color.g - 35, color.b - 35)
        end,
        CanHear = ix.config.Get("chatRange", 280) * 0.25,
        CanSay = function(self, speaker, text)
            if speaker:GetCharacter():HasFlags(flag) then
                return
            else player:Notify("You can't speak this language!")
                return false
            end
        end,
        OnChatAdd = function(self, speaker, text)
            OnLanguageChatAdd(lang, flag, self, speaker, text)
        end,
    })

    ix.chat.Register(lang .. "Y", {
        format = "%s yells in %s \"%s\"",
        unknownFormat = "%s yells out in a language unknown to you.",
        description = "@cmdY",
        indicator = "chatYelling",
        prefix = {"/" .. lang .. "Y", "/" .. lang .. "Yell"},
        GetColor = function(self, speaker, text)
            local color = ix.chat.classes.ic:GetColor(speaker, text)

            return Color(color.r + 35, color.g + 35, color.b + 35)
        end,
        CanHear = ix.config.Get("chatRange", 280) * 2,
        CanSay = function(self, speaker, text)
        if speaker:GetCharacter():HasFlags(flag) then
                return
            else player:Notify("You can't speak this language!")
                return false
            end
        end,
        OnChatAdd = function(self, speaker, text)
            OnLanguageChatAdd(lang, flag, self, speaker, text)
        end,
    })

    local lowercaseLang = string.lower(lang)

    languageChatTypes[lowercaseLang]            = true
    languageChatTypes[lowercaseLang .. "w"]     = true
    languageChatTypes[lowercaseLang .. "y"]     = true
end

function PLUGIN:IsRecognizedChatType(chatType)
    if languageChatTypes[chatType] then return true end
end