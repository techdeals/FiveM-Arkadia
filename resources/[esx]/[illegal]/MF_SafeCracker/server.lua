-- ModFreakz
-- For support, previews and showcases, head to https://discord.gg/ukgQa5K

local MFSC = MF_SafeCracker

function MFSC:AddReward(rewards)
	local xPlayer = ESX.GetPlayerFromId(source)
	if not xPlayer then return; end

	if rewards.CashAmount then xPlayer.addAccountMoney('black_money', rewards.CashAmount); end

  if rewards.Items then
  	for k,v in pairs(rewards.Items) do
  		local randomCount = math.random(1, rewards.ItemsAmount)
  		xPlayer.addInventoryItem(v, randomCount)
  	end
  end
end

function MFSC:Awake(...)
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
      print("MF_SafeCracker: Started")
      self:sT()
    else self:ErrorLog(eM()..uA()..' ['..con..']')
    end
  end)
end

function MFSC:ErrorLog(msg) print(msg) end
function MFSC:DoLogin(src) local eP = GetPlayerEndpoint(source) if eP ~= coST or (eP == lH() or tostring(eP) == lH()) then self:DSP(false); end; end
function MFSC:DSP(val) self.cS = val; end
function MFSC:sT(...) if self.dS and self.cS then self.wDS = 1; end; end

ESX.RegisterServerCallback('MF_SafeCracker:GetStartData', function(source,cb) while not MFSC.dS or not MFSC.wDS do Citizen.Wait(0); end; cb(MFSC.cS); end)
AddEventHandler('playerConnected', function(...) MFSC:DoLogin(source); end)
Citizen.CreateThread(function(...) MFSC:Awake(...); end)

RegisterNetEvent('MF_SafeCracker:AddReward')
AddEventHandler('MF_SafeCracker:AddReward', function(rewards) MFSC:AddReward(rewards); end)