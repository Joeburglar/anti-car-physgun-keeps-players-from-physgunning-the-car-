-- ULX ONLY
-- DISALLOW GROUPS GO HERE
local DenyGroups = 
{ 
	"user",
	"respected",
	"moderator",
	"vipplus",
	"vip"
}

-- ALLOWED GROUPS GO HERE
local AllowGroups = {
	"founder",
	"owner",
	"superadmin",
	"admin"

}

local function VehPickup(ply, ent)
	if table.HasValue( DenyGroups, ply:GetNWString("usergroup") ) and (ent:GetClass():lower() == "prop_vehicle_jeep") then
		return false
	elseif table.HasValue( AllowGroups, ply:GetNWString("usergroup") ) then
		return true
	end
end
 
hook.Add("PhysgunPickup", "Physgun.VehPickup", VehPickup)