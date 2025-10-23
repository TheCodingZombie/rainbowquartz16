SECTION "Reserved Bytes", ROMX
ds 4  ; reserve 4 bytes

; must be defined in descending order
; to make it so that you can get to level 100, MAX_LEVEL + 1
GetMaxLevel:
    ld hl, wKantoBadges

    bit EARTHBADGE, [hl]
    ld a, MAX_LEVEL + 1
    jr nz, .exit

    bit VOLCANOBADGE, [hl]
    ld a, 97
    jr nz, .exit

    bit BOULDERBADGE, [hl]
    ld a, 94
    jr nz, .exit

    bit CASCADEBADGE, [hl]
    ld a, 91
    jr nz, .exit

    bit SOULBADGE, [hl]
    ld a, 88
    jr nz, .exit

    bit RAINBOWBADGE, [hl]
    ld a, 83
    jr nz, .exit

    bit MARSHBADGE, [hl]
    ld a, 77
    jr nz, .exit

    bit THUNDERBADGE, [hl]
    ld a, 70
    jr nz, .exit

    ld hl, wJohtoBadges

    bit RISINGBADGE, [hl]
    ld a, 61
    jr nz, .exit

    ; glacierbadge
    bit GLACIERBADGE, [hl]
    ld a, 52
    jr nz, .exit

    ; stormbadge
    bit STORMBADGE, [hl]
    ld a, 48
    jr nz, .exit

    ; mineralbadge
    bit FOGBADGE, [hl]
    ld a, 43
    jr nz, .exit

    ; fogbadge
    bit FOGBADGE, [hl]
    ld a, 36
    jr nz, .exit

    ; plainbadge
    bit PLAINBADGE, [hl]
    ld a, 29
    jr nz, .exit

    ; hivebadge
    bit HIVEBADGE, [hl]
    ld a, 23
    jr nz, .exit

    ; zephyrbadge
    bit ZEPHYRBADGE, [hl]
    ld a, 18
    jr nz, .exit

    ; no badges
    ld a, 12

.exit
  ld b, a
  ret