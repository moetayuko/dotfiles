hl.on("hyprland.start", function()
	hl.exec_cmd(
		"systemctl --user start xsettingsd.service && echo 'Xft.dpi: 192' | xrdb -merge && xprop -root -format _XWAYLAND_GLOBAL_OUTPUT_SCALE 32c -set _XWAYLAND_GLOBAL_OUTPUT_SCALE 2"
	)
end)

hl.config({
	xwayland = {
		force_zero_scaling = false,
		use_nearest_neighbor = false,
	},
})

if is_file_exists(HOME .. "/.config/hypr/custom/specific.lua") then
	require("custom.specific")
end
