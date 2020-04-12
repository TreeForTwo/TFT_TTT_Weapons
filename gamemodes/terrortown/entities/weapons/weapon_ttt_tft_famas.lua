AddCSLuaFile()

SWEP.HoldType              = "ar2"

if CLIENT then
   SWEP.PrintName          = "Fakas"
   SWEP.Slot               = 2

   SWEP.ViewModelFlip      = false
   SWEP.ViewModelFOV       = 64

   SWEP.Icon               = "vgui/ttt/icon_tft_famas"
   SWEP.IconLetter         = "w"
end

SWEP.Base                  = "weapon_tttbase"

SWEP.Kind                  = WEAPON_HEAVY
SWEP.WeaponID              = AMMO_M16

SWEP.Primary.Delay         = 0.089
SWEP.Primary.Recoil        = 1.25
SWEP.Primary.Automatic     = true
SWEP.Primary.Ammo          = "Pistol"
SWEP.Primary.Damage        = 15
SWEP.Primary.Cone          = 0.013
SWEP.Primary.ClipSize      = 25
SWEP.Primary.ClipMax       = 60
SWEP.Primary.DefaultClip   = 25
SWEP.Primary.Sound         = Sound( "Weapon_Famas.Single" )

SWEP.AutoSpawnable         = true
SWEP.Spawnable             = true
SWEP.AmmoEnt               = "item_ammo_pistol_ttt"

SWEP.UseHands              = true
SWEP.ViewModel             = "models/weapons/cstrike/c_rif_famas.mdl"
SWEP.WorldModel            = "models/weapons/w_rif_famas.mdl"

SWEP.IronSightsPos         = Vector(-1.28, -4.99, 2.2)
SWEP.IronSightsAng         = Vector(2.799, 2.2, 0)