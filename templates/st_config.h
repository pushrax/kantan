/* Terminal colors (16 first used in escape sequence) */
static const char *colorname[] = {
	/* 8 normal colors */
	"#${hex[0]}",
	"#${hex[1]}",
	"#${hex[2]}",
	"#${hex[3]}",
	"#${hex[4]}",
	"#${hex[5]}",
	"#${hex[6]}",
	"#${hex[7]}",

	/* 8 bright colors */
	"#${hex[8]}",
	"#${hex[9]}",
	"#${hex[10]}",
	"#${hex[11]}",
	"#${hex[12]}",
	"#${hex[13]}",
	"#${hex[14]}",
	"#${hex[15]}",

	[255] = 0,

	/* more colors can be added after 255 to use with DefaultXX */
	"#${hex[16]}",
};


/*
 * Default colors (colorname index)
 * foreground, background, cursor, unfocused cursor
 */
static unsigned int defaultfg = 7;
static unsigned int defaultbg = 256;
static unsigned int defaultcs = 7;
static unsigned int defaultucs = 7;

/*
 * Colors used, when the specific fg == defaultfg. So in reverse mode this
 * will reverse too. Another logic would only make the simple feature too
 * complex.
 */
static unsigned int defaultitalic = 11;
static unsigned int defaultunderline = 7;

