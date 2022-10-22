.class public Lcom/androidemu/nes/input/SensorKeypad;
.super Ljava/lang/Object;
.source "SensorKeypad.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final THRESHOLD_VALUES:[F


# instance fields
.field private context:Landroid/content/Context;

.field private gameKeyListener:Lcom/androidemu/nes/input/GameKeyListener;

.field private keyStates:I

.field private threshold:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/16 v0, 0xa

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/androidemu/nes/input/SensorKeypad;->THRESHOLD_VALUES:[F

    return-void

    :array_0
    .array-data 4
        0x41f00000    # 30.0f
        0x41a00000    # 20.0f
        0x41700000    # 15.0f
        0x41200000    # 10.0f
        0x41000000    # 8.0f
        0x40c00000    # 6.0f
        0x40a00000    # 5.0f
        0x40400000    # 3.0f
        0x40000000    # 2.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v0, Lcom/androidemu/nes/input/SensorKeypad;->THRESHOLD_VALUES:[F

    const/4 v1, 0x7

    aget v0, v0, v1

    iput v0, p0, Lcom/androidemu/nes/input/SensorKeypad;->threshold:F

    .line 25
    iput-object p1, p0, Lcom/androidemu/nes/input/SensorKeypad;->context:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method public final getKeyStates()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/androidemu/nes/input/SensorKeypad;->keyStates:I

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 61
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 66
    iget-object v4, p0, Lcom/androidemu/nes/input/SensorKeypad;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 67
    .local v0, "config":Landroid/content/res/Configuration;
    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v5, :cond_2

    .line 68
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v6

    neg-float v1, v4

    .line 69
    .local v1, "leftRight":F
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v4, v5

    .line 75
    .local v3, "upDown":F
    :goto_0
    const/4 v2, 0x0

    .line 76
    .local v2, "states":I
    iget v4, p0, Lcom/androidemu/nes/input/SensorKeypad;->threshold:F

    neg-float v4, v4

    cmpg-float v4, v1, v4

    if-gez v4, :cond_3

    .line 77
    or-int/lit8 v2, v2, 0x40

    .line 86
    :cond_0
    :goto_1
    iget v4, p0, Lcom/androidemu/nes/input/SensorKeypad;->keyStates:I

    if-eq v2, v4, :cond_1

    .line 87
    iput v2, p0, Lcom/androidemu/nes/input/SensorKeypad;->keyStates:I

    .line 88
    iget-object v4, p0, Lcom/androidemu/nes/input/SensorKeypad;->gameKeyListener:Lcom/androidemu/nes/input/GameKeyListener;

    if-eqz v4, :cond_1

    .line 89
    iget-object v4, p0, Lcom/androidemu/nes/input/SensorKeypad;->gameKeyListener:Lcom/androidemu/nes/input/GameKeyListener;

    invoke-interface {v4}, Lcom/androidemu/nes/input/GameKeyListener;->onGameKeyChanged()V

    .line 91
    :cond_1
    return-void

    .line 71
    .end local v1    # "leftRight":F
    .end local v2    # "states":I
    .end local v3    # "upDown":F
    :cond_2
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v5

    neg-float v1, v4

    .line 72
    .restart local v1    # "leftRight":F
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v6

    neg-float v3, v4

    .restart local v3    # "upDown":F
    goto :goto_0

    .line 78
    .restart local v2    # "states":I
    :cond_3
    iget v4, p0, Lcom/androidemu/nes/input/SensorKeypad;->threshold:F

    cmpl-float v4, v1, v4

    if-lez v4, :cond_0

    .line 79
    or-int/lit16 v2, v2, 0x80

    goto :goto_1
.end method

.method public final setGameKeyListener(Lcom/androidemu/nes/input/GameKeyListener;)V
    .locals 4
    .param p1, "l"    # Lcom/androidemu/nes/input/GameKeyListener;

    .prologue
    .line 42
    iget-object v2, p0, Lcom/androidemu/nes/input/SensorKeypad;->gameKeyListener:Lcom/androidemu/nes/input/GameKeyListener;

    if-ne v2, p1, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    iget-object v2, p0, Lcom/androidemu/nes/input/SensorKeypad;->context:Landroid/content/Context;

    const-string v3, "sensor"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    .line 48
    .local v1, "sensorManager":Landroid/hardware/SensorManager;
    iget-object v2, p0, Lcom/androidemu/nes/input/SensorKeypad;->gameKeyListener:Lcom/androidemu/nes/input/GameKeyListener;

    if-eqz v2, :cond_2

    .line 49
    invoke-virtual {v1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 51
    :cond_2
    iput-object p1, p0, Lcom/androidemu/nes/input/SensorKeypad;->gameKeyListener:Lcom/androidemu/nes/input/GameKeyListener;

    .line 52
    iget-object v2, p0, Lcom/androidemu/nes/input/SensorKeypad;->gameKeyListener:Lcom/androidemu/nes/input/GameKeyListener;

    if-eqz v2, :cond_0

    .line 53
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 55
    .local v0, "sensor":Landroid/hardware/Sensor;
    const/4 v2, 0x1

    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0
.end method

.method public final setSensitivity(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 33
    if-gez p1, :cond_1

    .line 34
    const/4 p1, 0x0

    .line 38
    :cond_0
    :goto_0
    sget-object v0, Lcom/androidemu/nes/input/SensorKeypad;->THRESHOLD_VALUES:[F

    aget v0, v0, p1

    iput v0, p0, Lcom/androidemu/nes/input/SensorKeypad;->threshold:F

    .line 39
    return-void

    .line 35
    :cond_1
    const/16 v0, 0x9

    if-le p1, v0, :cond_0

    .line 36
    const/16 p1, 0x9

    goto :goto_0
.end method
