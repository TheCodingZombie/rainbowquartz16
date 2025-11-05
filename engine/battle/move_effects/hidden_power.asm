BattleCommand_HiddenPower:
	ld a, [wAttackMissed]
	and a
	ret nz
	farcall HiddenPowerDamage
	ret

BattleCommand_WeatherBall:
	ld a, [wAttackMissed]
	and a
	ret nz
	farcall WeatherBallDamage
	ret
