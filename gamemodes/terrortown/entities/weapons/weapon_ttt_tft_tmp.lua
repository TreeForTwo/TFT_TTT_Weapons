AddCSLuaFile()

SWEP.HoldType            = "smg"

if CLIENT then
   SWEP.PrintName        = "TMP"
   SWEP.Slot             = 6

   SWEP.ViewModelFlip    = false

   SWEP.EquipMenuData = {
      type = "item_weapon",
      desc = "A silenced SMG using custom tooled ammo cartridges.\nVery powerful, but only comes with two magazines."
   }

   SWEP.Icon             = "vgui/ttt/icon_tft_tmp"
   SWEP.IconLetter       = "l"
end

SWEP.Base                = "weapon_tttbase"

SWEP.Kind                = WEAPON_EQUIP1
SWEP.WeaponID            = AMMO_MAC10
SWEP.CanBuy              = {ROLE_TRAITOR}
SWEP.LimitedStock        = true

SWEP.Primary.Damage      = 15
SWEP.Primary.Delay       = 0.075
SWEP.Primary.Cone        = 0.03
SWEP.Primary.ClipSize    = 25
SWEP.Primary.ClipMax     = 25
SWEP.Primary.DefaultClip = 25
SWEP.Primary.Automatic   = true
SWEP.Primary.Ammo        = "AR2AltFire"
SWEP.Primary.Recoil      = 1.15
SWEP.Primary.Sound       = Sound( "Weapon_TMP.Single" )
SWEP.Primary.SoundLevel  = 50

SWEP.UseHands            = true
SWEP.ViewModel           = "models/weapons/cstrike/c_smg_tmp.mdl"
SWEP.WorldModel          = "models/weapons/w_smg_tmp.mdl"

SWEP.IronSightsPos         = Vector(-1.28, -4.99, 2.2)
SWEP.IronSightsAng         = Vector(2.799, 2.2, 0)

SWEP.IsSilent            = true
SWEP.DeploySpeed         = 3

function SWEP:Deploy()
   self:SetIronsights(false)
   self.Weapon:SendWeaponAnim(ACT_VM_DRAW_SILENCED)
   return true
end

-- We were bought as special equipment, and we have an extra to give
function SWEP:WasBought(buyer)
   if IsValid(buyer) then -- probably already self.Owner
      buyer:GiveAmmo( 25, "AR2AltFire" )
   end
end

function SWEP:GetHeadshotMultiplier(victim, dmginfo)
   local att = dmginfo:GetAttacker()
   if not IsValid(att) then return 2 end

   local dist = victim:GetPos():Distance(att:GetPos())
   local d = math.max(0, dist - 150)

   -- decay from 3.2 to 1.7
   return 1.7 + math.max(0, (1.5 - 0.002 * (d ^ 1.25)))
end