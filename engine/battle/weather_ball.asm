WeatherBallDamage:
; Override Weather Ball's type and make its power 100.

	ld a, [wBattleWeather]
    cp WEATHER_RAIN
    jr nz, .check_sun
	ld a, BATTLE_VARS_MOVE_TYPE
	call GetBattleVarAddr
	or SPECIAL
	ld [hl], WATER
    jp .done

.check_sun
    cp WEATHER_SUN
    jr nz, .check_sandstorm
    ld a, BATTLE_VARS_MOVE_TYPE
	call GetBattleVarAddr
	or SPECIAL
	ld [hl], FIRE
    jp .done

.check_sandstorm
    cp WEATHER_SANDSTORM
    jr nz, .check_hail
    ld a, BATTLE_VARS_MOVE_TYPE
	call GetBattleVarAddr
	or SPECIAL
	ld [hl], ROCK
    jp .done

.check_hail
    cp WEATHER_HAIL
    jr nz, .done
    ld a, BATTLE_VARS_MOVE_TYPE
	call GetBattleVarAddr
	or SPECIAL
	ld [hl], ICE

.done
    push af
	farcall BattleCommand_DamageStats ; damagestats
    pop af
	ret
