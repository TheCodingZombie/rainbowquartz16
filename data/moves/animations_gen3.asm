BattleAnimationsGen3::
	dw BattleAnim_FakeOut
    dw BattleAnim_Uproar
    dw BattleAnim_HeatWave
    dw BattleAnim_NoAnim
    dw BattleAnim_Hail
	dw BattleAnim_WillOWisp
    dw BattleAnim_Memento
    dw BattleAnim_Facade
    dw BattleAnim_FocusPunch
    dw BattleAnim_Charge
    dw BattleAnim_Taunt
    dw BattleAnim_Trick
    dw BattleAnim_Wish
    dw BattleAnim_Ingrain
    dw BattleAnim_Superpower
    dw BattleAnim_MagicCoat
    dw BattleAnim_Revenge
    dw BattleAnim_BrickBreak
    dw BattleAnim_Yawn
    dw BattleAnim_KnockOff
    dw BattleAnim_Endeavor
    dw BattleAnim_Eruption
    dw BattleAnim_Refresh
    dw BattleAnim_Dive
    dw BattleAnim_ArmThrust
    dw BattleAnim_TailGlow
    dw BattleAnim_LusterPurge
    dw BattleAnim_MistBall
    dw BattleAnim_FeatherDance
    dw BattleAnim_BlazeKick
    dw BattleAnim_IceBall
    dw BattleAnim_NeedleArm
    dw BattleAnim_SlackOff
    dw BattleAnim_HyperVoice
    dw BattleAnim_PoisonFang
    dw BattleAnim_CrushClaw
    dw BattleAnim_BlastBurn
    dw BattleAnim_HydroCannon
    dw BattleAnim_MeteorMash
    dw BattleAnim_Astonish
    dw BattleAnim_WeatherBall
    dw BattleAnim_Aromatherapy
    dw BattleAnim_FakeTears
    dw BattleAnim_AirCutter
    dw BattleAnim_Overheat
    dw BattleAnim_OdorSleuth
    dw BattleAnim_RockTomb
    dw BattleAnim_SilverWind
    dw BattleAnim_MetalSound
    dw BattleAnim_GrassWhistle
    dw BattleAnim_Tickle
    dw BattleAnim_CosmicPower
    dw BattleAnim_WaterSpout
    dw BattleAnim_SignalBeam
    dw BattleAnim_ShadowPunch
    dw BattleAnim_Extrasensory
    dw BattleAnim_SkyUppercut
    dw BattleAnim_SandTomb
    dw BattleAnim_SheerCold
    dw BattleAnim_MuddyWater
    dw BattleAnim_BulletSeed
    dw BattleAnim_AerialAce
    dw BattleAnim_IcicleSpear
    dw BattleAnim_IronDefense
    dw BattleAnim_Block
    dw BattleAnim_Howl
    dw BattleAnim_DragonClaw
    dw BattleAnim_FrenzyPlant
    dw BattleAnim_BulkUp
    dw BattleAnim_Bounce
    dw BattleAnim_MudShot
    dw BattleAnim_PoisonTail
    dw BattleAnim_Covet
    dw BattleAnim_VoltTackle
    dw BattleAnim_MagicalLeaf
    dw BattleAnim_CalmMind
    dw BattleAnim_LeafBlade
    dw BattleAnim_DragonDance
    dw BattleAnim_RockBlast
    dw BattleAnim_ShockWave
    dw BattleAnim_WaterPulse
    dw BattleAnim_DoomDesire
    dw BattleAnim_PsychoBoost
.IndirectEnd

BattleAnim_VoltTackle:
BattleAnim_Tickle:
BattleAnim_Endeavor:
BattleAnim_KnockOff:
BattleAnim_Astonish:
BattleAnim_Revenge:
BattleAnim_Facade:
BattleAnim_FakeOut:
	anim_1gfx BATTLE_ANIM_GFX_HIT
	anim_call BattleAnim_TargetObj_1Row
	anim_bgeffect BATTLE_BG_EFFECT_TACKLE, $0, BG_EFFECT_USER, $0
	anim_wait 4
	anim_sound 0, 1, SFX_TACKLE
	anim_obj BATTLE_ANIM_OBJ_HIT_BIG_YFIX, 136, 48, $0
	anim_wait 8
	anim_call BattleAnim_ShowMon_0
	anim_ret

BattleAnim_MetalSound:
BattleAnim_Howl:
BattleAnim_Yawn:
BattleAnim_HyperVoice:
BattleAnim_Uproar:
	anim_1gfx BATTLE_ANIM_GFX_NOISE
	anim_battlergfx_2row
	anim_bgeffect BATTLE_BG_EFFECT_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $2, $0
	anim_cry $0
.loop
	anim_call BattleAnimSub_Sound
	anim_wait 16
	anim_loop 3, .loop
	anim_wait 9
	anim_bgeffect BATTLE_BG_EFFECT_BATTLEROBJ_1ROW, $0, BG_EFFECT_USER, $0
	anim_wait 8
	anim_bgeffect BATTLE_BG_EFFECT_FADE_MON_TO_BLACK_REPEATING, $0, BG_EFFECT_TARGET, $40
	anim_wait 64
	anim_incbgeffect BATTLE_BG_EFFECT_FADE_MON_TO_BLACK_REPEATING
	anim_wait 1
	anim_bgeffect BATTLE_BG_EFFECT_SHOW_MON, $0, BG_EFFECT_USER, $0
	anim_wait 5
	anim_incobj 10
	anim_wait 8
	anim_ret

BattleAnim_HeatWave:
	anim_1gfx BATTLE_ANIM_GFX_WATER
	anim_bgp $90
	anim_sound 0, 1, SFX_MORNING_SUN
	anim_obj BATTLE_ANIM_OBJ_RAIN, 88, 0, $2
	anim_wait 8
	anim_obj BATTLE_ANIM_OBJ_RAIN, 88, 0, $2
	anim_wait 8
	anim_obj BATTLE_ANIM_OBJ_RAIN, 88, 0, $2
	anim_wait 128
	anim_ret

BattleAnim_NoAnim:
    anim_ret

BattleAnim_SheerCold:
BattleAnim_Hail:
	anim_1gfx BATTLE_ANIM_GFX_ICE
	anim_bgeffect BATTLE_BG_EFFECT_WHITE_HUES, $0, $8, $0
	anim_obj BATTLE_ANIM_OBJ_HAIL, 88, 0, $0
	anim_wait 8
	anim_obj BATTLE_ANIM_OBJ_HAIL, 72, 0, $1
	anim_wait 8
	anim_obj BATTLE_ANIM_OBJ_HAIL, 56, 0, $2
.loop
	anim_sound 0, 1, SFX_SHINE
	anim_wait 8
	anim_loop 8, .loop
	anim_wait 8
	anim_ret

BattleAnim_WillOWisp:
	anim_1gfx BATTLE_ANIM_GFX_FIRE
	anim_sound 6, 2, SFX_EMBER
	anim_obj BATTLE_ANIM_OBJ_EMBER, 64, 96, $12
	anim_wait 4
	anim_sound 6, 2, SFX_EMBER
	anim_obj BATTLE_ANIM_OBJ_EMBER, 64, 100, $14
	anim_wait 4
	anim_sound 6, 2, SFX_EMBER
	anim_obj BATTLE_ANIM_OBJ_EMBER, 64, 84, $13
	anim_wait 16
	anim_incobj 1
	anim_incobj 2
	anim_incobj 3
	anim_sound 0, 1, SFX_EMBER
	anim_obj BATTLE_ANIM_OBJ_EMBER, 120, 68, $30
	anim_obj BATTLE_ANIM_OBJ_EMBER, 132, 68, $30
	anim_obj BATTLE_ANIM_OBJ_EMBER, 144, 68, $30
	anim_wait 32
	anim_ret

BattleAnim_Block:
BattleAnim_FakeTears:
BattleAnim_Taunt:
BattleAnim_Memento:
	anim_1gfx BATTLE_ANIM_GFX_ANGELS
	anim_bgp $1b
	anim_obp0 $f
	anim_obj BATTLE_ANIM_OBJ_NIGHTMARE, 132, 40, $0
	anim_obj BATTLE_ANIM_OBJ_NIGHTMARE, 132, 40, $a0
	anim_sound 0, 1, SFX_NIGHTMARE
	anim_wait 96
	anim_ret

BattleAnim_SkyUppercut:
BattleAnim_ShadowPunch:
BattleAnim_MeteorMash:
BattleAnim_NeedleArm:
BattleAnim_FocusPunch:
	anim_1gfx BATTLE_ANIM_GFX_HIT
	anim_bgeffect BATTLE_BG_EFFECT_SHAKE_SCREEN_X, $40, $2, $0
	anim_wait 48
	anim_bgeffect BATTLE_BG_EFFECT_FLASH_INVERTED, $0, $8, $3
.loop
	anim_sound 0, 1, SFX_MEGA_PUNCH
	anim_obj BATTLE_ANIM_OBJ_PUNCH, 136, 56, $0
	anim_obj BATTLE_ANIM_OBJ_HIT_BIG_YFIX, 136, 56, $0
	anim_wait 6
	anim_obj BATTLE_ANIM_OBJ_PUNCH, 136, 56, $0
	anim_wait 6
	anim_loop 3, .loop
	anim_ret

BattleAnim_DragonDance:
BattleAnim_CalmMind:
BattleAnim_BulkUp:
BattleAnim_CosmicPower:
BattleAnim_FeatherDance:
BattleAnim_TailGlow:
BattleAnim_Refresh:
BattleAnim_Charge:
	anim_1gfx BATTLE_ANIM_GFX_STATUS
	anim_call BattleAnim_TargetObj_1Row
	anim_bgeffect BATTLE_BG_EFFECT_CYCLE_MON_LIGHT_DARK_REPEATING, $0, BG_EFFECT_USER, $20
	anim_sound 0, 0, SFX_PSYBEAM
	anim_obj BATTLE_ANIM_OBJ_PSYCH_UP, 44, 88, $0
	anim_obj BATTLE_ANIM_OBJ_PSYCH_UP, 44, 88, $10
	anim_obj BATTLE_ANIM_OBJ_PSYCH_UP, 44, 88, $20
	anim_obj BATTLE_ANIM_OBJ_PSYCH_UP, 44, 88, $30
	anim_wait 64
	anim_incbgeffect BATTLE_BG_EFFECT_CYCLE_MON_LIGHT_DARK_REPEATING
	anim_call BattleAnim_ShowMon_0
	anim_wait 16
	anim_ret

BattleAnim_Covet:
BattleAnim_Trick:
	anim_1gfx BATTLE_ANIM_GFX_HIT
	anim_call BattleAnim_TargetObj_1Row
	anim_bgeffect BATTLE_BG_EFFECT_TACKLE, $0, BG_EFFECT_USER, $0
	anim_wait 16
	anim_sound 0, 1, SFX_THIEF
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 128, 48, $0
	anim_wait 16
	anim_call BattleAnim_ShowMon_0
	anim_wait 1
	anim_1gfx BATTLE_ANIM_GFX_STATUS
	anim_sound 0, 1, SFX_THIEF_2
	anim_obj BATTLE_ANIM_OBJ_THIEF, 120, 76, $1
	anim_wait 64
	anim_ret

BattleAnim_SlackOff:
BattleAnim_Ingrain:
BattleAnim_Wish:
	anim_1gfx BATTLE_ANIM_GFX_BUBBLE
	anim_call BattleAnim_TargetObj_1Row
	anim_sound 0, 0, SFX_FULL_HEAL
	anim_bgeffect BATTLE_BG_EFFECT_FADE_MON_TO_LIGHT_REPEATING, $0, BG_EFFECT_USER, $40
	anim_obj BATTLE_ANIM_OBJ_RECOVER, 44, 88, $30
	anim_obj BATTLE_ANIM_OBJ_RECOVER, 44, 88, $31
	anim_obj BATTLE_ANIM_OBJ_RECOVER, 44, 88, $32
	anim_obj BATTLE_ANIM_OBJ_RECOVER, 44, 88, $33
	anim_obj BATTLE_ANIM_OBJ_RECOVER, 44, 88, $34
	anim_obj BATTLE_ANIM_OBJ_RECOVER, 44, 88, $35
	anim_obj BATTLE_ANIM_OBJ_RECOVER, 44, 88, $36
	anim_obj BATTLE_ANIM_OBJ_RECOVER, 44, 88, $37
	anim_wait 64
	anim_incbgeffect BATTLE_BG_EFFECT_FADE_MON_TO_LIGHT_REPEATING
	anim_call BattleAnim_ShowMon_0
	anim_ret

BattleAnim_Superpower:
	anim_1gfx BATTLE_ANIM_GFX_HIT
	anim_call BattleAnim_UserObj_1Row
	anim_bgeffect BATTLE_BG_EFFECT_WOBBLE_MON, $0, BG_EFFECT_TARGET, $0
	anim_sound 0, 1, SFX_SUBMISSION
	anim_wait 32
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 120, 48, $0
	anim_wait 32
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 152, 56, $0
	anim_wait 32
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 136, 52, $0
	anim_wait 32
	anim_incbgeffect BATTLE_BG_EFFECT_WOBBLE_MON
	anim_call BattleAnim_ShowMon_1
	anim_ret

BattleAnim_IronDefense:
BattleAnim_MagicCoat:
	anim_1gfx BATTLE_ANIM_GFX_REFLECT
	anim_battlergfx_2row
	anim_bgeffect BATTLE_BG_EFFECT_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $2, $0
	anim_wait 8
	anim_sound 0, 0, SFX_SHINE
	anim_obj BATTLE_ANIM_OBJ_SCREEN, 72, 80, $0
	anim_wait 32
	anim_sound 0, 0, SFX_SHINE
	anim_obj BATTLE_ANIM_OBJ_SCREEN, 72, 80, $0
	anim_wait 32
	anim_ret

BattleAnim_BrickBreak:
	anim_1gfx BATTLE_ANIM_GFX_HIT
	anim_sound 0, 1, SFX_KARATE_CHOP
	anim_obj BATTLE_ANIM_OBJ_PALM, 136, 40, $0
	anim_wait 6
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 136, 40, $0
	anim_wait 6
	anim_sound 0, 1, SFX_KARATE_CHOP
	anim_obj BATTLE_ANIM_OBJ_PALM, 136, 44, $0
	anim_wait 6
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 136, 44, $0
	anim_wait 6
	anim_sound 0, 1, SFX_KARATE_CHOP
	anim_obj BATTLE_ANIM_OBJ_PALM, 136, 48, $0
	anim_wait 6
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 136, 48, $0
	anim_wait 16
	anim_ret

BattleAnim_Overheat:
BattleAnim_BlastBurn:
BattleAnim_Eruption:
	anim_1gfx BATTLE_ANIM_GFX_FIRE
	anim_sound 6, 2, SFX_EMBER
	anim_obj BATTLE_ANIM_OBJ_FLAMETHROWER, 64, 92, $3
	anim_wait 2
	anim_obj BATTLE_ANIM_OBJ_FLAMETHROWER, 75, 86, $5
	anim_wait 2
	anim_obj BATTLE_ANIM_OBJ_FLAMETHROWER, 85, 81, $7
	anim_wait 2
	anim_obj BATTLE_ANIM_OBJ_FLAMETHROWER, 96, 76, $9
	anim_wait 2
	anim_obj BATTLE_ANIM_OBJ_FLAMETHROWER, 106, 71, $b
	anim_wait 2
	anim_obj BATTLE_ANIM_OBJ_FLAMETHROWER, 116, 66, $c
	anim_wait 2
	anim_obj BATTLE_ANIM_OBJ_FLAMETHROWER, 126, 61, $a
	anim_wait 2
	anim_obj BATTLE_ANIM_OBJ_FLAMETHROWER, 136, 56, $8
	anim_wait 16
.loop
	anim_sound 0, 1, SFX_EMBER
	anim_wait 16
	anim_loop 6, .loop
	anim_wait 16
	anim_ret

BattleAnim_Dive:
	anim_1gfx BATTLE_ANIM_GFX_HIT
	anim_call BattleAnim_TargetObj_2Row
	anim_bgeffect BATTLE_BG_EFFECT_BODY_SLAM, $0, BG_EFFECT_USER, $0
	anim_wait 16
	anim_call BattleAnim_ShowMon_0
	anim_sound 0, 1, SFX_LICK
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 136, 56, $0
	anim_wait 3
	anim_sound 0, 1, SFX_LICK
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 136, 48, $0
	anim_wait 3
	anim_sound 0, 1, SFX_LICK
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 136, 40, $0
	anim_wait 3
	anim_sound 0, 1, SFX_LICK
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 136, 32, $0
	anim_wait 3
	anim_sound 0, 1, SFX_LICK
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 136, 24, $0
	anim_wait 8
	anim_ret

BattleAnim_ArmThrust:
	anim_1gfx BATTLE_ANIM_GFX_HIT
	anim_if_param_equal $1, .alternate
	anim_sound 0, 1, SFX_DOUBLESLAP
	anim_obj BATTLE_ANIM_OBJ_PALM, 144, 48, $0
	anim_wait 6
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 144, 48, $0
	anim_wait 8
	anim_ret

.alternate:
	anim_sound 0, 1, SFX_DOUBLESLAP
	anim_obj BATTLE_ANIM_OBJ_PALM, 120, 48, $0
	anim_wait 6
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 120, 48, $0
	anim_wait 8
	anim_ret

BattleAnim_LusterPurge:
BattleAnim_MistBall:
	anim_1gfx BATTLE_ANIM_GFX_SPEED
	anim_bgeffect BATTLE_BG_EFFECT_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $2, $0
	anim_bgeffect BATTLE_BG_EFFECT_CYCLE_BGPALS_INVERTED, $0, $4, $0
	anim_obj BATTLE_ANIM_OBJ_CONFUSE_RAY, 64, 88, $0
	anim_obj BATTLE_ANIM_OBJ_CONFUSE_RAY, 64, 88, $80
	anim_obj BATTLE_ANIM_OBJ_CONFUSE_RAY, 64, 88, $88
	anim_obj BATTLE_ANIM_OBJ_CONFUSE_RAY, 64, 88, $90
	anim_obj BATTLE_ANIM_OBJ_CONFUSE_RAY, 64, 88, $98
	anim_obj BATTLE_ANIM_OBJ_CONFUSE_RAY, 64, 88, $a0
	anim_obj BATTLE_ANIM_OBJ_CONFUSE_RAY, 64, 88, $a8
	anim_obj BATTLE_ANIM_OBJ_CONFUSE_RAY, 64, 88, $b0
	anim_obj BATTLE_ANIM_OBJ_CONFUSE_RAY, 64, 88, $b8
.loop
	anim_sound 6, 2, SFX_WHIRLWIND
	anim_wait 16
	anim_loop 8, .loop
	anim_wait 32
	anim_ret

BattleAnim_PsychoBoost:
BattleAnim_WeatherBall:
	anim_1gfx BATTLE_ANIM_GFX_CHARGE
	anim_call BattleAnim_TargetObj_1Row
	anim_bgeffect BATTLE_BG_EFFECT_CYCLE_MON_LIGHT_DARK_REPEATING, $0, BG_EFFECT_USER, $20
	anim_bgeffect BATTLE_BG_EFFECT_CYCLE_MID_OBPALS_GRAY_AND_YELLOW, $0, $2, $0
	anim_obj BATTLE_ANIM_OBJ_HIDDEN_POWER, 44, 88, $0
	anim_obj BATTLE_ANIM_OBJ_HIDDEN_POWER, 44, 88, $8
	anim_obj BATTLE_ANIM_OBJ_HIDDEN_POWER, 44, 88, $10
	anim_obj BATTLE_ANIM_OBJ_HIDDEN_POWER, 44, 88, $18
	anim_obj BATTLE_ANIM_OBJ_HIDDEN_POWER, 44, 88, $20
	anim_obj BATTLE_ANIM_OBJ_HIDDEN_POWER, 44, 88, $28
	anim_obj BATTLE_ANIM_OBJ_HIDDEN_POWER, 44, 88, $30
	anim_obj BATTLE_ANIM_OBJ_HIDDEN_POWER, 44, 88, $38
.loop
	anim_sound 0, 0, SFX_SWORDS_DANCE
	anim_wait 8
	anim_loop 12, .loop
	anim_incbgeffect BATTLE_BG_EFFECT_CYCLE_MON_LIGHT_DARK_REPEATING
	anim_call BattleAnim_ShowMon_0
	anim_wait 1
	anim_incobj 2
	anim_incobj 3
	anim_incobj 4
	anim_incobj 5
	anim_incobj 6
	anim_incobj 7
	anim_incobj 8
	anim_incobj 9
	anim_wait 16
	anim_1gfx BATTLE_ANIM_GFX_HIT
	anim_obj BATTLE_ANIM_OBJ_HIT_BIG_YFIX, 136, 56, $0
	anim_wait 32
	anim_ret

BattleAnim_BlazeKick:
	anim_1gfx BATTLE_ANIM_GFX_HIT
	anim_bgeffect BATTLE_BG_EFFECT_SHAKE_SCREEN_X, $40, $2, $0
	anim_wait 67
	anim_bgeffect BATTLE_BG_EFFECT_FLASH_INVERTED, $0, $8, $3
.loop
	anim_sound 0, 1, SFX_MEGA_KICK
	anim_obj BATTLE_ANIM_OBJ_KICK, 136, 56, $0
	anim_obj BATTLE_ANIM_OBJ_HIT_BIG_YFIX, 136, 56, $0
	anim_wait 6
	anim_obj BATTLE_ANIM_OBJ_KICK, 136, 56, $0
	anim_wait 6
	anim_loop 3, .loop
	anim_ret

BattleAnim_IceBall:
	anim_1gfx BATTLE_ANIM_GFX_HIT
	anim_sound 0, 0, SFX_SPARK
	anim_call BattleAnim_TargetObj_2Row
	anim_bgeffect BATTLE_BG_EFFECT_ROLLOUT, $60, $1, $1
	anim_bgeffect BATTLE_BG_EFFECT_BODY_SLAM, $0, BG_EFFECT_USER, $0
	anim_wait 4
	anim_sound 0, 1, SFX_MEGA_PUNCH
	anim_obj BATTLE_ANIM_OBJ_HIT_BIG, 136, 40, $0
	anim_wait 8
	anim_call BattleAnim_ShowMon_0
	anim_ret

BattleAnim_PoisonFang:
	anim_2gfx BATTLE_ANIM_GFX_CUT, BATTLE_ANIM_GFX_HIT
	anim_obj BATTLE_ANIM_OBJ_BITE, 136, 56, $98
	anim_obj BATTLE_ANIM_OBJ_BITE, 136, 56, $18
	anim_wait 8
	anim_sound 0, 1, SFX_BITE
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 144, 48, $18
	anim_wait 16
	anim_sound 0, 1, SFX_BITE
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 128, 64, $18
	anim_wait 8
	anim_ret

BattleAnim_DragonClaw:
BattleAnim_CrushClaw:
	anim_1gfx BATTLE_ANIM_GFX_REFLECT
	anim_obp0 $0
	anim_sound 0, 0, SFX_RAGE
	anim_call BattleAnim_TargetObj_1Row
	anim_call BattleAnimSub_Metallic
	anim_call BattleAnim_ShowMon_0
	anim_1gfx BATTLE_ANIM_GFX_CUT
	anim_resetobp0
	anim_sound 0, 1, SFX_SCRATCH
	anim_obj BATTLE_ANIM_OBJ_CUT_DOWN_LEFT, 144, 48, $0
	anim_obj BATTLE_ANIM_OBJ_CUT_DOWN_LEFT, 140, 44, $0
	anim_obj BATTLE_ANIM_OBJ_CUT_DOWN_LEFT, 136, 40, $0
	anim_wait 32
	anim_ret

BattleAnim_WaterSpout:
BattleAnim_HydroCannon:
	anim_bgeffect BATTLE_BG_EFFECT_START_WATER, $0, BG_EFFECT_TARGET, $0
	anim_1gfx BATTLE_ANIM_GFX_WATER
	anim_call BattleAnim_UserObj_2Row
	anim_sound 0, 1, SFX_HYDRO_PUMP
	anim_obj BATTLE_ANIM_OBJ_HYDRO_PUMP, 108, 72, $0
	anim_bgeffect BATTLE_BG_EFFECT_WATER, $1c, $0, $0
	anim_wait 8
	anim_sound 0, 1, SFX_HYDRO_PUMP
	anim_obj BATTLE_ANIM_OBJ_HYDRO_PUMP, 116, 72, $0
	anim_bgeffect BATTLE_BG_EFFECT_WATER, $8, $0, $0
	anim_wait 8
	anim_sound 0, 1, SFX_HYDRO_PUMP
	anim_obj BATTLE_ANIM_OBJ_HYDRO_PUMP, 124, 72, $0
	anim_bgeffect BATTLE_BG_EFFECT_WATER, $30, $0, $0
	anim_wait 8
	anim_sound 0, 1, SFX_HYDRO_PUMP
	anim_obj BATTLE_ANIM_OBJ_HYDRO_PUMP, 132, 72, $0
	anim_bgeffect BATTLE_BG_EFFECT_WATER, $1c, $0, $0
	anim_wait 8
	anim_sound 0, 1, SFX_HYDRO_PUMP
	anim_obj BATTLE_ANIM_OBJ_HYDRO_PUMP, 140, 72, $0
	anim_bgeffect BATTLE_BG_EFFECT_WATER, $8, $0, $0
	anim_wait 8
	anim_sound 0, 1, SFX_HYDRO_PUMP
	anim_obj BATTLE_ANIM_OBJ_HYDRO_PUMP, 148, 72, $0
	anim_bgeffect BATTLE_BG_EFFECT_WATER, $30, $0, $0
	anim_wait 8
	anim_sound 0, 1, SFX_HYDRO_PUMP
	anim_obj BATTLE_ANIM_OBJ_HYDRO_PUMP, 156, 72, $0
	anim_bgeffect BATTLE_BG_EFFECT_WATER, $1c, $0, $0
	anim_wait 32
	anim_call BattleAnim_ShowMon_1
	anim_bgeffect BATTLE_BG_EFFECT_END_WATER, $0, $0, $0
	anim_wait 16
	anim_ret

BattleAnim_MagicalLeaf:
BattleAnim_Aromatherapy:
	anim_1gfx BATTLE_ANIM_GFX_PLANT
	anim_sound 0, 0, SFX_VINE_WHIP
	anim_obj BATTLE_ANIM_OBJ_RAZOR_LEAF, 48, 80, $28
	anim_obj BATTLE_ANIM_OBJ_RAZOR_LEAF, 48, 80, $5c
	anim_obj BATTLE_ANIM_OBJ_RAZOR_LEAF, 48, 80, $10
	anim_obj BATTLE_ANIM_OBJ_RAZOR_LEAF, 48, 80, $e8
	anim_obj BATTLE_ANIM_OBJ_RAZOR_LEAF, 48, 80, $9c
	anim_obj BATTLE_ANIM_OBJ_RAZOR_LEAF, 48, 80, $d0
	anim_wait 6
	anim_obj BATTLE_ANIM_OBJ_RAZOR_LEAF, 48, 80, $1c
	anim_obj BATTLE_ANIM_OBJ_RAZOR_LEAF, 48, 80, $50
	anim_obj BATTLE_ANIM_OBJ_RAZOR_LEAF, 48, 80, $dc
	anim_obj BATTLE_ANIM_OBJ_RAZOR_LEAF, 48, 80, $90
	anim_wait 80
	anim_sound 16, 2, SFX_VINE_WHIP
	anim_incobj 3
	anim_wait 2
	anim_sound 16, 2, SFX_VINE_WHIP
	anim_incobj 5
	anim_wait 2
	anim_sound 16, 2, SFX_VINE_WHIP
	anim_incobj 7
	anim_wait 2
	anim_sound 16, 2, SFX_VINE_WHIP
	anim_incobj 9
	anim_wait 2
	anim_sound 16, 2, SFX_VINE_WHIP
	anim_incobj 1
	anim_wait 2
	anim_sound 16, 2, SFX_VINE_WHIP
	anim_incobj 2
	anim_wait 2
	anim_sound 16, 2, SFX_VINE_WHIP
	anim_incobj 4
	anim_wait 2
	anim_sound 16, 2, SFX_VINE_WHIP
	anim_incobj 6
	anim_wait 2
	anim_sound 16, 2, SFX_VINE_WHIP
	anim_incobj 8
	anim_wait 2
	anim_sound 16, 2, SFX_VINE_WHIP
	anim_incobj 10
	anim_wait 64
	anim_ret

BattleAnim_SilverWind:
BattleAnim_AirCutter:
	anim_1gfx BATTLE_ANIM_GFX_WHIP
	anim_bgeffect BATTLE_BG_EFFECT_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $1, $0
.loop
	anim_bgeffect BATTLE_BG_EFFECT_FLASH_INVERTED, $0, $4, $2
	anim_sound 0, 1, SFX_RAZOR_WIND
	anim_obj BATTLE_ANIM_OBJ_RAZOR_WIND2, 152, 40, $3
	anim_wait 4
	anim_sound 0, 1, SFX_RAZOR_WIND
	anim_obj BATTLE_ANIM_OBJ_RAZOR_WIND2, 136, 56, $3
	anim_wait 4
	anim_sound 0, 1, SFX_RAZOR_WIND
	anim_obj BATTLE_ANIM_OBJ_RAZOR_WIND2, 152, 64, $3
	anim_wait 4
	anim_sound 0, 1, SFX_RAZOR_WIND
	anim_obj BATTLE_ANIM_OBJ_RAZOR_WIND1, 120, 40, $83
	anim_wait 4
	anim_sound 0, 1, SFX_RAZOR_WIND
	anim_obj BATTLE_ANIM_OBJ_RAZOR_WIND1, 120, 64, $83
	anim_wait 4
	anim_loop 3, .loop
	anim_wait 24
	anim_ret

BattleAnim_OdorSleuth:
	anim_1gfx BATTLE_ANIM_GFX_SHINE
	anim_call BattleAnim_UserObj_1Row
	anim_bgeffect BATTLE_BG_EFFECT_CYCLE_MID_OBPALS_GRAY_AND_YELLOW, $0, $0, $0
	anim_sound 0, 1, SFX_FORESIGHT
	anim_obj BATTLE_ANIM_OBJ_FORESIGHT, 132, 40, $0
	anim_wait 24
	anim_bgeffect BATTLE_BG_EFFECT_FADE_MON_TO_BLACK_REPEATING, $0, BG_EFFECT_TARGET, $40
	anim_wait 64
	anim_incbgeffect BATTLE_BG_EFFECT_FADE_MON_TO_BLACK_REPEATING
	anim_call BattleAnim_ShowMon_1
	anim_wait 8
	anim_ret

BattleAnim_RockBlast:
BattleAnim_SandTomb:
BattleAnim_RockTomb:
	anim_1gfx BATTLE_ANIM_GFX_ROCKS
	anim_bgeffect BATTLE_BG_EFFECT_SHAKE_SCREEN_X, $60, $1, $0
	anim_sound 0, 1, SFX_STRENGTH
	anim_obj BATTLE_ANIM_OBJ_SMALL_ROCK, 128, 64, $40
	anim_wait 2
	anim_sound 0, 1, SFX_STRENGTH
	anim_obj BATTLE_ANIM_OBJ_BIG_ROCK, 120, 68, $30
	anim_wait 2
	anim_sound 0, 1, SFX_STRENGTH
	anim_obj BATTLE_ANIM_OBJ_SMALL_ROCK, 152, 68, $30
	anim_wait 2
	anim_sound 0, 1, SFX_STRENGTH
	anim_obj BATTLE_ANIM_OBJ_BIG_ROCK, 144, 64, $40
	anim_wait 2
	anim_sound 0, 1, SFX_STRENGTH
	anim_obj BATTLE_ANIM_OBJ_SMALL_ROCK, 136, 68, $30
	anim_wait 96
	anim_ret

BattleAnim_GrassWhistle:
	anim_1gfx BATTLE_ANIM_GFX_NOISE
	anim_sound 16, 2, SFX_SING
.loop
	anim_obj BATTLE_ANIM_OBJ_SING, 64, 92, $0
	anim_wait 8
	anim_obj BATTLE_ANIM_OBJ_SING, 64, 92, $1
	anim_wait 8
	anim_obj BATTLE_ANIM_OBJ_SING, 64, 92, $2
	anim_wait 8
	anim_obj BATTLE_ANIM_OBJ_SING, 64, 92, $0
	anim_wait 8
	anim_obj BATTLE_ANIM_OBJ_SING, 64, 92, $2
	anim_wait 8
	anim_loop 4, .loop
	anim_wait 64
	anim_ret

BattleAnim_SignalBeam:
	anim_1gfx BATTLE_ANIM_GFX_BEAM
	anim_bgeffect BATTLE_BG_EFFECT_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $2, $0
	anim_bgeffect BATTLE_BG_EFFECT_ALTERNATE_HUES, $0, $2, $0
	anim_wait 64
	anim_call BattleAnimSub_Beam
	anim_wait 48
	anim_incobj 5
	anim_wait 64
	anim_ret

BattleAnim_Extrasensory:
	anim_1gfx BATTLE_ANIM_GFX_HIT
	anim_call BattleAnim_UserObj_2Row
	anim_sound 0, 1, SFX_PSYCHIC
	anim_bgeffect BATTLE_BG_EFFECT_NIGHT_SHADE, $0, BG_EFFECT_TARGET, $8
	anim_wait 128
	anim_incbgeffect BATTLE_BG_EFFECT_NIGHT_SHADE
	anim_call BattleAnim_ShowMon_1
	anim_ret

BattleAnim_WaterPulse:
BattleAnim_MuddyWater:
	anim_1gfx BATTLE_ANIM_GFX_BUBBLE
	anim_bgeffect BATTLE_BG_EFFECT_SURF, $0, $0, $0
	anim_obj BATTLE_ANIM_OBJ_SURF, 88, 104, $8
.loop
	anim_sound 0, 1, SFX_SURF
	anim_wait 32
	anim_loop 4, .loop
	anim_incobj 1
	anim_wait 56
	anim_ret

BattleAnim_BulletSeed:
	anim_2gfx BATTLE_ANIM_GFX_EGG, BATTLE_ANIM_GFX_EXPLOSION
	anim_sound 6, 2, SFX_THROW_BALL
	anim_obj BATTLE_ANIM_OBJ_SLUDGE_BOMB, 64, 92, $10
	anim_wait 36
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj BATTLE_ANIM_OBJ_EXPLOSION2, 136, 56, $0
	anim_wait 16
	anim_ret

BattleAnim_LeafBlade:
BattleAnim_AerialAce:
	anim_1gfx BATTLE_ANIM_GFX_CUT
	anim_sound 0, 1, SFX_CUT
	anim_obj BATTLE_ANIM_OBJ_CUT_LONG_DOWN_LEFT, 152, 40, $0
	anim_wait 32
	anim_ret

BattleAnim_IcicleSpear:
	anim_2gfx BATTLE_ANIM_GFX_HORN, BATTLE_ANIM_GFX_HIT
	anim_obj BATTLE_ANIM_OBJ_HORN, 72, 72, $2
	anim_wait 8
	anim_sound 0, 1, SFX_HORN_ATTACK
	anim_obj BATTLE_ANIM_OBJ_HIT, 128, 40, $0
	anim_wait 8
	anim_obj BATTLE_ANIM_OBJ_HORN, 80, 88, $2
	anim_wait 8
	anim_sound 0, 1, SFX_HORN_ATTACK
	anim_obj BATTLE_ANIM_OBJ_HIT, 136, 56, $0
	anim_wait 8
	anim_obj BATTLE_ANIM_OBJ_HORN, 76, 80, $2
	anim_wait 8
	anim_sound 0, 1, SFX_HORN_ATTACK
	anim_obj BATTLE_ANIM_OBJ_HIT, 132, 48, $0
	anim_wait 8
	anim_ret

BattleAnim_FrenzyPlant:
	anim_1gfx BATTLE_ANIM_GFX_WHIP
	anim_sound 0, 1, SFX_VINE_WHIP
	anim_obj BATTLE_ANIM_OBJ_VINE_WHIP2, 116, 52, $80
	anim_wait 4
	anim_sound 0, 1, SFX_VINE_WHIP
	anim_obj BATTLE_ANIM_OBJ_VINE_WHIP1, 128, 60, $0
	anim_wait 4
	anim_incobj 1
	anim_wait 4
	anim_ret

BattleAnim_Bounce:
	anim_1gfx BATTLE_ANIM_GFX_HIT
	anim_sound 0, 1, SFX_WING_ATTACK
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 136, 56, $0
	anim_wait 32

BattleAnim_MudShot:
	anim_1gfx BATTLE_ANIM_GFX_SAND
	anim_obp0 $fc
	anim_call BattleAnimSub_SandOrMud
	anim_ret

BattleAnim_PoisonTail:
	anim_1gfx BATTLE_ANIM_GFX_REFLECT
	anim_obp0 $0
	anim_sound 0, 0, SFX_RAGE
	anim_call BattleAnim_TargetObj_1Row
	anim_call BattleAnimSub_Metallic
	anim_wait 4
	anim_1gfx BATTLE_ANIM_GFX_HIT
	anim_resetobp0
	anim_bgeffect BATTLE_BG_EFFECT_WOBBLE_MON, $0, BG_EFFECT_USER, $0
	anim_wait 16
	anim_sound 0, 1, SFX_MEGA_KICK
	anim_obj BATTLE_ANIM_OBJ_HIT_BIG_YFIX, 136, 48, $0
	anim_wait 16
	anim_incbgeffect BATTLE_BG_EFFECT_WOBBLE_MON
	anim_call BattleAnim_ShowMon_0
	anim_ret

BattleAnim_ShockWave:
	anim_2gfx BATTLE_ANIM_GFX_LIGHTNING, BATTLE_ANIM_GFX_EXPLOSION
	anim_obj BATTLE_ANIM_OBJ_THUNDERSHOCK_BALL, 136, 56, $2
	anim_wait 16
	anim_sound 0, 1, SFX_THUNDERSHOCK
	anim_obj BATTLE_ANIM_OBJ_SPARKS_CIRCLE, 136, 56, $0
	anim_wait 96
	anim_ret

BattleAnim_DoomDesire:
	anim_1gfx BATTLE_ANIM_GFX_WIND
	anim_bgeffect BATTLE_BG_EFFECT_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $2, $0
	anim_bgeffect BATTLE_BG_EFFECT_ALTERNATE_HUES, $0, $2, $0
	anim_bgeffect BATTLE_BG_EFFECT_PSYCHIC, $0, $0, $0
	anim_obj BATTLE_ANIM_OBJ_AGILITY, 8, 24, $10
	anim_obj BATTLE_ANIM_OBJ_AGILITY, 8, 48, $2
	anim_obj BATTLE_ANIM_OBJ_AGILITY, 8, 88, $8
	anim_wait 4
	anim_obj BATTLE_ANIM_OBJ_AGILITY, 8, 32, $6
	anim_obj BATTLE_ANIM_OBJ_AGILITY, 8, 56, $c
	anim_obj BATTLE_ANIM_OBJ_AGILITY, 8, 80, $4
	anim_obj BATTLE_ANIM_OBJ_AGILITY, 8, 104, $e
.loop
	anim_sound 0, 0, SFX_THROW_BALL
	anim_wait 16
	anim_loop 4, .loop
	anim_incbgeffect BATTLE_BG_EFFECT_PSYCHIC
	anim_ret
