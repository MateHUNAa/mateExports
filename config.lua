Config               = {}

---@type string
Config.BotToken      = MYCFG.DISCORD_TOKEN -- Discord bot token for `discord_rest`

---@type string
Config.Webhook       = {
     money =
     "https://discord.com/api/webhooks/1308013811504254996/_5begd6OSZ5ZXnXQdHkkUWRBvEeJaqM464E5icQt7Gm-6Epozwb94X7gewNYaPBGlrAc",
     error =
     "https://discord.com/api/webhooks/1308013856588828703/q77ynCbk_GVHWreu3H7Ry7DjOQ9Uy0rP0OoxglBQBb3GPa4_4hEsi5NtrjkA9Cg4ZR8J",
     exploit =
     "https://discord.com/api/webhooks/1308013895117701121/nTKrLeNAf41ynjmN5Ty_99YRUJyLnnLnZwgrf1UH_AzMGxRazGFhqtPYAO41quZgJ5Da"
} -- Global Webhook !IMPORTANT!

Config.DeathHandle   = true

Config.VersionCheck  = true -- Recommended True

Config.onServerStart = {
     ReturnImpounded = true
}

Config.JoinServer    = {
     Enable           = true,
     SendNotification = false
}

Config.PlayTime      = {
     Enable = true
}

Config.weaponDamage  = {
     Enable            = false,
     ChangeMeeleDamage = false,
}

Config.Webhooks      = {
     ---@type string
     ['money']   = MYCFG.HOOKS.money,
     ["error"]   = MYCFG.HOOKS.error,
     ["exploit"] = MYCFG.HOOKS.exploit
}

Config.NotifyTypes   = {
     ["info"]    = true,
     ["success"] = true,
     ["error"]   = true,
     ["lsp"]     = true,
     ["ems"]     = true,
}

Config.Notify        = (function(playerId, title, message, type, dur)
     if not Config.NotifyTypes[type] then
          for t in pairs(Config.NotifyTypes) do
               if not type == t then type = Config.NotifyTypes[1] end
          end
     end

     if not dur or dur == 0 then dur = 5000 end

     -- Change Notification here ! VV
     TriggerClientEvent("codem-notification:Create", playerId, message, type, title, dur)
end)

Config.CNotify       = (function(title, message, type, dur)
     if not Config.NotifyTypes[type] then
          for t in pairs(Config.NotifyTypes) do
               if not type == t then type = Config.NotifyTypes[1] end
          end
     end

     if not dur or dur == 0 then dur = 5000 end

     -- Change Notification here ! VV
     TriggerEvent("codem-notification:Create", message, type, title, dur)
end)


Config.Icons                    = {
     "mhScripts",
     "coffin",
     "rime",
     "loot",
     "afganisztan",
     "albania",
     "arab",
     "argentina",
     "ausztralia",
     "brazilia",
     "cseh",
     "delkorea",
     "egyiptom",
     "eszakkorea",
     "feheroroszorszag",
     "franciaorszag",
     "honved",
     "india",
     "iraq",
     "izrael",
     "jamaica",
     "japan",
     "kanada",
     "kina",
     "kolumbia",
     "mexiko",
     "nagybritania",
     "nigeria",
     "olaszorszag",
     "oroszorszag",
     "pakisztan",
     "portugalia",
     "romania",
     "romanok",
     "spanyolorszag",
     "szlovakia",
     "torokorszag",
     "usa",
     "uzbegisztan",
     ".Humane",
     ".Bobcat",
}

--
-- Do not touch
--

Config.profilePicTemplateString = "https://cdn.discordapp.com/avatars/%s/%s.png?size=1024"
