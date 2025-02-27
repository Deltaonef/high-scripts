-- DO NOT TOUCH
_G.Version = GetResourceMetadata(GetCurrentResourceName(), "version")

Config = {}
Config.Languages = {}

-- Main config starts here!
-- You can choose from the following languages: "en", "fr", "cz", "de"
Config.Language = "en"

Config.ItemRequired = true -- Does the player need a phone item in their inventory to be able to use it
Config.DefaultItemNotRequired = "blue_phone" -- Index name from Config.PhoneItems below, default phone frame color/background if an item is not required. [Sadly can't give different color variations for people without items].
Config.PhoneItems = { -- Phone item spawn name, can add multiple.
    ["phone"] = {color = "#a3a3a3", defaultBackground = "blue", defaultLockbackground = "blue", prop = "prop_npc_phone_02"}, -- Default backgrounds are the index names of backgrounds set in 'high_phone/html/js/config.js'
    ["blue_phone"] = {color = "#215e7c", defaultBackground = "blue", defaultLockbackground = "blue", prop = "prop_npc_phone_02"},
    ["red_phone"] = {color = "#a50011", defaultBackground = "red", defaultLockbackground = "red", prop = "prop_npc_phone_02"},
    ["green_phone"] = {color = "#8baf8a", defaultBackground = "green", defaultLockbackground = "green", prop = "prop_npc_phone_02"},
    ["gold_phone"] = {color = "#f5ddc5", defaultBackground = "gold", defaultLockbackground = "gold", prop = "prop_npc_phone_02"},
    ["purple_phone"] = {color = "#b8afe6", defaultBackground = "purple", defaultLockbackground = "purple", prop = "prop_npc_phone_02"},
    ["black_phone"] = {color = "#171e27", defaultBackground = "purple", defaultLockbackground = "purple", prop = "prop_npc_phone_02"},
    --["rainbow_phone"] = {color = "rainbow", defaultBackground = "gold", defaultLockbackground = "gold"} -- Why does this exist?
} -- Colors can either be HEX or RGB codes.
Config.AllowUsageInWater = false -- Set to true if you want to allow opening the phone in water. [The camera in water might be buggy]
Config.SettingsSaveType = 2 -- Put 1 for setting saving in the database, put 2 for setting saving in player's fivem local cache.

-- Only uncomment this CLIENT-SIDE function if you want to add your own checks/notifications if the player has the phone & is able to open the phone.
--[[Config.CanOpen = function(hasPhone)
    if(not hasPhone) then
        -- Put your notification event here!
    end
    return hasPhone
end]]

Config.CanUseDead = false -- Set to true if you want to allow the player to open the phone when he's dead.
Config.CanUseRPDead = false -- Set to true if you want to allow the player to open the phone when he's RP dead (not actual entity death).
Config.OpenKey = 199 -- Default key: P, you can find keys here: https://docs.fivem.net/docs/game-references/controls/
Config.DisableControlAction = true -- Disable the other actions that OpenKey does? For example P opens pause menu, prevent that from happening or not?
-- OR you can use key mapping (recommended, better for performance)
Config.EnableKeyMapping = true -- set to true if you want to allow players to change their phone opening button.
Config.DefaultKeyMap = "N" -- https://docs.fivem.net/docs/game-references/input-mapper-parameter-ids/keyboard/
Config.AllowInPauseMenu = false -- Allow using the phone in pause menu or not?

Config.AirdropDistance = 5.0 -- Closest player max distance to share contacts/etc.

Config.MaxRecipients = 10 -- How many recipients can be added to a new mail?
Config.MailLimit = 100 -- How many conversations to load for mail app
Config.MailFormat = "@gmail.com" -- Email address format [suffix]
Config.MailStackingTime = 24 -- In hours, how much time has to be between each mail with the same subject to not save it in the same conversation? [This is some sort of an anti-spam]

Config.MaxPortraitPedDistance = 10.0 -- Ped max distance to camera
Config.PortraitPedInCar = true -- Does portrait mode work on other peds when they're in car?
Config.PortraitPedMaxAngle = 25.0 -- Max angle for the ped's heading 
Config.PortraitPedMaxScreenCenterDistance = 0.25 -- Max distance of ped on screen from screen's center

Config.SyncedFlashlightDistance = 30 -- How near will flashlights get synced?
Config.SyncedFlashlightUpdateFrequency = 50 -- in ms, how often will other player's flashlight locations will be synced.
Config.SyncedFlashlight = true -- set to false if you don't want to sync flashlights for all players nearby!

Config.SyncedSounds = true -- Will other players near you hear your phone notifications/incoming call sounds?
Config.SyncedSoundDistance = 10 -- How near another player you have to be to hear their phone sounds?
Config.SyncedSoundModifier = 0.5 -- Modifier of the emitted volume by other people's phones. Default 0.5 means 50% of their phone's volume, e.g. if they have their volume set to 60%, you'll hear it as if its 30% volume when standing near the player.
Config.SyncedSoundPocketModifier = 0.3 -- (Ignores Config.SyncedSoundModifier!) Modifier of the emitted volume by other people's phones while they're not open. Default 0.3 means 30% of their phone's volume, e.g. if they have their volume set to 100%, you'll hear it as if its 30% volume when standing near the player.

Config.SyncedMusic = true -- Will other players near you hear your YouTube music app's played songs?
Config.SyncedMusicDistance = 10 -- How near another player you have to be to hear their music?
Config.SyncedMusicModifier = 0.5 -- Modifier of the emitted volume by other people's phones. Default 0.5 means 50% of their phone's volume, e.g. if they have their volume set to 60%, you'll hear it as if its 30% volume when standing near the player.
Config.SyncedMusicPocketModifier = 0.3 -- (Ignores Config.SyncedSoundModifier!) Modifier of the emitted volume by other people's phones while they're not open. Default 0.3 means 30% of their phone's volume, e.g. if they have their volume set to 100%, you'll hear it as if its 30% volume when standing near the player.
Config.MaxPopularSongs = 5 -- How many most popular songs in the server can be shown in YouTube Music app?
Config.MaxRecentSongs = 10 -- How many recently played songs can be saved?

Config.UseHigh3D = false -- Use resource high_3dsounds? If false, will automatically use xSound. For best experience use Highrider-3DSounds
Config.High3DName = "high_3dsounds" -- Your high_3dsounds folder/resource name. Change only if using Highrider-3DSounds.
Config.UseExternalxSound = false -- Use xsound as a dependency and not the built-in xsound? [Be cautious, bugs might appear if changed to true, the reason why we're using an xsound inside the phone is to remove existing bugs/adapt functions to our phone, so if you want to use it, you'll have to compare our edited xsound's code with original]
Config.xSoundName = "xsound" -- External xsound resource/folder name. Change only if UseHigh3D is false.
Config.xSoundPositionUpdateFrequency = 150 -- How often update the coordinates of the sound? With high_3dsounds entity system the position is updated automatically without any delays.

Config.EnableBillCancelling = false -- Enable the ability to decline bills in bank app?
Config.TransferType = 1 -- Put 1 for player ID transactions, put 2 for IBAN transactions!
Config.MoneyRequestCooldown = 5000 -- In miliseconds, 1000ms = 1 second
Config.TransferCooldown = 5000 -- In miliseconds, 1000ms = 1 second

Config.CallsHistoryLimit = 100 -- How many calls can there be in the call history? Any more calls than that will remove the oldest calls.

Config.DarkGroupInviteCodeLength = 10 -- The length of a random invite code for a new dark chat group.

Config.TwitterResetTimer = 30 -- In seconds, how long you have to wait between sending reset codes.
Config.ServerTweetLimit = 50 -- How many tweets to load from the database for the twitter app?
Config.ClientTweetLimit = 20 -- How many tweets to display on the twitter app?
Config.ProfileTweetsLimit = 15 -- How many tweets to load & display on user profile?
Config.TwitterRanks = {
    ["default"] = { -- Do not rename this rank, KEEP IT NAMED DEFAULT!
        label = "", -- What will show up when hovered on the icon?
        icon = "", -- Keep empty for no icon, use fontawesome's icons.
        iconColor = "#fff", -- Icon color, can use rgb or hex code.
        admin = false -- Can delete anyone's tweets?
    },
    ["verified"] = {
        label = "Verified", -- What will show up when hovered on the icon?
        icon = "fas fa-badge-check", -- Keep empty for no icon, use fontawesome's icons.
        iconColor = "#fff", -- Icon color, can use rgb or hex code.
        admin = false -- Can delete anyone's tweets?
    },
    ["admin"] = {
        label = "Admin", -- What will show up when hovered on the icon?
        icon = "fas fa-shield-alt", -- Keep empty for no icon, use fontawesome's icons.
        iconColor = "#fff", -- Icon color, can use rgb or hex code.
        admin = true -- Can delete anyone's tweets?
    }
}

Config.AdsLimit = 20 -- How many ads to load from the database and display on the ads app

Config.ShowContactStatuses = true -- Enable showing other contacts' statuses?

--[[ THIS WORKS SIMPLE, WHEN YOU CALL ONE OF THE QUICK CONTACTS EVERYONE WITH THE JOB ON DUTY/ON SERVICE WILL RECEIVE THE CALL AND ONE OF THEM WILL BE ABLE TO PICK IT UP.
   SAME GOES FOR MESSAGES, EVERYONE WILL RECEIVE THE MESSAGE THAT HAVE THE JOB OF THE CONTACT THAT YOU'VE SENT THE MESSAGE TO.
   !! SYSTEM IS AUTOMATICALLY COMPATIBLE WITH ESX_DUTY AS IT CHANGES THE JOB NAME, BUT IT'S CONFIGURABLE TO WORK WITH OTHER DUTY SCRIPTS IN 'sh_config.lua' ]]
Config.DutyCheckInterval = 30 -- In seconds, don't set it if you didn't uncomment 'onDuty' in the sh_config.lua getPlayer object, this sets how often will the script check for on/off duty status of players in the job? It is optimized, so don't worry, but there's no other way to do it as not all duty scripts have events for updating duty and would cause incompatibilities, etc.
Config.JobContacts = {
    ["police"] = { -- People with this job will receive these calls/messages.
        name = "Police", -- Shown contact name
        number = "01", -- Phone number to call to
        photo = "./media/icons/police.png", -- base64 data image or an image URL or file location OR leave empty for no image.
        preAdded = true, -- Add it to the contacts app or not? If not added [set to false], you can only call it through the phone app, or message it through the messages app.
        callable = true, -- Can you call the contact?
        attachments = false, -- Can you send images as attachments to this contact?
        displayStatus = true, -- Display the online status for this contact when there are players in the job online?
        -- UNCOMMENT (REMOVE THE --[[ AND ]]) THE CODE BELOW IF YOU USE SUCH SCRIPTS AS CD_DISPATCH OR CORE_DISPATCH
        --[[messageCallback = function(server, content, senderNumber)
            -- Add shared (server & client) code here. Argument 'server' is the IsDuplicityVersion function's returned value (shows if the environment is server-side or client-side)
            if(not server) then
                -- Do something here if it's the client side.
            else
                -- Do something here if it's the server side. For example core_dispatch exports will go here.
            end
        end]]
    },
    ["ambulance"] = { -- People with this job will receive these calls/messages.
        name = "Ambulance", -- Shown contact name
        number = "02", -- Phone number to call to
        photo = "./media/icons/ambulance.png", -- base64 data image or an image URL or file location OR leave empty for no image.
        preAdded = true, -- Add it to the contacts app or not? If not added [set to false], you can only call it through the phone app, or message it through the messages app.
        callable = true, -- Can you call the contact?
        attachments = false, -- Can you send images as attachments to this contact?
        displayStatus = true, -- Display the online status for this contact when there are players in the job online?
        -- UNCOMMENT (REMOVE THE --[[ AND ]]) THE CODE BELOW IF YOU USE SUCH SCRIPTS AS CD_DISPATCH OR CORE_DISPATCH
        --[[messageCallback = function(server, content, senderNumber)
            -- Add shared (server & client) code here. Argument 'server' is the IsDuplicityVersion function's returned value (shows if the environment is server-side or client-side)
            if(not server) then
                -- Do something here if it's the client side.
            else
                -- Do something here if it's the server side. For example core_dispatch exports will go here.
            end
        end]]
    },
}

--[[ ADVERTISMENTS APP CATEGORIES - YOU CAN ADD AS MANY CATEGORIES AS YOU WANT HERE! 
    ALSO IF YOU'RE ADDING MORE CATEGORIES, MAKE SURE THESE NUMBERS IN THE BRACKETS ARE IN AN ASCENDING ORDER]]
Config.AdminAllCategories = false
Config.AdsCategories = {
    -- Default category [invisible, as its the main category]
    ["default"] = { -- DO NOT CHANGE THIS CATEGORY JOB NAME, THIS IS THE DEFAULT/MAIN CATEGORY
        label = "Individual", -- Category label
        job = {name = "unemployed", grade = 0}, -- People with this job and grade will be able to post ads to this category.
        color = "", -- RGBA or hex code
        info = { -- Detailed information of the category
            title = "All Advertisments",
            description = "All job advertisments and individual advertisments"
        },
        allowPosting = false -- Allow posting ads in the default category for people without the job set in 'job' field above?
    },
    -- Shown categories, ADD ALL NEW CATEGORIES BELOW THIS COMMENT ONLY!
    ["police"] = {
        label = "Police", -- Category label
        job = {{name = "police", grade = 0}, {name = "police2", grade = 0}}, -- People with these jobs and grades will be able to post ads to this category.
        icon = "media/icons/policecar.png", -- Icon of the category button
        color = "#0494c3", -- RGBA or hex code
        info = { -- Detailed information of the category
            title = "Police Advertisments",
            description = "You can see all police advertisments here"
        }
    },
    ["ambulance"] = {
        label = "EMS", -- Category label
        job = {name = "ambulance", grade = 1}, -- People with this job and grade will be able to post ads to this category.
        icon = "media/icons/emscar.png", -- Icon of the category button
        color = "#d92323", -- RGBA or hex code
        info = { -- Detailed information of the category
            title = "EMS Advertisments",
            description = "You can see all EMS advertisments here"
        }
    },
    ["taxi"] = { 
        label = "Taxi", -- Category label
        job = {name = "taxi", grade = 0}, -- People with this job and grade will be able to post ads to this category.
        icon = "media/icons/taxicar.png", -- Icon of the category button
        color = "#eba313", -- RGBA or hex code
        info = { -- Detailed information of the category
            title = "Taxi Advertisments",
            description = "You can see all taxi advertisments here"
        }
    },
    ["service"] = {
        label = "Service", -- Category label
        job = {{name = "mechanic", grade = 0}, {name = "bennys", grade = 0}}, -- People with this job and grade will be able to post ads to this category.
        icon = "media/icons/servicecar.png", -- Icon of the category button
        color = "#525252", -- RGBA or hex code
        info = { -- Detailed information of the category
            title = "Service Advertisments",
            description = "You can see all mechanic advertisments here"
        }
    }
}