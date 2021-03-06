# Default Theme

if patched_font_in_use; then
    TMUX_POWERLINE_SEPARATOR_LEFT_BOLD=""
    TMUX_POWERLINE_SEPARATOR_LEFT_THIN=""
    TMUX_POWERLINE_SEPARATOR_RIGHT_BOLD=""
    TMUX_POWERLINE_SEPARATOR_RIGHT_THIN=""
else
    TMUX_POWERLINE_SEPARATOR_LEFT_BOLD="◀"
    TMUX_POWERLINE_SEPARATOR_LEFT_THIN="❮"
    TMUX_POWERLINE_SEPARATOR_RIGHT_BOLD="▶"
    TMUX_POWERLINE_SEPARATOR_RIGHT_THIN="❯"
fi

TMUX_POWERLINE_DEFAULT_BACKGROUND_COLOR=${TMUX_POWERLINE_DEFAULT_BACKGROUND_COLOR:-'#2AD2AA'}
TMUX_POWERLINE_DEFAULT_FOREGROUND_COLOR=${TMUX_POWERLINE_DEFAULT_FOREGROUND_COLOR:-'255'}

TMUX_POWERLINE_DEFAULT_LEFTSIDE_SEPARATOR=${TMUX_POWERLINE_DEFAULT_LEFTSIDE_SEPARATOR:-$TMUX_POWERLINE_SEPARATOR_RIGHT_BOLD}
TMUX_POWERLINE_DEFAULT_RIGHTSIDE_SEPARATOR=${TMUX_POWERLINE_DEFAULT_RIGHTSIDE_SEPARATOR:-$TMUX_POWERLINE_SEPARATOR_LEFT_BOLD}


# Format: segment_name background_color foreground_color [non_default_separator]

if [ -z $TMUX_POWERLINE_LEFT_STATUS_SEGMENTS ]; then
    TMUX_POWERLINE_LEFT_STATUS_SEGMENTS=(
		    #"tmux_session_info 148 234" \
			"hostname #d5f6ee 0" \
			    #"ifstat 30 255" \
			    #"ifstat_sys 30 255" \
			    #"lan_ip 24 255 ${TMUX_POWERLINE_SEPARATOR_RIGHT_THIN}" \
			    "wan_ip #00AFAF #fffdf9" \
			    #"vcs_branch #aaeede 0" \
			    #"vcs_compare 60 255" \
			    #"vcs_staged 64 255" \
			    #"vcs_modified 9 255" \
			    #"vcs_others 245 0" \
			)
fi

if [ -z $TMUX_POWERLINE_RIGHT_STATUS_SEGMENTS ]; then
    TMUX_POWERLINE_RIGHT_STATUS_SEGMENTS=(
		    #"earthquake 3 0" \
			"vcs_branch #aaeede 0" \
			    "pwd #ffac8e 0" \
			    "disk_usage 37 255"\
			    "gpu #9656a1 #c3f0ca"\
			    #"macos_notification_count 29 255" \
			    #"mailcount 9 255" \
			    #"now_playing 234 37" \
			    #"cpu 240 136" \
			    #"load 237 167" \
			    #"tmux_mem_cpu_load 234 136" \
			    #"battery 137 127" \
			    #"weather 37 255" \
			    #"rainbarf 0 ${TMUX_POWERLINE_DEFAULT_FOREGROUND_COLOR}" \
			    #"xkb_layout 135 117" \
			    "date_day 235 136" \
			    "date 235 136 ${TMUX_POWERLINE_SEPARATOR_LEFT_THIN}" \
			    "time 235 136 ${TMUX_POWERLINE_SEPARATOR_LEFT_THIN}" \
			    #"utc_time 235 136 ${TMUX_POWERLINE_SEPARATOR_LEFT_THIN}" \
			)
fi
