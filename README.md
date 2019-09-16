# FiveM-Arkadia
French FiveM Server developped & edited by ikNox#6088

Discord Bot :

"[admin]\FiveM-BanSql-1.0.8\config.lua"
"[esx]\[discord]\DiscordBot\config.lua"
"[esx]\[discord]\esx_discord_bot\config.lua"

DiscordRichPresence :

"[esx]\[discord]\DiscordRichPresence\client.lua"

Les glitchs des coffres et des factures négatif sont patchés ainsi que les ressources sécurisées contre les Moddeurs.
(bien sûr ils pourront toujours passer à travers certaines choses avec des connaissances)

Pour changer les images des menus ;

"[esx]\[ui]\esx_menu_default\html\img\header"

Pour ajouter les images des métiers ou les changers :

"[hud]\esx_customui\html\img" (Nommer l'image avec le nom du job)

Changer le nom du menu de sélection du personnage :

"[esx]\[base]\esx_kashacters\html\ui.html"

Changer le LoadingScreen (Nom et Image) : 

"[hud]\panzar-load\edit_this.html"
"[hud]\panzar-load\keks.css"

Changer l'argent de départ :

"[essential]\essentialmode\server\util.lua"

Un script de Semi-Whitelist est aussi disponible, pour l'utiliser lancer "esx_douane" ensuite direction :
"reboot\server" décommenté la ligne 32 à 37 et modifier l'heure à laquel vous voulez que la whiteliste se lance et à quelle heure vous voulez l'arrêter.

COMMANDES ADMIN

Ajouter un Métier à un joueur
/setjob ID NomMetier Grade

Ajouter une Organisation à un joueur
/setjob2 ID NomMetier Grade

Bannir un joueur
/ban ID Jour(0 = Permanent) Raison

Bannir un joueur déconnecté
/banoffline JOUR NomSteam
/reason Raison

Unban un joueur
/unban NomSteam

Give un item
/giveitem ID NomItem Nombre

Give une arme
/giveweapon ID NomArme Munition

Ouvrir le menu es_admin
Touche HOME

Ouvrir le menu Spectateur
Touche 9 ou /spec.
pour voir sont inventaire Touche G
