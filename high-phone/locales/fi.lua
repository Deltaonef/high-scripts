Config.Languages["en"] = {
 
    ["notifications"] = {
 
        -- Bank
 
        ["selftransfer"] = "Et voi siirtää rahaa itsellesi!",
 
        ["selfrequest"] = "Et voi pyytää rahaa itseltäsi!",
 
        ["receivedmoney"] = "Vastaanotit <strong>{amount} €</strong> ID:ltä : <strong>{senderId}</strong>! Syy: <strong>{reason}</strong>",
 
        ["requestedmoney"] = "<strong>{requesterName} [{requesterId}]</strong> pyysi <strong>{amount} €</strong>! Syy: <strong>{reason}</strong>",
 
        ["receivernonexistant"] = "Nyt kyllä tuli väärä ID!",
 
        ["notenoughmoney"] = "Ei tilin kate riitä!",
 
        ["requestdoesntexist"] = "Rahanpyyntö ei onnistu!",
 
        ["requestcooldown"] = "Et voi pyytää noin vauhdilla!",
 
        ["transfercooldown"] = "Et voi lähettää noin vauhdilla!",
 
        ["playernotonline"] = "Tolla ID:llä ei ole ketään!",
 
        ["playernotonlineanymore"] = "Henkilö läksi muihin maihin!",
 
        -- Phone
 
        ["userbusy"] = "Henkilö on kiireinen!",
 
        ["usernotavailable"] = "Henkilö ei tavoiteltavissa!",
 
        ["noavailableunits"] = "Ei ketään vapaana vastaamaan puheluun!",
 
        -- Twitter/mail
 
        ["accountdoesntexist"] = "Kyseisellä sähköpostilla ei ole tiliä!",
 
        ["emailtaken"] = "Kyseinen sähköposti on jo varattu!",
 
        ["emailtooshort"] = "Kyseinen sähköposti on liian lyhyt!",
 
        ["usernametaken"] = "Käyttäjänimi on jo käytössä!",
 
        ["userdoesntexist"] = "Käyttäjää ei ole olemassa!",
 
        ["wrongpassword"] = "Väärä salasana!",
 
        ["wrongresetcode"] = "Väärä koodi!",
 
        ["accountbanned"] = "Tilillä on porttikielto twitteriin!",
 
        -- Dark chat
 
        ["invitealreadyexists"] = "Kutsu on jo käytetty!",
 
        ["invitetooshort"] = "Kutsu on liian lyhyt!",
 
        ["invitedoesntexist"] = "Kutsua ei ole olemassa!",
 
        ["alreadyingroup"] = "Olet jo tässâ ryhmässä!",
 
        ["bannedfromgroup"] = "Olet porttikielloilla ryhmästä!",
 
        ["groupmemberlimitreached"] = "Ryhmän jäsenraja tavoitettu!",
 
        ["member_joined"] = "<strong>{memberName}</strong> liittyi ryhmään",
 
        ["member_left"] = "<strong>{memberName}</strong> lähti ryhmästä",
 
        ["member_banned"] = "<strong>{memberName}</strong> sai vasarasta ryhmään",
 
        ["member_kicked"] = "<strong>{memberName}</strong> sai kenkään ryhmästä",
 
    },
 
    -- Main
 
    ["open_phone"] = "Avaa puhelin",
 
    ["deleted_user"] = "Poistettu käyttäjä",
 
    ["unknown"] = "Tuntematon",
 
    ["unknown_caller"] = "Tuntematon soittaja",
 
    -- Ads
 
    ["ads_notitle"] = "(Ei aihetta)",
 
    -- Twitter
 
    ["twitter_replyingto"] = "Vastataan : @{tweeterName}",
 
    ["twitter_notitle"] = "(Ei aihetta)",
 
    -- Webhooks, the whole table is sent through the webhook, which means you can add/remove anything you want into the webhooks (basically open sourced embeds).
 
    ["newtweetwebhook"] = {
 
        ["title"] = "📢 Uusi twiitti!",
 
        ["fields"] = {
 
            {["name"] = "Lähettäjän data:", ["value"] = "Identifier: `{senderIdentifier}`\nEmail: `{senderEmail}`\nTwitter name: `{senderTwitterName}`\nName: `{senderName}`\nID: `{senderId}`"}
 
        },
 
        ["description"] = "**{title}**\n{content}",
 
        ["image"] = {
 
            ["url"] = "{image}"
 
        },
 
        ["color"] = 47871,
 
        ["footer"] = {
 
            ["text"] = "highrider-phone v" .. GetResourceMetadata(GetCurrentResourceName(), "version"),
 
            ["icon_url"] = "https://i.imgur.com/XMosDSD.png"
 
        }
 
    },
 
    ["tweetreportwebhook"] = {
 
        ["title"] = "🚩 Twiitti reportattu!",
 
        ["fields"] = {
 
            {["name"] = "Twiitin data", ["value"] = "ID: `{tweetId}`\nTitle:`{tweetTitle}`\nContent: `{tweetContent}`"},
 
            {["name"] = "Tilin data", ["value"] = "Email: `{tweeterEmail}`\nNickname: `{tweeterNickname}`"},
 
            {["name"] = "Reportaajan data", ["value"] = "Identifier: `{reporterIdentifier}`\nEmail: `{reporterEmail}`\nNickname: `{reporterNickname}`\nID: `{reporterId}`"}
 
        },
 
        ["image"] = {
 
            ["url"] = "{image}"
 
        },
 
        ["color"] = 47871,
 
        ["footer"] = {
 
            ["text"] = "highrider-phone v" .. GetResourceMetadata(GetCurrentResourceName(), "version"),
 
            ["icon_url"] = "https://i.imgur.com/XMosDSD.png"
 
        }
 
    },
 
    ["userreportwebhook"] = {
 
        ["title"] = "🚩 Twitter käyttäjä reportattu!",
 
        ["fields"] = {
 
            {["name"] = "User data", ["value"] = "Owner: `{userIdentifier}`\nEmail: `{userEmail}`\nNickname: `{userNickname}`"},
 
            {["name"] = "Reporter data", ["value"] = "Identifier: `{reporterIdentifier}`\nEmail: `{reporterEmail}`\nNickname: `{reporterNickname}`\nID: `{reporterId}`"}
 
        },
 
        ["color"] = 47871,
 
        ["footer"] = {
 
            ["text"] = "highrider-phone v" .. GetResourceMetadata(GetCurrentResourceName(), "version"),
 
            ["icon_url"] = "https://i.imgur.com/XMosDSD.png"
 
        }
 
    },
 
    ["newmailwebhook"] = {
 
        ["title"] = "📧 Uusi sähköposti!",
 
        ["fields"] = {
 
            {["name"] = "Spostin data", ["value"] = "To: `{recipients}`\nSubject: `{subject}`\nContent: `{content}`"},
 
            {["name"] = "Lähettäjän data", ["value"] = "Identifier: `{senderIdentifier}`\nEmail: `{senderMailAddress}`\nName: `{senderName}`\nID: `{senderId}`"}
 
        },
 
        ["color"] = 15105570,
 
        ["footer"] = {
 
            ["text"] = "highrider-phone v" .. GetResourceMetadata(GetCurrentResourceName(), "version"),
 
            ["icon_url"] = "https://i.imgur.com/XMosDSD.png"
 
        }
 
    },
 
    ["newadwebhook"] = {
 
        ["title"] = "📢 Uusi mainos!",
 
        ["fields"] = {
 
            {["name"] = "Lähettäjän data", ["value"] = "Identifier: `{senderIdentifier}`\nCharacter name: `{senderFullname}`\nName: `{senderName}`\nID: `{senderId}`"}
 
        },
 
        ["description"] = "**{title}**\n{content}",
 
        ["image"] = {
 
            ["url"] = "{image}"
 
        },
 
        ["color"] = 15105570,
 
        ["footer"] = {
 
            ["text"] = "highrider-phone v" .. GetResourceMetadata(GetCurrentResourceName(), "version"),
 
            ["icon_url"] = "https://i.imgur.com/XMosDSD.png"
 
        }
 
    },
 
    ["newtransactionwebhook"] = {
 
        ["title"] = "💸 Uusi tilisiirto!",
 
        ["fields"] = {
 
            {["name"] = "Siirron data", ["value"] = "Amount: `{amount} €`\nReason: `{reason}`"},
 
            {["name"] = "Lähettäjän data", ["value"] = "Identifier: `{senderIdentifier}`\nName: `{senderName}`\nID: `{senderId}`"},
 
            {["name"] = "Vastaanottajan data", ["value"] = "Identifier: `{receiverIdentifier}`\nName: `{receiverName}`\nID: `{receiverId}`"}
 
        },
 
        ["color"] = 2067276,
 
        ["footer"] = {
 
            ["text"] = "highrider-phone v" .. GetResourceMetadata(GetCurrentResourceName(), "version"),
 
            ["icon_url"] = "https://i.imgur.com/XMosDSD.png"
 
        }
 
    },
 
    -- Other
 
    ["twitterresetmail"] = {
 
        ["senderAddress"] = "noreply@twitter.com",
 
        ["senderName"] = "Twitter",
 
        ["senderPhoto"] = "media/icons/twitter.png",

        ["subject"] = "Tilin reset",

        ["content"] = "Hei siellä,<br><br>Löysimme teidän kadonneen tilin! Tässä koodi jolla voit nollata tilin salasanan!<br><br><strong>{resetCode}</strong><div class='footer twt'>@ 2022 Twitter.com. All rights reserved</div>"
 
    }
 
}
