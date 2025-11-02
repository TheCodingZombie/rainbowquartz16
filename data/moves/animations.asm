BattleAnimations::
; entries correspond to constants/move_constants.asm
	table_width 2, BattleAnimations
	dw BattleAnim_ThrowPokeBall
	dw BattleAnim_SendOutMon
	dw BattleAnim_ReturnMon
	dw BattleAnim_Confused
	dw BattleAnim_Slp
	dw BattleAnim_Brn
	dw BattleAnim_Psn
	dw BattleAnim_Sap
	dw BattleAnim_Frz
	dw BattleAnim_Par
	dw BattleAnim_InLove
	dw BattleAnim_InSandstorm
	dw BattleAnim_InNightmare
	dw BattleAnim_InWhirlpool
	dw BattleAnim_Miss
	dw BattleAnim_EnemyDamage
	dw BattleAnim_EnemyStatDown
	dw BattleAnim_PlayerStatDown
	dw BattleAnim_PlayerDamage
	dw BattleAnim_Wobble
	dw BattleAnim_Shake
	dw BattleAnim_HitConfusion
	dw BattleAnim_InHail
	assert_table_length $ffff - NUM_BATTLE_ANIMS
BattleAnimations::

	
	
	dw BattleAnim_SweetScent2

BattleAnim_Minimize:
	anim_sound 0, 0, SFX_SURF
	anim_1gfx BATTLE_ANIM_GFX_HIT
	anim_call BattleAnim_TargetObj_2Row
	anim_minimize
	anim_bgeffect BATTLE_BG_EFFECT_WAVE_DEFORM_MON, $0, BG_EFFECT_USER, $0
	anim_wait 48
	anim_updateactorpic
	anim_incbgeffect BATTLE_BG_EFFECT_WAVE_DEFORM_MON
	anim_wait 48
	anim_call BattleAnim_ShowMon_0
	anim_ret

BattleAnim_SkyAttack:
	anim_if_param_equal $1, BattleAnim_FocusEnergy
	anim_1gfx BATTLE_ANIM_GFX_SKY_ATTACK
	anim_bgeffect BATTLE_BG_EFFECT_REMOVE_MON, $0, BG_EFFECT_USER, $0
	anim_wait 32
	anim_sound 0, 0, SFX_HYPER_BEAM
	anim_obj BATTLE_ANIM_OBJ_SKY_ATTACK, 48, 88, $40
	anim_wait 64
	anim_incobj 1
	anim_wait 21
	anim_sound 0, 1, SFX_HYPER_BEAM
	anim_bgeffect BATTLE_BG_EFFECT_ALTERNATE_HUES, $0, $2, $0
	anim_wait 64
	anim_incobj 1
	anim_wait 32
	anim_bgeffect BATTLE_BG_EFFECT_SHOW_MON, $0, BG_EFFECT_USER, $0
	anim_wait 16
	anim_ret

BattleAnim_NightShade:
	anim_1gfx BATTLE_ANIM_GFX_HIT
	anim_bgp $1b
	anim_obp1 $1b
	anim_wait 32
	anim_call BattleAnim_UserObj_2Row
	anim_bgeffect BATTLE_BG_EFFECT_NIGHT_SHADE, $0, BG_EFFECT_TARGET, $8
	anim_sound 0, 1, SFX_PSYCHIC
	anim_wait 96
	anim_incbgeffect BATTLE_BG_EFFECT_NIGHT_SHADE
	anim_call BattleAnim_ShowMon_1
	anim_ret

BattleAnim_Lick:
	anim_1gfx BATTLE_ANIM_GFX_WATER
	anim_sound 0, 1, SFX_LICK
	anim_obj BATTLE_ANIM_OBJ_LICK, 136, 56, $0
	anim_wait 64
	anim_ret

BattleAnim_TriAttack:
	anim_3gfx BATTLE_ANIM_GFX_FIRE, BATTLE_ANIM_GFX_ICE, BATTLE_ANIM_GFX_LIGHTNING
	anim_call BattleAnimSub_Fire
	anim_wait 16
	anim_call BattleAnimSub_Ice
	anim_wait 16
	anim_bgeffect BATTLE_BG_EFFECT_FLASH_INVERTED, $0, $4, $4
	anim_sound 0, 1, SFX_THUNDER
	anim_obj BATTLE_ANIM_OBJ_THUNDER_RIGHT, 152, 68, $0
	anim_wait 16
	anim_ret

BattleAnim_Withdraw:
	anim_1gfx BATTLE_ANIM_GFX_REFLECT
	anim_call BattleAnim_TargetObj_2Row
	anim_bgeffect BATTLE_BG_EFFECT_WITHDRAW, $0, BG_EFFECT_USER, $50
	anim_wait 48
	anim_sound 0, 0, SFX_SHINE
	anim_obj BATTLE_ANIM_OBJ_WITHDRAW, 48, 88, $0
	anim_wait 64
	anim_incobj 2
	anim_wait 1
	anim_incbgeffect BATTLE_BG_EFFECT_WITHDRAW
	anim_call BattleAnim_ShowMon_0
	anim_ret

BattleAnim_Psybeam:
	anim_1gfx BATTLE_ANIM_GFX_PSYCHIC
	anim_bgeffect BATTLE_BG_EFFECT_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $2, $0
	anim_bgeffect BATTLE_BG_EFFECT_CYCLE_BGPALS_INVERTED, $0, $4, $0
.loop
	anim_sound 6, 2, SFX_PSYBEAM
	anim_obj BATTLE_ANIM_OBJ_WAVE, 64, 88, $4
	anim_wait 4
	anim_loop 10, .loop
	anim_wait 48
	anim_ret

BattleAnim_DreamEater:
	anim_1gfx BATTLE_ANIM_GFX_BUBBLE
	anim_bgp $1b
	anim_obp0 $27
	anim_sound 6, 3, SFX_WATER_GUN
	anim_call BattleAnimSub_Drain
	anim_wait 128
	anim_wait 48
	anim_ret

BattleAnim_LeechLife:
	anim_1gfx BATTLE_ANIM_GFX_BUBBLE
	anim_sound 6, 3, SFX_WATER_GUN
	anim_call BattleAnimSub_Drain
	anim_wait 128
	anim_wait 48
	anim_ret

BattleAnim_Harden:
	anim_1gfx BATTLE_ANIM_GFX_REFLECT
	anim_obp0 $0
	anim_call BattleAnim_TargetObj_1Row
	anim_call BattleAnimSub_Metallic
	anim_call BattleAnim_ShowMon_0
	anim_ret

BattleAnim_Psywave:
	anim_1gfx BATTLE_ANIM_GFX_PSYCHIC
	anim_bgeffect BATTLE_BG_EFFECT_PSYCHIC, $0, $0, $0
.loop
	anim_sound 6, 2, SFX_PSYCHIC
	anim_obj BATTLE_ANIM_OBJ_WAVE, 64, 80, $2
	anim_wait 8
	anim_sound 6, 2, SFX_PSYCHIC
	anim_obj BATTLE_ANIM_OBJ_WAVE, 64, 88, $3
	anim_wait 8
	anim_sound 6, 2, SFX_PSYCHIC
	anim_obj BATTLE_ANIM_OBJ_WAVE, 64, 96, $4
	anim_wait 8
	anim_loop 3, .loop
	anim_wait 32
	anim_incbgeffect BATTLE_BG_EFFECT_PSYCHIC
	anim_wait 4
	anim_ret

BattleAnim_Glare:
	anim_1gfx BATTLE_ANIM_GFX_BEAM
	anim_bgeffect BATTLE_BG_EFFECT_FLASH_INVERTED, $0, $8, $20
	anim_bgeffect BATTLE_BG_EFFECT_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $2, $0
	anim_call BattleAnimSub_EyeBeams
	anim_wait 16
	anim_ret

BattleAnim_Thrash:
	anim_1gfx BATTLE_ANIM_GFX_HIT
	anim_sound 0, 1, SFX_POUND
	anim_obj BATTLE_ANIM_OBJ_PALM, 120, 72, $0
	anim_obj BATTLE_ANIM_OBJ_HIT_BIG_YFIX, 120, 72, $0
	anim_wait 6
	anim_sound 0, 1, SFX_MOVE_PUZZLE_PIECE
	anim_obj BATTLE_ANIM_OBJ_PUNCH, 136, 56, $0
	anim_obj BATTLE_ANIM_OBJ_HIT_BIG_YFIX, 136, 56, $0
	anim_wait 6
	anim_sound 0, 1, SFX_DOUBLE_KICK
	anim_obj BATTLE_ANIM_OBJ_KICK, 152, 40, $0
	anim_obj BATTLE_ANIM_OBJ_HIT_BIG_YFIX, 152, 40, $0
	anim_wait 16
	anim_ret

BattleAnim_Growth:
	anim_bgeffect BATTLE_BG_EFFECT_WHITE_HUES, $0, $8, $0
	anim_1gfx BATTLE_ANIM_GFX_CHARGE
	anim_sound 0, 0, SFX_SWORDS_DANCE
	anim_obj BATTLE_ANIM_OBJ_GROWTH, 48, 108, $0
	anim_obj BATTLE_ANIM_OBJ_GROWTH, 48, 108, $8
	anim_obj BATTLE_ANIM_OBJ_GROWTH, 48, 108, $10
	anim_obj BATTLE_ANIM_OBJ_GROWTH, 48, 108, $18
	anim_obj BATTLE_ANIM_OBJ_GROWTH, 48, 108, $20
	anim_obj BATTLE_ANIM_OBJ_GROWTH, 48, 108, $28
	anim_obj BATTLE_ANIM_OBJ_GROWTH, 48, 108, $30
	anim_obj BATTLE_ANIM_OBJ_GROWTH, 48, 108, $38
	anim_wait 64
	anim_ret

BattleAnim_Conversion2:
	anim_1gfx BATTLE_ANIM_GFX_EXPLOSION
	anim_sound 63, 3, SFX_SHARPEN
	anim_obj BATTLE_ANIM_OBJ_CONVERSION2, 132, 44, $0
	anim_obj BATTLE_ANIM_OBJ_CONVERSION2, 132, 44, $8
	anim_obj BATTLE_ANIM_OBJ_CONVERSION2, 132, 44, $10
	anim_obj BATTLE_ANIM_OBJ_CONVERSION2, 132, 44, $18
	anim_obj BATTLE_ANIM_OBJ_CONVERSION2, 132, 44, $20
	anim_obj BATTLE_ANIM_OBJ_CONVERSION2, 132, 44, $28
	anim_obj BATTLE_ANIM_OBJ_CONVERSION2, 132, 44, $30
	anim_obj BATTLE_ANIM_OBJ_CONVERSION2, 132, 44, $38
	anim_wait 128
	anim_wait 48
	anim_ret

BattleAnim_Smokescreen:
	anim_3gfx BATTLE_ANIM_GFX_HAZE, BATTLE_ANIM_GFX_EGG, BATTLE_ANIM_GFX_SMOKE
	anim_sound 6, 2, SFX_THROW_BALL
	anim_obj BATTLE_ANIM_OBJ_SMOKESCREEN, 64, 92, $6c
	anim_wait 24
	anim_incobj 1
	anim_sound 0, 1, SFX_BALL_POOF
	anim_obj BATTLE_ANIM_OBJ_BALL_POOF, 108, 70, $10
	anim_wait 8
.loop
	anim_sound 0, 1, SFX_MENU
	anim_obj BATTLE_ANIM_OBJ_SMOKE, 132, 60, $20
	anim_wait 8
	anim_loop 5, .loop
	anim_wait 128
	anim_ret

BattleAnim_Strength:
	anim_2gfx BATTLE_ANIM_GFX_ROCKS, BATTLE_ANIM_GFX_HIT
	anim_bgeffect BATTLE_BG_EFFECT_SHAKE_SCREEN_Y, $10, $1, $20
	anim_sound 0, 0, SFX_STRENGTH
	anim_obj BATTLE_ANIM_OBJ_STRENGTH, 64, 104, $1
	anim_wait 128
	anim_incobj 1
	anim_wait 20
	anim_sound 0, 1, SFX_MEGA_PUNCH
	anim_obj BATTLE_ANIM_OBJ_HIT_BIG_YFIX, 132, 40, $0
	anim_wait 16
	anim_ret

BattleAnim_SwordsDance:
	anim_1gfx BATTLE_ANIM_GFX_WHIP
	anim_sound 0, 0, SFX_SWORDS_DANCE
	anim_obj BATTLE_ANIM_OBJ_SWORDS_DANCE, 48, 108, $0
	anim_obj BATTLE_ANIM_OBJ_SWORDS_DANCE, 48, 108, $d
	anim_obj BATTLE_ANIM_OBJ_SWORDS_DANCE, 48, 108, $1a
	anim_obj BATTLE_ANIM_OBJ_SWORDS_DANCE, 48, 108, $27
	anim_obj BATTLE_ANIM_OBJ_SWORDS_DANCE, 48, 108, $34
	anim_wait 56
	anim_ret

BattleAnim_QuickAttack:
	anim_2gfx BATTLE_ANIM_GFX_SPEED, BATTLE_ANIM_GFX_HIT
	anim_sound 0, 0, SFX_MENU
	anim_bgeffect BATTLE_BG_EFFECT_HIDE_MON, $0, BG_EFFECT_USER, $0
	anim_obj BATTLE_ANIM_OBJ_SPEED_LINE, 24, 88, $2
	anim_obj BATTLE_ANIM_OBJ_SPEED_LINE, 32, 88, $1
	anim_obj BATTLE_ANIM_OBJ_SPEED_LINE, 40, 88, $0
	anim_obj BATTLE_ANIM_OBJ_SPEED_LINE, 48, 88, $80
	anim_obj BATTLE_ANIM_OBJ_SPEED_LINE, 56, 88, $81
	anim_obj BATTLE_ANIM_OBJ_SPEED_LINE, 64, 88, $82
	anim_wait 12
	anim_sound 0, 1, SFX_COMET_PUNCH
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 136, 56, $0
	anim_wait 8
	anim_bgeffect BATTLE_BG_EFFECT_SHOW_MON, $0, BG_EFFECT_USER, $0
	anim_wait 16
	anim_ret

BattleAnim_Meditate:
	anim_1gfx BATTLE_ANIM_GFX_HIT
	anim_call BattleAnim_TargetObj_1Row
	anim_sound 0, 0, SFX_PSYBEAM
	anim_bgeffect BATTLE_BG_EFFECT_WAVE_DEFORM_MON, $0, BG_EFFECT_USER, $0
	anim_wait 48
	anim_incbgeffect BATTLE_BG_EFFECT_WAVE_DEFORM_MON
	anim_wait 48
	anim_call BattleAnim_ShowMon_0
	anim_ret

BattleAnim_Sharpen:
	anim_1gfx BATTLE_ANIM_GFX_SHAPES
	anim_obp0 $e4
	anim_call BattleAnim_TargetObj_1Row
	anim_sound 0, 0, SFX_SHARPEN
	anim_bgeffect BATTLE_BG_EFFECT_FADE_MON_TO_LIGHT_REPEATING, $0, BG_EFFECT_USER, $40
	anim_obj BATTLE_ANIM_OBJ_SHARPEN, 48, 88, $0
	anim_wait 96
	anim_incobj 2
	anim_incbgeffect BATTLE_BG_EFFECT_FADE_MON_TO_LIGHT_REPEATING
	anim_call BattleAnim_ShowMon_0
	anim_ret

BattleAnim_DefenseCurl:
	anim_1gfx BATTLE_ANIM_GFX_SHAPES
	anim_obp0 $e4
	anim_call BattleAnim_TargetObj_1Row
	anim_sound 0, 0, SFX_SHARPEN
	anim_bgeffect BATTLE_BG_EFFECT_FADE_MON_TO_LIGHT_REPEATING, $0, BG_EFFECT_USER, $40
	anim_obj BATTLE_ANIM_OBJ_DEFENSE_CURL, 48, 88, $0
	anim_wait 96
	anim_incobj 2
	anim_incbgeffect BATTLE_BG_EFFECT_FADE_MON_TO_LIGHT_REPEATING
	anim_call BattleAnim_ShowMon_0
	anim_ret

BattleAnim_SeismicToss:
	anim_2gfx BATTLE_ANIM_GFX_GLOBE, BATTLE_ANIM_GFX_HIT
	anim_bgeffect BATTLE_BG_EFFECT_SHAKE_SCREEN_Y, $10, $1, $20
	anim_sound 0, 0, SFX_STRENGTH
	anim_obj BATTLE_ANIM_OBJ_SEISMIC_TOSS, 64, 104, $1
	anim_wait 128
	anim_incobj 1
	anim_wait 20
	anim_sound 0, 1, SFX_MEGA_PUNCH
	anim_obj BATTLE_ANIM_OBJ_HIT_BIG_YFIX, 132, 40, $0
	anim_wait 16
	anim_ret

BattleAnim_Rage:
	anim_1gfx BATTLE_ANIM_GFX_HIT
	anim_call BattleAnim_TargetObj_1Row
	anim_bgeffect BATTLE_BG_EFFECT_CYCLE_MON_LIGHT_DARK_REPEATING, $0, BG_EFFECT_USER, $20
	anim_sound 0, 0, SFX_RAGE
	anim_wait 72
	anim_incbgeffect BATTLE_BG_EFFECT_CYCLE_MON_LIGHT_DARK_REPEATING
	anim_call BattleAnim_ShowMon_0
	anim_sound 0, 1, SFX_MOVE_PUZZLE_PIECE
	anim_obj BATTLE_ANIM_OBJ_HIT_BIG_YFIX, 120, 72, $0
	anim_wait 6
	anim_sound 0, 1, SFX_COMET_PUNCH
	anim_obj BATTLE_ANIM_OBJ_HIT_BIG_YFIX, 136, 56, $0
	anim_wait 6
	anim_sound 0, 1, SFX_MEGA_PUNCH
	anim_obj BATTLE_ANIM_OBJ_HIT_BIG_YFIX, 152, 40, $0
	anim_wait 16
	anim_ret

BattleAnim_Agility:
	anim_1gfx BATTLE_ANIM_GFX_WIND
	anim_obp0 $fc
	anim_call BattleAnim_TargetObj_1Row
	anim_bgeffect BATTLE_BG_EFFECT_FADE_MON_TO_LIGHT_REPEATING, $0, BG_EFFECT_USER, $40
	anim_obj BATTLE_ANIM_OBJ_AGILITY, 8, 24, $10
	anim_obj BATTLE_ANIM_OBJ_AGILITY, 8, 48, $2
	anim_obj BATTLE_ANIM_OBJ_AGILITY, 8, 88, $8
	anim_wait 4
	anim_obj BATTLE_ANIM_OBJ_AGILITY, 8, 32, $6
	anim_obj BATTLE_ANIM_OBJ_AGILITY, 8, 56, $c
	anim_obj BATTLE_ANIM_OBJ_AGILITY, 8, 80, $4
	anim_obj BATTLE_ANIM_OBJ_AGILITY, 8, 104, $e
.loop
	anim_sound 0, 0, SFX_RAZOR_WIND
	anim_wait 4
	anim_loop 18, .loop
	anim_incbgeffect BATTLE_BG_EFFECT_FADE_MON_TO_LIGHT_REPEATING
	anim_call BattleAnim_ShowMon_0
	anim_ret

BattleAnim_BoneClub:
	anim_2gfx BATTLE_ANIM_GFX_HIT, BATTLE_ANIM_GFX_MISC
	anim_obj BATTLE_ANIM_OBJ_BONE_CLUB, 64, 88, $2
	anim_wait 32
	anim_sound 0, 1, SFX_BONE_CLUB
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 136, 56, $0
	anim_wait 16
	anim_ret

BattleAnim_Barrier:
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

BattleAnim_Waterfall:
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

BattleAnim_PsychicM:
	anim_1gfx BATTLE_ANIM_GFX_PSYCHIC
	anim_bgeffect BATTLE_BG_EFFECT_ALTERNATE_HUES, $0, $2, $0
	anim_bgeffect BATTLE_BG_EFFECT_PSYCHIC, $0, $0, $0
.loop
	anim_sound 6, 2, SFX_PSYCHIC
	anim_obj BATTLE_ANIM_OBJ_WAVE, 64, 88, $2
	anim_wait 8
	anim_loop 8, .loop
	anim_wait 96
	anim_incbgeffect BATTLE_BG_EFFECT_PSYCHIC
	anim_wait 4
	anim_ret

BattleAnim_Sludge:
	anim_1gfx BATTLE_ANIM_GFX_POISON
	anim_call BattleAnimSub_Sludge
	anim_wait 56
	anim_ret

BattleAnim_Toxic:
	anim_1gfx BATTLE_ANIM_GFX_POISON
	anim_bgeffect BATTLE_BG_EFFECT_BLACK_HUES, $0, $8, $0
	anim_call BattleAnimSub_Acid
	anim_wait 32
	anim_call BattleAnimSub_Sludge
	anim_wait 64
	anim_ret

BattleAnim_Metronome:
	anim_2gfx BATTLE_ANIM_GFX_MISC, BATTLE_ANIM_GFX_SPEED
	anim_sound 0, 0, SFX_METRONOME
	anim_obj BATTLE_ANIM_OBJ_METRONOME_HAND, 72, 88, $0
.loop
	anim_obj BATTLE_ANIM_OBJ_METRONOME_SPARKLE, 72, 80, $0
	anim_wait 8
	anim_loop 5, .loop
	anim_wait 48
	anim_ret

BattleAnim_Counter:
	anim_1gfx BATTLE_ANIM_GFX_HIT
.loop
	anim_bgeffect BATTLE_BG_EFFECT_FLASH_INVERTED, $0, $6, $2
	anim_sound 0, 1, SFX_POUND
	anim_obj BATTLE_ANIM_OBJ_PALM, 120, 72, $0
	anim_obj BATTLE_ANIM_OBJ_HIT_BIG_YFIX, 120, 72, $0
	anim_wait 6
	anim_bgeffect BATTLE_BG_EFFECT_FLASH_INVERTED, $0, $6, $2
	anim_sound 0, 1, SFX_COMET_PUNCH
	anim_obj BATTLE_ANIM_OBJ_PUNCH, 136, 40, $0
	anim_obj BATTLE_ANIM_OBJ_HIT_BIG_YFIX, 136, 40, $0
	anim_wait 6
	anim_bgeffect BATTLE_BG_EFFECT_FLASH_INVERTED, $0, $6, $2
	anim_sound 0, 1, SFX_MEGA_KICK
	anim_obj BATTLE_ANIM_OBJ_KICK, 152, 56, $0
	anim_obj BATTLE_ANIM_OBJ_HIT_BIG_YFIX, 152, 56, $0
	anim_wait 6
	anim_loop 3, .loop
	anim_wait 16
	anim_ret

BattleAnim_LowKick:
	anim_1gfx BATTLE_ANIM_GFX_HIT
	anim_bgeffect BATTLE_BG_EFFECT_FLASH_INVERTED, $0, $4, $2
	anim_sound 0, 1, SFX_DOUBLE_KICK
	anim_obj BATTLE_ANIM_OBJ_KICK, 124, 64, $0
	anim_obj BATTLE_ANIM_OBJ_HIT_BIG_YFIX, 124, 64, $0
	anim_wait 6
	anim_bgeffect BATTLE_BG_EFFECT_FLASH_INVERTED, $0, $4, $2
	anim_sound 0, 1, SFX_DOUBLE_KICK
	anim_obj BATTLE_ANIM_OBJ_KICK, 132, 64, $0
	anim_obj BATTLE_ANIM_OBJ_HIT_BIG_YFIX, 132, 64, $0
	anim_wait 6
	anim_bgeffect BATTLE_BG_EFFECT_FLASH_INVERTED, $0, $4, $2
	anim_sound 0, 1, SFX_DOUBLE_KICK
	anim_obj BATTLE_ANIM_OBJ_KICK, 140, 64, $0
	anim_obj BATTLE_ANIM_OBJ_HIT_BIG_YFIX, 140, 64, $0
	anim_wait 16
	anim_ret

BattleAnim_WingAttack:
	anim_1gfx BATTLE_ANIM_GFX_HIT
	anim_sound 0, 1, SFX_WING_ATTACK
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 148, 56, $0
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 116, 56, $0
	anim_wait 6
	anim_sound 0, 1, SFX_WING_ATTACK
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 144, 56, $0
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 120, 56, $0
	anim_wait 6
	anim_sound 0, 1, SFX_WING_ATTACK
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 140, 56, $0
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 124, 56, $0
	anim_wait 16
	anim_ret

BattleAnim_Slam:
	anim_1gfx BATTLE_ANIM_GFX_HIT
	anim_sound 0, 1, SFX_WING_ATTACK
	anim_bgeffect BATTLE_BG_EFFECT_FLASH_INVERTED, $0, $8, $2
	anim_obj BATTLE_ANIM_OBJ_HIT_YFIX, 124, 40, $0
	anim_wait 16
	anim_ret

BattleAnim_Disable:
	anim_2gfx BATTLE_ANIM_GFX_LIGHTNING, BATTLE_ANIM_GFX_STATUS
	anim_bgeffect BATTLE_BG_EFFECT_CYCLE_OBPALS_GRAY_AND_YELLOW, $0, $2, $0
	anim_obj BATTLE_ANIM_OBJ_DISABLE, 132, 56, $0
	anim_wait 16
	anim_sound 0, 1, SFX_BIND
	anim_obj BATTLE_ANIM_OBJ_PARALYZED, 104, 56, $42
	anim_obj BATTLE_ANIM_OBJ_PARALYZED, 160, 56, $c2
	anim_wait 96
	anim_ret

BattleAnim_TailWhip:
	anim_1gfx BATTLE_ANIM_GFX_HIT
	anim_call BattleAnim_TargetObj_2Row
	anim_sound 0, 0, SFX_TAIL_WHIP
	anim_bgeffect BATTLE_BG_EFFECT_WOBBLE_MON, $0, BG_EFFECT_USER, $0
	anim_wait 32
	anim_incbgeffect BATTLE_BG_EFFECT_WOBBLE_MON
	anim_call BattleAnim_ShowMon_0
	anim_ret






BattleAnimSub_Drain:
	anim_obj BATTLE_ANIM_OBJ_DRAIN, 132, 44, $0
	anim_obj BATTLE_ANIM_OBJ_DRAIN, 132, 44, $8
	anim_obj BATTLE_ANIM_OBJ_DRAIN, 132, 44, $10
	anim_obj BATTLE_ANIM_OBJ_DRAIN, 132, 44, $18
	anim_obj BATTLE_ANIM_OBJ_DRAIN, 132, 44, $20
	anim_obj BATTLE_ANIM_OBJ_DRAIN, 132, 44, $28
	anim_obj BATTLE_ANIM_OBJ_DRAIN, 132, 44, $30
	anim_obj BATTLE_ANIM_OBJ_DRAIN, 132, 44, $38
	anim_ret

BattleAnimSub_EyeBeams:
	anim_sound 6, 2, SFX_LEER
	anim_obj BATTLE_ANIM_OBJ_LEER, 72, 84, $0
	anim_obj BATTLE_ANIM_OBJ_LEER, 64, 80, $0
	anim_obj BATTLE_ANIM_OBJ_LEER, 88, 76, $0
	anim_obj BATTLE_ANIM_OBJ_LEER, 80, 72, $0
	anim_obj BATTLE_ANIM_OBJ_LEER, 104, 68, $0
	anim_obj BATTLE_ANIM_OBJ_LEER, 96, 64, $0
	anim_obj BATTLE_ANIM_OBJ_LEER, 120, 60, $0
	anim_obj BATTLE_ANIM_OBJ_LEER, 112, 56, $0
	anim_obj BATTLE_ANIM_OBJ_LEER_TIP, 130, 54, $0
	anim_obj BATTLE_ANIM_OBJ_LEER_TIP, 122, 50, $0
	anim_ret

BattleAnimSub_WarpAway:
	anim_sound 0, 0, SFX_WARP_TO
	anim_obj BATTLE_ANIM_OBJ_WARP, 44, 108, $0
	anim_obj BATTLE_ANIM_OBJ_WARP, 44, 100, $0
	anim_obj BATTLE_ANIM_OBJ_WARP, 44, 92, $0
	anim_obj BATTLE_ANIM_OBJ_WARP, 44, 84, $0
	anim_obj BATTLE_ANIM_OBJ_WARP, 44, 76, $0
	anim_obj BATTLE_ANIM_OBJ_WARP, 44, 68, $0
	anim_obj BATTLE_ANIM_OBJ_WARP, 44, 60, $0
	anim_ret

BattleAnimSub_Beam:
	anim_sound 0, 0, SFX_HYPER_BEAM
	anim_obj BATTLE_ANIM_OBJ_BEAM, 64, 92, $0
	anim_wait 4
	anim_sound 0, 0, SFX_HYPER_BEAM
	anim_obj BATTLE_ANIM_OBJ_BEAM, 80, 84, $0
	anim_wait 4
	anim_sound 0, 1, SFX_HYPER_BEAM
	anim_obj BATTLE_ANIM_OBJ_BEAM, 96, 76, $0
	anim_wait 4
	anim_sound 0, 1, SFX_HYPER_BEAM
	anim_obj BATTLE_ANIM_OBJ_BEAM, 112, 68, $0
	anim_obj BATTLE_ANIM_OBJ_BEAM_TIP, 126, 62, $0
	anim_ret

BattleAnimSub_Explosion1:
	anim_sound 0, 0, SFX_EGG_BOMB
	anim_obj BATTLE_ANIM_OBJ_EXPLOSION1, 24, 64, $0
	anim_wait 5
	anim_sound 0, 0, SFX_EGG_BOMB
	anim_obj BATTLE_ANIM_OBJ_EXPLOSION1, 56, 104, $0
	anim_wait 5
	anim_sound 0, 0, SFX_EGG_BOMB
	anim_obj BATTLE_ANIM_OBJ_EXPLOSION1, 24, 104, $0
	anim_wait 5
	anim_sound 0, 0, SFX_EGG_BOMB
	anim_obj BATTLE_ANIM_OBJ_EXPLOSION1, 56, 64, $0
	anim_wait 5
	anim_sound 0, 0, SFX_EGG_BOMB
	anim_obj BATTLE_ANIM_OBJ_EXPLOSION1, 40, 84, $0
	anim_ret

BattleAnimSub_Explosion2:
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj BATTLE_ANIM_OBJ_EXPLOSION1, 148, 32, $0
	anim_wait 5
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj BATTLE_ANIM_OBJ_EXPLOSION1, 116, 72, $0
	anim_wait 5
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj BATTLE_ANIM_OBJ_EXPLOSION1, 148, 72, $0
	anim_wait 5
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj BATTLE_ANIM_OBJ_EXPLOSION1, 116, 32, $0
	anim_wait 5
	anim_sound 0, 1, SFX_EGG_BOMB
	anim_obj BATTLE_ANIM_OBJ_EXPLOSION1, 132, 52, $0
	anim_ret

BattleAnimSub_Sound:
	anim_obj BATTLE_ANIM_OBJ_SOUND, 64, 76, $0
	anim_obj BATTLE_ANIM_OBJ_SOUND, 64, 88, $1
	anim_obj BATTLE_ANIM_OBJ_SOUND, 64, 100, $2
	anim_ret

BattleAnimSub_Fire:
	anim_sound 0, 1, SFX_EMBER
.loop
	anim_obj BATTLE_ANIM_OBJ_BURNED, 136, 56, $10
	anim_obj BATTLE_ANIM_OBJ_BURNED, 136, 56, $90
	anim_wait 4
	anim_loop 4, .loop
	anim_ret

BattleAnimSub_Ice:
	anim_sound 0, 1, SFX_SHINE
	anim_obj BATTLE_ANIM_OBJ_ICE, 128, 42, $0
	anim_wait 6
	anim_sound 0, 1, SFX_SHINE
	anim_obj BATTLE_ANIM_OBJ_ICE, 144, 70, $0
	anim_wait 6
	anim_sound 0, 1, SFX_SHINE
	anim_obj BATTLE_ANIM_OBJ_ICE, 120, 56, $0
	anim_wait 6
	anim_sound 0, 1, SFX_SHINE
	anim_obj BATTLE_ANIM_OBJ_ICE, 152, 56, $0
	anim_wait 6
	anim_sound 0, 1, SFX_SHINE
	anim_obj BATTLE_ANIM_OBJ_ICE, 144, 42, $0
	anim_wait 6
	anim_sound 0, 1, SFX_SHINE
	anim_obj BATTLE_ANIM_OBJ_ICE, 128, 70, $0
	anim_ret

BattleAnimSub_Sludge:
.loop
	anim_sound 0, 1, SFX_TOXIC
	anim_obj BATTLE_ANIM_OBJ_SLUDGE, 132, 72, $0
	anim_wait 8
	anim_sound 0, 1, SFX_TOXIC
	anim_obj BATTLE_ANIM_OBJ_SLUDGE, 116, 72, $0
	anim_wait 8
	anim_sound 0, 1, SFX_TOXIC
	anim_obj BATTLE_ANIM_OBJ_SLUDGE, 148, 72, $0
	anim_wait 8
	anim_loop 5, .loop
	anim_ret

BattleAnimSub_Acid:
.loop
	anim_sound 6, 2, SFX_BUBBLEBEAM
	anim_obj BATTLE_ANIM_OBJ_ACID, 64, 92, $10
	anim_wait 5
	anim_loop 8, .loop
	anim_ret

BattleAnimSub_Metallic:
	anim_sound 0, 0, SFX_SHINE
	anim_bgeffect BATTLE_BG_EFFECT_FADE_MON_TO_BLACK, $0, BG_EFFECT_USER, $40
	anim_wait 8
	anim_obj BATTLE_ANIM_OBJ_HARDEN, 48, 84, $0
	anim_wait 32
	anim_obj BATTLE_ANIM_OBJ_HARDEN, 48, 84, $0
	anim_wait 64
	anim_incbgeffect BATTLE_BG_EFFECT_FADE_MON_TO_BLACK
	anim_ret

BattleAnimSub_SandOrMud:
.loop
	anim_sound 6, 2, SFX_MENU
	anim_obj BATTLE_ANIM_OBJ_SAND, 64, 92, $4
	anim_wait 4
	anim_loop 8, .loop
	anim_wait 32
	anim_ret

BattleAnimSub_Glimmer:
	anim_sound 0, 0, SFX_METRONOME
	anim_obj BATTLE_ANIM_OBJ_GLIMMER, 44, 64, $0
	anim_wait 5
	anim_obj BATTLE_ANIM_OBJ_GLIMMER, 24, 96, $0
	anim_wait 5
	anim_obj BATTLE_ANIM_OBJ_GLIMMER, 56, 104, $0
	anim_wait 21
	anim_ret

BattleAnimSub_Glimmer2:
	anim_sound 0, 0, SFX_METRONOME
.loop
	anim_obj BATTLE_ANIM_OBJ_GLIMMER, 24, 64, $0
	anim_wait 5
	anim_obj BATTLE_ANIM_OBJ_GLIMMER, 56, 104, $0
	anim_wait 5
	anim_obj BATTLE_ANIM_OBJ_GLIMMER, 24, 104, $0
	anim_wait 5
	anim_obj BATTLE_ANIM_OBJ_GLIMMER, 56, 64, $0
	anim_wait 5
	anim_obj BATTLE_ANIM_OBJ_GLIMMER, 40, 84, $0
	anim_wait 5
	anim_loop 2, .loop
	anim_wait 16
	anim_ret

BattleAnim_TargetObj_1Row:
	anim_battlergfx_2row
	anim_bgeffect BATTLE_BG_EFFECT_BATTLEROBJ_1ROW, $0, BG_EFFECT_TARGET, $0
	anim_wait 6
	anim_ret

BattleAnim_TargetObj_2Row:
	anim_battlergfx_1row
	anim_bgeffect BATTLE_BG_EFFECT_BATTLEROBJ_2ROW, $0, BG_EFFECT_TARGET, $0
	anim_wait 6
	anim_ret

BattleAnim_ShowMon_0:
	anim_wait 1
	anim_bgeffect BATTLE_BG_EFFECT_SHOW_MON, $0, BG_EFFECT_TARGET, $0
	anim_wait 5
	anim_incobj 1
	anim_wait 1
	anim_ret

BattleAnim_UserObj_1Row:
	anim_battlergfx_2row
	anim_bgeffect BATTLE_BG_EFFECT_BATTLEROBJ_1ROW, $0, BG_EFFECT_USER, $0
	anim_wait 6
	anim_ret

BattleAnim_UserObj_2Row:
	anim_battlergfx_1row
	anim_bgeffect BATTLE_BG_EFFECT_BATTLEROBJ_2ROW, $0, BG_EFFECT_USER, $0
	anim_wait 4
	anim_ret

BattleAnim_ShowMon_1:
	anim_wait 1
	anim_bgeffect BATTLE_BG_EFFECT_SHOW_MON, $0, BG_EFFECT_USER, $0
	anim_wait 4
	anim_incobj 1
	anim_wait 1
	anim_ret