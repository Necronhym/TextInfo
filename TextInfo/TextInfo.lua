function Print(String)
	DEFAULT_CHAT_FRAME:AddMessage(String);
end

function GetPrintPos()
	px,py=GetPlayerMapPosition("player")
end
local Str
function OnUpdate(self, elapsed)
  self.TimeSinceLastUpdate = self.TimeSinceLastUpdate + elapsed; 	

  while (self.TimeSinceLastUpdate > MyAddon_UpdateInterval) do
    
	Print("Hello Update")

    self.TimeSinceLastUpdate = self.TimeSinceLastUpdate - MyAddon_UpdateInterval;
  end
end

local f = CreateFrame("Frame",nil,UIParent)
f:SetFrameStrata("BACKGROUND")
f:SetWidth(256) -- Set these to whatever height/width is needed 
f:SetHeight(256) -- for your Texture

f:SetScript("OnUpdate", function(self, elapsed) 
	pm = GetNumPartyMembers()
	posX, posY = GetPlayerMapPosition('player')
	if pm == 0  then
	Str=format( "Facing = %f\nSelfX = %f\nSelfY = %f\n%s = %i\n%s = %i",
	GetPlayerFacing(),
	posX*100 , posY*100,
	"SelfHP ",(UnitHealth('player')/UnitHealthMax('player'))*100,
	"SelfMP ",(UnitMana('player')/UnitManaMax('player'))*100
)
	f.PortalTitle:SetText(Str);
end
	if pm == 1  then
	Str=format( "Facing = %f\nSelfX = %f\nSelfY = %f\n%s = %i\n %s = %i\n %s = %i", 
	GetPlayerFacing(),
	posX*100 , posY*100,
	"SelfHP ",(UnitHealth('player')/UnitHealthMax('player'))*100,
	"SelfMP ",(UnitMana('player')/UnitManaMax('player'))*100,
	"PartyA ",(UnitHealth('party1')/UnitHealthMax('party1'))*100
)
	f.PortalTitle:SetText(Str);
end
	if pm == 2  then
	Str=format( "Facing = %f\nSelfX = %f\nSelfY = %f\n%s = %i\n %s = %i\n %s = %i\n %s = %i", 
	GetPlayerFacing(),
	posX*100 , posY*100,
	"SelfHP ",(UnitHealth('player')/UnitHealthMax('player'))*100,
	"SelfMP ",(UnitMana('player')/UnitManaMax('player'))*100,
	"PartyA ",(UnitHealth('party1')/UnitHealthMax('party1'))*100,
	"PartyB ",(UnitHealth('party2')/UnitHealthMax('party2'))*100
)
	f.PortalTitle:SetText(Str);
end
	if pm == 3  then
	Str=format( "Facing = %f\nSelfX = %f\nSelfY = %f\n%s = %i\n %s = %i\n %s = %i\n %s = %i\n %s = %i",
	GetPlayerFacing(), 
	posX*100 , posY*100,
	"SelfHP ",(UnitHealth('player')/UnitHealthMax('player'))*100,
	"SelfMP ",(UnitMana('player')/UnitManaMax('player'))*100,
	"PartyA ",(UnitHealth('party1')/UnitHealthMax('party1'))*100,
	"PartyB ",(UnitHealth('party2')/UnitHealthMax('party2'))*100,
	"PartyC ",(UnitHealth('party3')/UnitHealthMax('party3'))*100
)
	f.PortalTitle:SetText(Str);
end
	if pm == 4  then
	Str=format( "Facing = %f\nSelfX = %f\nSelfY = %f\n%s = %i\n %s = %i\n %s = %i\n %s = %i\n %s = %i\n %s = %i",
	GetPlayerFacing(), 
	posX*100 , posY*100,
	"SelfHP ",(UnitHealth('player')/UnitHealthMax('player'))*100,
	"SelfMP ",(UnitMana('player')/UnitManaMax('player'))*100,
	"PartyA ",(UnitHealth('party1')/UnitHealthMax('party1'))*100,
	"PartyB ",(UnitHealth('party2')/UnitHealthMax('party2'))*100,
	"PartyC ",(UnitHealth('party3')/UnitHealthMax('party3'))*100,
	"PartyD ",(UnitHealth('party4')/UnitHealthMax('party4'))*100
)
	f.PortalTitle:SetText(Str);
end
	--f.PortalTitle:SetText("test");
end)

local t = f:CreateTexture(nil, "BACKGROUND")
t:SetAllPoints()
t:SetTexture(1, 1, 1, 1)
f.texture = t

-- Create the Portal Title 
f.PortalTitle = f:CreateFontString("MagePorts_Frame_PortalTitle", 'ARTWORK', "GameFontNormal");
f.PortalTitle:SetPoint("CENTER",f,"CENTER",0,0);	
f.PortalTitle:SetFont("Interface\\AddOns\\TextInfo\\OCR.ttf", 16, "BOLD")
f.PortalTitle:SetTextColor(0,0,0,1)
f.PortalTitle:SetShadowColor(0,0,0,0)

f:SetPoint("Right",-100,0)
f:Show()



