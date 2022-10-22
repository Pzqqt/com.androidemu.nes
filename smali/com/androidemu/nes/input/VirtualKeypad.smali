.class public Lcom/androidemu/nes/input/VirtualKeypad;
.super Ljava/lang/Object;
.source "VirtualKeypad.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidemu/nes/input/VirtualKeypad$Control;
    }
.end annotation


# static fields
.field private static final BUTTONS:[I

.field private static final DPAD_4WAY:[I

.field private static final DPAD_DEADZONE_VALUES:[F

.field private static final EXTRA_BUTTONS:[I


# instance fields
.field private buttons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

.field private context:Landroid/content/Context;

.field private controls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/androidemu/nes/input/VirtualKeypad$Control;",
            ">;"
        }
    .end annotation
.end field

.field private dpad:Lcom/androidemu/nes/input/VirtualKeypad$Control;

.field private dpad4Way:Z

.field private dpadDeadZone:F

.field private emulator:Lcom/androidemu/Emulator;

.field private extraButtons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

.field private gameKeyListener:Lcom/androidemu/nes/input/GameKeyListener;

.field private inBetweenPress:Z

.field private keyStates:I

.field private pointSizeThreshold:F

.field private scaleX:F

.field private scaleY:F

.field private selectStart:Lcom/androidemu/nes/input/VirtualKeypad$Control;

.field private transparency:I

.field private vibrator:Landroid/os/Vibrator;

.field private vibratorEnabled:Z

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/androidemu/nes/input/VirtualKeypad;->DPAD_4WAY:[I

    .line 30
    const/4 v0, 0x5

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/androidemu/nes/input/VirtualKeypad;->DPAD_DEADZONE_VALUES:[F

    .line 315
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/androidemu/nes/input/VirtualKeypad;->BUTTONS:[I

    .line 319
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/androidemu/nes/input/VirtualKeypad;->EXTRA_BUTTONS:[I

    return-void

    .line 23
    :array_0
    .array-data 4
        0x40
        0x10
        0x80
        0x20
    .end array-data

    .line 30
    :array_1
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3e0f5c29    # 0.14f
        0x3e2ab368    # 0.1667f
        0x3e4ccccd    # 0.2f
        0x3e800000    # 0.25f
    .end array-data

    .line 315
    :array_2
    .array-data 4
        0x2
        0x1
    .end array-data

    .line 319
    :array_3
    .array-data 4
        0x200
        0x100
    .end array-data
.end method

.method public constructor <init>(Landroid/view/View;Lcom/androidemu/nes/input/GameKeyListener;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "l"    # Lcom/androidemu/nes/input/GameKeyListener;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget-object v0, Lcom/androidemu/nes/input/VirtualKeypad;->DPAD_DEADZONE_VALUES:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p0, Lcom/androidemu/nes/input/VirtualKeypad;->dpadDeadZone:F

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/androidemu/nes/input/VirtualKeypad;->controls:Ljava/util/ArrayList;

    .line 55
    invoke-static {}, Lcom/androidemu/Emulator;->getInstance()Lcom/androidemu/Emulator;

    move-result-object v0

    iput-object v0, p0, Lcom/androidemu/nes/input/VirtualKeypad;->emulator:Lcom/androidemu/Emulator;

    .line 58
    iput-object p1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->view:Landroid/view/View;

    .line 59
    iget-object v0, p0, Lcom/androidemu/nes/input/VirtualKeypad;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/androidemu/nes/input/VirtualKeypad;->context:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/androidemu/nes/input/VirtualKeypad;->gameKeyListener:Lcom/androidemu/nes/input/GameKeyListener;

    .line 62
    iget-object v0, p0, Lcom/androidemu/nes/input/VirtualKeypad;->context:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/androidemu/nes/input/VirtualKeypad;->vibrator:Landroid/os/Vibrator;

    .line 65
    const v0, 0x7f020002

    invoke-direct {p0, v0}, Lcom/androidemu/nes/input/VirtualKeypad;->createControl(I)Lcom/androidemu/nes/input/VirtualKeypad$Control;

    move-result-object v0

    iput-object v0, p0, Lcom/androidemu/nes/input/VirtualKeypad;->dpad:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    .line 66
    const v0, 0x7f020001

    invoke-direct {p0, v0}, Lcom/androidemu/nes/input/VirtualKeypad;->createControl(I)Lcom/androidemu/nes/input/VirtualKeypad$Control;

    move-result-object v0

    iput-object v0, p0, Lcom/androidemu/nes/input/VirtualKeypad;->buttons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    .line 67
    const v0, 0x7f020003

    invoke-direct {p0, v0}, Lcom/androidemu/nes/input/VirtualKeypad;->createControl(I)Lcom/androidemu/nes/input/VirtualKeypad$Control;

    move-result-object v0

    iput-object v0, p0, Lcom/androidemu/nes/input/VirtualKeypad;->extraButtons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    .line 68
    const v0, 0x7f02000e

    invoke-direct {p0, v0}, Lcom/androidemu/nes/input/VirtualKeypad;->createControl(I)Lcom/androidemu/nes/input/VirtualKeypad$Control;

    move-result-object v0

    iput-object v0, p0, Lcom/androidemu/nes/input/VirtualKeypad;->selectStart:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    .line 69
    return-void
.end method

.method private createControl(I)Lcom/androidemu/nes/input/VirtualKeypad$Control;
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 142
    new-instance v0, Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-direct {v0, p1}, Lcom/androidemu/nes/input/VirtualKeypad$Control;-><init>(I)V

    .line 143
    .local v0, "c":Lcom/androidemu/nes/input/VirtualKeypad$Control;
    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->controls:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    return-object v0
.end method

.method private findControl(FF)Lcom/androidemu/nes/input/VirtualKeypad$Control;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 308
    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad;->controls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidemu/nes/input/VirtualKeypad$Control;

    .line 309
    .local v0, "c":Lcom/androidemu/nes/input/VirtualKeypad$Control;
    invoke-virtual {v0, p1, p2}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->hitTest(FF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 312
    .end local v0    # "c":Lcom/androidemu/nes/input/VirtualKeypad$Control;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private get4WayDirection(FF)I
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    .line 244
    sub-float/2addr p1, v0

    .line 245
    sub-float/2addr p2, v0

    .line 247
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 248
    cmpg-float v0, p1, v2

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 249
    :goto_0
    return v0

    .line 248
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 249
    :cond_1
    cmpg-float v0, p2, v2

    if-gez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private getButtonsStates([IFFF)I
    .locals 4
    .param p1, "buttons"    # [I
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "size"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 275
    iget v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->pointSizeThreshold:F

    cmpl-float v1, p4, v1

    if-lez v1, :cond_1

    .line 276
    aget v1, p1, v2

    aget v2, p1, v3

    or-int v0, v1, v2

    .line 286
    :cond_0
    :goto_0
    return v0

    .line 278
    :cond_1
    iget-boolean v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->inBetweenPress:Z

    if-eqz v1, :cond_3

    .line 279
    const/4 v0, 0x0

    .line 280
    .local v0, "states":I
    const v1, 0x3f147ae1    # 0.58f

    cmpg-float v1, p2, v1

    if-gez v1, :cond_2

    .line 281
    aget v1, p1, v2

    or-int/2addr v0, v1

    .line 282
    :cond_2
    const v1, 0x3ed70a3d    # 0.42f

    cmpl-float v1, p2, v1

    if-lez v1, :cond_0

    .line 283
    aget v1, p1, v3

    or-int/2addr v0, v1

    goto :goto_0

    .line 286
    .end local v0    # "states":I
    :cond_3
    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v1, p2, v1

    if-gez v1, :cond_4

    aget v1, p1, v2

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_4
    aget v1, p1, v3

    goto :goto_1
.end method

.method private static getControlScale(Landroid/content/SharedPreferences;)F
    .locals 3
    .param p0, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 133
    const-string v1, "vkeypadSize"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "value":Ljava/lang/String;
    const-string v1, "small"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    const/high16 v1, 0x3f800000    # 1.0f

    .line 138
    :goto_0
    return v1

    .line 136
    :cond_0
    const-string v1, "large"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    const v1, 0x3faaaa8f

    goto :goto_0

    .line 138
    :cond_1
    const v1, 0x3f99999a    # 1.2f

    goto :goto_0
.end method

.method private getControlStates(Lcom/androidemu/nes/input/VirtualKeypad$Control;FFF)I
    .locals 2
    .param p1, "c"    # Lcom/androidemu/nes/input/VirtualKeypad$Control;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "size"    # F

    .prologue
    .line 324
    invoke-virtual {p1}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getX()F

    move-result v0

    sub-float v0, p2, v0

    invoke-virtual {p1}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float p2, v0, v1

    .line 325
    invoke-virtual {p1}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getY()F

    move-result v0

    sub-float v0, p3, v0

    invoke-virtual {p1}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float p3, v0, v1

    .line 327
    iget-object v0, p0, Lcom/androidemu/nes/input/VirtualKeypad;->dpad:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    if-ne p1, v0, :cond_0

    .line 328
    invoke-direct {p0, p2, p3}, Lcom/androidemu/nes/input/VirtualKeypad;->getDpadStates(FF)I

    move-result v0

    .line 336
    :goto_0
    return v0

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/androidemu/nes/input/VirtualKeypad;->buttons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    if-ne p1, v0, :cond_1

    .line 330
    sget-object v0, Lcom/androidemu/nes/input/VirtualKeypad;->BUTTONS:[I

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/androidemu/nes/input/VirtualKeypad;->getButtonsStates([IFFF)I

    move-result v0

    goto :goto_0

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/androidemu/nes/input/VirtualKeypad;->extraButtons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    if-ne p1, v0, :cond_2

    .line 332
    sget-object v0, Lcom/androidemu/nes/input/VirtualKeypad;->EXTRA_BUTTONS:[I

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/androidemu/nes/input/VirtualKeypad;->getButtonsStates([IFFF)I

    move-result v0

    goto :goto_0

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/androidemu/nes/input/VirtualKeypad;->selectStart:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    if-ne p1, v0, :cond_3

    .line 334
    invoke-direct {p0, p2, p3}, Lcom/androidemu/nes/input/VirtualKeypad;->getSelectStartStates(FF)I

    move-result v0

    goto :goto_0

    .line 336
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDpadStates(FF)I
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 253
    iget-boolean v3, p0, Lcom/androidemu/nes/input/VirtualKeypad;->dpad4Way:Z

    if-eqz v3, :cond_1

    .line 254
    sget-object v3, Lcom/androidemu/nes/input/VirtualKeypad;->DPAD_4WAY:[I

    invoke-direct {p0, p1, p2}, Lcom/androidemu/nes/input/VirtualKeypad;->get4WayDirection(FF)I

    move-result v4

    aget v2, v3, v4

    .line 269
    :cond_0
    :goto_0
    return v2

    .line 256
    :cond_1
    const/high16 v0, 0x3f000000    # 0.5f

    .line 257
    .local v0, "cx":F
    const/high16 v1, 0x3f000000    # 0.5f

    .line 258
    .local v1, "cy":F
    const/4 v2, 0x0

    .line 260
    .local v2, "states":I
    iget v3, p0, Lcom/androidemu/nes/input/VirtualKeypad;->dpadDeadZone:F

    sub-float v3, v4, v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_3

    .line 261
    or-int/lit8 v2, v2, 0x40

    .line 264
    :cond_2
    :goto_1
    iget v3, p0, Lcom/androidemu/nes/input/VirtualKeypad;->dpadDeadZone:F

    sub-float v3, v4, v3

    cmpg-float v3, p2, v3

    if-gez v3, :cond_4

    .line 265
    or-int/lit8 v2, v2, 0x10

    goto :goto_0

    .line 262
    :cond_3
    iget v3, p0, Lcom/androidemu/nes/input/VirtualKeypad;->dpadDeadZone:F

    add-float/2addr v3, v4

    cmpl-float v3, p1, v3

    if-lez v3, :cond_2

    .line 263
    or-int/lit16 v2, v2, 0x80

    goto :goto_1

    .line 266
    :cond_4
    iget v3, p0, Lcom/androidemu/nes/input/VirtualKeypad;->dpadDeadZone:F

    add-float/2addr v3, v4

    cmpl-float v3, p2, v3

    if-lez v3, :cond_0

    .line 267
    or-int/lit8 v2, v2, 0x20

    goto :goto_0
.end method

.method private getEventX(Landroid/view/MotionEvent;IZ)F
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "index"    # I
    .param p3, "flip"    # Z

    .prologue
    .line 294
    invoke-static {p1, p2}, Lcom/androidemu/nes/wrapper/Wrapper;->MotionEvent_getX(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 295
    .local v0, "x":F
    if-eqz p3, :cond_0

    .line 296
    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float v0, v1, v0

    .line 297
    :cond_0
    iget v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->scaleX:F

    mul-float/2addr v1, v0

    return v1
.end method

.method private getEventY(Landroid/view/MotionEvent;IZ)F
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "index"    # I
    .param p3, "flip"    # Z

    .prologue
    .line 301
    invoke-static {p1, p2}, Lcom/androidemu/nes/wrapper/Wrapper;->MotionEvent_getY(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 302
    .local v0, "y":F
    if-eqz p3, :cond_0

    .line 303
    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v0, v1, v0

    .line 304
    :cond_0
    iget v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->scaleY:F

    mul-float/2addr v1, v0

    return v1
.end method

.method private getSelectStartStates(FF)I
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 290
    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private makeBottomBottom(II)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v4, 0x0

    .line 148
    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->dpad:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v1}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad;->buttons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v2}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-le v1, p1, :cond_0

    .line 149
    invoke-direct {p0, p1, p2}, Lcom/androidemu/nes/input/VirtualKeypad;->makeBottomTop(II)V

    .line 168
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->dpad:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad;->dpad:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v2}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getHeight()I

    move-result v2

    sub-int v2, p2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v4, v2}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->move(FF)V

    .line 154
    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->buttons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad;->buttons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v2}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getWidth()I

    move-result v2

    sub-int v2, p1, v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/androidemu/nes/input/VirtualKeypad;->buttons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v3}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getHeight()I

    move-result v3

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->move(FF)V

    .line 155
    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->extraButtons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v1}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->extraButtons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad;->buttons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v2}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getWidth()I

    move-result v2

    sub-int v2, p1, v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/androidemu/nes/input/VirtualKeypad;->buttons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v3}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x7

    div-int/lit8 v3, v3, 0x3

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->move(FF)V

    .line 160
    :cond_1
    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->dpad:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v1}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getWidth()I

    move-result v1

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad;->buttons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v2}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad;->selectStart:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v2}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 162
    .local v0, "x":I
    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->dpad:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v1}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getWidth()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 163
    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->selectStart:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    int-to-float v2, v0

    iget-object v3, p0, Lcom/androidemu/nes/input/VirtualKeypad;->selectStart:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v3}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getHeight()I

    move-result v3

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->move(FF)V

    goto :goto_0

    .line 165
    :cond_2
    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->selectStart:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v1}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getWidth()I

    move-result v1

    sub-int v1, p1, v1

    div-int/lit8 v0, v1, 0x2

    .line 166
    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->selectStart:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    int-to-float v2, v0

    invoke-virtual {v1, v2, v4}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->move(FF)V

    goto/16 :goto_0
.end method

.method private makeBottomTop(II)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 202
    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad;->dpad:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/androidemu/nes/input/VirtualKeypad;->dpad:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v4}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getHeight()I

    move-result v4

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->move(FF)V

    .line 204
    const/4 v1, 0x0

    .line 205
    .local v1, "y":I
    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad;->extraButtons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v2}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad;->extraButtons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    iget-object v3, p0, Lcom/androidemu/nes/input/VirtualKeypad;->extraButtons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v3}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getWidth()I

    move-result v3

    sub-int v3, p1, v3

    int-to-float v3, v3

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->move(FF)V

    .line 207
    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad;->buttons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v2}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    .line 209
    :cond_0
    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad;->buttons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    iget-object v3, p0, Lcom/androidemu/nes/input/VirtualKeypad;->buttons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v3}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getWidth()I

    move-result v3

    sub-int v3, p1, v3

    int-to-float v3, v3

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->move(FF)V

    .line 211
    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad;->dpad:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v2}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getWidth()I

    move-result v2

    add-int/2addr v2, p1

    iget-object v3, p0, Lcom/androidemu/nes/input/VirtualKeypad;->selectStart:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v3}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 212
    .local v0, "x":I
    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad;->selectStart:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    int-to-float v3, v0

    iget-object v4, p0, Lcom/androidemu/nes/input/VirtualKeypad;->selectStart:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v4}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getHeight()I

    move-result v4

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->move(FF)V

    .line 213
    return-void
.end method

.method private makeTopBottom(II)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v2, 0x0

    .line 190
    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->dpad:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v1, v2, v2}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->move(FF)V

    .line 191
    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->buttons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad;->buttons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v2}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getWidth()I

    move-result v2

    sub-int v2, p1, v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/androidemu/nes/input/VirtualKeypad;->buttons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v3}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getHeight()I

    move-result v3

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->move(FF)V

    .line 192
    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->extraButtons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v1}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->extraButtons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad;->buttons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v2}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getWidth()I

    move-result v2

    sub-int v2, p1, v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/androidemu/nes/input/VirtualKeypad;->buttons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v3}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x7

    div-int/lit8 v3, v3, 0x3

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->move(FF)V

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->buttons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v1}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getWidth()I

    move-result v1

    sub-int v1, p1, v1

    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad;->selectStart:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v2}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    .line 198
    .local v0, "x":I
    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->selectStart:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    int-to-float v2, v0

    iget-object v3, p0, Lcom/androidemu/nes/input/VirtualKeypad;->selectStart:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v3}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getHeight()I

    move-result v3

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->move(FF)V

    .line 199
    return-void
.end method

.method private makeTopTop(II)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v3, 0x0

    .line 171
    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->dpad:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v1}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad;->buttons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v2}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-le v1, p1, :cond_0

    .line 172
    invoke-direct {p0, p1, p2}, Lcom/androidemu/nes/input/VirtualKeypad;->makeBottomTop(II)V

    .line 187
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->dpad:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v1, v3, v3}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->move(FF)V

    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, "y":I
    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->extraButtons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v1}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->extraButtons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad;->extraButtons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v2}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getWidth()I

    move-result v2

    sub-int v2, p1, v2

    int-to-float v2, v2

    int-to-float v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->move(FF)V

    .line 181
    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->buttons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v1}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    .line 183
    :cond_1
    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->buttons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad;->buttons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v2}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getWidth()I

    move-result v2

    sub-int v2, p1, v2

    int-to-float v2, v2

    int-to-float v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->move(FF)V

    .line 185
    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->selectStart:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad;->selectStart:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v2}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getWidth()I

    move-result v2

    sub-int v2, p1, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/androidemu/nes/input/VirtualKeypad;->selectStart:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v3}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getHeight()I

    move-result v3

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->move(FF)V

    goto :goto_0
.end method

.method private reposition(IILandroid/content/SharedPreferences;)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 216
    const-string v1, "vkeypadLayout"

    const-string v2, "top_bottom"

    invoke-interface {p3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "layout":Ljava/lang/String;
    const-string v1, "top_bottom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    invoke-direct {p0, p1, p2}, Lcom/androidemu/nes/input/VirtualKeypad;->makeTopBottom(II)V

    .line 226
    :goto_0
    return-void

    .line 220
    :cond_0
    const-string v1, "bottom_top"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    invoke-direct {p0, p1, p2}, Lcom/androidemu/nes/input/VirtualKeypad;->makeBottomTop(II)V

    goto :goto_0

    .line 222
    :cond_1
    const-string v1, "top_top"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 223
    invoke-direct {p0, p1, p2}, Lcom/androidemu/nes/input/VirtualKeypad;->makeTopTop(II)V

    goto :goto_0

    .line 225
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/androidemu/nes/input/VirtualKeypad;->makeBottomBottom(II)V

    goto :goto_0
.end method

.method private setKeyStates(I)V
    .locals 3
    .param p1, "newStates"    # I

    .prologue
    .line 233
    iget v0, p0, Lcom/androidemu/nes/input/VirtualKeypad;->keyStates:I

    if-ne v0, p1, :cond_0

    .line 241
    :goto_0
    return-void

    .line 236
    :cond_0
    iget-boolean v0, p0, Lcom/androidemu/nes/input/VirtualKeypad;->vibratorEnabled:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/androidemu/nes/input/VirtualKeypad;->keyStates:I

    invoke-direct {p0, v0, p1}, Lcom/androidemu/nes/input/VirtualKeypad;->shouldVibrate(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/androidemu/nes/input/VirtualKeypad;->vibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 239
    :cond_1
    iput p1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->keyStates:I

    .line 240
    iget-object v0, p0, Lcom/androidemu/nes/input/VirtualKeypad;->gameKeyListener:Lcom/androidemu/nes/input/GameKeyListener;

    invoke-interface {v0}, Lcom/androidemu/nes/input/GameKeyListener;->onGameKeyChanged()V

    goto :goto_0
.end method

.method private shouldVibrate(II)Z
    .locals 1
    .param p1, "oldStates"    # I
    .param p2, "newStates"    # I

    .prologue
    .line 229
    xor-int v0, p1, p2

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final destroy()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 125
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 126
    .local v2, "paint":Landroid/graphics/Paint;
    iget v3, p0, Lcom/androidemu/nes/input/VirtualKeypad;->transparency:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1e

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 128
    iget-object v3, p0, Lcom/androidemu/nes/input/VirtualKeypad;->controls:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidemu/nes/input/VirtualKeypad$Control;

    .line 129
    .local v0, "c":Lcom/androidemu/nes/input/VirtualKeypad$Control;
    invoke-virtual {v0, p1, v2}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 130
    .end local v0    # "c":Lcom/androidemu/nes/input/VirtualKeypad$Control;
    :cond_0
    return-void
.end method

.method public final getKeyStates()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/androidemu/nes/input/VirtualKeypad;->keyStates:I

    return v0
.end method

.method public onTouch(Landroid/view/MotionEvent;Z)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "flip"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 340
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 342
    .local v0, "action":I
    const/4 v4, -0x1

    .line 344
    .local v4, "pointerUpId":I
    and-int/lit16 v10, v0, 0xff

    packed-switch v10, :pswitch_data_0

    move v8, v9

    .line 371
    :goto_0
    return v8

    .line 347
    :pswitch_0
    invoke-direct {p0, v9}, Lcom/androidemu/nes/input/VirtualKeypad;->setKeyStates(I)V

    goto :goto_0

    .line 359
    :pswitch_1
    const/4 v5, 0x0

    .line 360
    .local v5, "states":I
    invoke-static {p1}, Lcom/androidemu/nes/wrapper/Wrapper;->MotionEvent_getPointerCount(Landroid/view/MotionEvent;)I

    move-result v3

    .line 361
    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 362
    invoke-direct {p0, p1, v2, p2}, Lcom/androidemu/nes/input/VirtualKeypad;->getEventX(Landroid/view/MotionEvent;IZ)F

    move-result v6

    .line 363
    .local v6, "x":F
    invoke-direct {p0, p1, v2, p2}, Lcom/androidemu/nes/input/VirtualKeypad;->getEventY(Landroid/view/MotionEvent;IZ)F

    move-result v7

    .line 364
    .local v7, "y":F
    invoke-direct {p0, v6, v7}, Lcom/androidemu/nes/input/VirtualKeypad;->findControl(FF)Lcom/androidemu/nes/input/VirtualKeypad$Control;

    move-result-object v1

    .line 365
    .local v1, "c":Lcom/androidemu/nes/input/VirtualKeypad$Control;
    if-eqz v1, :cond_0

    .line 366
    invoke-static {p1, v2}, Lcom/androidemu/nes/wrapper/Wrapper;->MotionEvent_getSize(Landroid/view/MotionEvent;I)F

    move-result v9

    invoke-direct {p0, v1, v6, v7, v9}, Lcom/androidemu/nes/input/VirtualKeypad;->getControlStates(Lcom/androidemu/nes/input/VirtualKeypad$Control;FFF)I

    move-result v9

    or-int/2addr v5, v9

    .line 361
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 370
    .end local v1    # "c":Lcom/androidemu/nes/input/VirtualKeypad$Control;
    .end local v6    # "x":F
    .end local v7    # "y":F
    :cond_1
    invoke-direct {p0, v5}, Lcom/androidemu/nes/input/VirtualKeypad;->setKeyStates(I)V

    goto :goto_0

    .line 344
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/androidemu/nes/input/VirtualKeypad;->keyStates:I

    .line 77
    return-void
.end method

.method public final resize(II)V
    .locals 16
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 83
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androidemu/nes/input/VirtualKeypad;->context:Landroid/content/Context;

    invoke-static {v13}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 85
    .local v7, "prefs":Landroid/content/SharedPreferences;
    const-string v13, "enableVibrator"

    const/4 v14, 0x1

    invoke-interface {v7, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/androidemu/nes/input/VirtualKeypad;->vibratorEnabled:Z

    .line 86
    const-string v13, "dpad4Way"

    const/4 v14, 0x0

    invoke-interface {v7, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/androidemu/nes/input/VirtualKeypad;->dpad4Way:Z

    .line 88
    const-string v13, "dpadDeadZone"

    const/4 v14, 0x2

    invoke-interface {v7, v13, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 89
    .local v12, "value":I
    if-gez v12, :cond_2

    const/4 v12, 0x0

    .line 90
    :cond_0
    :goto_0
    sget-object v13, Lcom/androidemu/nes/input/VirtualKeypad;->DPAD_DEADZONE_VALUES:[F

    aget v13, v13, v12

    move-object/from16 v0, p0

    iput v13, v0, Lcom/androidemu/nes/input/VirtualKeypad;->dpadDeadZone:F

    .line 92
    const-string v13, "inBetweenPress"

    const/4 v14, 0x0

    invoke-interface {v7, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/androidemu/nes/input/VirtualKeypad;->inBetweenPress:Z

    .line 94
    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v13, v0, Lcom/androidemu/nes/input/VirtualKeypad;->pointSizeThreshold:F

    .line 95
    const-string v13, "pointSizePress"

    const/4 v14, 0x0

    invoke-interface {v7, v13, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 96
    const-string v13, "pointSizePressThreshold"

    const/4 v14, 0x7

    invoke-interface {v7, v13, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 97
    .local v11, "threshold":I
    int-to-float v13, v11

    const/high16 v14, 0x41200000    # 10.0f

    div-float/2addr v13, v14

    const v14, 0x3c23d70a    # 0.01f

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/androidemu/nes/input/VirtualKeypad;->pointSizeThreshold:F

    .line 100
    .end local v11    # "threshold":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androidemu/nes/input/VirtualKeypad;->dpad:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    const-string v14, "hideDpad"

    const/4 v15, 0x0

    invoke-interface {v7, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    invoke-virtual {v13, v14}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->hide(Z)V

    .line 101
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androidemu/nes/input/VirtualKeypad;->buttons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    const-string v14, "hideButtons"

    const/4 v15, 0x0

    invoke-interface {v7, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    invoke-virtual {v13, v14}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->hide(Z)V

    .line 102
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androidemu/nes/input/VirtualKeypad;->extraButtons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    const-string v14, "hideExtraButtons"

    const/4 v15, 0x0

    invoke-interface {v7, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    invoke-virtual {v13, v14}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->hide(Z)V

    .line 103
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androidemu/nes/input/VirtualKeypad;->extraButtons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    const-string v14, "disableExtraButtons"

    const/4 v15, 0x1

    invoke-interface {v7, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    invoke-virtual {v13, v14}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->disable(Z)V

    .line 104
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androidemu/nes/input/VirtualKeypad;->selectStart:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    const-string v14, "hideSelectStart"

    const/4 v15, 0x0

    invoke-interface {v7, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    invoke-virtual {v13, v14}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->hide(Z)V

    .line 106
    move/from16 v0, p1

    int-to-float v13, v0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/androidemu/nes/input/VirtualKeypad;->view:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/androidemu/nes/input/VirtualKeypad;->scaleX:F

    .line 107
    move/from16 v0, p2

    int-to-float v13, v0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/androidemu/nes/input/VirtualKeypad;->view:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lcom/androidemu/nes/input/VirtualKeypad;->scaleY:F

    .line 109
    invoke-static {v7}, Lcom/androidemu/nes/input/VirtualKeypad;->getControlScale(Landroid/content/SharedPreferences;)F

    move-result v2

    .line 110
    .local v2, "controlScale":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/androidemu/nes/input/VirtualKeypad;->scaleX:F

    mul-float v9, v13, v2

    .line 111
    .local v9, "sx":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/androidemu/nes/input/VirtualKeypad;->scaleY:F

    mul-float v10, v13, v2

    .line 112
    .local v10, "sy":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androidemu/nes/input/VirtualKeypad;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 113
    .local v8, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/androidemu/nes/input/VirtualKeypad;->controls:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidemu/nes/input/VirtualKeypad$Control;

    .line 114
    .local v1, "c":Lcom/androidemu/nes/input/VirtualKeypad$Control;
    invoke-virtual {v1, v8, v9, v10}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->load(Landroid/content/res/Resources;FF)V

    goto :goto_1

    .line 89
    .end local v1    # "c":Lcom/androidemu/nes/input/VirtualKeypad$Control;
    .end local v2    # "controlScale":F
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v8    # "res":Landroid/content/res/Resources;
    .end local v9    # "sx":F
    .end local v10    # "sy":F
    :cond_2
    const/4 v13, 0x4

    if-le v12, v13, :cond_0

    const/4 v12, 0x4

    goto/16 :goto_0

    .line 116
    .restart local v2    # "controlScale":F
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v8    # "res":Landroid/content/res/Resources;
    .restart local v9    # "sx":F
    .restart local v10    # "sy":F
    :cond_3
    const-string v13, "layoutMargin"

    const/4 v14, 0x2

    invoke-interface {v7, v13, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    mul-int/lit8 v4, v13, 0xa

    .line 117
    .local v4, "margin":I
    int-to-float v13, v4

    move-object/from16 v0, p0

    iget v14, v0, Lcom/androidemu/nes/input/VirtualKeypad;->scaleX:F

    mul-float/2addr v13, v14

    float-to-int v5, v13

    .line 118
    .local v5, "marginX":I
    int-to-float v13, v4

    move-object/from16 v0, p0

    iget v14, v0, Lcom/androidemu/nes/input/VirtualKeypad;->scaleY:F

    mul-float/2addr v13, v14

    float-to-int v6, v13

    .line 119
    .local v6, "marginY":I
    sub-int v13, p1, v5

    sub-int v14, p2, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v7}, Lcom/androidemu/nes/input/VirtualKeypad;->reposition(IILandroid/content/SharedPreferences;)V

    .line 121
    const-string v13, "vkeypadTransparency"

    const/16 v14, 0x32

    invoke-interface {v7, v13, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/androidemu/nes/input/VirtualKeypad;->transparency:I

    .line 122
    return-void
.end method
