RegisterServerEvent("kickForRestart")
AddEventHandler("kickForRestart", function()
	DropPlayer(source, "Toutes les situations du jeu de rôle se terminent automatiquement. Vos progrès ont été sauvegardés. Raison : Redémarrage du serveur") --Reason of why the player got kicked
end)