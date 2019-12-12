ASM = ASM or {}
ASM.Config = ASM.Config or {}

--[[ Modifier seulement les choses entre " " afin de configurer ASSuite ]]

-- Nom de votre communauté
ASM.Config.CommunityName = "CommunityRP"

--[[-------------------------------------------------]]--
--[[--        CONFIGURATION DES COMMANDES          --]]--
--[[-------------------------------------------------]]--

-- Commande pour ouvrir ASM
ASM.Config.ChatCommand = "!asm"

-- Commande Console pour ouvrir ASM
ASM.Config.ConsoleCommand = "asm_open"

-- Commande pour ouvrir VOTRE système de logs
ASM.Config.LogsCommand = "!logs"

-- Commande pour ouvrir VOTRE système de warns
ASM.Config.WarnCommand = "!warns"


--[[-------------------------------------------------]]--
--[[--     CONFIGURATION DU MODULE TICKET STAFF    --]]--
--[[           !!! CE MODULE EST A VENIR          !!!]]--
--[[-------------------------------------------------]]--

-- Souhaitez vous activer le module de ticket staff ? [ true = activé | false = désactivé ]
ASM.Config.EnableTicket = false


-- Commande pour ouvrir le menu des tickets
ASM.Config.TicketCommands = "/ticket"

--[[-------------------------------------------------]]--
--[[--       CONFIGURATION DES ROLES STAFF         --]]--
--[[-------------------------------------------------]]--

ASM.Config.StaffRoles = {

    ["superadmin"] = true,
    ["admin"] = true,

}