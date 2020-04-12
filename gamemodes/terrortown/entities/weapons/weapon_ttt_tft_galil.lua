AddCSLuaFile()

SWEP.HoldType              = "ar2"

if CLIENT then
   SWEP.PrintName          = "Galil"
   SWEP.Slot               = 2

   SWEP.ViewModelFlip      = false
   SWEP.ViewModelFOV       = 64

   SWEP.Icon               = "vgui/ttt/icon_tft_galil"
   SWEP.IconLetter         = "w"
end

SWEP.Base                  = "weapon_tttbase"

SWEP.Kind                  = WEAPON_HEAVY
SWEP.WeaponID              = AMMO_M16

SWEP.Primary.Delay         = 0.13
SWEP.Primary.Recoil        = 1.9
SWEP.Primary.Automatic     = true
SWEP.Primary.Ammo          = "Pistol"
SWEP.Primary.Damage        = 27
SWEP.Primary.Cone          = 0.029
SWEP.Primary.ClipSize      = 35
SWEP.Primary.ClipMax       = 60
SWEP.Primary.DefaultClip   = 35
SWEP.Primary.Sound         = Sound( "Weapon_galil.Single" )

SWEP.AutoSpawnable         = true
SWEP.Spawnable             = true
SWEP.AmmoEnt               = "item_ammo_pistol_ttt"

SWEP.UseHands              = true
SWEP.ViewModel             = "models/weapons/cstrike/c_rif_galil.mdl"
SWEP.WorldModel            = "models/weapons/w_rif_galil.mdl"

SWEP.IronSightsPos         = Vector(-6.361, -8.681, 2.44)
SWEP.IronSightsAng         = Vector(0.1, 0, 0)