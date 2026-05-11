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

local current_dir = debug.getinfo(1).source:match("@(.*/)")
if current_dir then
	local f = io.open(current_dir .. "specific.lua")
	if f then
		io.close(f)
		require("custom/specific")
	end
end
