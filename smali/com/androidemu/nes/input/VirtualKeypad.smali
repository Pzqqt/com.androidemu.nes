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

.field private marginX:I

.field private marginY:I

.field private overlay:Landroid/graphics/Picture;

.field private pointSizeThreshold:F

.field private scaleX:F

.field private scaleY:F

.field private selectStart:Lcom/androidemu/nes/input/VirtualKeypad$Control;

.field private touchedControls:[Lcom/androidemu/nes/input/VirtualKeypad$Control;

.field private vibrator:Landroid/os/Vibrator;

.field private vibratorEnabled:Z

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/androidemu/nes/input/VirtualKeypad;->DPAD_4WAY:[I

    .line 37
    const/4 v0, 0x5

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/androidemu/nes/input/VirtualKeypad;->DPAD_DEADZONE_VALUES:[F

    .line 376
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/androidemu/nes/input/VirtualKeypad;->BUTTONS:[I

    .line 380
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/androidemu/nes/input/VirtualKeypad;->EXTRA_BUTTONS:[I

    .line 28
    return-void

    .line 30
    :array_0
    .array-data 4
        0x40
        0x10
        0x80
        0x20
    .end array-data

    .line 37
    :array_1
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3e0f5c29    # 0.14f
        0x3e2ab368    # 0.1667f
        0x3e4ccccd    # 0.2f
        0x3e800000    # 0.25f
    .end array-data

    .line 376
    :array_2
    .array-data 4
        0x2
        0x1
    .end array-data

    .line 380
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
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-object v0, Lcom/androidemu/nes/input/VirtualKeypad;->DPAD_DEADZONE_VALUES:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    iput v0, p0, Lcom/androidemu/nes/input/VirtualKeypad;->dpadDeadZone:F

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/androidemu/nes/input/VirtualKeypad;->controls:Ljava/util/ArrayList;

    .line 58
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/androidemu/nes/input/VirtualKeypad$Control;

    iput-object v0, p0, Lcom/androidemu/nes/input/VirtualKeypad;->touchedControls:[Lcom/androidemu/nes/input/VirtualKeypad$Control;

    .line 64
    invoke-static {}, Lcom/androidemu/Emulator;->getInstance()Lcom/androidemu/Emulator;

    move-result-object v0

    iput-object v0, p0, Lcom/androidemu/nes/input/VirtualKeypad;->emulator:Lcom/androidemu/Emulator;

    .line 68
    iput-object p1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->view:Landroid/view/View;

    .line 69
    iget-object v0, p0, Lcom/androidemu/nes/input/VirtualKeypad;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/androidemu/nes/input/VirtualKeypad;->context:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/androidemu/nes/input/VirtualKeypad;->gameKeyListener:Lcom/androidemu/nes/input/GameKeyListener;

    .line 72
    iget-object v0, p0, Lcom/androidemu/nes/input/VirtualKeypad;->context:Landroid/content/Context;

    .line 73
    const-string v1, "vibrator"

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/androidemu/nes/input/VirtualKeypad;->vibrator:Landroid/os/Vibrator;

    .line 75
    const v0, 0x7f050001

    invoke-direct {p0, v0}, Lcom/androidemu/nes/input/VirtualKeypad;->createControl(I)Lcom/androidemu/nes/input/VirtualKeypad$Control;

    move-result-object v0

    iput-object v0, p0, Lcom/androidemu/nes/input/VirtualKeypad;->dpad:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    .line 76
    const/high16 v0, 0x7f050000

    invoke-direct {p0, v0}, Lcom/androidemu/nes/input/VirtualKeypad;->createControl(I)Lcom/androidemu/nes/input/VirtualKeypad$Control;

    move-result-object v0

    iput-object v0, p0, Lcom/androidemu/nes/input/VirtualKeypad;->buttons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    .line 77
    const v0, 0x7f050002

    invoke-direct {p0, v0}, Lcom/androidemu/nes/input/VirtualKeypad;->createControl(I)Lcom/androidemu/nes/input/VirtualKeypad$Control;

    move-result-object v0

    iput-object v0, p0, Lcom/androidemu/nes/input/VirtualKeypad;->extraButtons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    .line 78
    const v0, 0x7f050003

    invoke-direct {p0, v0}, Lcom/androidemu/nes/input/VirtualKeypad;->createControl(I)Lcom/androidemu/nes/input/VirtualKeypad$Control;

    move-result-object v0

    iput-object v0, p0, Lcom/androidemu/nes/input/VirtualKeypad;->selectStart:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    .line 79
    return-void
.end method

.method private createControl(I)Lcom/androidemu/nes/input/VirtualKeypad$Control;
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 155
    new-instance v0, Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-direct {v0, p1}, Lcom/androidemu/nes/input/VirtualKeypad$Control;-><init>(I)V

    .line 156
    .local v0, "c":Lcom/androidemu/nes/input/VirtualKeypad$Control;
    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->controls:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    return-object v0
.end method

.method private draw(Landroid/graphics/Canvas;Landroid/content/SharedPreferences;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 270
    const-string v3, "vkeypadTransparency"

    const/16 v4, 0x32

    invoke-interface {p2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 271
    .local v2, "transparency":I
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 272
    .local v1, "paint":Landroid/graphics/Paint;
    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v3, v3, 0x1e

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 274
    iget-object v3, p0, Lcom/androidemu/nes/input/VirtualKeypad;->controls:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 278
    return-void

    .line 274
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidemu/nes/input/VirtualKeypad$Control;

    .line 275
    .local v0, "c":Lcom/androidemu/nes/input/VirtualKeypad$Control;
    invoke-virtual {v0}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 276
    invoke-virtual {v0, p1, v1}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private findControl(FF)Lcom/androidemu/nes/input/VirtualKeypad$Control;
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 360
    const/4 v2, 0x0

    .line 361
    .local v2, "hit":Lcom/androidemu/nes/input/VirtualKeypad$Control;
    const v3, 0x1869f

    .line 363
    .local v3, "min":I
    iget-object v4, p0, Lcom/androidemu/nes/input/VirtualKeypad;->controls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    move-object v4, v2

    .line 373
    :goto_1
    return-object v4

    .line 363
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidemu/nes/input/VirtualKeypad$Control;

    .line 364
    .local v0, "c":Lcom/androidemu/nes/input/VirtualKeypad$Control;
    invoke-virtual {v0, p1, p2}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->hitTest(FF)I

    move-result v1

    .line 365
    .local v1, "distance":I
    if-gtz v1, :cond_2

    move-object v4, v0

    .line 366
    goto :goto_1

    .line 368
    :cond_2
    if-le v3, v1, :cond_0

    iget-object v5, p0, Lcom/androidemu/nes/input/VirtualKeypad;->selectStart:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    if-eq v0, v5, :cond_0

    .line 369
    move v3, v1

    .line 370
    move-object v2, v0

    goto :goto_0
.end method

.method private get4WayDirection(FF)I
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v0, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    .line 296
    sub-float/2addr p1, v0

    .line 297
    sub-float/2addr p2, v0

    .line 299
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 300
    cmpg-float v0, p1, v2

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 301
    :goto_0
    return v0

    .line 300
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    .line 301
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

    .line 327
    iget v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->pointSizeThreshold:F

    cmpl-float v1, p4, v1

    if-lez v1, :cond_0

    .line 328
    aget v1, p1, v2

    aget v2, p1, v3

    or-int/2addr v1, v2

    .line 338
    :goto_0
    return v1

    .line 330
    :cond_0
    iget-boolean v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->inBetweenPress:Z

    if-eqz v1, :cond_3

    .line 331
    const/4 v0, 0x0

    .line 332
    .local v0, "states":I
    const v1, 0x3f147ae1    # 0.58f

    cmpg-float v1, p2, v1

    if-gez v1, :cond_1

    .line 333
    aget v1, p1, v2

    or-int/2addr v0, v1

    .line 334
    :cond_1
    const v1, 0x3ed70a3d    # 0.42f

    cmpl-float v1, p2, v1

    if-lez v1, :cond_2

    .line 335
    aget v1, p1, v3

    or-int/2addr v0, v1

    :cond_2
    move v1, v0

    .line 336
    goto :goto_0

    .line 338
    .end local v0    # "states":I
    :cond_3
    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v1, p2, v1

    if-gez v1, :cond_4

    aget v1, p1, v2

    goto :goto_0

    :cond_4
    aget v1, p1, v3

    goto :goto_0
.end method

.method private static getControlScale(Landroid/content/SharedPreferences;)F
    .locals 3
    .param p0, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 146
    const-string v1, "vkeypadSize"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "value":Ljava/lang/String;
    const-string v1, "small"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    const/high16 v1, 0x3f800000    # 1.0f

    .line 151
    :goto_0
    return v1

    .line 149
    :cond_0
    const-string v1, "large"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    const v1, 0x3faaaa8f

    goto :goto_0

    .line 151
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
    .line 385
    invoke-virtual {p1}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getX()F

    move-result v0

    sub-float v0, p2, v0

    invoke-virtual {p1}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float p2, v0, v1

    .line 386
    invoke-virtual {p1}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getY()F

    move-result v0

    sub-float v0, p3, v0

    invoke-virtual {p1}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float p3, v0, v1

    .line 388
    iget-object v0, p0, Lcom/androidemu/nes/input/VirtualKeypad;->dpad:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    if-ne p1, v0, :cond_0

    .line 389
    invoke-direct {p0, p2, p3}, Lcom/androidemu/nes/input/VirtualKeypad;->getDpadStates(FF)I

    move-result v0

    .line 397
    :goto_0
    return v0

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/androidemu/nes/input/VirtualKeypad;->buttons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    if-ne p1, v0, :cond_1

    .line 391
    sget-object v0, Lcom/androidemu/nes/input/VirtualKeypad;->BUTTONS:[I

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/androidemu/nes/input/VirtualKeypad;->getButtonsStates([IFFF)I

    move-result v0

    goto :goto_0

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/androidemu/nes/input/VirtualKeypad;->extraButtons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    if-ne p1, v0, :cond_2

    .line 393
    sget-object v0, Lcom/androidemu/nes/input/VirtualKeypad;->EXTRA_BUTTONS:[I

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/androidemu/nes/input/VirtualKeypad;->getButtonsStates([IFFF)I

    move-result v0

    goto :goto_0

    .line 394
    :cond_2
    iget-object v0, p0, Lcom/androidemu/nes/input/VirtualKeypad;->selectStart:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    if-ne p1, v0, :cond_3

    .line 395
    invoke-direct {p0, p2, p3}, Lcom/androidemu/nes/input/VirtualKeypad;->getSelectStartStates(FF)I

    move-result v0

    goto :goto_0

    .line 397
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

    .line 305
    iget-boolean v3, p0, Lcom/androidemu/nes/input/VirtualKeypad;->dpad4Way:Z

    if-eqz v3, :cond_0

    .line 306
    sget-object v3, Lcom/androidemu/nes/input/VirtualKeypad;->DPAD_4WAY:[I

    invoke-direct {p0, p1, p2}, Lcom/androidemu/nes/input/VirtualKeypad;->get4WayDirection(FF)I

    move-result v4

    aget v3, v3, v4

    .line 321
    :goto_0
    return v3

    .line 308
    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    .line 309
    .local v0, "cx":F
    const/high16 v1, 0x3f000000    # 0.5f

    .line 310
    .local v1, "cy":F
    const/4 v2, 0x0

    .line 312
    .local v2, "states":I
    iget v3, p0, Lcom/androidemu/nes/input/VirtualKeypad;->dpadDeadZone:F

    sub-float v3, v4, v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_3

    .line 313
    or-int/lit8 v2, v2, 0x40

    .line 316
    :cond_1
    :goto_1
    iget v3, p0, Lcom/androidemu/nes/input/VirtualKeypad;->dpadDeadZone:F

    sub-float v3, v4, v3

    cmpg-float v3, p2, v3

    if-gez v3, :cond_4

    .line 317
    or-int/lit8 v2, v2, 0x10

    :cond_2
    :goto_2
    move v3, v2

    .line 321
    goto :goto_0

    .line 314
    :cond_3
    iget v3, p0, Lcom/androidemu/nes/input/VirtualKeypad;->dpadDeadZone:F

    add-float/2addr v3, v4

    cmpl-float v3, p1, v3

    if-lez v3, :cond_1

    .line 315
    or-int/lit16 v2, v2, 0x80

    goto :goto_1

    .line 318
    :cond_4
    iget v3, p0, Lcom/androidemu/nes/input/VirtualKeypad;->dpadDeadZone:F

    add-float/2addr v3, v4

    cmpl-float v3, p2, v3

    if-lez v3, :cond_2

    .line 319
    or-int/lit8 v2, v2, 0x20

    goto :goto_2
.end method

.method private getEventX(Landroid/view/MotionEvent;IZ)F
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "index"    # I
    .param p3, "flip"    # Z

    .prologue
    .line 346
    invoke-static {p1, p2}, Lcom/androidemu/nes/wrapper/Wrapper;->MotionEvent_getX(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 347
    .local v0, "x":F
    if-eqz p3, :cond_0

    .line 348
    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float v0, v1, v0

    .line 349
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
    .line 353
    invoke-static {p1, p2}, Lcom/androidemu/nes/wrapper/Wrapper;->MotionEvent_getY(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 354
    .local v0, "y":F
    if-eqz p3, :cond_0

    .line 355
    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sub-float v0, v1, v0

    .line 356
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
    .line 342
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

.method private makeBottomBottom(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 161
    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->dpad:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v1}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad;->buttons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v2}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 162
    invoke-direct {p0, p1}, Lcom/androidemu/nes/input/VirtualKeypad;->makeBottomTop(Landroid/graphics/Rect;)V

    .line 185
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->dpad:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/androidemu/nes/input/VirtualKeypad;->dpad:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v4}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->move(FF)V

    .line 167
    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->buttons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/androidemu/nes/input/VirtualKeypad;->buttons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v3}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 168
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/androidemu/nes/input/VirtualKeypad;->buttons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v4}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 167
    invoke-virtual {v1, v2, v3}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->move(FF)V

    .line 169
    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->extraButtons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v1}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 170
    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->extraButtons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/androidemu/nes/input/VirtualKeypad;->extraButtons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v3}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 171
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/androidemu/nes/input/VirtualKeypad;->buttons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v4}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x7

    div-int/lit8 v4, v4, 0x3

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 170
    invoke-virtual {v1, v2, v3}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->move(FF)V

    .line 173
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad;->buttons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v2}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getWidth()I

    move-result v2

    .line 174
    iget-object v3, p0, Lcom/androidemu/nes/input/VirtualKeypad;->selectStart:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v3}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/androidemu/nes/input/VirtualKeypad;->dpad:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v3}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 173
    sub-int v0, v1, v2

    .line 175
    .local v0, "x":I
    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->dpad:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v1}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getWidth()I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    if-le v0, v1, :cond_2

    .line 176
    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->selectStart:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    int-to-float v2, v0

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/androidemu/nes/input/VirtualKeypad;->selectStart:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v4}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->move(FF)V

    .line 182
    :goto_1
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad;->dpad:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v2}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getVisibleWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 183
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad;->buttons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v2}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getVisibleWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 184
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad;->dpad:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v2}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getVisibleHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0

    .line 178
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad;->selectStart:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v2}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v0, v1, v2

    .line 179
    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->selectStart:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    int-to-float v2, v0

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->move(FF)V

    goto :goto_1
.end method

.method private makeBottomTop(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 229
    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad;->dpad:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/androidemu/nes/input/VirtualKeypad;->dpad:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v5}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->move(FF)V

    .line 231
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 232
    .local v1, "y":I
    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad;->extraButtons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v2}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad;->extraButtons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/androidemu/nes/input/VirtualKeypad;->extraButtons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v4}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->move(FF)V

    .line 234
    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad;->buttons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v2}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    .line 236
    :cond_0
    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad;->buttons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/androidemu/nes/input/VirtualKeypad;->buttons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v4}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->move(FF)V

    .line 238
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    .line 239
    iget-object v3, p0, Lcom/androidemu/nes/input/VirtualKeypad;->selectStart:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v3}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/androidemu/nes/input/VirtualKeypad;->dpad:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v4}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    .line 238
    sub-int v0, v2, v3

    .line 240
    .local v0, "x":I
    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad;->selectStart:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    int-to-float v3, v0

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/androidemu/nes/input/VirtualKeypad;->selectStart:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v5}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->move(FF)V

    .line 242
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/androidemu/nes/input/VirtualKeypad;->dpad:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v3}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getVisibleWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 243
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/androidemu/nes/input/VirtualKeypad;->buttons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v3}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getVisibleWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 244
    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/androidemu/nes/input/VirtualKeypad;->buttons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v3}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getVisibleHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 245
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/androidemu/nes/input/VirtualKeypad;->dpad:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v3}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getVisibleHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 246
    return-void
.end method

.method private makeTopBottom(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 210
    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->dpad:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->move(FF)V

    .line 212
    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->buttons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/androidemu/nes/input/VirtualKeypad;->buttons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v3}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 213
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/androidemu/nes/input/VirtualKeypad;->buttons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v4}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 212
    invoke-virtual {v1, v2, v3}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->move(FF)V

    .line 214
    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->extraButtons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v1}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->extraButtons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/androidemu/nes/input/VirtualKeypad;->extraButtons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v3}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 216
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/androidemu/nes/input/VirtualKeypad;->buttons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v4}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x7

    div-int/lit8 v4, v4, 0x3

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 215
    invoke-virtual {v1, v2, v3}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->move(FF)V

    .line 218
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    .line 219
    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad;->buttons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v2}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/androidemu/nes/input/VirtualKeypad;->selectStart:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v3}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 218
    sub-int v0, v1, v2

    .line 220
    .local v0, "x":I
    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->selectStart:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    int-to-float v2, v0

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/androidemu/nes/input/VirtualKeypad;->selectStart:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v4}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->move(FF)V

    .line 222
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad;->dpad:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v2}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getVisibleWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 223
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad;->buttons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v2}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getVisibleWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 224
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad;->dpad:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v2}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getVisibleHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 225
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad;->buttons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v2}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getVisibleHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 226
    return-void
.end method

.method private makeTopTop(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 188
    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->dpad:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v1}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad;->buttons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v2}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 189
    invoke-direct {p0, p1}, Lcom/androidemu/nes/input/VirtualKeypad;->makeBottomTop(Landroid/graphics/Rect;)V

    .line 207
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->dpad:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->move(FF)V

    .line 194
    iget v0, p1, Landroid/graphics/Rect;->top:I

    .line 195
    .local v0, "y":I
    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->extraButtons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v1}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->extraButtons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/androidemu/nes/input/VirtualKeypad;->extraButtons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v3}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->move(FF)V

    .line 197
    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->buttons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v1}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    .line 199
    :cond_1
    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->buttons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/androidemu/nes/input/VirtualKeypad;->buttons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v3}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->move(FF)V

    .line 201
    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->selectStart:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    iget-object v3, p0, Lcom/androidemu/nes/input/VirtualKeypad;->selectStart:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v3}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 202
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/androidemu/nes/input/VirtualKeypad;->selectStart:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v4}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    .line 201
    invoke-virtual {v1, v2, v3}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->move(FF)V

    .line 204
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad;->dpad:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v2}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getVisibleWidth()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 205
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad;->buttons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v2}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getVisibleWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 206
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad;->dpad:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-virtual {v2}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getVisibleHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0
.end method

.method private reposition(Landroid/graphics/Rect;Landroid/content/SharedPreferences;)V
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 249
    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_0

    .line 250
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/androidemu/nes/input/VirtualKeypad;->marginX:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 251
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/androidemu/nes/input/VirtualKeypad;->marginX:I

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 257
    :goto_0
    const-string v1, "vkeypadLayout"

    .line 258
    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/androidemu/nes/DefaultPreferences;->getVKeypadLayout(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 257
    invoke-interface {p2, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "layout":Ljava/lang/String;
    const-string v1, "top_bottom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    invoke-direct {p0, p1}, Lcom/androidemu/nes/input/VirtualKeypad;->makeTopBottom(Landroid/graphics/Rect;)V

    .line 267
    :goto_1
    return-void

    .line 253
    .end local v0    # "layout":Ljava/lang/String;
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/androidemu/nes/input/VirtualKeypad;->marginY:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 254
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/androidemu/nes/input/VirtualKeypad;->marginY:I

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 261
    .restart local v0    # "layout":Ljava/lang/String;
    :cond_1
    const-string v1, "bottom_top"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 262
    invoke-direct {p0, p1}, Lcom/androidemu/nes/input/VirtualKeypad;->makeBottomTop(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 263
    :cond_2
    const-string v1, "top_top"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 264
    invoke-direct {p0, p1}, Lcom/androidemu/nes/input/VirtualKeypad;->makeTopTop(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 266
    :cond_3
    invoke-direct {p0, p1}, Lcom/androidemu/nes/input/VirtualKeypad;->makeBottomBottom(Landroid/graphics/Rect;)V

    goto :goto_1
.end method

.method private setKeyStates(I)V
    .locals 3
    .param p1, "newStates"    # I

    .prologue
    .line 285
    iget v0, p0, Lcom/androidemu/nes/input/VirtualKeypad;->keyStates:I

    if-ne v0, p1, :cond_0

    .line 293
    :goto_0
    return-void

    .line 288
    :cond_0
    iget-boolean v0, p0, Lcom/androidemu/nes/input/VirtualKeypad;->vibratorEnabled:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/androidemu/nes/input/VirtualKeypad;->keyStates:I

    invoke-direct {p0, v0, p1}, Lcom/androidemu/nes/input/VirtualKeypad;->shouldVibrate(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/androidemu/nes/input/VirtualKeypad;->vibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 291
    :cond_1
    iput p1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->keyStates:I

    .line 292
    iget-object v0, p0, Lcom/androidemu/nes/input/VirtualKeypad;->gameKeyListener:Lcom/androidemu/nes/input/GameKeyListener;

    invoke-interface {v0}, Lcom/androidemu/nes/input/GameKeyListener;->onGameKeyChanged()V

    goto :goto_0
.end method

.method private shouldVibrate(II)Z
    .locals 1
    .param p1, "oldStates"    # I
    .param p2, "newStates"    # I

    .prologue
    .line 281
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
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/androidemu/nes/input/VirtualKeypad;->emulator:Lcom/androidemu/Emulator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/androidemu/Emulator;->setOverlay(Landroid/graphics/Picture;)V

    .line 94
    return-void
.end method

.method public final getKeyStates()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/androidemu/nes/input/VirtualKeypad;->keyStates:I

    return v0
.end method

.method public onTouch(Landroid/view/MotionEvent;Z)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "flip"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 402
    iget-object v7, p0, Lcom/androidemu/nes/input/VirtualKeypad;->dpad:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    invoke-static {v7}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->access$0(Lcom/androidemu/nes/input/VirtualKeypad$Control;)Landroid/graphics/Bitmap;

    move-result-object v7

    if-nez v7, :cond_0

    move v7, v8

    .line 454
    :goto_0
    return v7

    .line 405
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 406
    .local v0, "action":I
    and-int/lit16 v1, v0, 0xff

    .line 409
    .local v1, "actionCode":I
    packed-switch v1, :pswitch_data_0

    move v7, v8

    .line 438
    goto :goto_0

    .line 412
    :pswitch_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v7, p0, Lcom/androidemu/nes/input/VirtualKeypad;->touchedControls:[Lcom/androidemu/nes/input/VirtualKeypad$Control;

    array-length v7, v7

    if-lt v2, v7, :cond_2

    .line 441
    .end local v2    # "i":I
    :cond_1
    :goto_2
    :pswitch_1
    const/4 v6, 0x0

    .line 442
    .local v6, "states":I
    invoke-static {p1}, Lcom/androidemu/nes/wrapper/Wrapper;->MotionEvent_getPointerCount(Landroid/view/MotionEvent;)I

    move-result v5

    .line 443
    .local v5, "n":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-lt v2, v5, :cond_4

    .line 453
    invoke-direct {p0, v6}, Lcom/androidemu/nes/input/VirtualKeypad;->setKeyStates(I)V

    .line 454
    const/4 v7, 0x1

    goto :goto_0

    .line 413
    .end local v5    # "n":I
    .end local v6    # "states":I
    :cond_2
    iget-object v7, p0, Lcom/androidemu/nes/input/VirtualKeypad;->touchedControls:[Lcom/androidemu/nes/input/VirtualKeypad$Control;

    aput-object v9, v7, v2

    .line 412
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 419
    .end local v2    # "i":I
    :pswitch_2
    const v7, 0xff00

    and-int/2addr v7, v0

    shr-int/lit8 v4, v7, 0x8

    .line 421
    .local v4, "index":I
    invoke-static {p1, v4}, Lcom/androidemu/nes/wrapper/Wrapper;->MotionEvent_getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 423
    .local v3, "id":I
    iget-object v7, p0, Lcom/androidemu/nes/input/VirtualKeypad;->touchedControls:[Lcom/androidemu/nes/input/VirtualKeypad$Control;

    array-length v7, v7

    if-ge v3, v7, :cond_1

    .line 424
    const/4 v7, 0x6

    if-ne v1, v7, :cond_3

    .line 425
    iget-object v7, p0, Lcom/androidemu/nes/input/VirtualKeypad;->touchedControls:[Lcom/androidemu/nes/input/VirtualKeypad$Control;

    aput-object v9, v7, v3

    goto :goto_2

    .line 427
    :cond_3
    iget-object v7, p0, Lcom/androidemu/nes/input/VirtualKeypad;->touchedControls:[Lcom/androidemu/nes/input/VirtualKeypad$Control;

    .line 428
    invoke-direct {p0, p1, v4, p2}, Lcom/androidemu/nes/input/VirtualKeypad;->getEventX(Landroid/view/MotionEvent;IZ)F

    move-result v8

    .line 429
    invoke-direct {p0, p1, v4, p2}, Lcom/androidemu/nes/input/VirtualKeypad;->getEventY(Landroid/view/MotionEvent;IZ)F

    move-result v9

    .line 427
    invoke-direct {p0, v8, v9}, Lcom/androidemu/nes/input/VirtualKeypad;->findControl(FF)Lcom/androidemu/nes/input/VirtualKeypad$Control;

    move-result-object v8

    aput-object v8, v7, v3

    goto :goto_2

    .line 444
    .end local v3    # "id":I
    .end local v4    # "index":I
    .restart local v2    # "i":I
    .restart local v5    # "n":I
    .restart local v6    # "states":I
    :cond_4
    invoke-static {p1, v2}, Lcom/androidemu/nes/wrapper/Wrapper;->MotionEvent_getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    .line 445
    .restart local v3    # "id":I
    iget-object v7, p0, Lcom/androidemu/nes/input/VirtualKeypad;->touchedControls:[Lcom/androidemu/nes/input/VirtualKeypad$Control;

    array-length v7, v7

    if-ge v3, v7, :cond_5

    .line 446
    iget-object v7, p0, Lcom/androidemu/nes/input/VirtualKeypad;->touchedControls:[Lcom/androidemu/nes/input/VirtualKeypad$Control;

    aget-object v7, v7, v3

    if-eqz v7, :cond_5

    .line 447
    iget-object v7, p0, Lcom/androidemu/nes/input/VirtualKeypad;->touchedControls:[Lcom/androidemu/nes/input/VirtualKeypad$Control;

    aget-object v7, v7, v3

    .line 448
    invoke-direct {p0, p1, v2, p2}, Lcom/androidemu/nes/input/VirtualKeypad;->getEventX(Landroid/view/MotionEvent;IZ)F

    move-result v8

    .line 449
    invoke-direct {p0, p1, v2, p2}, Lcom/androidemu/nes/input/VirtualKeypad;->getEventY(Landroid/view/MotionEvent;IZ)F

    move-result v9

    .line 450
    invoke-static {p1, v2}, Lcom/androidemu/nes/wrapper/Wrapper;->MotionEvent_getSize(Landroid/view/MotionEvent;I)F

    move-result v10

    invoke-direct {p0, v7, v8, v9, v10}, Lcom/androidemu/nes/input/VirtualKeypad;->getControlStates(Lcom/androidemu/nes/input/VirtualKeypad$Control;FFF)I

    move-result v7

    or-int/2addr v6, v7

    .line 443
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 409
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 86
    const/4 v1, 0x0

    iput v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->keyStates:I

    .line 88
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->touchedControls:[Lcom/androidemu/nes/input/VirtualKeypad$Control;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 90
    return-void

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad;->touchedControls:[Lcom/androidemu/nes/input/VirtualKeypad$Control;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final resize(Landroid/graphics/Rect;Landroid/util/DisplayMetrics;)V
    .locals 17
    .param p1, "rc"    # Landroid/graphics/Rect;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androidemu/nes/input/VirtualKeypad;->context:Landroid/content/Context;

    move-object v14, v0

    invoke-static {v14}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 99
    .local v7, "prefs":Landroid/content/SharedPreferences;
    const-string v14, "enableVibrator"

    const/4 v15, 0x1

    invoke-interface {v7, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/androidemu/nes/input/VirtualKeypad;->vibratorEnabled:Z

    .line 100
    const-string v14, "dpad4Way"

    const/4 v15, 0x0

    invoke-interface {v7, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/androidemu/nes/input/VirtualKeypad;->dpad4Way:Z

    .line 102
    const-string v14, "dpadDeadZone"

    const/4 v15, 0x2

    invoke-interface {v7, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 103
    .local v12, "value":I
    if-gez v12, :cond_2

    const/4 v14, 0x0

    move v12, v14

    .line 104
    :cond_0
    :goto_0
    sget-object v14, Lcom/androidemu/nes/input/VirtualKeypad;->DPAD_DEADZONE_VALUES:[F

    aget v14, v14, v12

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/androidemu/nes/input/VirtualKeypad;->dpadDeadZone:F

    .line 106
    const-string v14, "inBetweenPress"

    const/4 v15, 0x0

    invoke-interface {v7, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/androidemu/nes/input/VirtualKeypad;->inBetweenPress:Z

    .line 108
    const/high16 v14, 0x3f800000    # 1.0f

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/androidemu/nes/input/VirtualKeypad;->pointSizeThreshold:F

    .line 109
    const-string v14, "pointSizePress"

    const/4 v15, 0x0

    invoke-interface {v7, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 110
    const-string v14, "pointSizePressThreshold"

    const/4 v15, 0x7

    invoke-interface {v7, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 111
    .local v11, "threshold":I
    int-to-float v14, v11

    const/high16 v15, 0x41200000    # 10.0f

    div-float/2addr v14, v15

    const v15, 0x3c23d70a    # 0.01f

    sub-float/2addr v14, v15

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/androidemu/nes/input/VirtualKeypad;->pointSizeThreshold:F

    .line 114
    .end local v11    # "threshold":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androidemu/nes/input/VirtualKeypad;->dpad:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    move-object v14, v0

    const-string v15, "hideDpad"

    const/16 v16, 0x0

    move-object v0, v7

    move-object v1, v15

    move/from16 v2, v16

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    invoke-virtual {v14, v15}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->hide(Z)V

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androidemu/nes/input/VirtualKeypad;->buttons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    move-object v14, v0

    const-string v15, "hideButtons"

    const/16 v16, 0x0

    move-object v0, v7

    move-object v1, v15

    move/from16 v2, v16

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    invoke-virtual {v14, v15}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->hide(Z)V

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androidemu/nes/input/VirtualKeypad;->extraButtons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    move-object v14, v0

    const-string v15, "hideExtraButtons"

    const/16 v16, 0x0

    move-object v0, v7

    move-object v1, v15

    move/from16 v2, v16

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    invoke-virtual {v14, v15}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->hide(Z)V

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androidemu/nes/input/VirtualKeypad;->extraButtons:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    move-object v14, v0

    const-string v15, "disableExtraButtons"

    const/16 v16, 0x1

    move-object v0, v7

    move-object v1, v15

    move/from16 v2, v16

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    invoke-virtual {v14, v15}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->disable(Z)V

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androidemu/nes/input/VirtualKeypad;->selectStart:Lcom/androidemu/nes/input/VirtualKeypad$Control;

    move-object v14, v0

    const-string v15, "hideSelectStart"

    const/16 v16, 0x0

    move-object v0, v7

    move-object v1, v15

    move/from16 v2, v16

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    invoke-virtual {v14, v15}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->hide(Z)V

    .line 120
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v13

    .line 121
    .local v13, "w":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 122
    .local v5, "h":I
    int-to-float v14, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androidemu/nes/input/VirtualKeypad;->view:Landroid/view/View;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/view/View;->getWidth()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v14, v15

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/androidemu/nes/input/VirtualKeypad;->scaleX:F

    .line 123
    int-to-float v14, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androidemu/nes/input/VirtualKeypad;->view:Landroid/view/View;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/view/View;->getHeight()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v14, v15

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/androidemu/nes/input/VirtualKeypad;->scaleY:F

    .line 124
    move-object/from16 v0, p0

    iget v0, v0, Lcom/androidemu/nes/input/VirtualKeypad;->scaleX:F

    move v14, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move v15, v0

    mul-float v9, v14, v15

    .line 125
    .local v9, "sx":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/androidemu/nes/input/VirtualKeypad;->scaleY:F

    move v14, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move v15, v0

    mul-float v10, v14, v15

    .line 127
    .local v10, "sy":F
    const-string v14, "layoutMargin"

    const/4 v15, 0x2

    invoke-interface {v7, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    mul-int/lit8 v6, v14, 0x8

    .line 128
    .local v6, "margin":I
    int-to-float v14, v6

    mul-float/2addr v14, v9

    float-to-int v14, v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/androidemu/nes/input/VirtualKeypad;->marginX:I

    .line 129
    int-to-float v14, v6

    mul-float/2addr v14, v10

    float-to-int v14, v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/androidemu/nes/input/VirtualKeypad;->marginY:I

    .line 131
    invoke-static {v7}, Lcom/androidemu/nes/input/VirtualKeypad;->getControlScale(Landroid/content/SharedPreferences;)F

    move-result v4

    .line 132
    .local v4, "controlScale":F
    mul-float/2addr v9, v4

    .line 133
    mul-float/2addr v10, v4

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androidemu/nes/input/VirtualKeypad;->context:Landroid/content/Context;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 135
    .local v8, "res":Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androidemu/nes/input/VirtualKeypad;->controls:Ljava/util/ArrayList;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_3

    .line 138
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/androidemu/nes/input/VirtualKeypad;->reposition(Landroid/graphics/Rect;Landroid/content/SharedPreferences;)V

    .line 140
    new-instance v14, Landroid/graphics/Picture;

    invoke-direct {v14}, Landroid/graphics/Picture;-><init>()V

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/androidemu/nes/input/VirtualKeypad;->overlay:Landroid/graphics/Picture;

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androidemu/nes/input/VirtualKeypad;->overlay:Landroid/graphics/Picture;

    move-object v14, v0

    invoke-virtual {v14, v13, v5}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/androidemu/nes/input/VirtualKeypad;->draw(Landroid/graphics/Canvas;Landroid/content/SharedPreferences;)V

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androidemu/nes/input/VirtualKeypad;->emulator:Lcom/androidemu/Emulator;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/androidemu/nes/input/VirtualKeypad;->overlay:Landroid/graphics/Picture;

    move-object v15, v0

    invoke-virtual {v14, v15}, Lcom/androidemu/Emulator;->setOverlay(Landroid/graphics/Picture;)V

    .line 143
    return-void

    .line 103
    .end local v4    # "controlScale":F
    .end local v5    # "h":I
    .end local v6    # "margin":I
    .end local v8    # "res":Landroid/content/res/Resources;
    .end local v9    # "sx":F
    .end local v10    # "sy":F
    .end local v13    # "w":I
    :cond_2
    const/4 v14, 0x4

    if-le v12, v14, :cond_0

    const/4 v14, 0x4

    move v12, v14

    goto/16 :goto_0

    .line 135
    .restart local v4    # "controlScale":F
    .restart local v5    # "h":I
    .restart local v6    # "margin":I
    .restart local v8    # "res":Landroid/content/res/Resources;
    .restart local v9    # "sx":F
    .restart local v10    # "sy":F
    .restart local v13    # "w":I
    :cond_3
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/androidemu/nes/input/VirtualKeypad$Control;

    .line 136
    .local v3, "c":Lcom/androidemu/nes/input/VirtualKeypad$Control;
    invoke-virtual {v3, v8, v9, v10}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->load(Landroid/content/res/Resources;FF)V

    goto :goto_1
.end method
