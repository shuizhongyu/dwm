/* See LICENSE file for copyright and license details. */

/* appearance */
static const char font[]            = "WenQuanYi Micro Hei Mono";
static const char normbordercolor[] = "#444444";
static const char normbgcolor[]     = "#222222";
static const char normfgcolor[]     = "#bbbbbb";
static const char selbordercolor[]  = "#FF8800";
static const char selbgcolor[]      = "#005577";
static const char selfgcolor[]      = "#eeeeee";
static const unsigned int borderpx  = 1;        /* border pixel of windows */
static const unsigned int snap      = 32;       /* snap pixel */
static const unsigned int systrayspacing = 2;   /* systray spacing */
static const Bool showsystray       = True;     /* False means no systray */
static const Bool showbar           = True;     /* False means no bar */
static const Bool topbar            = True;     /* False means bottom bar */

/* tagging */
//static const char *tags[] = { "1", "2", "3", "4", "5", "6", "7", "8", "9" };
/*
static const char *xtags[][10] = {
	{ "慈", "母", "手", "中", "线", "游", "子", "身", "上", "衣", },
	{ "临", "行", "密", "密", "缝", "意", "恐", "迟", "迟", "归", },
	{ "谁", "言", "寸", "草", "心", "报", "得", "三", "春", "晖", },
};
static const char *xtags[][10] = {
	{ "春", "眠", "不", "觉", "晓", "处", "处", "闻", "啼", "鸟" },
	{ "夜", "来", "风", "雨", "声", "花", "落", "知", "多", "少" },
};
*/
/*
static const char *xtags[][10] = {
	{ "日", "暮", "长", "江", "里", "相", "邀", "归", "渡", "", },
	{ "落", "花", "如", "有", "意", "来", "去", "逐", "船", "", },
};
*/
static const char *xtags[][11] = {
	{ "明", "月", "出", "天", "山", "苍", "茫", "云", "海", "间", "",},
	{ "长", "风", "几", "万", "里", "吹", "渡", "玉", "门", "关", "",},
};
static const char *tags[] = { "甲", "乙", "丙", "丁", "戊", "己", "庚", "辛", "壬", "癸", "" };
//static const char *tags[] = { "夜", "来", "风", "雨", "声", "花", "落", "知", "多", "少" };
//static const char *tags[] = { "日", "暮", "长", "江", "里", "相", "邀", "归", "渡", "头" };


static const Rule rules[] = {
	/* class      instance    title       tags mask     isfloating   monitor */
	{ "Gimp",     NULL,       NULL,       0,            True,        -1 },
	{ "MPlayer",  NULL,       NULL,       0,            True,        -1 },
	{ "mplayer2", NULL,       NULL,       0,            True,        -1 },
	{ "qemu",     NULL,       NULL,       0,            True,        -1 },
	{ "Thunar",   NULL,       "File Operation ", 0,     True,        -1 },
	{ "Wicd-client", NULL,    NULL,       0,            True,        -1 },
	{ "StarDict", NULL,       NULL,       0,            True,        -1 },
	{ "Iceweasel", NULL,      "About Iceweasel", 0,     True,        -1 },
	{ "Iceweasel", NULL,      "Iceweasel Preferences", 0, True,      -1 },
	{ "Iceweasel", NULL,      "Library",  0,            True,        -1 },
	{ "Icedove",  NULL,       NULL,       0,            True,        -1 },
	{ "Vlc",      NULL,       NULL,       0,            True,        -1 },
	{ "mpv",      NULL,       NULL,       0,            True,        -1 },
	{ NULL,       "iptux",    NULL,       0,            True,        -1 },
};

/* layout(s) */
static const float mfact      = 0.50; /* factor of master area size [0.05..0.95] */
static const int nmaster      = 1;    /* number of clients in master area */
static const Bool resizehints = False; /*True;*/ /* True means respect size hints in tiled resizals */

static const Layout layouts[] = {
	/* symbol     arrange function */
	{ "0-0",      tile },    /* first entry is default */
	{ "><>",      NULL },    /* no layout function means floating behavior */
	{ "[M]",      monocle },
};

/* key definitions */
#define MODKEY Mod4Mask
//#define MODKEY Mod1Mask
#define TAGKEYS(KEY,TAG) \
	{ MODKEY,                       KEY,      view,           {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask,           KEY,      toggleview,     {.ui = 1 << TAG} }, \
	{ MODKEY|ShiftMask,             KEY,      tag,            {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask|ShiftMask, KEY,      toggletag,      {.ui = 1 << TAG} },
#define SHCMD(cmd) { .v = (const char*[]){ "/bin/sh", "-c", cmd, NULL } }

/* commands */
static const char *dmenucmd[] = { "dmenu_run", "-fn", font, "-nb", normbgcolor, "-nf", normfgcolor, "-sb", selbgcolor, "-sf", selfgcolor, NULL };
static const char *termcmd[]  = { "xterm", NULL };
//static const char *eccmd[] = { "emacsclient", "-n", "-c", "-a", "", NULL};
static const char *fmcmd[] = { "thunar", NULL };
static const char *volumedown[] = { "amixer", "set", "Master", "5%-", NULL };
static const char *volumeup[]   = { "amixer", "set", "Master", "5%+", NULL };
static const char *mute[]       = { "amixer", "set", "Master", "toggle", NULL };
static const char *chrome[]     = { "google-chrome", NULL };

static Key keys[] = {
	/* modifier                  key           function        argument */
	{ MODKEY,                    XK_r,         spawn,          {.v = dmenucmd } },
	{ MODKEY,                    XK_Return,    spawn,          {.v = termcmd } },
	{ MODKEY,                    XK_t,         spawn,          {.v = fmcmd } },
	{ MODKEY,                    XK_c,         spawn,          {.v = chrome } },
	{ MODKEY,                    XK_b,         togglebar,      {0} },
	{ MODKEY,                    XK_w,         focusstack,     {.i = +1 } },
	{ MODKEY,                    XK_j,         focusstack,     {.i = +1 } },
	{ MODKEY,                    XK_k,         focusstack,     {.i = -1 } },
	{ MODKEY,                    XK_u,         incnmaster,     {.i = +1 } },
	{ MODKEY,                    XK_i,         incnmaster,     {.i = -1 } },
	{ MODKEY,                    XK_h,         setmfact,       {.f = -0.05} },
	{ MODKEY,                    XK_l,         setmfact,       {.f = +0.05} },
	{ MODKEY|ShiftMask,          XK_Return,    zoom,           {0} },
	{ MODKEY,                    XK_Tab,       view,           {0} },
//	{ MODKEY,                    XK_grave,     dycycle,        {0} },
	{ MODKEY,                    XK_q,         killclient,     {0} },
	{ MODKEY,                    XK_space,     setlayout,      {0} },
	{ MODKEY|ControlMask,        XK_space,     setlayout,      {1} },
	{ MODKEY|ShiftMask,          XK_space,     togglefloating, {0} },
//	{ MODKEY,                    XK_0,         view,           {.ui = ~0 } },
//	{ MODKEY|ShiftMask,          XK_0,         tag,            {.ui = ~0 } },
//	{ MODKEY,                    XK_comma,     focusmon,       {.i = -1 } },
//	{ MODKEY,                    XK_period,    focusmon,       {.i = +1 } },
	{ MODKEY,                    XK_comma,     dycycle,        {.i = -1 } },
	{ MODKEY,                    XK_period,    dycycle,        {.i = +1 } },
	{ MODKEY,                    XK_slash,     peertag,        {.i = 0 } },
	{ MODKEY,                    XK_x,         peertag,        {.i = 0 } },
//	{ MODKEY|ShiftMask,          XK_comma,     tagmon,         {.i = -1 } },
//	{ MODKEY|ShiftMask,          XK_period,    tagmon,         {.i = +1 } },

	{ MODKEY,                    XK_a,         focusstackabs,     {.i = 1} },
	{ MODKEY,                    XK_s,         focusstackabs,     {.i = 2} },
	{ MODKEY,                    XK_d,         focusstackabs,     {.i = 3} },
	{ MODKEY,                    XK_f,         focusstackabs,     {.i = 4} },
	{ MODKEY,                    XK_g,         focusstackabs,     {.i = 5} },

	TAGKEYS(                     XK_1,                         0)
	TAGKEYS(                     XK_2,                         1)
	TAGKEYS(                     XK_3,                         2)
	TAGKEYS(                     XK_4,                         3)
	TAGKEYS(                     XK_5,                         4)
	TAGKEYS(                     XK_6,                         5)
	TAGKEYS(                     XK_7,                         6)
	TAGKEYS(                     XK_8,                         7)
	TAGKEYS(                     XK_9,                         8)
	TAGKEYS(                     XK_0,                         9)
	TAGKEYS(                     XK_minus,                     10)
//	TAGKEYS(                     XK_equal,                     11)

	{ MODKEY|ControlMask|ShiftMask, XK_q,      quit,           {0} },
	{ MODKEY,                    XK_bracketleft, spawn,        {.v = volumeup } },
	{ MODKEY,                    XK_bracketright, spawn,       {.v = volumedown } },
	{ MODKEY,                    XK_backslash, spawn,          {.v = mute} },
};

/* button definitions */
/* click can be ClkLtSymbol, ClkStatusText, ClkWinTitle, ClkClientWin, or ClkRootWin */
static Button buttons[] = {
	/* click                event mask      button          function        argument */
	{ ClkLtSymbol,          0,              Button1,        setlayout,      {0} },
	{ ClkLtSymbol,          0,              Button3,        setlayout,      {1} },
	{ ClkWinTitle,          0,              Button2,        zoom,           {0} },
	{ ClkStatusText,        0,              Button2,        spawn,          {.v = termcmd } },
	{ ClkClientWin,         MODKEY,         Button1,        movemouse,      {0} },
	{ ClkClientWin,         MODKEY,         Button2,        togglefloating, {0} },
	{ ClkClientWin,         MODKEY,         Button3,        resizemouse,    {0} },
	{ ClkTagBar,            0,              Button1,        view,           {0} },
	{ ClkTagBar,            0,              Button3,        toggleview,     {0} },
	{ ClkTagBar,            MODKEY,         Button1,        tag,            {0} },
	{ ClkTagBar,            MODKEY,         Button3,        toggletag,      {0} },
};

