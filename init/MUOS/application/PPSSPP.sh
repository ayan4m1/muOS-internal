#!/bin/sh

if pgrep -f "playbgm.sh" >/dev/null; then
	killall -q "playbgm.sh" "mp3play"
fi

if pgrep -f "muplay" >/dev/null; then
	killall -q "muplay"
	rm "$SND_PIPE"
fi

echo app >/tmp/act_go

. /opt/muos/script/var/func.sh

. /opt/muos/script/var/device/device.sh
. /opt/muos/script/var/device/screen.sh
. /opt/muos/script/var/device/sdl.sh
. /opt/muos/script/var/device/storage.sh

PPSSPP_DIR="$DC_STO_ROM_MOUNT/MUOS/emulator/ppsspp"

export SDL_HQ_SCALER="$DC_SDL_SCALER"
export SDL_ROTATION="$DC_SDL_ROTATION"
export SDL_BLITTER_DISABLED="$DC_SDL_BLITTER_DISABLED"
export HOME=$PPSSPP_DIR

cd "$PPSSPP_DIR" || exit

echo "PPSSPP" >/tmp/fg_proc

case "$DC_DEV_NAME" in
	RG28XX)
		FB_SWITCH 720 960 32
		;;
	*)
		FB_SWITCH 960 720 32
		;;
esac

sed -i '/^GraphicsBackend\|^FailedGraphicsBackends\|^DisabledGraphicsBackends/d' "$PPSSPP_DIR/.config/ppsspp/PSP/SYSTEM/ppsspp.ini"

SDL_ASSERT=always_ignore SDL_GAMECONTROLLERCONFIG=$(grep "Deeplay" "/usr/lib/gamecontrollerdb.txt") ./PPSSPP

case "$DC_DEV_NAME" in
	RG*)
		echo 0 > "/sys/class/power_supply/axp2202-battery/nds_pwrkey"
		FB_SWITCH "$DC_SCR_WIDTH" "$DC_SCR_HEIGHT" 32
		;;
	*)
		FB_SWITCH "$DC_SCR_WIDTH" "$DC_SCR_HEIGHT" 32
		;;
esac

unset SDL_HQ_SCALER
unset SDL_ROTATION
unset SDL_BLITTER_DISABLED
