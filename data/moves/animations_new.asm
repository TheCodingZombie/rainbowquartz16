BattleAnimationsGenNew::
    dw BattleAnim_Dracometeor
	dw BattleAnim_Moonblast
	dw BattleAnim_Hail
    dw BattleAnim_NoAnim
	dw BattleAnim_WillOWisp
.IndirectEnd

BattleAnim_Dracometeor:
	anim_2gfx BATTLE_ANIM_GFX_ROCKS, BATTLE_ANIM_GFX_HIT
	anim_sound 0, 0, SFX_SPARK
	anim_obj BATTLE_ANIM_OBJ_ANCIENTPOWER, 64, 108, $20
	anim_wait 8
	anim_sound 0, 0, SFX_SPARK
	anim_obj BATTLE_ANIM_OBJ_ANCIENTPOWER, 75, 102, $20
	anim_wait 8
	anim_sound 0, 0, SFX_SPARK
	anim_obj BATTLE_ANIM_OBJ_ANCIENTPOWER, 85, 97, $20
	anim_wait 8
	anim_sound 0, 0, SFX_SPARK
	anim_obj BATTLE_ANIM_OBJ_ANCIENTPOWER, 96, 92, $20
	anim_wait 8
	anim_sound 0, 1, SFX_SPARK
	anim_obj BATTLE_ANIM_OBJ_ANCIENTPOWER, 106, 87, $20
	anim_wait 8
	anim_sound 0, 1, SFX_SPARK
	anim_obj BATTLE_ANIM_OBJ_ANCIENTPOWER, 116, 82, $20
	anim_wait 8
	anim_sound 0, 1, SFX_SPARK
	anim_obj BATTLE_ANIM_OBJ_ANCIENTPOWER, 126, 77, $20
	anim_wait 8
	anim_sound 0, 1, SFX_SPARK
	anim_obj BATTLE_ANIM_OBJ_HIT_BIG_YFIX, 136, 56, $0
	anim_wait 6
	anim_ret

BattleAnim_Moonblast:
	anim_2gfx BATTLE_ANIM_GFX_EGG, BATTLE_ANIM_GFX_SMOKE
	anim_bgp $1b
	anim_sound 6, 2, SFX_SLUDGE_BOMB
	anim_obj BATTLE_ANIM_OBJ_SHADOW_BALL, 64, 92, $2
	anim_wait 32
	anim_obj BATTLE_ANIM_OBJ_BALL_POOF, 132, 56, $10
	anim_wait 24
	anim_ret

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

BattleAnim_NoAnim:
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