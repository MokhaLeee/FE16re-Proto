#pragma once

#define ICON_FE16_WPNTYPE(id) ((2 << 8) + (id))


enum{
	WT_SWORD	= 0,
	WT_LANCE	= 1,
	WT_AXE		= 2,
	WT_BOW		= 3,
	WT_BRAWL	= 4,
	WT_REASON	= 5,
	WT_FAITH	= 6,
	WT_AUTH		= 7,
	WT_RIDING	= 8,
	WT_FLYING	= 9,
	WT_HEAVY	= 10
};

extern u16* IconSheet_FE16_WpnType[];
