#!/bin/sh

# DEVICE CONFIG - INPUT
DC_INP_EVENT_0=$(PARSE_INI "$DEVICE_CONFIG" "input" "ev0")
DC_INP_EVENT_1=$(PARSE_INI "$DEVICE_CONFIG" "input" "ev1")
DC_INP_AXIS_MIN=$(PARSE_INI "$DEVICE_CONFIG" "input" "axis_min")
DC_INP_AXIS_MAX=$(PARSE_INI "$DEVICE_CONFIG" "input" "axis_max")

# DEVICE CONFIG - RAW INPUT - DPAD
DC_INP_RAW_DPAD_UP=$(PARSE_INI "$DEVICE_CONFIG" "raw_input.dpad" "dp_up")
DC_INP_RAW_DPAD_DOWN=$(PARSE_INI "$DEVICE_CONFIG" "raw_input.dpad" "dp_down")
DC_INP_RAW_DPAD_LEFT=$(PARSE_INI "$DEVICE_CONFIG" "raw_input.dpad" "dp_left")
DC_INP_RAW_DPAD_RIGHT=$(PARSE_INI "$DEVICE_CONFIG" "raw_input.dpad" "dp_right")

# DEVICE CONFIG - RAW INPUT - ANALOG - LEFT
DC_INP_RAW_ANALOG_LEFT_UP=$(PARSE_INI "$DEVICE_CONFIG" "raw_input.analog.left" "an_left_up")
DC_INP_RAW_ANALOG_LEFT_DOWN=$(PARSE_INI "$DEVICE_CONFIG" "raw_input.analog.left" "an_left_down")
DC_INP_RAW_ANALOG_LEFT_LEFT=$(PARSE_INI "$DEVICE_CONFIG" "raw_input.analog.left" "an_left_left")
DC_INP_RAW_ANALOG_LEFT_RIGHT=$(PARSE_INI "$DEVICE_CONFIG" "raw_input.analog.left" "an_left_right")
DC_INP_RAW_ANALOG_LEFT_CLICK=$(PARSE_INI "$DEVICE_CONFIG" "raw_input.analog.left" "an_left_click")

# DEVICE CONFIG - RAW INPUT - ANALOG - RIGHT
DC_INP_RAW_ANALOG_RIGHT_UP=$(PARSE_INI "$DEVICE_CONFIG" "raw_input.analog.right" "an_right_up")
DC_INP_RAW_ANALOG_RIGHT_DOWN=$(PARSE_INI "$DEVICE_CONFIG" "raw_input.analog.right" "an_right_down")
DC_INP_RAW_ANALOG_RIGHT_LEFT=$(PARSE_INI "$DEVICE_CONFIG" "raw_input.analog.right" "an_right_left")
DC_INP_RAW_ANALOG_RIGHT_RIGHT=$(PARSE_INI "$DEVICE_CONFIG" "raw_input.analog.right" "an_right_right")
DC_INP_RAW_ANALOG_RIGHT_CLICK=$(PARSE_INI "$DEVICE_CONFIG" "raw_input.analog.right" "an_right_click")

# DEVICE CONFIG - RAW INPUT - BUTTON
DC_INP_RAW_BUTTON_A=$(PARSE_INI "$DEVICE_CONFIG" "raw_input.button" "a")
DC_INP_RAW_BUTTON_B=$(PARSE_INI "$DEVICE_CONFIG" "raw_input.button" "b")
DC_INP_RAW_BUTTON_C=$(PARSE_INI "$DEVICE_CONFIG" "raw_input.button" "c")
DC_INP_RAW_BUTTON_X=$(PARSE_INI "$DEVICE_CONFIG" "raw_input.button" "x")
DC_INP_RAW_BUTTON_Y=$(PARSE_INI "$DEVICE_CONFIG" "raw_input.button" "y")
DC_INP_RAW_BUTTON_Z=$(PARSE_INI "$DEVICE_CONFIG" "raw_input.button" "z")
DC_INP_RAW_BUTTON_L1=$(PARSE_INI "$DEVICE_CONFIG" "raw_input.button" "l1")
DC_INP_RAW_BUTTON_L2=$(PARSE_INI "$DEVICE_CONFIG" "raw_input.button" "l2")
DC_INP_RAW_BUTTON_L3=$(PARSE_INI "$DEVICE_CONFIG" "raw_input.button" "l3")
DC_INP_RAW_BUTTON_R1=$(PARSE_INI "$DEVICE_CONFIG" "raw_input.button" "r1")
DC_INP_RAW_BUTTON_R2=$(PARSE_INI "$DEVICE_CONFIG" "raw_input.button" "r2")
DC_INP_RAW_BUTTON_R3=$(PARSE_INI "$DEVICE_CONFIG" "raw_input.button" "r3")
DC_INP_RAW_BUTTON_MENU_SHORT=$(PARSE_INI "$DEVICE_CONFIG" "raw_input.button" "menu_short")
DC_INP_RAW_BUTTON_MENU_LONG=$(PARSE_INI "$DEVICE_CONFIG" "raw_input.button" "menu_long")
DC_INP_RAW_BUTTON_SELECT=$(PARSE_INI "$DEVICE_CONFIG" "raw_input.button" "select")
DC_INP_RAW_BUTTON_START=$(PARSE_INI "$DEVICE_CONFIG" "raw_input.button" "start")
DC_INP_RAW_BUTTON_POWER_SHORT=$(PARSE_INI "$DEVICE_CONFIG" "raw_input.button" "power_short")
DC_INP_RAW_BUTTON_POWER_LONG=$(PARSE_INI "$DEVICE_CONFIG" "raw_input.button" "power_long")
DC_INP_RAW_BUTTON_VOL_UP=$(PARSE_INI "$DEVICE_CONFIG" "raw_input.button" "vol_up")
DC_INP_RAW_BUTTON_VOL_DOWN=$(PARSE_INI "$DEVICE_CONFIG" "raw_input.button" "vol_down")

export DC_INP_EVENT_0
export DC_INP_EVENT_1
export DC_INP_AXIS_MIN
export DC_INP_AXIS_MAX

export DC_INP_RAW_DPAD_UP
export DC_INP_RAW_DPAD_DOWN
export DC_INP_RAW_DPAD_LEFT
export DC_INP_RAW_DPAD_RIGHT

export DC_INP_RAW_ANALOG_LEFT_UP
export DC_INP_RAW_ANALOG_LEFT_DOWN
export DC_INP_RAW_ANALOG_LEFT_LEFT
export DC_INP_RAW_ANALOG_LEFT_RIGHT
export DC_INP_RAW_ANALOG_LEFT_CLICK

export DC_INP_RAW_ANALOG_RIGHT_UP
export DC_INP_RAW_ANALOG_RIGHT_DOWN
export DC_INP_RAW_ANALOG_RIGHT_LEFT
export DC_INP_RAW_ANALOG_RIGHT_RIGHT
export DC_INP_RAW_ANALOG_RIGHT_CLICK

export DC_INP_RAW_BUTTON_A
export DC_INP_RAW_BUTTON_B
export DC_INP_RAW_BUTTON_C
export DC_INP_RAW_BUTTON_X
export DC_INP_RAW_BUTTON_Y
export DC_INP_RAW_BUTTON_Z
export DC_INP_RAW_BUTTON_L1
export DC_INP_RAW_BUTTON_L2
export DC_INP_RAW_BUTTON_L3
export DC_INP_RAW_BUTTON_R1
export DC_INP_RAW_BUTTON_R2
export DC_INP_RAW_BUTTON_R3
export DC_INP_RAW_BUTTON_MENU_SHORT
export DC_INP_RAW_BUTTON_MENU_LONG
export DC_INP_RAW_BUTTON_SELECT
export DC_INP_RAW_BUTTON_START
export DC_INP_RAW_BUTTON_POWER_SHORT
export DC_INP_RAW_BUTTON_POWER_LONG
export DC_INP_RAW_BUTTON_VOL_UP
export DC_INP_RAW_BUTTON_VOL_DOWN
