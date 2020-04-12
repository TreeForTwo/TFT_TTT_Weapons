AddCSLuaFile()

SWEP.HoldType              = "ar2"

if CLIENT then
   SWEP.PrintName          = "AK-47"
   SWEP.Slot               = 6

   SWEP.ViewModelFlip      = false
   SWEP.ViewModelFOV       = 64

   SWEP.EquipMenuData = {
      type = "item_weapon",
      desc = "An old classic. Very powerful, but loud.\nIt only comes with two magazines."
   }

   SWEP.Icon               = "vgui/ttt/icon_tft_ak47"
   SWEP.IconLetter         = "w"
end

SWEP.Base                  = "weapon_tttbase"

SWEP.Kind                  = WEAPON_EQUIP1
SWEP.WeaponID              = AMMO_M16
SWEP.CanBuy                = {ROLE_TRAITOR}
SWEP.LimitedStock          = true

SWEP.Primary.Delay         = 0.105
SWEP.Primary.Recoil        = 1.9
SWEP.Primary.Automatic     = true
SWEP.Primary.Ammo          = "XBowBolt"
SWEP.Primary.Damage        = 26
SWEP.Primary.Cone          = 0.025
SWEP.Primary.ClipSize      = 30
SWEP.Primary.ClipMax       = 60
SWEP.Primary.DefaultClip   = 30
SWEP.Primary.Sound         = Sound( "Weapon_AK47.Single" )

SWEP.UseHands              = true
SWEP.ViewModel             = "models/weapons/cstrike/c_rif_ak47.mdl"
SWEP.WorldModel            = "models/weapons/w_rif_ak47.mdl"

SWEP.IronSightsPos         = Vector(-6.56, -11.681, 2.4)
SWEP.IronSightsAng         = Vector(2.599, 0.1, 0)

-- We were bought as special equipment, and we have an extra to give
function SWEP:WasBought(buyer)
   if IsValid(buyer) then -- probably already self.Owner
      buyer:GiveAmmo( 30, "XBowBolt" )
   end
end
