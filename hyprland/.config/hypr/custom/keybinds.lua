hl.bind(
	"CTRL + SUPER + Slash",
	hl.dsp.exec_cmd("pkill rofi || ~/.config/rofi/launchers/type-6/launcher.sh"),
	{ description = "Toggle rofi launcher" }
)

hl.unbind("SUPER + Tab")
hl.bind("SUPER + Tab", hl.dsp.focus({ workspace = "previous_per_monitor'" }))
hl.config({ binds = { workspace_back_and_forth = true } })
