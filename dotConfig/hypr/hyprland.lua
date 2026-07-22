--------------
-- MONITORS --
--------------
hl.monitor({
    output = "HDMI-A-1",
    mode = "1920x1080@60.00Hz",
    position = "1920x0",
    scale = "1",
    bitdepth = 10,
})

hl.monitor({
    output = "eDP-1",
    mode = "1920x1200@60.00Hz",
    position = "0x0",
    scale = "1",
    bitdepth = 10,
})

local terminal = "kitty"
local fileManager = "thunar"
local menu = "rofi --show drun -n"

--------------------
-- MOUSE SETTINGS --
--------------------
hl.env("HYPRCURSOR_THEME", "Neuro-Sama")
hl.env("HYPRCURSOR_SIZE", "24")

----------------------
-- STARTUP HYPRLAND --
----------------------
hl.curve("fluid", { type = "bezier", points = { { 0.075, 0.425 }, { 0.125, 1 } } })
hl.curve("snappy", { type = "bezier", points = { { 0.15, 0.5 }, { 0.2, 1 } } })
hl.animation({
    leaf = "windows",
    enabled = true,
    speed = 1.5,
    bezier = "fluid",
    style = "popin 5%",
})
hl.animation({
    leaf = "windowsOut",
    enabled = true,
    speed = 1.25,
    bezier = "snappy",
})
hl.animation({
    leaf = "fade",
    enabled = true,
    speed = 2,
    bezier = "snappy",
})
hl.animation({
    leaf = "workspaces",
    enabled = true,
    speed = 1,
    bezier = "snappy",
    style = "fade",
})
hl.animation({
    leaf = "specialWorkspace",
    enabled = true,
    speed = 4,
    bezier = "fluid",
    style = "slidefadevert -35%",
})
hl.animation({
    leaf = "layers",
    enabled = true,
    speed = 2,
    bezier = "snappy",
    style = "popin 70%",
})
hl.device({
    name = "epic-mouse-v1",
    sensitivity = -0.5,
})

--------------
-- BINDINGS --
--------------
local mainMod = "SUPER"

hl.bind(mainMod .. " + Q", hl.dsp.exec_cmd("kitty"))
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("wlogout --protocol layer-shell"))
hl.bind(mainMod .. " + E", hl.dsp.exec_cmd("thunar"))
hl.bind(mainMod .. " + T", hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + SPACE", hl.dsp.exec_cmd("rofi -show run"))
hl.bind(mainMod .. " + P", hl.dsp.window.pseudo())
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))
hl.bind(mainMod .. " + S", hl.dsp.exec_cmd("grim -g \"$(slurp)\" - | swappy -f -"))
hl.bind(mainMod .. " + F", hl.dsp.exec_cmd("zen-browser"))
hl.bind(mainMod .. " + D", hl.dsp.exec_cmd("vesktop"))
hl.bind(mainMod .. " + V", hl.dsp.exec_cmd("code-oss"))
hl.bind(mainMod .. " + L", hl.dsp.exec_cmd("hyprlock"))
hl.bind(mainMod .. " + H", hl.dsp.exec_cmd("steam"))
hl.bind(mainMod .. " + B", hl.dsp.exec_cmd("killall waybar || waybar"))
hl.bind(mainMod .. " + Z", hl.dsp.exec_cmd("hyprshade toggle ~/.config/hypr/shaders/grayscale.glsl"))
hl.bind(mainMod .. " + X", hl.dsp.exec_cmd("hyprshade toggle ~/.config/hypr/shaders/invert.glsl"))

hl.bind(mainMod .. " + left", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + up", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + down", hl.dsp.focus({ direction = "down" }))

hl.bind(mainMod .. " + 1", hl.dsp.focus({ workspace = 1 }))
hl.bind(mainMod .. " + 2", hl.dsp.focus({ workspace = 2 }))
hl.bind(mainMod .. " + 3", hl.dsp.focus({ workspace = 3 }))
hl.bind(mainMod .. " + 4", hl.dsp.focus({ workspace = 4 }))
hl.bind(mainMod .. " + 5", hl.dsp.focus({ workspace = 5 }))
hl.bind(mainMod .. " + 6", hl.dsp.focus({ workspace = 6 }))
hl.bind(mainMod .. " + 7", hl.dsp.focus({ workspace = 7 }))
hl.bind(mainMod .. " + 8", hl.dsp.focus({ workspace = 8 }))
hl.bind(mainMod .. " + 9", hl.dsp.focus({ workspace = 9 }))
hl.bind(mainMod .. " + 0", hl.dsp.focus({ workspace = 0 }))

hl.bind(mainMod .. " + SHIFT + 1", hl.dsp.window.move({ workspace = 1 }))
hl.bind(mainMod .. " + SHIFT + 2", hl.dsp.window.move({ workspace = 2 }))
hl.bind(mainMod .. " + SHIFT + 3", hl.dsp.window.move({ workspace = 3 }))
hl.bind(mainMod .. " + SHIFT + 4", hl.dsp.window.move({ workspace = 4 }))
hl.bind(mainMod .. " + SHIFT + 5", hl.dsp.window.move({ workspace = 5 }))
hl.bind(mainMod .. " + SHIFT + 6", hl.dsp.window.move({ workspace = 6 }))
hl.bind(mainMod .. " + SHIFT + 7", hl.dsp.window.move({ workspace = 7 }))
hl.bind(mainMod .. " + SHIFT + 8", hl.dsp.window.move({ workspace = 8 }))
hl.bind(mainMod .. " + SHIFT + 9", hl.dsp.window.move({ workspace = 9 }))
hl.bind(mainMod .. " + SHIFT + 0", hl.dsp.window.move({ workspace = 10 }))

hl.bind(mainMod .. " + SHIFT + h", hl.dsp.window.resize({ x = -50, y = 0, relative = true }))
hl.bind(mainMod .. " + SHIFT + j", hl.dsp.window.resize({ x = 0, y = -50, relative = true }))
hl.bind(mainMod .. " + SHIFT + k", hl.dsp.window.resize({ x = 0, y = 50, relative = true }))
hl.bind(mainMod .. " + SHIFT + l", hl.dsp.window.resize({ x = 50, y = 0, relative = true }))

hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up", hl.dsp.focus({ workspace = "e-1" }))

hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag())
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize())

hl.layer_rule({
    name = "no_anim_for_selection",
    match = {
        namespace = "selection",
    },
    no_anim = true,
})

-----------------------
-- WINDOW MANAGEMENT --
-----------------------
hl.config({
    general = {
        gaps_in = 0,
        gaps_out = 0,
        border_size = 4,
        col = {
            active_border = "rgba(221,153,153,1)",
            inactive_border = "rgba(0,0,0,0)",
        },
        resize_on_border = true,
        allow_tearing = false,
        layout = "dwindle",
    },
    decoration = {
        rounding = 0,
        active_opacity = 1,
        inactive_opacity = 0.95,
        fullscreen_opacity = 1,
        blur = {
            enabled = true,
            size = 1,
            passes = 4,
            new_optimizations = true,
            ignore_opacity = true,
            xray = true,
            popups = true,
        },
    },
    animations = {
        enabled = true,
    },
    dwindle = {
        preserve_split = true,
    },
    input = {
        kb_layout = "us",
        follow_mouse = 1,
        sensitivity = 0,
        touchpad = {
            natural_scroll = true,
        },
    },
    misc = {
        force_default_wallpaper = 0,
        disable_hyprland_logo = true,
        focus_on_activate = true,
    },
})

-----------
-- MEDIA --
-----------
-- Laptop multimedia keys for volume and LCD brightness
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 10%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 10%-"),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })

---------------
-- AUTOSTART --
---------------
hl.on("hyprland.start", function()
    hl.exec_cmd("/usr/lib/xdg-desktop-portal-hyprland")
    hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")
    hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
    hl.exec_cmd("systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
    hl.exec_cmd("hypridle")
    hl.exec_cmd("awww-daemon")
    hl.exec_cmd("mako")
    hl.exec_cmd("hyprctl setcursor Neuro-sama 24")
end)

-----------
-- LAYER --
-----------
hl.layer_rule({ match = { class = "waybar" }, blur = true, })
