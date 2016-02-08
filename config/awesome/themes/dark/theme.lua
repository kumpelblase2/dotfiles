--[[

     Custom SHIT | DARK THEME
     Icons by Multicolor theme
     ~kumpelblase2

--]]


theme                               = {}
theme.confdir                       = os.getenv("HOME") .. "/.config/awesome/themes/dark"
theme.wallpaper                     = theme.confdir .. "/wall.jpg"

theme.font                          = "Terminus 8"
--theme.taglist_font                =
theme.colors = {}
theme.colors.bg                     = "#2b303b"
theme.colors.fg                     = "#c0c4ce"
theme.colors.color0                 = "#2b303b"
theme.colors.color1                 = "#bf616a"
theme.colors.color2                 = "#a3be8c"
theme.colors.color3                 = "#ebcb8b"
theme.colors.color4                 = "#8fa1b3"
theme.colors.color5                 = "#b48ead"
theme.colors.color6                 = "#96b5b4"
theme.colors.color7                 = "#c0c5ce"
theme.colors.color8                 = "#65737e"
theme.colors.color9                 = "#bf616a"
theme.colors.color10                = "#a3be8c"
theme.colors.color11                = "#ebcb8b"
theme.colors.color12                = "#8fa1b3"
theme.colors.color13                = "#b48ead"
theme.colors.color14                = "#96b5b4"
theme.colors.color15                = "#eff1f5"
theme.colors.color16                = "#de5e1e"

theme.menu_bg_normal                = theme.colors.bg
theme.menu_bg_focus                 = theme.colors.color8
theme.bg_normal                     = theme.colors.bg
theme.bg_focus                      = theme.colors.color8
theme.bg_urgent                     = theme.colors.bg
theme.fg_normal                     = theme.colors.fg
theme.fg_focus                      = theme.colors.fg
theme.fg_urgent                     = theme.colors.color9
theme.fg_minimize                   = theme.colors.color8
theme.border_width                  = "3"
theme.border_normal                 = theme.bg_normal
theme.border_focus                  = theme.bg_normal
theme.border_marked                 = theme.colors.bg
theme.menu_width                    = "110"
theme.menu_border_width             = "0"
theme.menu_fg_normal                = theme.fg_normal
theme.menu_fg_focus                 = theme.fg_focus
theme.menu_bg_normal                = theme.bg_normal
theme.menu_bg_focus                 = theme.bg_focus

theme.taglist_squares_sel           = theme.confdir .. "/icons/square_a.png"
theme.taglist_squares_unsel         = theme.confdir .. "/icons/square_b.png"

theme.tasklist_disable_icon         = true
theme.tasklist_floating             = ""
theme.tasklist_maximized_horizontal = ""
theme.tasklist_maximized_vertical   = ""

theme.useless_gap_width             = 10

return theme
