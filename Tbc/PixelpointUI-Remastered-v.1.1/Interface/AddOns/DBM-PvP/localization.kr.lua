﻿if GetLocale() ~= "koKR" then return end

local L

----------------------------
--  General BG functions  --
----------------------------
L = DBM:GetModLocalization("Battlegrounds")

L:SetGeneralLocalization({
	name = "기본 전장 기능"
})

L:SetTimerLocalization({
	TimerInvite = "%s"
})

L:SetOptionLocalization({
	ColorByClass		= "전장 점수판 캐릭터명에 직업 색상 사용",
	ShowInviteTimer		= "전장 입장까지 남은시간 바 표시",
	AutoSpirit			= "전장에서 사망시 자동으로 무덤 이동",
	HideBossEmoteFrame	= "화면 가운데 나타나는 전장 메세지 숨김"
})

L:SetMiscLocalization({
	ArenaInvite	= "전투 참여"
})

--------------
--  투기장  --
--------------
L = DBM:GetModLocalization("Arenas")

L:SetGeneralLocalization({
	name = "기본 투기장 기능"
})

L:SetTimerLocalization({
	TimerShadow	= "어둠의 시야"
})

L:SetOptionLocalization({
	TimerShadow 	= "어둠의 시야 바 표시"
})

L:SetMiscLocalization({
	Start15 	= "투기장 전투 시작 15초 전입니다!"
})

---------------
--  Alterac  --
---------------
L = DBM:GetModLocalization("z30")

L:SetTimerLocalization({
	TimerTower	= "%s",
	TimerGY 	= "%s"
})

L:SetOptionLocalization({
	TimerTower 	= "탑 점령 바 표시",
	TimerGY 	= "무덤 점령 바 표시",
	AutoTurnIn 	= "알터랙 계곡내 퀘스트 자동 완료"
})

---------------
--  Arathi  --
---------------
L = DBM:GetModLocalization("z529")

L:SetTimerLocalization({
	TimerCap 				= "%s"
})

L:SetOptionLocalization({
	TimerWin 				= "전장 승리까지 남은시간 바 표시",
	TimerCap 				= "거점 점령 바 표시",
	ShowAbEstimatedPoints 	= "전장 종료 순간 승/패 진영 예상 점수 표시",
	ShowAbBasesToWin 		= "뒤지고 있을 경우 역전에 필요한 거점 수 표시"
})

L:SetMiscLocalization({
	ScoreExpr 		= "(%d+)/1600",
	WinBarText 		= "%s 승리",
	BasesToWin		= "역전하기 위해 필요한 거점 수: %d",
	Flag 			= "깃발"
})

-----------------------
--  Eye of the Storm --
-----------------------
L = DBM:GetModLocalization("z566")

L:SetTimerLocalization({
	TimerFlag		= "깃발 재생성"
})

L:SetOptionLocalization({
	TimerWin 		= "전장 승리까지 남은시간 바 표시",
	TimerFlag 		= "깃발 재생성 바 표시",
	ShowPointFrame 	= "전장 종료 순간 승/패 진영 예상 점수 및 깃발 운반자 표시"
})

L:SetMiscLocalization({
	ScoreExpr 		= "(%d+)/1600",
	WinBarText		= "%s 승리",
	FlagReset 		= "깃발이 다시 제자리로 돌아갔습니다.",
	FlagTaken 		= "^(.+)|1이;가; 깃발을 차지했습니다!",
	FlagCaptured 	= "(.+)|1이;가; 깃발을 차지했습니다!",
	FlagDropped 	= "깃발을 떨어뜨렸습니다!"

})

--------------------
--  Warsong Gulch --
--------------------
L = DBM:GetModLocalization("z489")

L:SetTimerLocalization({
	TimerFlag 			= "깃발 재생성",
})

L:SetOptionLocalization({
	TimerFlag 					= "깃발 재생성 바 표시",
	ShowFlagCarrier 	 	 	= "깃발 운반자 표시",
	ShowFlagCarrierErrorNote	= "전투가 진행 중이어서 깃발 운반자 표시 기능이 제한될 때 알림 보기"
})

L:SetMiscLocalization({
	InfoErrorText 		= "시스템상 한계로 전투 중에는 깃발 운반자 추적이 불가능합니다. 현재 전투가 종료된 후 깃발 운반자 추적 기능이 복구됩니다.",
	ExprFlagPickUp 		= "(.+)|1이;가; (.+) 깃발을 손에 넣었습니다!",
	ExprFlagCaptured 	= "(.+)|1이;가; (.+) 깃발 쟁탈에 성공했습니다!",
	ExprFlagReturn 		= "(.+)|1이;가; (.+) 깃발을 되찾았습니다!",
	FlagAlliance 		= "얼라이언스 깃발 :",
	FlagHorde 			= "호드 깃발 :",
	FlagBase 			= "기지"
})

------------------------
--  Isle of Conquest  --
------------------------

L = DBM:GetModLocalization("z628")

L:SetWarningLocalization({
	WarnSiegeEngine			= "공성 전차 준비!",
	WarnSiegeEngineSoon		= "공성 전차 완료 10초 전"
})

L:SetTimerLocalization({
	TimerPOI				= "%s",
	TimerSiegeEngine		= "공성 전차 준비"
})

L:SetOptionLocalization({
	TimerPOI				= "거점 점령 바 표시",
	TimerSiegeEngine		= "공성 전차 제작 바 표시",
	WarnSiegeEngine			= "공성 전차 제작 완료 알림 보기",
	WarnSiegeEngineSoon		= "공성 전차 제작 완료 사전 알림 보기",
	ShowGatesHealth			= "관문 체력 바 보기(진행 중인 전장에서는 맞지 않을 수도 있습니다.)"
})

L:SetMiscLocalization({
	GatesHealthFrame		= "피해 입은 관문",
	SiegeEngine				= "공성 전차",
	GoblinStartAlliance		= "저기 시포리움 폭탄 보이세요? 제가 공성 전차를 수리하는 동안엔 그걸 사용해서 관문을 공격하세요!",
	GoblinStartHorde		= "공성 전차를 수리하는 동안 날 좀 지켜 달라고. 필요하면 저기 있는 시포리움 폭탄을 관문에 사용해!",
	GoblinHalfwayAlliance	= "반쯤 됐어요! 호드가 절 못 때리게 해주세요. 기계공학 학교에서는 싸움은 안 가르친다고요!",
	GoblinHalfwayHorde		= "반쯤 됐다고! 얼라이언스 놈들이 가까이 못 오게 해줘. 계약서에 전투 얘긴 없었다고!",
	GoblinFinishedAlliance	= "제 최고의 작품인 듯한데요! 이제 이 공성 전차를 몰고 나가셔도 돼요!",
	GoblinFinishedHorde		= "이제 이 공성 전차를 끌고 나가도 좋아!",
	GoblinBrokenAlliance	= "벌써 부서졌어요?! 괜찮아요. 제가 못 고칠 정도는 아니에요.",
	GoblinBrokenHorde		= "또 부서졌다고?! 내가 고쳐 주지... 하지만 사용자 과실이니까 공짜로 해 줄 순 없다고."
})

------------------
--  Twin Peaks  --
------------------
L = DBM:GetModLocalization("z726")

L:SetTimerLocalization({
	TimerFlag	= "깃발 재생성"
})

L:SetOptionLocalization({
	TimerFlag 					= "깃발 재생성 바 표시",
	ShowFlagCarrier 	 	 	= "깃발 운반자 표시",
	ShowFlagCarrierErrorNote	= "전투가 진행 중이어서 깃발 운반자 표시 기능이 제한될 때 알림 보기"
})

L:SetMiscLocalization({
	InfoErrorText 		= "시스템상 한계로 전투 중에는 깃발 운반자 추적이 불가능합니다. 현재 전투가 종료된 후 깃발 운반자 추적 기능이 복구됩니다.",
	ExprFlagPickUp		= "(.+)|1이;가; (.+) 깃발을 손에 넣었습니다!",
	ExprFlagCaptured	= "(.+)|1이;가; (.+) 깃발 쟁탈에 성공했습니다!",
	ExprFlagReturn		= "(.+)|1이;가; (.+) 깃발을 되찾았습니다!",
	FlagAlliance		= "얼라이언스 깃발: ",
	FlagHorde			= "호드 깃발: ",
	FlagBase			= "기지",
	Vulnerable1			= "약해져서",
	Vulnerable2			= "약해져서"
})

------------------------------
--  The Battle for Gilneas  --
------------------------------
L = DBM:GetModLocalization("z761")

L:SetTimerLocalization({
	TimerCap 				= "%s"
})

L:SetOptionLocalization({
	TimerWin 					= "전장 승리까지 남은시간 바 표시",
	TimerCap 					= "거점 점령 바 표시",
	ShowGilneasEstimatedPoints 	= "전장 종료 순간 승/패 진영 예상 점수 표시",
	ShowGilneasBasesToWin 		= "뒤지고 있을 경우 역전에 필요한 거점 수 표시"
})

L:SetMiscLocalization({
	ScoreExpr 		= "(%d+)/2000",
	WinBarText 		= "%s 승리",
	BasesToWin		= "역전하기 위해 필요한 거점 수: %d",
	Flag 			= "깃발"
})

-------------------------
--  Silvershard Mines  --
-------------------------
L = DBM:GetModLocalization("z727")

L:SetTimerLocalization({
	TimerCart	= "수레 재생성"
})

L:SetOptionLocalization({
	TimerCart	= "수레 재생성 바 표시"
})

L:SetMiscLocalization({
	Capture = "수레를 차지"
})

-------------------------
--  Temple of Kotmogu  --
-------------------------
L = DBM:GetModLocalization("z998")

L:SetMiscLocalization({
	OrbTaken 	= "차지했습니다!",
	OrbReturn 	= "공이 돌아왔습니다!",
	ScoreExpr	= "(%d+)/1600",
	WinBarText	= "%s 승리",
	OrbsToWin	= "역전하기 위해 필요한 공 수: %d"
})


L:SetOptionLocalization({
	TimerWin					= "전투 승리까지 남은시간 바 표시",
	ShowKotmoguEstimatedPoints	= "전투 종료 순간 승/패 진영 예상 점수 표시",
	ShowKotmoguOrbsToWin		= "뒤지고 있을 경우 역전에 필요한 공 개수 표시"
})