#pragma newdecls required

#include <gangs>
#include <gifts_core>

public Plugin myinfo =
{
	name = "[Gangs] Score Gift",
	author = "R1KO, Faust",
	version = GANGS_VERSION,
	url = "Faust#8073"
}

public int Gifts_OnPickUpGift_Post(int iClient, Handle hKeyValues)
{
	if(IsValidClient(iClient))
	{
		int iValue = KvGetNum(hKeyValues, "gangs_score", 0);
		if(iValue && Gangs_ClientHasGang(iClient))
		{
			Gangs_SetClientGangScore(iClient, iValue);
		}
	}
}