BattleCommand_Refresh:
	ld a, BATTLE_VARS_SUBSTATUS1
	call GetBattleVarAddr
	res SUBSTATUS_NIGHTMARE, [hl]
	ld de, wPartyMon1Status
	ldh a, [hBattleTurn]
	and a
	jr z, .got_status
	ld de, wOTPartyMon1Status
.got_status
	ld a, BATTLE_VARS_STATUS
	call GetBattleVarAddr
	xor a
	ld [hl], a
	ld h, d
	ld l, e
	call AnimateCurrentMove

	ld hl, RestoredStatusText
	call StdBattleTextbox

	ldh a, [hBattleTurn]
	and a
	jp z, CalcPlayerStats
	jp CalcEnemyStats