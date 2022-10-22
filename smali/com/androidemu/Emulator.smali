.class public Lcom/androidemu/Emulator;
.super Ljava/lang/Object;
.source "Emulator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidemu/Emulator$FrameUpdateListener;,
        Lcom/androidemu/Emulator$OnFrameDrawnListener;
    }
.end annotation


# static fields
.field public static final GAMEPAD_A:I = 0x1

.field public static final GAMEPAD_AB:I = 0x3

.field public static final GAMEPAD_A_TURBO:I = 0x100

.field public static final GAMEPAD_B:I = 0x2

.field public static final GAMEPAD_B_TURBO:I = 0x200

.field public static final GAMEPAD_DOWN:I = 0x20

.field public static final GAMEPAD_DOWN_LEFT:I = 0x60

.field public static final GAMEPAD_DOWN_RIGHT:I = 0xa0

.field public static final GAMEPAD_LEFT:I = 0x40

.field public static final GAMEPAD_RIGHT:I = 0x80

.field public static final GAMEPAD_SELECT:I = 0x4

.field public static final GAMEPAD_START:I = 0x8

.field public static final GAMEPAD_UP:I = 0x10

.field public static final GAMEPAD_UP_LEFT:I = 0x50

.field public static final GAMEPAD_UP_RIGHT:I = 0x90

.field private static emulator:Lcom/androidemu/Emulator;

.field private static engineLib:Ljava/lang/String;


# instance fields
.field private cheats:Lcom/androidemu/Cheats;

.field private cheatsEnabled:Z

.field private romFileName:Ljava/lang/String;

.field private thread:Ljava/lang/Thread;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "libDir"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/androidemu/Emulator;->initialize(Ljava/lang/String;I)Z

    .line 63
    new-instance v0, Lcom/androidemu/Emulator$1;

    invoke-direct {v0, p0}, Lcom/androidemu/Emulator$1;-><init>(Lcom/androidemu/Emulator;)V

    iput-object v0, p0, Lcom/androidemu/Emulator;->thread:Ljava/lang/Thread;

    .line 68
    iget-object v0, p0, Lcom/androidemu/Emulator;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/androidemu/Emulator;)V
    .locals 0
    .param p0, "x0"    # Lcom/androidemu/Emulator;

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/androidemu/Emulator;->nativeRun()V

    return-void
.end method

.method public static createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/androidemu/Emulator;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "engine"    # Ljava/lang/String;

    .prologue
    .line 41
    sget-object v1, Lcom/androidemu/Emulator;->emulator:Lcom/androidemu/Emulator;

    if-nez v1, :cond_0

    .line 42
    const-string v1, "emu"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 44
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/lib"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "libDir":Ljava/lang/String;
    sget-object v1, Lcom/androidemu/Emulator;->engineLib:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 47
    sput-object p1, Lcom/androidemu/Emulator;->engineLib:Ljava/lang/String;

    .line 48
    invoke-static {v0, p1}, Lcom/androidemu/Emulator;->loadEngine(Ljava/lang/String;Ljava/lang/String;)Z

    .line 51
    :cond_1
    sget-object v1, Lcom/androidemu/Emulator;->emulator:Lcom/androidemu/Emulator;

    if-nez v1, :cond_2

    .line 52
    new-instance v1, Lcom/androidemu/Emulator;

    invoke-direct {v1, v0}, Lcom/androidemu/Emulator;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/androidemu/Emulator;->emulator:Lcom/androidemu/Emulator;

    .line 53
    :cond_2
    sget-object v1, Lcom/androidemu/Emulator;->emulator:Lcom/androidemu/Emulator;

    return-object v1
.end method

.method public static getInstance()Lcom/androidemu/Emulator;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/androidemu/Emulator;->emulator:Lcom/androidemu/Emulator;

    return-object v0
.end method

.method private native initialize(Ljava/lang/String;I)Z
.end method

.method private static native loadEngine(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native nativeLoadROM(Ljava/lang/String;)Z
.end method

.method private native nativeRun()V
.end method

.method private native nativeUnloadROM()V
.end method


# virtual methods
.method public final enableCheats(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/androidemu/Emulator;->cheatsEnabled:Z

    .line 73
    iget-object v0, p0, Lcom/androidemu/Emulator;->romFileName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/androidemu/Emulator;->cheats:Lcom/androidemu/Cheats;

    if-nez v0, :cond_2

    .line 77
    new-instance v0, Lcom/androidemu/Cheats;

    iget-object v1, p0, Lcom/androidemu/Emulator;->romFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/androidemu/Cheats;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/androidemu/Emulator;->cheats:Lcom/androidemu/Cheats;

    goto :goto_0

    .line 78
    :cond_2
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/androidemu/Emulator;->cheats:Lcom/androidemu/Cheats;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/androidemu/Emulator;->cheats:Lcom/androidemu/Cheats;

    invoke-virtual {v0}, Lcom/androidemu/Cheats;->destroy()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androidemu/Emulator;->cheats:Lcom/androidemu/Cheats;

    goto :goto_0
.end method

.method public native fireLightGun(II)V
.end method

.method public final getCheats()Lcom/androidemu/Cheats;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/androidemu/Emulator;->cheats:Lcom/androidemu/Cheats;

    return-object v0
.end method

.method public native getOption(Ljava/lang/String;)I
.end method

.method public native getScreenshot(Ljava/nio/Buffer;)V
.end method

.method public native getVideoHeight()I
.end method

.method public native getVideoWidth()I
.end method

.method public final loadROM(Ljava/lang/String;)Z
    .locals 1
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/androidemu/Emulator;->nativeLoadROM(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 95
    :goto_0
    return v0

    .line 92
    :cond_0
    iput-object p1, p0, Lcom/androidemu/Emulator;->romFileName:Ljava/lang/String;

    .line 93
    iget-boolean v0, p0, Lcom/androidemu/Emulator;->cheatsEnabled:Z

    if-eqz v0, :cond_1

    .line 94
    new-instance v0, Lcom/androidemu/Cheats;

    invoke-direct {v0, p1}, Lcom/androidemu/Cheats;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/androidemu/Emulator;->cheats:Lcom/androidemu/Cheats;

    .line 95
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public native loadState(Ljava/lang/String;)Z
.end method

.method public native pause()V
.end method

.method public native power()V
.end method

.method public native processTrackball(IIII)V
.end method

.method public native reset()V
.end method

.method public native resume()V
.end method

.method public native saveState(Ljava/lang/String;)Z
.end method

.method public native setFrameUpdateListener(Lcom/androidemu/Emulator$FrameUpdateListener;)V
.end method

.method public native setKeyStates(I)V
.end method

.method public setOption(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 137
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/androidemu/Emulator;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public native setOption(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public setOption(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 133
    if-eqz p2, :cond_0

    const-string v0, "true"

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/androidemu/Emulator;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    return-void

    .line 133
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method

.method public native setSurface(Landroid/view/SurfaceHolder;)V
.end method

.method public native setSurfaceRegion(IIII)V
.end method

.method public final unloadROM()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-direct {p0}, Lcom/androidemu/Emulator;->nativeUnloadROM()V

    .line 101
    iput-object v0, p0, Lcom/androidemu/Emulator;->cheats:Lcom/androidemu/Cheats;

    .line 102
    iput-object v0, p0, Lcom/androidemu/Emulator;->romFileName:Ljava/lang/String;

    .line 103
    return-void
.end method
