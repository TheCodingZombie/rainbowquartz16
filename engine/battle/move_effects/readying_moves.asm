HandleReadyingMoves::
	farcall BattleCommand_SwitchTurn
	ld a, BATTLE_VARS_MOVE_EFFECT
	call GetBattleVar
	push af
	farcall BattleCommand_SwitchTurn
	pop af

.set_took_damage
	ldh a, [hBattleTurn]
	and a
	jr z, .enemy_took_damage
	ld a, 1
	ld [wPlayerTookDamage], a
	ret

.enemy_took_damage
	ld a, 1
	ld [wEnemyTookDamage], a
	ret

BattleCommand_Revenge:
	ld bc, wPlayerTookDamage
	ldh a, [hBattleTurn]
	and a
	jr z, .got_damage_check
	ld bc, wEnemyTookDamage
.got_damage_check
	ld a, [bc]
	and a
	ret z

; Double damage if the target damaged the user this turn
	jp DoubleDamage