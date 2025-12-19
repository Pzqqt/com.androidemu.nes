.class public Lcom/androidemu/nes/KeyPreference;
.super Landroid/preference/DialogPreference;
.source "KeyPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field private newValue:I

.field private oldValue:I

.field private resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/androidemu/nes/KeyPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/androidemu/nes/KeyPreference;->resources:Landroid/content/res/Resources;

    .line 30
    const v0, 0x7f07009e

    invoke-virtual {p0, v0}, Lcom/androidemu/nes/KeyPreference;->setPositiveButtonText(I)V

    .line 31
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androidemu/nes/KeyPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 32
    return-void
.end method

.method private getKeyName(I)Ljava/lang/String;
    .locals 5
    .param p1, "keyCode"    # I

    .prologue
    packed-switch p1, :pswitch_data_0

    :pswitch_unknown
    iget-object v0, p0, Lcom/androidemu/nes/KeyPreference;->resources:Landroid/content/res/Resources;
    const v1, 0x7f07009d
    const/4 v2, 0x1
    new-array v2, v2, [Ljava/lang/Object;
    const/4 v3, 0x0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v4
    aput-object v4, v2, v3
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_none
    iget-object v0, p0, Lcom/androidemu/nes/KeyPreference;->resources:Landroid/content/res/Resources;
    const v1, 0x7f07009c
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    move-result-object v0
    goto :goto_0

    :pswitch_soft_left
    const-string v0, "SOFT_LEFT"
    goto :goto_0

    :pswitch_soft_right
    const-string v0, "SOFT_RIGHT"
    goto :goto_0

    :pswitch_call
    const-string v0, "CALL"
    goto :goto_0

    :pswitch_endcall
    const-string v0, "ENDCALL"
    goto :goto_0

    :pswitch_0
    const-string v0, "0"
    goto :goto_0

    :pswitch_1
    const-string v0, "1"
    goto :goto_0

    :pswitch_2
    const-string v0, "2"
    goto :goto_0

    :pswitch_3
    const-string v0, "3"
    goto :goto_0

    :pswitch_4
    const-string v0, "4"
    goto :goto_0

    :pswitch_5
    const-string v0, "5"
    goto :goto_0

    :pswitch_6
    const-string v0, "6"
    goto :goto_0

    :pswitch_7
    const-string v0, "7"
    goto :goto_0

    :pswitch_8
    const-string v0, "8"
    goto :goto_0

    :pswitch_9
    const-string v0, "9"
    goto :goto_0

    :pswitch_star
    const-string v0, "STAR"
    goto :goto_0

    :pswitch_pound
    const-string v0, "POUND"
    goto :goto_0

    :pswitch_dpad_up
    const-string v0, "DPAD_UP"
    goto :goto_0

    :pswitch_dpad_down
    const-string v0, "DPAD_DOWN"
    goto :goto_0

    :pswitch_dpad_left
    const-string v0, "DPAD_LEFT"
    goto :goto_0

    :pswitch_dpad_right
    const-string v0, "DPAD_RIGHT"
    goto :goto_0

    :pswitch_dpad_center
    const-string v0, "DPAD_CENTER"
    goto :goto_0

    :pswitch_volume_up
    const-string v0, "VOLUME_UP"
    goto :goto_0

    :pswitch_volume_down
    const-string v0, "VOLUME_DOWN"
    goto :goto_0

    :pswitch_camera
    const-string v0, "CAMERA"
    goto :goto_0

    :pswitch_clear
    const-string v0, "CLEAR"
    goto :goto_0

    :pswitch_a
    const-string v0, "A"
    goto :goto_0

    :pswitch_b
    const-string v0, "B"
    goto :goto_0

    :pswitch_c
    const-string v0, "C"
    goto :goto_0

    :pswitch_d
    const-string v0, "D"
    goto :goto_0

    :pswitch_e
    const-string v0, "E"
    goto :goto_0

    :pswitch_f
    const-string v0, "F"
    goto :goto_0

    :pswitch_g
    const-string v0, "G"
    goto :goto_0

    :pswitch_h
    const-string v0, "H"
    goto :goto_0

    :pswitch_i
    const-string v0, "I"
    goto :goto_0

    :pswitch_j
    const-string v0, "J"
    goto :goto_0

    :pswitch_k
    const-string v0, "K"
    goto :goto_0

    :pswitch_l
    const-string v0, "L"
    goto :goto_0

    :pswitch_m
    const-string v0, "M"
    goto :goto_0

    :pswitch_n
    const-string v0, "N"
    goto :goto_0

    :pswitch_o
    const-string v0, "O"
    goto :goto_0

    :pswitch_p
    const-string v0, "P"
    goto :goto_0

    :pswitch_q
    const-string v0, "Q"
    goto :goto_0

    :pswitch_r
    const-string v0, "R"
    goto :goto_0

    :pswitch_s
    const-string v0, "S"
    goto :goto_0

    :pswitch_t
    const-string v0, "T"
    goto :goto_0

    :pswitch_u
    const-string v0, "U"
    goto :goto_0

    :pswitch_v
    const-string v0, "V"
    goto :goto_0

    :pswitch_w
    const-string v0, "W"
    goto :goto_0

    :pswitch_x
    const-string v0, "X"
    goto :goto_0

    :pswitch_y
    const-string v0, "Y"
    goto :goto_0

    :pswitch_z
    const-string v0, "Z"
    goto :goto_0

    :pswitch_comma
    const-string v0, "COMMA"
    goto :goto_0

    :pswitch_period
    const-string v0, "PERIOD"
    goto :goto_0

    :pswitch_alt_left
    const-string v0, "ALT_LEFT"
    goto :goto_0

    :pswitch_alt_right
    const-string v0, "ALT_RIGHT"
    goto :goto_0

    :pswitch_shift_left
    const-string v0, "SHIFT_LEFT"
    goto :goto_0

    :pswitch_shift_right
    const-string v0, "SHIFT_RIGHT"
    goto :goto_0

    :pswitch_tab
    const-string v0, "TAB"
    goto :goto_0

    :pswitch_space
    const-string v0, "SPACE"
    goto :goto_0

    :pswitch_sym
    const-string v0, "SYM"
    goto :goto_0

    :pswitch_explorer
    const-string v0, "EXPLORER"
    goto :goto_0

    :pswitch_envelope
    const-string v0, "ENVELOPE"
    goto :goto_0

    :pswitch_enter
    const-string v0, "ENTER"
    goto :goto_0

    :pswitch_del
    const-string v0, "DEL"
    goto :goto_0

    :pswitch_grave
    const-string v0, "GRAVE"
    goto :goto_0

    :pswitch_minus
    const-string v0, "MINUS"
    goto :goto_0

    :pswitch_equals
    const-string v0, "EQUALS"
    goto :goto_0

    :pswitch_left_bracket
    const-string v0, "LEFT_BRACKET"
    goto :goto_0

    :pswitch_right_bracket
    const-string v0, "RIGHT_BRACKET"
    goto :goto_0

    :pswitch_backslash
    const-string v0, "BACKSLASH"
    goto :goto_0

    :pswitch_semicolon
    const-string v0, "SEMICOLON"
    goto :goto_0

    :pswitch_apostrophe
    const-string v0, "APOSTROPHE"
    goto :goto_0

    :pswitch_slash
    const-string v0, "SLASH"
    goto :goto_0

    :pswitch_at
    const-string v0, "AT"
    goto :goto_0

    :pswitch_num
    const-string v0, "NUM"
    goto :goto_0

    :pswitch_headsethook
    const-string v0, "HEADSETHOOK"
    goto :goto_0

    :pswitch_focus
    const-string v0, "FOCUS"
    goto :goto_0

    :pswitch_plus
    const-string v0, "PLUS"
    goto :goto_0

    :pswitch_notification
    const-string v0, "NOTIFICATION"
    goto :goto_0

    :pswitch_search
    const-string v0, "SEARCH"
    goto :goto_0

    :pswitch_media_play_pause
    const-string v0, "MEDIA_PLAY_PAUSE"
    goto :goto_0

    :pswitch_media_stop
    const-string v0, "MEDIA_STOP"
    goto :goto_0

    :pswitch_media_next
    const-string v0, "MEDIA_NEXT"
    goto :goto_0

    :pswitch_media_previous
    const-string v0, "MEDIA_PREVIOUS"
    goto :goto_0

    :pswitch_media_rewind
    const-string v0, "MEDIA_REWIND"
    goto :goto_0

    :pswitch_media_fast_forward
    const-string v0, "MEDIA_FAST_FORWARD"
    goto :goto_0

    :pswitch_mute
    const-string v0, "MUTE"
    goto :goto_0

    :pswitch_page_up
    const-string v0, "PAGE_UP"
    goto :goto_0

    :pswitch_page_down
    const-string v0, "PAGE_DOWN"
    goto :goto_0

    :pswitch_pictsymbols
    const-string v0, "PICTSYMBOLS"
    goto :goto_0

    :pswitch_switch_charset
    const-string v0, "SWITCH_CHARSET"
    goto :goto_0

    :pswitch_button_a
    const-string v0, "BUTTON_A"
    goto :goto_0

    :pswitch_button_b
    const-string v0, "BUTTON_B"
    goto :goto_0

    :pswitch_button_c
    const-string v0, "BUTTON_C"
    goto :goto_0

    :pswitch_button_x
    const-string v0, "BUTTON_X"
    goto :goto_0

    :pswitch_button_y
    const-string v0, "BUTTON_Y"
    goto :goto_0

    :pswitch_button_z
    const-string v0, "BUTTON_Z"
    goto :goto_0

    :pswitch_button_l1
    const-string v0, "BUTTON_L1"
    goto :goto_0

    :pswitch_button_r1
    const-string v0, "BUTTON_R1"
    goto :goto_0

    :pswitch_button_l2
    const-string v0, "BUTTON_L2"
    goto :goto_0

    :pswitch_button_r2
    const-string v0, "BUTTON_R2"
    goto :goto_0

    :pswitch_button_thumbl
    const-string v0, "BUTTON_THUMBL"
    goto :goto_0

    :pswitch_button_thumbr
    const-string v0, "BUTTON_THUMBR"
    goto :goto_0

    :pswitch_button_start
    const-string v0, "BUTTON_START"
    goto :goto_0

    :pswitch_button_select
    const-string v0, "BUTTON_SELECT"
    goto :goto_0

    :pswitch_button_mode
    const-string v0, "BUTTON_MODE"
    goto :goto_0

    :pswitch_escape
    const-string v0, "ESCAPE"
    goto :goto_0

    :pswitch_forward_del
    const-string v0, "FORWARD_DEL"
    goto :goto_0

    :pswitch_ctrl_left
    const-string v0, "CTRL_LEFT"
    goto :goto_0

    :pswitch_ctrl_right
    const-string v0, "CTRL_RIGHT"
    goto :goto_0

    :pswitch_caps_lock
    const-string v0, "CAPS_LOCK"
    goto :goto_0

    :pswitch_scroll_lock
    const-string v0, "SCROLL_LOCK"
    goto :goto_0

    :pswitch_meta_left
    const-string v0, "META_LEFT"
    goto :goto_0

    :pswitch_meta_right
    const-string v0, "META_RIGHT"
    goto :goto_0

    :pswitch_function
    const-string v0, "FUNCTION"
    goto :goto_0

    :pswitch_sysrq
    const-string v0, "SYSRQ"
    goto :goto_0

    :pswitch_break
    const-string v0, "BREAK"
    goto :goto_0

    :pswitch_move_home
    const-string v0, "MOVE_HOME"
    goto :goto_0

    :pswitch_move_end
    const-string v0, "MOVE_END"
    goto :goto_0

    :pswitch_insert
    const-string v0, "INSERT"
    goto :goto_0

    :pswitch_forward
    const-string v0, "FORWARD"
    goto :goto_0

    :pswitch_media_play
    const-string v0, "MEDIA_PLAY"
    goto :goto_0

    :pswitch_media_pause
    const-string v0, "MEDIA_PAUSE"
    goto :goto_0

    :pswitch_media_close
    const-string v0, "MEDIA_CLOSE"
    goto :goto_0

    :pswitch_media_eject
    const-string v0, "MEDIA_EJECT"
    goto :goto_0

    :pswitch_media_record
    const-string v0, "MEDIA_RECORD"
    goto :goto_0

    :pswitch_f1
    const-string v0, "F1"
    goto :goto_0

    :pswitch_f2
    const-string v0, "F2"
    goto :goto_0

    :pswitch_f3
    const-string v0, "F3"
    goto :goto_0

    :pswitch_f4
    const-string v0, "F4"
    goto :goto_0

    :pswitch_f5
    const-string v0, "F5"
    goto :goto_0

    :pswitch_f6
    const-string v0, "F6"
    goto :goto_0

    :pswitch_f7
    const-string v0, "F7"
    goto :goto_0

    :pswitch_f8
    const-string v0, "F8"
    goto :goto_0

    :pswitch_f9
    const-string v0, "F9"
    goto :goto_0

    :pswitch_f10
    const-string v0, "F10"
    goto :goto_0

    :pswitch_f11
    const-string v0, "F11"
    goto :goto_0

    :pswitch_f12
    const-string v0, "F12"
    goto :goto_0

    :pswitch_num_lock
    const-string v0, "NUM_LOCK"
    goto :goto_0

    :pswitch_numpad_0
    const-string v0, "NUMPAD_0"
    goto :goto_0

    :pswitch_numpad_1
    const-string v0, "NUMPAD_1"
    goto :goto_0

    :pswitch_numpad_2
    const-string v0, "NUMPAD_2"
    goto :goto_0

    :pswitch_numpad_3
    const-string v0, "NUMPAD_3"
    goto :goto_0

    :pswitch_numpad_4
    const-string v0, "NUMPAD_4"
    goto :goto_0

    :pswitch_numpad_5
    const-string v0, "NUMPAD_5"
    goto :goto_0

    :pswitch_numpad_6
    const-string v0, "NUMPAD_6"
    goto :goto_0

    :pswitch_numpad_7
    const-string v0, "NUMPAD_7"
    goto :goto_0

    :pswitch_numpad_8
    const-string v0, "NUMPAD_8"
    goto :goto_0

    :pswitch_numpad_9
    const-string v0, "NUMPAD_9"
    goto :goto_0

    :pswitch_numpad_divide
    const-string v0, "NUMPAD_DIVIDE"
    goto :goto_0

    :pswitch_numpad_multiply
    const-string v0, "NUMPAD_MULTIPLY"
    goto :goto_0

    :pswitch_numpad_subtract
    const-string v0, "NUMPAD_SUBTRACT"
    goto :goto_0

    :pswitch_numpad_add
    const-string v0, "NUMPAD_ADD"
    goto :goto_0

    :pswitch_numpad_dot
    const-string v0, "NUMPAD_DOT"
    goto :goto_0

    :pswitch_numpad_comma
    const-string v0, "NUMPAD_COMMA"
    goto :goto_0

    :pswitch_numpad_enter
    const-string v0, "NUMPAD_ENTER"
    goto :goto_0

    :pswitch_numpad_equals
    const-string v0, "NUMPAD_EQUALS"
    goto :goto_0

    :pswitch_numpad_left_paren
    const-string v0, "NUMPAD_LEFT_PAREN"
    goto :goto_0

    :pswitch_numpad_right_paren
    const-string v0, "NUMPAD_RIGHT_PAREN"
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_none		# 0: KEYCODE_UNKNOWN
        :pswitch_soft_left	# 1: KEYCODE_SOFT_LEFT
        :pswitch_soft_right	# 2: KEYCODE_SOFT_RIGHT
        :pswitch_unknown	# 3: KEYCODE_HOME
        :pswitch_unknown	# 4: KEYCODE_BACK
        :pswitch_call		# 5: KEYCODE_CALL
        :pswitch_endcall	# 6: KEYCODE_ENDCALL
        :pswitch_0		# 7: KEYCODE_0
        :pswitch_1		# 8: KEYCODE_1
        :pswitch_2		# 9: KEYCODE_2
        :pswitch_3		# 10: KEYCODE_3
        :pswitch_4		# 11: KEYCODE_4
        :pswitch_5		# 12: KEYCODE_5
        :pswitch_6		# 13: KEYCODE_6
        :pswitch_7		# 14: KEYCODE_7
        :pswitch_8		# 15: KEYCODE_8
        :pswitch_9		# 16: KEYCODE_9
        :pswitch_star		# 17: KEYCODE_STAR
        :pswitch_pound		# 18: KEYCODE_POUND
        :pswitch_dpad_up	# 19: KEYCODE_DPAD_UP
        :pswitch_dpad_down	# 20: KEYCODE_DPAD_DOWN
        :pswitch_dpad_left	# 21: KEYCODE_DPAD_LEFT
        :pswitch_dpad_right	# 22: KEYCODE_DPAD_RIGHT
        :pswitch_dpad_center	# 23: KEYCODE_DPAD_CENTER
        :pswitch_volume_up	# 24: KEYCODE_VOLUME_UP
        :pswitch_volume_down	# 25: KEYCODE_VOLUME_DOWN
        :pswitch_unknown	# 26: KEYCODE_POWER
        :pswitch_camera		# 27: KEYCODE_CAMERA
        :pswitch_clear		# 28: KEYCODE_CLEAR
        :pswitch_a		# 29: KEYCODE_A
        :pswitch_b		# 30: KEYCODE_B
        :pswitch_c		# 31: KEYCODE_C
        :pswitch_d		# 32: KEYCODE_D
        :pswitch_e		# 33: KEYCODE_E
        :pswitch_f		# 34: KEYCODE_F
        :pswitch_g		# 35: KEYCODE_G
        :pswitch_h		# 36: KEYCODE_H
        :pswitch_i		# 37: KEYCODE_I
        :pswitch_j		# 38: KEYCODE_J
        :pswitch_k		# 39: KEYCODE_K
        :pswitch_l		# 40: KEYCODE_L
        :pswitch_m		# 41: KEYCODE_M
        :pswitch_n		# 42: KEYCODE_N
        :pswitch_o		# 43: KEYCODE_O
        :pswitch_p		# 44: KEYCODE_P
        :pswitch_q		# 45: KEYCODE_Q
        :pswitch_r		# 46: KEYCODE_R
        :pswitch_s		# 47: KEYCODE_S
        :pswitch_t		# 48: KEYCODE_T
        :pswitch_u		# 49: KEYCODE_U
        :pswitch_v		# 50: KEYCODE_V
        :pswitch_w		# 51: KEYCODE_W
        :pswitch_x		# 52: KEYCODE_X
        :pswitch_y		# 53: KEYCODE_Y
        :pswitch_z		# 54: KEYCODE_Z
        :pswitch_comma		# 55: KEYCODE_COMMA
        :pswitch_period		# 56: KEYCODE_PERIOD
        :pswitch_alt_left	# 57: KEYCODE_ALT_LEFT
        :pswitch_alt_right	# 58: KEYCODE_ALT_RIGHT
        :pswitch_shift_left	# 59: KEYCODE_SHIFT_LEFT
        :pswitch_shift_right	# 60: KEYCODE_SHIFT_RIGHT
        :pswitch_tab		# 61: KEYCODE_TAB
        :pswitch_space		# 62: KEYCODE_SPACE
        :pswitch_sym		# 63: KEYCODE_SYM
        :pswitch_explorer	# 64: KEYCODE_EXPLORER
        :pswitch_envelope	# 65: KEYCODE_ENVELOPE
        :pswitch_enter		# 66: KEYCODE_ENTER
        :pswitch_del		# 67: KEYCODE_DEL
        :pswitch_grave		# 68: KEYCODE_GRAVE
        :pswitch_minus		# 69: KEYCODE_MINUS
        :pswitch_equals		# 70: KEYCODE_EQUALS
        :pswitch_left_bracket	# 71: KEYCODE_LEFT_BRACKET
        :pswitch_right_bracket	# 72: KEYCODE_RIGHT_BRACKET
        :pswitch_backslash	# 73: KEYCODE_BACKSLASH
        :pswitch_semicolon	# 74: KEYCODE_SEMICOLON
        :pswitch_apostrophe	# 75: KEYCODE_APOSTROPHE
        :pswitch_slash		# 76: KEYCODE_SLASH
        :pswitch_at		# 77: KEYCODE_AT
        :pswitch_num		# 78: KEYCODE_NUM
        :pswitch_headsethook	# 79: KEYCODE_HEADSETHOOK
        :pswitch_focus		# 80: KEYCODE_FOCUS
        :pswitch_plus		# 81: KEYCODE_PLUS
        :pswitch_unknown	# 82: KEYCODE_MENU
        :pswitch_notification	# 83: KEYCODE_NOTIFICATION
        :pswitch_search		# 84: KEYCODE_SEARCH
        :pswitch_media_play_pause	# 85: KEYCODE_MEDIA_PLAY_PAUSE
        :pswitch_media_stop		# 86: KEYCODE_MEDIA_STOP
        :pswitch_media_next		# 87: KEYCODE_MEDIA_NEXT
        :pswitch_media_previous		# 88: KEYCODE_MEDIA_PREVIOUS
        :pswitch_media_rewind		# 89: KEYCODE_MEDIA_REWIND
        :pswitch_media_fast_forward	# 90: KEYCODE_MEDIA_FAST_FORWARD
        :pswitch_mute		# 91: KEYCODE_MUTE
        :pswitch_page_up	# 92: KEYCODE_PAGE_UP
        :pswitch_page_down	# 93: KEYCODE_PAGE_DOWN
        :pswitch_pictsymbols	# 94: KEYCODE_PICTSYMBOLS
        :pswitch_switch_charset	# 95: KEYCODE_SWITCH_CHARSET
        :pswitch_button_a	# 96: KEYCODE_BUTTON_A
        :pswitch_button_b	# 97: KEYCODE_BUTTON_B
        :pswitch_button_c	# 98: KEYCODE_BUTTON_C
        :pswitch_button_x	# 99: KEYCODE_BUTTON_X
        :pswitch_button_y	# 100: KEYCODE_BUTTON_Y
        :pswitch_button_z	# 101: KEYCODE_BUTTON_Z
        :pswitch_button_l1	# 102: KEYCODE_BUTTON_L1
        :pswitch_button_r1	# 103: KEYCODE_BUTTON_R1
        :pswitch_button_l2	# 104: KEYCODE_BUTTON_L2
        :pswitch_button_r2	# 105: KEYCODE_BUTTON_R2
        :pswitch_button_thumbl	# 106: KEYCODE_BUTTON_THUMBL
        :pswitch_button_thumbr	# 107: KEYCODE_BUTTON_THUMBR
        :pswitch_button_start	# 108: KEYCODE_BUTTON_START
        :pswitch_button_select	# 109: KEYCODE_BUTTON_SELECT
        :pswitch_button_mode	# 110: KEYCODE_BUTTON_MODE
        :pswitch_escape		# 111: KEYCODE_ESCAPE
        :pswitch_forward_del	# 112: KEYCODE_FORWARD_DEL
        :pswitch_ctrl_left	# 113: KEYCODE_CTRL_LEFT
        :pswitch_ctrl_right	# 114: KEYCODE_CTRL_RIGHT
        :pswitch_caps_lock	# 115: KEYCODE_CAPS_LOCK
        :pswitch_scroll_lock	# 116: KEYCODE_SCROLL_LOCK
        :pswitch_meta_left	# 117: KEYCODE_META_LEFT
        :pswitch_meta_right	# 118: KEYCODE_META_RIGHT
        :pswitch_function	# 119: KEYCODE_FUNCTION
        :pswitch_sysrq		# 120: KEYCODE_SYSRQ
        :pswitch_break		# 121: KEYCODE_BREAK
        :pswitch_move_home	# 122: KEYCODE_MOVE_HOME
        :pswitch_move_end	# 123: KEYCODE_MOVE_END
        :pswitch_insert		# 124: KEYCODE_INSERT
        :pswitch_forward	# 125: KEYCODE_FORWARD
        :pswitch_media_play	# 126: KEYCODE_MEDIA_PLAY
        :pswitch_media_pause	# 127: KEYCODE_MEDIA_PAUSE
        :pswitch_media_close	# 128: KEYCODE_MEDIA_CLOSE
        :pswitch_media_eject	# 129: KEYCODE_MEDIA_EJECT
        :pswitch_media_record	# 130: KEYCODE_MEDIA_RECORD
        :pswitch_f1		# 131: KEYCODE_F1
        :pswitch_f2		# 132: KEYCODE_F2
        :pswitch_f3		# 133: KEYCODE_F3
        :pswitch_f4		# 134: KEYCODE_F4
        :pswitch_f5		# 135: KEYCODE_F5
        :pswitch_f6		# 136: KEYCODE_F6
        :pswitch_f7		# 137: KEYCODE_F7
        :pswitch_f8		# 138: KEYCODE_F8
        :pswitch_f9		# 139: KEYCODE_F9
        :pswitch_f10		# 140: KEYCODE_F10
        :pswitch_f11		# 141: KEYCODE_F11
        :pswitch_f12		# 142: KEYCODE_F12
        :pswitch_num_lock	# 143: KEYCODE_NUM_LOCK
        :pswitch_numpad_0	# 144: KEYCODE_NUMPAD_0
        :pswitch_numpad_1	# 145: KEYCODE_NUMPAD_1
        :pswitch_numpad_2	# 146: KEYCODE_NUMPAD_2
        :pswitch_numpad_3	# 147: KEYCODE_NUMPAD_3
        :pswitch_numpad_4	# 148: KEYCODE_NUMPAD_4
        :pswitch_numpad_5	# 149: KEYCODE_NUMPAD_5
        :pswitch_numpad_6	# 150: KEYCODE_NUMPAD_6
        :pswitch_numpad_7	# 151: KEYCODE_NUMPAD_7
        :pswitch_numpad_8	# 152: KEYCODE_NUMPAD_8
        :pswitch_numpad_9	# 153: KEYCODE_NUMPAD_9
        :pswitch_numpad_divide	# 154: KEYCODE_NUMPAD_DIVIDE
        :pswitch_numpad_multiply	# 155: KEYCODE_NUMPAD_MULTIPLY
        :pswitch_numpad_subtract	# 156: KEYCODE_NUMPAD_SUBTRACT
        :pswitch_numpad_add		# 157: KEYCODE_NUMPAD_ADD
        :pswitch_numpad_dot		# 158: KEYCODE_NUMPAD_DOT
        :pswitch_numpad_comma		# 159: KEYCODE_NUMPAD_COMMA
        :pswitch_numpad_enter		# 160: KEYCODE_NUMPAD_ENTER
        :pswitch_numpad_equals		# 161: KEYCODE_NUMPAD_EQUALS
        :pswitch_numpad_left_paren	# 162: KEYCODE_NUMPAD_LEFT_PAREN
        :pswitch_numpad_right_paren	# 163: KEYCODE_NUMPAD_RIGHT_PAREN
    .end packed-switch
.end method

.method private static isKeyConfigurable(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .prologue
    .line 112
    sparse-switch p0, :sswitch_data_0

    .line 118
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 116
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 112
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0    # 3, KEYCODE_HOME
        0x4 -> :sswitch_0    # 4, KEYCODE_BACK
        0x1a -> :sswitch_0    # 26, KEYCODE_POWER
        0x52 -> :sswitch_0    # 82, KEYCODE_MENU
    .end sparse-switch
.end method

.method private updateSummary()V
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/androidemu/nes/KeyPreference;->newValue:I

    invoke-direct {p0, v0}, Lcom/androidemu/nes/KeyPreference;->getKeyName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androidemu/nes/KeyPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 109
    return-void
.end method


# virtual methods
.method public final getKeyValue()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/androidemu/nes/KeyPreference;->newValue:I

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 64
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/androidemu/nes/KeyPreference;->newValue:I

    .line 67
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/DialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 68
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .param p1, "positiveResult"    # Z

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 74
    if-nez p1, :cond_0

    .line 75
    iget v0, p0, Lcom/androidemu/nes/KeyPreference;->oldValue:I

    iput v0, p0, Lcom/androidemu/nes/KeyPreference;->newValue:I

    .line 81
    :goto_0
    return-void

    .line 77
    :cond_0
    iget v0, p0, Lcom/androidemu/nes/KeyPreference;->newValue:I

    iput v0, p0, Lcom/androidemu/nes/KeyPreference;->oldValue:I

    .line 78
    iget v0, p0, Lcom/androidemu/nes/KeyPreference;->newValue:I

    invoke-virtual {p0, v0}, Lcom/androidemu/nes/KeyPreference;->persistInt(I)Z

    .line 79
    invoke-direct {p0}, Lcom/androidemu/nes/KeyPreference;->updateSummary()V

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 98
    invoke-static {p2}, Lcom/androidemu/nes/KeyPreference;->isKeyConfigurable(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    const/4 v0, 0x0

    .line 104
    :goto_0
    return v0

    .line 101
    :cond_0
    iput p2, p0, Lcom/androidemu/nes/KeyPreference;->newValue:I

    .line 102
    const/4 v0, -0x1

    invoke-super {p0, p1, v0}, Landroid/preference/DialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 103
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 104
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 47
    const v0, 0x7f07009b

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 48
    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 91
    if-eqz p1, :cond_0

    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/androidemu/nes/KeyPreference;->getPersistedInt(I)I

    move-result v0

    .line 91
    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    iput v0, p0, Lcom/androidemu/nes/KeyPreference;->oldValue:I

    .line 93
    iget v0, p0, Lcom/androidemu/nes/KeyPreference;->oldValue:I

    iput v0, p0, Lcom/androidemu/nes/KeyPreference;->newValue:I

    .line 94
    invoke-direct {p0}, Lcom/androidemu/nes/KeyPreference;->updateSummary()V

    .line 95
    return-void

    .line 92
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "defaultValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public final setKey(I)V
    .locals 0
    .param p1, "key"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/androidemu/nes/KeyPreference;->newValue:I

    iput p1, p0, Lcom/androidemu/nes/KeyPreference;->oldValue:I

    .line 40
    invoke-direct {p0}, Lcom/androidemu/nes/KeyPreference;->updateSummary()V

    .line 41
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/androidemu/nes/KeyPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 55
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 57
    const/high16 v2, 0x20000

    .line 56
    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 59
    :cond_0
    return-void
.end method
