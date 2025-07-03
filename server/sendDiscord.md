
sendMessage(webhook, name, message, image) ---- Sending Message to discord

sendEmbed(webhook, 'Name of The bot', embed) -- Sending embed to discord

log(msg) --- Sending log to server console

# Examples

local embed = {
     {
          ["color"] = 16753920,
          ["title"] = "**" .. GetPlayerName(player) .. "**",
          ["description"] = "Test Embed",
          ["footer"] = {
               ["text"] = "Footer Text",
          },
     }
}

exports["mateExports"]:sendMessage(webhook, 'Test Message', 'Bot Name')
