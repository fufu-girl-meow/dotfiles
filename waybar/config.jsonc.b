{
    "layer": "top", // Waybar at top layer
    "position": "top", // Waybar at the bottom of your screen
    "height": 24, // Waybar height
    // "width": 1366, // Waybar width
    // Choose the order of the modules
    "modules-left": ["hyprland/workspaces", "hyprland/mode", "custom/spotify"],
    "modules-center": ["hyprland/window"],
    "modules-right": ["pulseaudio", "network", "cpu", "memory", "battery", "tray", "clock"],
    "hyprland/workspaces": {
        "disable-scroll": true,
        "all-outputs": true,
        "format": "{icon}",
        "format-icons": {
            "1:web": "",
            "2:code": "",
            "3:term": "",
            "4:work": "",
            "5:music": "",
            "6:docs": "",
            "urgent": "",
            "focused": "",
            "default": ""
        }
    },
    "bluetooth": {
        "format": " {status}",
        "format-connected": " {device_alias}",
        "format-connected-battery": " {device_alias} {device_battery_percentage}%",
	// "format-device-preference": [ "device1", "device2" ], // preference list deciding the displayed device
        "tooltip-format": "{controller_alias}\t{controller_address}\n\n{num_connections} connected",
        "tooltip-format-connected": "{controller_alias}\t{controller_address}\n\n{num_connections} connected\n\n{device_enumerate}",
        "tooltip-format-enumerate-connected": "{device_alias}\t{device_address}",
        "tooltip-format-enumerate-connected-battery": "{device_alias}\t{device_address}\t{device_battery_percentage}%"
    },
    "hyprland/mode": {
        "format": "<span style=\"italic\">{}</span>"
    },
    "tray": {
        // "icon-size": 21,
        "spacing": 10
    },
    "clock": {
        "format-alt": "{:%Y-%m-%d}"
    },
    "cpu": {
        "format": "{usage}% "
    },
    "memory": {
        "format": "{}% "
    },
    "battery": {
        "bat": "BAT1",
        "states": {
            // "good": 95,
            "warning": 30,
            "critical": 15
        },
        "format": "{capacity}% {icon}",
        // "format-good": "", // An empty format will hide the module
        // "format-full": "",
        "format-icons": ["", "", "", "", ""]
    },
    "network": {
        // "interface": "wlp2s0", // (Optional) To force the use of this interface
        "format-wifi": "{essid} ({signalStrength}%) ",
        "format-ethernet": "{ifname}: {ipaddr}/{cidr} ",
        "format-disconnected": "Disconnected ⚠"
    },
    "pulseaudio": {
        //"scroll-step": 1,
        "format": "{volume}% {icon}",
        "format-bluetooth": "{volume}% {icon}",
        "format-muted": "",
        "format-icons": {
            "headphones": "",
            "handsfree": "",
            "headset": "",
            "phone": "",
            "portable": "",
            "car": "",
            "default": ["", ""]
        },
        "on-click": "pavucontrol"
    },
    "custom/spotify": {
        "format": " {}",
        "max-length": 40,
        "interval": 30, // Remove this if your script is endless and write in loop
        "exec": "$HOME/.config/waybar/mediaplayer.sh 2> /dev/null", // Script in resources folder
        "exec-if": "pgrep spotify"
    }
}
