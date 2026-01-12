BattleCommand_KnockOff:
; knockoff

	ldh a, [hBattleTurn]
	and a
	jr nz, .enemy

; The enemy needs to have an item to remove.

	call .enemyitem
	ld a, [hl]
	and a
	ret z

; Can't steal mail.

	ld [wNamedObjectIndex], a
	ld d, a
	farcall ItemIsMail
	ret c

	ld a, [wLinkMode]
	and a
	jr z, .removeenemyitem

	ld a, [wBattleMode]
	dec a
	ret z

.removeenemyitem
	call .enemyitem
	xor a
	ld [hl], a
	ld [de], a
	jr .stole

.enemy

; The player must have an item to remove.

	call .playeritem
	ld a, [hl]
	and a
	ret z

; Can't steal mail!

	ld [wNamedObjectIndex], a
	ld d, a
	farcall ItemIsMail
	ret c

	call .playeritem
	xor a
	ld [hl], a
	ld [de], a

.stole
; If the enemy knocks off your item,
; it's returned to your inventory.

; If you knock off the enemy's item,
; it's placed in your inventory.

	ld a, 1
	ld [wItemQuantityChange], a
	ld hl, wNumItems
	call ReceiveItem

	call GetItemName
	ld hl, KnockedOffText
	jp StdBattleTextbox

.playeritem
	ld a, 1
	call BattlePartyAttr
	ld d, h
	ld e, l
	ld hl, wBattleMonItem
	ld a, [hl]
	ld [wCurItem], a
	ret

.enemyitem
	ld a, 1
	call OTPartyAttr
	ld d, h
	ld e, l
	ld hl, wEnemyMonItem
	ld a, [hl]
	ld [wCurItem], a
	ret