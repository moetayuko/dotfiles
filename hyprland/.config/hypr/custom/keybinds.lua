hl.bind(
	"CTRL + SUPER + Slash",
	hl.dsp.exec_cmd("pkill rofi || ~/.config/rofi/launchers/type-6/launcher.sh"),
	{ description = "Toggle rofi launcher" }
)
