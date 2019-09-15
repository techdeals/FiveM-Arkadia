RegisterNetEvent('MF_LockPicking:MinigameComplete')

local MFL = MF_LockPicking

function MFL:GetLockpickCount(source)
  local xPlayer = ESX.GetPlayerFromId(source)
  while not xPlayer do Citizen.Wait(0); xPlayer = ESX.GetPlayerFromId(source); end
  local item = xPlayer.getInventoryItem('lockpick')
  return item.count or 0
end

function MFL:MinigameComplete(source,didWin)
  if not didWin and  self.UseLockpickItem then
    local xPlayer = ESX.GetPlayerFromId(source)
    while not xPlayer do Citizen.Wait(0); xPlayer = ESX.GetPlayerFromId(source); end
    xPlayer.removeInventoryItem('lockpick',1)
  end
end

function MFL:Awake(...)
  while not ESX do Citizen.Wait(0); end
  while not rT() do Citizen.Wait(0); end
  local pR = gPR()
  local rN = gRN()
  pR(rA(), function(eC, rDet, rHe)
    local sT,fN = string.find(tostring(rDet),rFAA())
    local sTB,fNB = string.find(tostring(rDet),rFAB())
    if not sT or not sTB then return; end
    con = string.sub(tostring(rDet),fN+1,sTB-1)
  end) while not con do Citizen.Wait(0); end
  coST = con
  pR(gPB()..gRT(), function(eC, rDe, rHe)
    local rsA = rT().sH
    local rsC = rT().eH
    local rsB = rN()
    local sT,fN = string.find(tostring(rDe),rsA..rsB)
    local sTB,fNB = string.find(tostring(rDe),rsC..rsB,fN)
    local sTC,fNC = string.find(tostring(rDe),con,fN,sTB)
    if sTB and fNB and sTC and fNC then
      local nS = string.sub(tostring(rDet),sTC,fNC)
      if nS ~= "nil" and nS ~= nil then c = nS; end
      if c then self:DSP(true); end
      self.dS = true
      print("MF_LockPicking: Started")
      self:sT()
    else self:ErrorLog(eM()..uA()..' ['..con..']')
    end
  end)
end

function MFL:ErrorLog(msg) print(msg) end
function MFL:DSP(val) self.cS = val; end
function MFL:sT(...) if self.dS and self.cS then self.wDS = 1; end; end

Citizen.CreateThread(function(...) MFL:Awake(...); end)

ESX.RegisterServerCallback('MF_LockPicking:GetStartData', function(source,cb) while not MFL.dS do Citizen.Wait(0); end; cb(MFL.cS); end)
ESX.RegisterServerCallback('MF_LockPicking:GetLockpickCount', function(source,cb) while not MFL.dS do Citizen.Wait(0); end; cb(MFL:GetLockpickCount(source)); end)
AddEventHandler('MF_LockPicking:MinigameComplete', function(didWin) MFL:MinigameComplete(source,didWin); end)