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
    .locals 2
    .param p1, "keyCode"    # I

    .prologue
    .line 122
    packed-switch p1, :pswitch_data_0

    .line 189
    :pswitch_0
    iget-object v0, p0, Lcom/androidemu/nes/KeyPreference;->resources:Landroid/content/res/Resources;

    const v1, 0x7f07009d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 123
    :pswitch_1
    const-string v0, "A"

    goto :goto_0

    .line 124
    :pswitch_2
    const-string v0, "B"

    goto :goto_0

    .line 125
    :pswitch_3
    const-string v0, "C"

    goto :goto_0

    .line 126
    :pswitch_4
    const-string v0, "D"

    goto :goto_0

    .line 127
    :pswitch_5
    const-string v0, "E"

    goto :goto_0

    .line 128
    :pswitch_6
    const-string v0, "F"

    goto :goto_0

    .line 129
    :pswitch_7
    const-string v0, "G"

    goto :goto_0

    .line 130
    :pswitch_8
    const-string v0, "H"

    goto :goto_0

    .line 131
    :pswitch_9
    const-string v0, "I"

    goto :goto_0

    .line 132
    :pswitch_a
    const-string v0, "J"

    goto :goto_0

    .line 133
    :pswitch_b
    const-string v0, "K"

    goto :goto_0

    .line 134
    :pswitch_c
    const-string v0, "L"

    goto :goto_0

    .line 135
    :pswitch_d
    const-string v0, "M"

    goto :goto_0

    .line 136
    :pswitch_e
    const-string v0, "N"

    goto :goto_0

    .line 137
    :pswitch_f
    const-string v0, "O"

    goto :goto_0

    .line 138
    :pswitch_10
    const-string v0, "P"

    goto :goto_0

    .line 139
    :pswitch_11
    const-string v0, "Q"

    goto :goto_0

    .line 140
    :pswitch_12
    const-string v0, "R"

    goto :goto_0

    .line 141
    :pswitch_13
    const-string v0, "S"

    goto :goto_0

    .line 142
    :pswitch_14
    const-string v0, "T"

    goto :goto_0

    .line 143
    :pswitch_15
    const-string v0, "U"

    goto :goto_0

    .line 144
    :pswitch_16
    const-string v0, "V"

    goto :goto_0

    .line 145
    :pswitch_17
    const-string v0, "W"

    goto :goto_0

    .line 146
    :pswitch_18
    const-string v0, "X"

    goto :goto_0

    .line 147
    :pswitch_19
    const-string v0, "Y"

    goto :goto_0

    .line 148
    :pswitch_1a
    const-string v0, "Z"

    goto :goto_0

    .line 150
    :pswitch_1b
    const-string v0, "0"

    goto :goto_0

    .line 151
    :pswitch_1c
    const-string v0, "1"

    goto :goto_0

    .line 152
    :pswitch_1d
    const-string v0, "2"

    goto :goto_0

    .line 153
    :pswitch_1e
    const-string v0, "3"

    goto :goto_0

    .line 154
    :pswitch_1f
    const-string v0, "4"

    goto :goto_0

    .line 155
    :pswitch_20
    const-string v0, "5"

    goto :goto_0

    .line 156
    :pswitch_21
    const-string v0, "6"

    goto :goto_0

    .line 157
    :pswitch_22
    const-string v0, "7"

    goto :goto_0

    .line 158
    :pswitch_23
    const-string v0, "8"

    goto :goto_0

    .line 159
    :pswitch_24
    const-string v0, "9"

    goto :goto_0

    .line 161
    :pswitch_25
    const-string v0, "ALT (left)"

    goto :goto_0

    .line 162
    :pswitch_26
    const-string v0, "ALT (right)"

    goto :goto_0

    .line 163
    :pswitch_27
    const-string v0, "SHIFT (left)"

    goto :goto_0

    .line 164
    :pswitch_28
    const-string v0, "SHIFT (right)"

    goto :goto_0

    .line 165
    :pswitch_29
    const-string v0, "SPACE"

    goto :goto_0

    .line 166
    :pswitch_2a
    const-string v0, "DEL"

    goto :goto_0

    .line 167
    :pswitch_2b
    const-string v0, "ENTER"

    goto/16 :goto_0

    .line 168
    :pswitch_2c
    const-string v0, "@"

    goto/16 :goto_0

    .line 169
    :pswitch_2d
    const-string v0, "."

    goto/16 :goto_0

    .line 170
    :pswitch_2e
    const-string v0, ","

    goto/16 :goto_0

    .line 172
    :pswitch_2f
    const-string v0, "DPAD Center"

    goto/16 :goto_0

    .line 173
    :pswitch_30
    const-string v0, "DPAD Up"

    goto/16 :goto_0

    .line 174
    :pswitch_31
    const-string v0, "DPAD Down"

    goto/16 :goto_0

    .line 175
    :pswitch_32
    const-string v0, "DPAD Left"

    goto/16 :goto_0

    .line 176
    :pswitch_33
    const-string v0, "DPAD Right"

    goto/16 :goto_0

    .line 178
    :pswitch_34
    const-string v0, "BACK"

    goto/16 :goto_0

    .line 179
    :pswitch_35
    const-string v0, "CALL"

    goto/16 :goto_0

    .line 180
    :pswitch_36
    const-string v0, "CAMERA"

    goto/16 :goto_0

    .line 181
    :pswitch_37
    const-string v0, "FOCUS"

    goto/16 :goto_0

    .line 182
    :pswitch_38
    const-string v0, "SEARCH"

    goto/16 :goto_0

    .line 183
    :pswitch_39
    const-string v0, "Volume UP"

    goto/16 :goto_0

    .line 184
    :pswitch_3a
    const-string v0, "Volume DOWN"

    goto/16 :goto_0

    .line 187
    :pswitch_3b
    iget-object v0, p0, Lcom/androidemu/nes/KeyPreference;->resources:Landroid/content/res/Resources;

    const v1, 0x7f07009c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 122
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_34
        :pswitch_35
        :pswitch_0
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_0
        :pswitch_0
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_2f
        :pswitch_39
        :pswitch_3a
        :pswitch_0
        :pswitch_36
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_2e
        :pswitch_2d
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_0
        :pswitch_29
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2b
        :pswitch_2a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2c
        :pswitch_0
        :pswitch_0
        :pswitch_37
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_38
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
