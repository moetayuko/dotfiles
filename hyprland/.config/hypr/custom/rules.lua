hl.window_rule({ match = { class = "^(org.mozilla.Thunderbird)$" }, workspace = "special silent" })
hl.window_rule({ match = { class = "^(eu.betterbird.Betterbird)$" }, workspace = "special silent" })
hl.window_rule({ match = { class = "^(cs2)$" }, immediate = true })

hl.window_rule({ match = { class = "^(kitty)$" }, no_blur = true })
hl.window_rule({ match = { xwayland = 1 }, no_blur = true })

hl.window_rule({ match = { title = "^(生成密码)(.*)$" }, center = true })
hl.window_rule({ match = { title = "^(生成密码)(.*)$" }, float = true })

hl.window_rule({ match = { class = "zoom", title = "annotate_toolbar" }, float = true })
hl.window_rule({ match = { class = "zoom", title = "annotate_toolbar" }, no_initial_focus = true })
hl.window_rule({ match = { class = "zoom", title = "Zoom Workplace" }, no_initial_focus = true })
hl.window_rule({ match = { class = "zoom", title = "Toolbar Menu" }, no_initial_focus = true })
hl.window_rule({ match = { class = "zoom", title = "menu window" }, no_initial_focus = true })
hl.window_rule({ match = { class = "zoom", title = "sub menu window" }, no_initial_focus = true })
hl.window_rule({ match = { class = "zoom", title = "会议安全" }, no_initial_focus = true })
hl.window_rule({ match = { class = "zoom", title = "Start AI Companion" }, no_initial_focus = true })

