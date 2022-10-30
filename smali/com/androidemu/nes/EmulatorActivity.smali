.class public Lcom/androidemu/nes/EmulatorActivity;
.super Landroid/app/Activity;
.source "EmulatorActivity.java"

# interfaces
.implements Lcom/androidemu/Emulator$FrameUpdateListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/androidemu/EmulatorView$OnTrackballListener;
.implements Lcom/androidemu/nes/input/GameKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;
    }
.end annotation


# static fields
.field private static final DIALOG_QUIT_GAME:I = 0x1

.field private static final DIALOG_REPLACE_GAME:I = 0x2

.field private static final DIALOG_WIFI_CONNECT:I = 0x3

.field private static final GAMEPAD_DIRECTION:I = 0xf0

.field private static final GAMEPAD_LEFT_RIGHT:I = 0xc0

.field private static final GAMEPAD_UP_DOWN:I = 0x30

.field private static final LOG_TAG:Ljava/lang/String; = "Nesoid"

.field private static final MESSAGE_SYNC_CLIENT:I = 0x3e8

.field private static final NETPLAY_TCP_PORT:I = 0x14f9

.field private static final REQUEST_BT_DEVICE:I = 0x5

.field private static final REQUEST_ENABLE_BT_CLIENT:I = 0x4

.field private static final REQUEST_ENABLE_BT_SERVER:I = 0x3

.field private static final REQUEST_LOAD_STATE:I = 0x1

.field private static final REQUEST_SAVE_STATE:I = 0x2

.field private static final SENSOR_MAP_DPAD:[I


# instance fields
.field private autoSyncClientInterval:I

.field private displayMetrics:Landroid/util/DisplayMetrics;

.field private emulator:Lcom/androidemu/Emulator;

.field private emulatorView:Lcom/androidemu/EmulatorView;

.field private fastForwardKey:I

.field private fastForwardSpeed:F

.field private fdsTotalSides:I

.field private flipScreen:Z

.field private inFastForward:Z

.field private keyboard:Lcom/androidemu/nes/input/Keyboard;

.field private mediaScanner:Lcom/androidemu/nes/MediaScanner;

.field private netPlayHandler:Landroid/os/Handler;

.field private netPlayService:Lcom/androidemu/nes/NetPlayService;

.field private newIntent:Landroid/content/Intent;

.field private quickLoadKey:I

.field private quickSaveKey:I

.field private screenshotKey:I

.field private sensor:Lcom/androidemu/nes/input/SensorKeypad;

.field private final sensorMappings:[I

.field private sharedPrefs:Landroid/content/SharedPreferences;

.field private surfaceHeight:I

.field private surfaceRegion:Landroid/graphics/Rect;

.field private surfaceWidth:I

.field private trackballSensitivity:I

.field private vkeypad:Lcom/androidemu/nes/input/VirtualKeypad;

.field private waitDialog:Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 778
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/androidemu/nes/EmulatorActivity;->SENSOR_MAP_DPAD:[I

    .line 52
    return-void

    .line 778
    nop

    :array_0
    .array-data 4
        0x40
        0x80
        0x10
        0x20
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 84
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->surfaceRegion:Landroid/graphics/Rect;

    .line 91
    sget-object v0, Lcom/androidemu/nes/EmulatorActivity;->SENSOR_MAP_DPAD:[I

    iput-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->sensorMappings:[I

    .line 106
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 932
    new-instance v0, Lcom/androidemu/nes/EmulatorActivity$1;

    invoke-direct {v0, p0}, Lcom/androidemu/nes/EmulatorActivity$1;-><init>(Lcom/androidemu/nes/EmulatorActivity;)V

    iput-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayHandler:Landroid/os/Handler;

    .line 52
    return-void
.end method

.method static synthetic access$0(Lcom/androidemu/nes/EmulatorActivity;)Lcom/androidemu/nes/NetPlayService;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayService:Lcom/androidemu/nes/NetPlayService;

    return-object v0
.end method

.method static synthetic access$1(Lcom/androidemu/nes/EmulatorActivity;)V
    .locals 0

    .prologue
    .line 715
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->pauseEmulator()V

    return-void
.end method

.method static synthetic access$10(Lcom/androidemu/nes/EmulatorActivity;)V
    .locals 0

    .prologue
    .line 1165
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->startAutoSyncClient()V

    return-void
.end method

.method static synthetic access$11(Lcom/androidemu/nes/EmulatorActivity;)V
    .locals 0

    .prologue
    .line 719
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->resumeEmulator()V

    return-void
.end method

.method static synthetic access$12(Lcom/androidemu/nes/EmulatorActivity;Lcom/androidemu/nes/NetPlayService;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayService:Lcom/androidemu/nes/NetPlayService;

    return-void
.end method


.method static synthetic access$14(Lcom/androidemu/nes/EmulatorActivity;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->newIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$15(Lcom/androidemu/nes/EmulatorActivity;)Z
    .locals 1

    .prologue
    .line 893
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->loadROM()Z

    move-result v0

    return v0
.end method

.method static synthetic access$16(Lcom/androidemu/nes/EmulatorActivity;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/androidemu/nes/EmulatorActivity;->newIntent:Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$17(Lcom/androidemu/nes/EmulatorActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1049
    invoke-direct {p0, p1, p2}, Lcom/androidemu/nes/EmulatorActivity;->onWifiConnect(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$18(Lcom/androidemu/nes/EmulatorActivity;)V
    .locals 0

    .prologue
    .line 1007
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->ensureDiscoverable()V

    return-void
.end method

.method static synthetic access$2(Lcom/androidemu/nes/EmulatorActivity;)V
    .locals 0

    .prologue
    .line 1114
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->onNetPlaySync()V

    return-void
.end method

.method static synthetic access$3(Lcom/androidemu/nes/EmulatorActivity;)Lcom/androidemu/Emulator;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    return-object v0
.end method

.method static synthetic access$4(Lcom/androidemu/nes/EmulatorActivity;)V
    .locals 0

    .prologue
    .line 1153
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->applyNetplaySettings()V

    return-void
.end method

.method static synthetic access$5(Lcom/androidemu/nes/EmulatorActivity;)Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->waitDialog:Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;

    return-object v0
.end method

.method static synthetic access$6(Lcom/androidemu/nes/EmulatorActivity;Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/androidemu/nes/EmulatorActivity;->waitDialog:Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;

    return-void
.end method

.method static synthetic access$7(Lcom/androidemu/nes/EmulatorActivity;)V
    .locals 0

    .prologue
    .line 1127
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->onDisconnect()V

    return-void
.end method

.method static synthetic access$8(Lcom/androidemu/nes/EmulatorActivity;)Ljava/io/File;
    .locals 1

    .prologue
    .line 1246
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->getTempStateFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9(Ljava/io/File;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1263
    invoke-static {p0, p1}, Lcom/androidemu/nes/EmulatorActivity;->writeFile(Ljava/io/File;[B)V

    return-void
.end method

.method static synthetic access$200(Lcom/androidemu/nes/EmulatorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/androidemu/nes/EmulatorActivity;

    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->onLoadState()V

    return-void
.end method

.method static synthetic access$201(Lcom/androidemu/nes/EmulatorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/androidemu/nes/EmulatorActivity;

    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->onSaveState()V

    return-void
.end method

.method static synthetic access$203(Lcom/androidemu/nes/EmulatorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/androidemu/nes/EmulatorActivity;

    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->onFastForward()V

    return-void
.end method

.method static synthetic access$205(Lcom/androidemu/nes/EmulatorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/androidemu/nes/EmulatorActivity;

    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->doReset()V

    return-void
.end method

.method static synthetic access$206(Lcom/androidemu/nes/EmulatorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/androidemu/nes/EmulatorActivity;

    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->doPower()V

    return-void
.end method

.method static synthetic access$207(Lcom/androidemu/nes/EmulatorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/androidemu/nes/EmulatorActivity;

    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->onScreenshot()V

    return-void
.end method

.method private applyNetplaySettings()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1154
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    const-string v1, "secondController"

    const-string v2, "gamepad"

    invoke-virtual {v0, v1, v2}, Lcom/androidemu/Emulator;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    const-string v1, "enableCheats"

    invoke-virtual {v0, v1, v3}, Lcom/androidemu/Emulator;->setOption(Ljava/lang/String;Z)V

    .line 1156
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "maxFramesAhead"

    invoke-virtual {p0, v0, v1}, Lcom/androidemu/nes/EmulatorActivity;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 1157
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "autoSyncClient"

    invoke-virtual {p0, v0, v1}, Lcom/androidemu/nes/EmulatorActivity;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 1159
    iget-boolean v0, p0, Lcom/androidemu/nes/EmulatorActivity;->inFastForward:Z

    if-eqz v0, :cond_0

    .line 1160
    iput-boolean v3, p0, Lcom/androidemu/nes/EmulatorActivity;->inFastForward:Z

    .line 1161
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/androidemu/nes/EmulatorActivity;->setGameSpeed(F)V

    .line 1163
    :cond_0
    return-void
.end method

.method private checkBluetoothEnabled(I)Z
    .locals 2
    .param p1, "request"    # I

    .prologue
    .line 725
    invoke-static {}, Lcom/androidemu/nes/wrapper/Wrapper;->isBluetoothEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 726
    const/4 v1, 0x1

    .line 730
    :goto_0
    return v1

    .line 728
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 729
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0, p1}, Lcom/androidemu/nes/EmulatorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 730
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createNetWaitDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Dialog;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 922
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->waitDialog:Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;

    if-eqz v0, :cond_0

    .line 923
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->waitDialog:Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;

    invoke-virtual {v0}, Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;->dismiss()V

    .line 924
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->waitDialog:Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;

    .line 926
    :cond_0
    new-instance v0, Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;

    invoke-direct {v0, p0}, Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;-><init>(Lcom/androidemu/nes/EmulatorActivity;)V

    iput-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->waitDialog:Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;

    .line 927
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->waitDialog:Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;

    invoke-virtual {v0, p1}, Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 928
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->waitDialog:Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;

    invoke-virtual {v0, p2}, Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 929
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->waitDialog:Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;

    return-object v0
.end method

.method private createQuitGameDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 815
    new-instance v0, Lcom/androidemu/nes/EmulatorActivity$2;

    invoke-direct {v0, p0}, Lcom/androidemu/nes/EmulatorActivity$2;-><init>(Lcom/androidemu/nes/EmulatorActivity;)V

    .line 828
    .local v0, "l":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 830
    const v2, 0x7f06000b

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 831
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 828
    return-object v1
.end method

.method private createReplaceGameDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 836
    new-instance v0, Lcom/androidemu/nes/EmulatorActivity$3;

    invoke-direct {v0, p0}, Lcom/androidemu/nes/EmulatorActivity$3;-><init>(Lcom/androidemu/nes/EmulatorActivity;)V

    .line 846
    .local v0, "l":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 847
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 848
    const v2, 0x7f070010

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 849
    const v2, 0x7f070011

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 850
    const v2, 0x1040013

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 851
    const v2, 0x1040009

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 852
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 846
    return-object v1
.end method

.method private createWifiConnectDialog()Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 857
    new-instance v0, Lcom/androidemu/nes/EmulatorActivity$4;

    invoke-direct {v0, p0}, Lcom/androidemu/nes/EmulatorActivity$4;-><init>(Lcom/androidemu/nes/EmulatorActivity;)V

    .line 868
    .local v0, "l":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 869
    const v2, 0x7f070020

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 870
    invoke-virtual {p0}, Lcom/androidemu/nes/EmulatorActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 871
    const v3, 0x7f03000b

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 870
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 872
    const v2, 0x104000a

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 873
    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 874
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 868
    return-object v1
.end method

.method private doPower()V
    .locals 1

    new-instance v0, Landroid/content/Intent;

    :try_start_0
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayService:Lcom/androidemu/nes/NetPlayService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayService:Lcom/androidemu/nes/NetPlayService;

    invoke-virtual {v0}, Lcom/androidemu/nes/NetPlayService;->sendPowerROM()V

    :cond_1
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v0}, Lcom/androidemu/Emulator;->power()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0

    return-void
.end method

.method private doReset()V
    .locals 1

    new-instance v0, Landroid/content/Intent;

    :try_start_0
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayService:Lcom/androidemu/nes/NetPlayService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayService:Lcom/androidemu/nes/NetPlayService;

    invoke-virtual {v0}, Lcom/androidemu/nes/NetPlayService;->sendResetROM()V

    :cond_1
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v0}, Lcom/androidemu/Emulator;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0

    return-void
.end method

.method private ensureDiscoverable()V
    .locals 2

    .prologue
    .line 1008
    invoke-static {}, Lcom/androidemu/nes/wrapper/Wrapper;->isBluetoothDiscoverable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1009
    new-instance v0, Landroid/content/Intent;

    .line 1010
    const-string v1, "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

    .line 1009
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1011
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/androidemu/nes/EmulatorActivity;->startActivity(Landroid/content/Intent;)V

    .line 1013
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private flipGameKeys(I)I
    .locals 2
    .param p1, "keys"    # I

    .prologue
    .line 743
    and-int/lit16 v0, p1, -0xf1

    .line 744
    .local v0, "newKeys":I
    and-int/lit8 v1, p1, 0x40

    if-eqz v1, :cond_0

    .line 745
    or-int/lit16 v0, v0, 0x80

    .line 746
    :cond_0
    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_1

    .line 747
    or-int/lit8 v0, v0, 0x40

    .line 748
    :cond_1
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_2

    .line 749
    or-int/lit8 v0, v0, 0x20

    .line 750
    :cond_2
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_3

    .line 751
    or-int/lit8 v0, v0, 0x10

    .line 753
    :cond_3
    return v0
.end method

.method private getEmulatorEngine(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 775
    const-string v0, "nes"

    return-object v0
.end method

.method private getQuickSlotFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1324
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->getROMFilePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/androidemu/nes/StateSlotsActivity;->getSlotFileName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getROMFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 878
    invoke-virtual {p0}, Lcom/androidemu/nes/EmulatorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getScalingMode(Ljava/lang/String;)I
    .locals 1
    .param p0, "mode"    # Ljava/lang/String;

    .prologue
    .line 757
    const-string v0, "original"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 758
    const/4 v0, 0x0

    .line 763
    :goto_0
    return v0

    .line 759
    :cond_0
    const-string v0, "2x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 760
    const/4 v0, 0x1

    goto :goto_0

    .line 761
    :cond_1
    const-string v0, "proportional"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 762
    const/4 v0, 0x2

    goto :goto_0

    .line 763
    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private static getScreenOrientation(Ljava/lang/String;)I
    .locals 1
    .param p0, "orientation"    # Ljava/lang/String;

    .prologue
    .line 767
    const-string v0, "landscape"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 768
    const/4 v0, 0x0

    .line 771
    :goto_0
    return v0

    .line 769
    :cond_0
    const-string v0, "portrait"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 770
    const/4 v0, 0x1

    goto :goto_0

    .line 771
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getScreenshot()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 1312
    iget-object v4, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v4}, Lcom/androidemu/Emulator;->getVideoWidth()I

    move-result v3

    .line 1313
    .local v3, "w":I
    iget-object v4, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v4}, Lcom/androidemu/Emulator;->getVideoHeight()I

    move-result v2

    .line 1315
    .local v2, "h":I
    mul-int v4, v3, v2

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1316
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    iget-object v4, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v4, v1}, Lcom/androidemu/Emulator;->getScreenshot(Ljava/nio/Buffer;)V

    .line 1318
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1319
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 1320
    return-object v0
.end method

.method private getTempStateFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 1247
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/androidemu/nes/EmulatorActivity;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "saved_state"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private isROMSupported(Ljava/lang/String;)Z
    .locals 6
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 882
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 884
    invoke-virtual {p0}, Lcom/androidemu/nes/EmulatorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 885
    const/high16 v3, 0x7f060000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 886
    .local v1, "filters":[Ljava/lang/String;
    array-length v2, v1

    move v3, v5

    :goto_0
    if-lt v3, v2, :cond_0

    move v2, v5

    .line 890
    :goto_1
    return v2

    .line 886
    :cond_0
    aget-object v0, v1, v3

    .line 887
    .local v0, "f":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 888
    const/4 v2, 0x1

    goto :goto_1

    .line 886
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private loadFdsRom(Landroid/content/SharedPreferences;)V
    .locals 5
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 809
    const-string v0, "fdsRom"

    .line 810
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    const-string v2, "fdsRom"

    const-string v3, "fdsRom"

    const/4 v4, 0x0

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/androidemu/Emulator;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    return-void
.end method

.method private loadGameGenie(Landroid/content/SharedPreferences;)V
    .locals 6
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v5, 0x0

    .line 803
    const-string v2, "enableGameGenie"

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 804
    .local v0, "enableGG":Z
    const-string v1, "gameGenieRom"

    .line 805
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    const-string v3, "gameGenieRom"

    if-eqz v0, :cond_0

    const-string v4, "gameGenieRom"

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v2, v3, v4}, Lcom/androidemu/Emulator;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    return-void

    :cond_0
    move-object v4, v5

    .line 805
    goto :goto_0
.end method

.method private loadKeyBindings(Landroid/content/SharedPreferences;)V
    .locals 8
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 786
    sget-object v1, Lcom/androidemu/nes/EmulatorSettings;->gameKeys:[I

    .line 787
    .local v1, "gameKeys":[I
    invoke-static {p0}, Lcom/androidemu/nes/DefaultPreferences;->getKeyMappings(Landroid/content/Context;)[I

    move-result-object v0

    .line 788
    .local v0, "defaultKeys":[I
    iget-object v4, p0, Lcom/androidemu/nes/EmulatorActivity;->keyboard:Lcom/androidemu/nes/input/Keyboard;

    invoke-virtual {v4}, Lcom/androidemu/nes/input/Keyboard;->clearKeyMap()V

    .line 790
    sget-object v2, Lcom/androidemu/nes/EmulatorSettings;->gameKeysPref:[Ljava/lang/String;

    .line 791
    .local v2, "gameKeysPref":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-lt v3, v4, :cond_0

    .line 795
    sget-object v2, Lcom/androidemu/nes/EmulatorSettings;->gameKeysPref2:[Ljava/lang/String;

    .line 796
    const/4 v3, 0x0

    :goto_1
    array-length v4, v2

    if-lt v3, v4, :cond_1

    .line 800
    return-void

    .line 792
    :cond_0
    iget-object v4, p0, Lcom/androidemu/nes/EmulatorActivity;->keyboard:Lcom/androidemu/nes/input/Keyboard;

    aget v5, v1, v3

    .line 793
    aget-object v6, v2, v3

    aget v7, v0, v3

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 792
    invoke-virtual {v4, v5, v6}, Lcom/androidemu/nes/input/Keyboard;->mapKey(II)V

    .line 791
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 797
    :cond_1
    iget-object v4, p0, Lcom/androidemu/nes/EmulatorActivity;->keyboard:Lcom/androidemu/nes/input/Keyboard;

    aget v5, v1, v3

    shl-int/lit8 v5, v5, 0x10

    .line 798
    aget-object v6, v2, v3

    const/4 v7, 0x0

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 797
    invoke-virtual {v4, v5, v6}, Lcom/androidemu/nes/input/Keyboard;->mapKey(II)V

    .line 796
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private loadROM()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 894
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->getROMFilePath()Ljava/lang/String;

    move-result-object v0

    .line 896
    .local v0, "path":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/androidemu/nes/EmulatorActivity;->isROMSupported(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 897
    const v1, 0x7f07000f

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 898
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 899
    invoke-virtual {p0}, Lcom/androidemu/nes/EmulatorActivity;->finish()V

    move v1, v2

    .line 917
    :goto_0
    return v1

    .line 902
    :cond_0
    iget-object v1, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v1, v0}, Lcom/androidemu/Emulator;->loadROM(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 903
    const v1, 0x7f07000e

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 904
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 905
    invoke-virtual {p0}, Lcom/androidemu/nes/EmulatorActivity;->finish()V

    move v1, v2

    .line 906
    goto :goto_0

    .line 909
    :cond_1
    iput-boolean v2, p0, Lcom/androidemu/nes/EmulatorActivity;->inFastForward:Z

    .line 911
    iget-object v1, p0, Lcom/androidemu/nes/EmulatorActivity;->emulatorView:Lcom/androidemu/EmulatorView;

    .line 912
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v2}, Lcom/androidemu/Emulator;->getVideoWidth()I

    move-result v2

    iget-object v3, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v3}, Lcom/androidemu/Emulator;->getVideoHeight()I

    move-result v3

    .line 911
    invoke-virtual {v1, v2, v3}, Lcom/androidemu/EmulatorView;->setActualSize(II)V

    .line 913
    iget-object v1, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    const-string v2, "fdsTotalSides"

    invoke-virtual {v1, v2}, Lcom/androidemu/Emulator;->getOption(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/androidemu/nes/EmulatorActivity;->fdsTotalSides:I

    .line 915
    iget-object v1, p0, Lcom/androidemu/nes/EmulatorActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "quickLoadOnStart"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 916
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->quickLoad()V

    :cond_2
    move v1, v4

    .line 917
    goto :goto_0
.end method

.method private loadState(Ljava/lang/String;)V
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1297
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1298
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1309
    :goto_0
    return-void

    .line 1301
    :cond_0
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->pauseEmulator()V

    .line 1303
    :try_start_0
    iget-object v1, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayService:Lcom/androidemu/nes/NetPlayService;

    if-eqz v1, :cond_1

    .line 1304
    iget-object v1, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayService:Lcom/androidemu/nes/NetPlayService;

    invoke-static {v0}, Lcom/androidemu/nes/EmulatorActivity;->readFile(Ljava/io/File;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/androidemu/nes/NetPlayService;->sendSavedState([B)V

    .line 1305
    :cond_1
    iget-object v1, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v1, p1}, Lcom/androidemu/Emulator;->loadState(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1308
    :goto_1
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->resumeEmulator()V

    goto :goto_0

    .line 1307
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private static makeKeyStates(II)I
    .locals 2
    .param p0, "p1"    # I
    .param p1, "p2"    # I

    .prologue
    .line 450
    shl-int/lit8 v0, p1, 0x10

    const v1, 0xffff

    and-int/2addr v1, p0

    or-int/2addr v0, v1

    return v0
.end method

.method private onBluetoothClient()V
    .locals 2

    .prologue
    .line 1110
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/androidemu/nes/DeviceListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1111
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/androidemu/nes/EmulatorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1112
    return-void
.end method

.method private onBluetoothConnect(Ljava/lang/String;)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 1099
    :try_start_0
    new-instance v1, Lcom/androidemu/nes/NetPlayService;

    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Lcom/androidemu/nes/NetPlayService;-><init>(Landroid/os/Handler;)V

    .line 1100
    .local v1, "np":Lcom/androidemu/nes/NetPlayService;
    invoke-virtual {v1, p1}, Lcom/androidemu/nes/NetPlayService;->bluetoothConnect(Ljava/lang/String;)V

    .line 1101
    iput-object v1, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayService:Lcom/androidemu/nes/NetPlayService;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1105
    const v2, 0x7f070022

    invoke-virtual {p0, v2}, Lcom/androidemu/nes/EmulatorActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1106
    const v3, 0x7f070031

    invoke-virtual {p0, v3}, Lcom/androidemu/nes/EmulatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1105
    invoke-direct {p0, v2, v3}, Lcom/androidemu/nes/EmulatorActivity;->createNetWaitDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Dialog;

    move-result-object v2

    .line 1106
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 1107
    .end local v1    # "np":Lcom/androidemu/nes/NetPlayService;
    :goto_0
    return-void

    .line 1102
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1103
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method private onBluetoothServer()V
    .locals 4

    .prologue
    .line 1079
    :try_start_0
    new-instance v1, Lcom/androidemu/nes/NetPlayService;

    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Lcom/androidemu/nes/NetPlayService;-><init>(Landroid/os/Handler;)V

    .line 1080
    .local v1, "np":Lcom/androidemu/nes/NetPlayService;
    invoke-virtual {v1}, Lcom/androidemu/nes/NetPlayService;->bluetoothListen()V

    .line 1081
    iput-object v1, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayService:Lcom/androidemu/nes/NetPlayService;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1086
    const v2, 0x7f070021

    invoke-virtual {p0, v2}, Lcom/androidemu/nes/EmulatorActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1087
    const v3, 0x7f070032

    invoke-virtual {p0, v3}, Lcom/androidemu/nes/EmulatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1086
    invoke-direct {p0, v2, v3}, Lcom/androidemu/nes/EmulatorActivity;->createNetWaitDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Dialog;

    .line 1088
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity;->waitDialog:Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;

    .line 1089
    new-instance v3, Lcom/androidemu/nes/EmulatorActivity$5;

    invoke-direct {v3, p0}, Lcom/androidemu/nes/EmulatorActivity$5;-><init>(Lcom/androidemu/nes/EmulatorActivity;)V

    .line 1088
    invoke-virtual {v2, v3}, Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 1094
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity;->waitDialog:Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;

    invoke-virtual {v2}, Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;->show()V

    .line 1095
    .end local v1    # "np":Lcom/androidemu/nes/NetPlayService;
    :goto_0
    return-void

    .line 1082
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1083
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method private onChangeDisk()V
    .locals 8

    .prologue
    .line 1191
    new-instance v2, Lcom/androidemu/nes/EmulatorActivity$6;

    invoke-direct {v2, p0}, Lcom/androidemu/nes/EmulatorActivity$6;-><init>(Lcom/androidemu/nes/EmulatorActivity;)V

    .line 1198
    .local v2, "l":Landroid/content/DialogInterface$OnClickListener;
    iget v4, p0, Lcom/androidemu/nes/EmulatorActivity;->fdsTotalSides:I

    new-array v1, v4, [Ljava/lang/String;

    .line 1199
    .local v1, "items":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-lt v0, v4, :cond_0

    .line 1203
    iget-object v4, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    const-string v5, "fdsCurrentDisk"

    invoke-virtual {v4, v5}, Lcom/androidemu/Emulator;->getOption(Ljava/lang/String;)I

    move-result v3

    .line 1205
    .local v3, "selected":I
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1206
    const v5, 0x7f07001b

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 1207
    invoke-virtual {v4, v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 1208
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1209
    return-void

    .line 1200
    .end local v3    # "selected":I
    :cond_0
    const v4, 0x7f07001c

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 1201
    div-int/lit8 v7, v0, 0x2

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    rem-int/lit8 v7, v0, 0x2

    if-nez v7, :cond_1

    const/16 v7, 0x41

    :goto_1
    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1200
    invoke-virtual {p0, v4, v5}, Lcom/androidemu/nes/EmulatorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    .line 1199
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1201
    :cond_1
    const/16 v7, 0x42

    goto :goto_1
.end method

.method private onDisconnect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1128
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayService:Lcom/androidemu/nes/NetPlayService;

    if-nez v0, :cond_0

    .line 1138
    :goto_0
    return-void

    .line 1131
    :cond_0
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "enableCheats"

    invoke-virtual {p0, v0, v1}, Lcom/androidemu/nes/EmulatorActivity;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 1132
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "secondController"

    invoke-virtual {p0, v0, v1}, Lcom/androidemu/nes/EmulatorActivity;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 1133
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->stopAutoSyncClient()V

    .line 1135
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v0, v2}, Lcom/androidemu/Emulator;->setFrameUpdateListener(Lcom/androidemu/Emulator$FrameUpdateListener;)V

    .line 1136
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayService:Lcom/androidemu/nes/NetPlayService;

    invoke-virtual {v0}, Lcom/androidemu/nes/NetPlayService;->disconnect()V

    .line 1137
    iput-object v2, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayService:Lcom/androidemu/nes/NetPlayService;

    goto :goto_0
.end method

.method private onFastForward()V
    .locals 1

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayService:Lcom/androidemu/nes/NetPlayService;

    if-eqz v0, :cond_0

    .line 1187
    :goto_0
    return-void

    .line 1185
    :cond_0
    iget-boolean v0, p0, Lcom/androidemu/nes/EmulatorActivity;->inFastForward:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/androidemu/nes/EmulatorActivity;->inFastForward:Z

    .line 1186
    iget-boolean v0, p0, Lcom/androidemu/nes/EmulatorActivity;->inFastForward:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/androidemu/nes/EmulatorActivity;->fastForwardSpeed:F

    :goto_2
    invoke-direct {p0, v0}, Lcom/androidemu/nes/EmulatorActivity;->setGameSpeed(F)V

    goto :goto_0

    .line 1185
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 1186
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_2
.end method

.method private onLoadState()V
    .locals 2

    .prologue
    .line 1141
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/androidemu/nes/StateSlotsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1142
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/androidemu/nes/EmulatorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1143
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/androidemu/nes/EmulatorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1144
    return-void
.end method

.method private onNetPlaySync()V
    .locals 3

    .prologue
    .line 1115
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->pauseEmulator()V

    .line 1117
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->getTempStateFile()Ljava/io/File;

    move-result-object v0

    .line 1119
    .local v0, "file":Ljava/io/File;
    :try_start_0
    iget-object v1, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/androidemu/Emulator;->saveState(Ljava/lang/String;)Z

    .line 1120
    iget-object v1, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayService:Lcom/androidemu/nes/NetPlayService;

    invoke-static {v0}, Lcom/androidemu/nes/EmulatorActivity;->readFile(Ljava/io/File;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/androidemu/nes/NetPlayService;->sendSavedState([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1122
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1124
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->resumeEmulator()V

    .line 1125
    return-void

    .line 1121
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private onSaveState()V
    .locals 3

    .prologue
    .line 1147
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/androidemu/nes/StateSlotsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1148
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/androidemu/nes/EmulatorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1149
    const-string v1, "saveMode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1150
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/androidemu/nes/EmulatorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1151
    return-void
.end method

.method private onScreenshot()V
    .locals 9

    .prologue
    .line 1212
    new-instance v1, Ljava/io/File;

    const-string v6, "/sdcard/screenshot"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1213
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1214
    const-string v6, "Nesoid"

    const-string v7, "Could not create directory for screenshots"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    :goto_0
    return-void

    .line 1217
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1218
    .local v3, "name":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1220
    .local v2, "file":Ljava/io/File;
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->pauseEmulator()V

    .line 1222
    const/4 v4, 0x0

    .line 1225
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1226
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .local v5, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->getScreenshot()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1227
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v0, v6, v7, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1228
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1230
    const v6, 0x7f070027

    .line 1231
    const/4 v7, 0x0

    .line 1230
    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    .line 1231
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 1233
    iget-object v6, p0, Lcom/androidemu/nes/EmulatorActivity;->mediaScanner:Lcom/androidemu/nes/MediaScanner;

    if-nez v6, :cond_1

    .line 1234
    new-instance v6, Lcom/androidemu/nes/MediaScanner;

    invoke-direct {v6, p0}, Lcom/androidemu/nes/MediaScanner;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/androidemu/nes/EmulatorActivity;->mediaScanner:Lcom/androidemu/nes/MediaScanner;

    .line 1235
    :cond_1
    iget-object v6, p0, Lcom/androidemu/nes/EmulatorActivity;->mediaScanner:Lcom/androidemu/nes/MediaScanner;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "image/png"

    invoke-virtual {v6, v7, v8}, Lcom/androidemu/nes/MediaScanner;->scanFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1238
    if-eqz v5, :cond_3

    .line 1239
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v4, v5

    .line 1243
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :goto_1
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->resumeEmulator()V

    goto :goto_0

    .line 1237
    :catchall_0
    move-exception v6

    .line 1238
    :goto_2
    if-eqz v4, :cond_2

    .line 1239
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 1240
    :cond_2
    throw v6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1241
    :catch_0
    move-exception v6

    goto :goto_1

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 1237
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :cond_3
    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private onWifiConnect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "portStr"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1050
    const/4 v0, 0x0

    .line 1052
    .local v0, "addr":Ljava/net/InetAddress;
    :try_start_0
    invoke-static {p1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1053
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1055
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 1056
    const v2, 0x7f070035

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 1057
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1075
    :goto_1
    return-void

    .line 1061
    :cond_1
    const/4 v1, 0x0

    .line 1063
    .local v1, "port":I
    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 1065
    :goto_2
    if-gtz v1, :cond_2

    .line 1066
    const v2, 0x7f070036

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 1067
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1070
    :cond_2
    new-instance v2, Lcom/androidemu/nes/NetPlayService;

    iget-object v3, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Lcom/androidemu/nes/NetPlayService;-><init>(Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayService:Lcom/androidemu/nes/NetPlayService;

    .line 1071
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayService:Lcom/androidemu/nes/NetPlayService;

    invoke-virtual {v2, v0, v1}, Lcom/androidemu/nes/NetPlayService;->tcpConnect(Ljava/net/InetAddress;I)V

    .line 1073
    const v2, 0x7f070020

    invoke-virtual {p0, v2}, Lcom/androidemu/nes/EmulatorActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1074
    const v3, 0x7f070031

    invoke-virtual {p0, v3}, Lcom/androidemu/nes/EmulatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1073
    invoke-direct {p0, v2, v3}, Lcom/androidemu/nes/EmulatorActivity;->createNetWaitDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Dialog;

    move-result-object v2

    .line 1074
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 1064
    :catch_0
    move-exception v2

    goto :goto_2

    .line 1054
    .end local v1    # "port":I
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private onWifiServer()V
    .locals 13

    .prologue
    const/4 v10, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 1016
    const-string v7, "wifi"

    invoke-virtual {p0, v7}, Lcom/androidemu/nes/EmulatorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    .line 1017
    .local v6, "wifi":Landroid/net/wifi/WifiManager;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    move-object v2, v7

    .line 1018
    .local v2, "info":Landroid/net/wifi/WifiInfo;
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v7

    move v3, v7

    .line 1019
    .local v3, "ip":I
    :goto_1
    if-nez v3, :cond_2

    .line 1020
    const v7, 0x7f07002f

    invoke-static {p0, v7, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    .line 1021
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 1047
    :goto_2
    return-void

    .line 1017
    .end local v2    # "info":Landroid/net/wifi/WifiInfo;
    .end local v3    # "ip":I
    :cond_0
    const/4 v7, 0x0

    move-object v2, v7

    goto :goto_0

    .restart local v2    # "info":Landroid/net/wifi/WifiInfo;
    :cond_1
    move v3, v11

    .line 1018
    goto :goto_1

    .line 1025
    .restart local v3    # "ip":I
    :cond_2
    const/4 v0, 0x0

    .line 1027
    .local v0, "addr":Ljava/net/InetAddress;
    const/4 v7, 0x4

    :try_start_0
    new-array v7, v7, [B

    const/4 v8, 0x0

    .line 1028
    int-to-byte v9, v3

    aput-byte v9, v7, v8

    const/4 v8, 0x1

    .line 1029
    ushr-int/lit8 v9, v3, 0x8

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    const/4 v8, 0x2

    .line 1030
    ushr-int/lit8 v9, v3, 0x10

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    const/4 v8, 0x3

    .line 1031
    ushr-int/lit8 v9, v3, 0x18

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 1027
    invoke-static {v7}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1035
    :goto_3
    const/16 v5, 0x14f9

    .line 1037
    .local v5, "port":I
    :try_start_1
    new-instance v4, Lcom/androidemu/nes/NetPlayService;

    iget-object v7, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayHandler:Landroid/os/Handler;

    invoke-direct {v4, v7}, Lcom/androidemu/nes/NetPlayService;-><init>(Landroid/os/Handler;)V

    .line 1038
    .local v4, "np":Lcom/androidemu/nes/NetPlayService;
    invoke-virtual {v4, v0, v5}, Lcom/androidemu/nes/NetPlayService;->tcpListen(Ljava/net/InetAddress;I)I

    move-result v5

    .line 1039
    iput-object v4, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayService:Lcom/androidemu/nes/NetPlayService;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1044
    const v7, 0x7f07001f

    invoke-virtual {p0, v7}, Lcom/androidemu/nes/EmulatorActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 1045
    const v8, 0x7f070030

    new-array v9, v10, [Ljava/lang/Object;

    .line 1046
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    .line 1045
    invoke-virtual {p0, v8, v9}, Lcom/androidemu/nes/EmulatorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1044
    invoke-direct {p0, v7, v8}, Lcom/androidemu/nes/EmulatorActivity;->createNetWaitDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Dialog;

    move-result-object v7

    .line 1046
    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    goto :goto_2

    .line 1040
    .end local v4    # "np":Lcom/androidemu/nes/NetPlayService;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 1041
    .local v1, "e":Ljava/io/IOException;
    goto :goto_2

    .line 1033
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "port":I
    :catch_1
    move-exception v7

    goto :goto_3
.end method

.method private pauseEmulator()V
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v0}, Lcom/androidemu/Emulator;->pause()V

    .line 717
    return-void
.end method

.method private quickLoad()V
    .locals 1

    .prologue
    .line 1332
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->getQuickSlotFileName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/androidemu/nes/EmulatorActivity;->loadState(Ljava/lang/String;)V

    .line 1333
    return-void
.end method

.method private quickSave()V
    .locals 1

    .prologue
    .line 1328
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->getQuickSlotFileName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/androidemu/nes/EmulatorActivity;->saveState(Ljava/lang/String;)V

    .line 1329
    return-void
.end method

.method private static readFile(Ljava/io/File;)[B
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1252
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1253
    .local v1, "in":Ljava/io/FileInputStream;
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v0, v2, [B

    .line 1255
    .local v0, "buffer":[B
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 1256
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1257
    :catchall_0
    move-exception v2

    .line 1258
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 1259
    throw v2

    .line 1258
    :cond_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 1260
    return-object v0
.end method

.method private resumeEmulator()V
    .locals 1

    .prologue
    .line 720
    invoke-virtual {p0}, Lcom/androidemu/nes/EmulatorActivity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v0}, Lcom/androidemu/Emulator;->resume()V

    .line 722
    :cond_0
    return-void
.end method

.method private saveState(Ljava/lang/String;)V
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1274
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->pauseEmulator()V

    .line 1276
    const/4 v1, 0x0

    .line 1279
    .local v1, "out":Ljava/util/zip/ZipOutputStream;
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    .line 1280
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1279
    invoke-direct {v2, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1281
    .end local v1    # "out":Ljava/util/zip/ZipOutputStream;
    .local v2, "out":Ljava/util/zip/ZipOutputStream;
    :try_start_1
    new-instance v3, Ljava/util/zip/ZipEntry;

    const-string v4, "screenshot.png"

    invoke-direct {v3, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 1283
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->getScreenshot()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1284
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1285
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1287
    if-eqz v2, :cond_1

    .line 1288
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v1, v2

    .line 1292
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v1    # "out":Ljava/util/zip/ZipOutputStream;
    :goto_0
    iget-object v3, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v3, p1}, Lcom/androidemu/Emulator;->saveState(Ljava/lang/String;)Z

    .line 1293
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->resumeEmulator()V

    .line 1294
    return-void

    .line 1286
    :catchall_0
    move-exception v3

    .line 1287
    :goto_1
    if-eqz v1, :cond_0

    .line 1288
    :try_start_3
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 1289
    :cond_0
    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1290
    :catch_0
    move-exception v3

    goto :goto_0

    .end local v1    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "out":Ljava/util/zip/ZipOutputStream;
    :catch_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v1    # "out":Ljava/util/zip/ZipOutputStream;
    goto :goto_0

    .line 1286
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v2    # "out":Ljava/util/zip/ZipOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v1    # "out":Ljava/util/zip/ZipOutputStream;
    goto :goto_1

    .end local v1    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "out":Ljava/util/zip/ZipOutputStream;
    :cond_1
    move-object v1, v2

    .end local v2    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v1    # "out":Ljava/util/zip/ZipOutputStream;
    goto :goto_0
.end method

.method private setFlipScreen(Landroid/content/SharedPreferences;Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "config"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x0

    .line 734
    iget v0, p2, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 735
    const-string v0, "flipScreen"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/androidemu/nes/EmulatorActivity;->flipScreen:Z

    .line 739
    :goto_0
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    const-string v1, "flipScreen"

    iget-boolean v2, p0, Lcom/androidemu/nes/EmulatorActivity;->flipScreen:Z

    invoke-virtual {v0, v1, v2}, Lcom/androidemu/Emulator;->setOption(Ljava/lang/String;Z)V

    .line 740
    return-void

    .line 737
    :cond_0
    iput-boolean v2, p0, Lcom/androidemu/nes/EmulatorActivity;->flipScreen:Z

    goto :goto_0
.end method

.method private setGameSpeed(F)V
    .locals 3
    .param p1, "speed"    # F

    .prologue
    .line 1176
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->pauseEmulator()V

    .line 1177
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    const-string v1, "gameSpeed"

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/androidemu/Emulator;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->resumeEmulator()V

    .line 1179
    return-void
.end method

.method private startAutoSyncClient()V
    .locals 4

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayHandler:Landroid/os/Handler;

    .line 1167
    iget-object v1, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1168
    iget v2, p0, Lcom/androidemu/nes/EmulatorActivity;->autoSyncClientInterval:I

    int-to-long v2, v2

    .line 1166
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1169
    return-void
.end method

.method private stopAutoSyncClient()V
    .locals 2

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1173
    return-void
.end method

.method private static writeFile(Ljava/io/File;[B)V
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1265
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1267
    .local v0, "out":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1269
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 1271
    return-void

    .line 1268
    :catchall_0
    move-exception v1

    .line 1269
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 1270
    throw v1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "request"    # I
    .param p2, "result"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 418
    packed-switch p1, :pswitch_data_0

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 420
    :pswitch_0
    if-ne p2, v1, :cond_0

    .line 421
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/androidemu/nes/EmulatorActivity;->loadState(Ljava/lang/String;)V

    goto :goto_0

    .line 425
    :pswitch_1
    if-ne p2, v1, :cond_0

    .line 426
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/androidemu/nes/EmulatorActivity;->saveState(Ljava/lang/String;)V

    goto :goto_0

    .line 430
    :pswitch_2
    if-ne p2, v1, :cond_0

    .line 431
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->onBluetoothServer()V

    goto :goto_0

    .line 435
    :pswitch_3
    if-ne p2, v1, :cond_0

    .line 436
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->onBluetoothClient()V

    goto :goto_0

    .line 440
    :pswitch_4
    if-ne p2, v1, :cond_0

    .line 441
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 442
    sget-object v2, Lcom/androidemu/nes/DeviceListActivity;->EXTRA_DEVICE_ADDRESS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 443
    .local v0, "address":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/androidemu/nes/EmulatorActivity;->onBluetoothConnect(Ljava/lang/String;)V

    goto :goto_0

    .line 418
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 212
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 214
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->pauseEmulator()V

    .line 215
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-direct {p0, v0, p1}, Lcom/androidemu/nes/EmulatorActivity;->setFlipScreen(Landroid/content/SharedPreferences;Landroid/content/res/Configuration;)V

    .line 216
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->resumeEmulator()V

    .line 217
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 114
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {p0}, Lcom/androidemu/nes/EmulatorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/androidemu/nes/EmulatorActivity;->finish()V

    .line 180
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-virtual {p0, v6}, Lcom/androidemu/nes/EmulatorActivity;->requestWindowFeature(I)Z

    .line 121
    invoke-virtual {p0, v7}, Lcom/androidemu/nes/EmulatorActivity;->setVolumeControlStream(I)V

    .line 123
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/androidemu/nes/EmulatorActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    .line 124
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    .line 125
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 127
    invoke-virtual {p0}, Lcom/androidemu/nes/EmulatorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 128
    invoke-direct {p0, v2}, Lcom/androidemu/nes/EmulatorActivity;->getEmulatorEngine(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v4

    .line 127
    invoke-static {v3, v4}, Lcom/androidemu/Emulator;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/androidemu/Emulator;

    move-result-object v3

    iput-object v3, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    .line 130
    const v3, 0x7f030003

    invoke-virtual {p0, v3}, Lcom/androidemu/nes/EmulatorActivity;->setContentView(I)V

    .line 131
    invoke-virtual {p0}, Lcom/androidemu/nes/EmulatorActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    iget-object v4, p0, Lcom/androidemu/nes/EmulatorActivity;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v3, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 133
    const v3, 0x7f090006

    invoke-virtual {p0, v3}, Lcom/androidemu/nes/EmulatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/androidemu/EmulatorView;

    iput-object v3, p0, Lcom/androidemu/nes/EmulatorActivity;->emulatorView:Lcom/androidemu/EmulatorView;

    .line 134
    iget-object v3, p0, Lcom/androidemu/nes/EmulatorActivity;->emulatorView:Lcom/androidemu/EmulatorView;

    invoke-virtual {v3}, Lcom/androidemu/EmulatorView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-interface {v3, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 135
    iget-object v3, p0, Lcom/androidemu/nes/EmulatorActivity;->emulatorView:Lcom/androidemu/EmulatorView;

    invoke-virtual {v3, p0}, Lcom/androidemu/EmulatorView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 136
    iget-object v3, p0, Lcom/androidemu/nes/EmulatorActivity;->emulatorView:Lcom/androidemu/EmulatorView;

    invoke-virtual {v3}, Lcom/androidemu/EmulatorView;->requestFocus()Z

    .line 139
    new-instance v3, Lcom/androidemu/nes/input/Keyboard;

    iget-object v4, p0, Lcom/androidemu/nes/EmulatorActivity;->emulatorView:Lcom/androidemu/EmulatorView;

    invoke-direct {v3, v4, p0}, Lcom/androidemu/nes/input/Keyboard;-><init>(Landroid/view/View;Lcom/androidemu/nes/input/GameKeyListener;)V

    iput-object v3, p0, Lcom/androidemu/nes/EmulatorActivity;->keyboard:Lcom/androidemu/nes/input/Keyboard;

    .line 141
    const/16 v3, 0x18

    new-array v1, v3, [Ljava/lang/String;

    .line 142
    const-string v3, "fullScreenMode"

    aput-object v3, v1, v5

    .line 143
    const-string v3, "flipScreen"

    aput-object v3, v1, v6

    const/4 v3, 0x2

    .line 144
    const-string v4, "fastForwardSpeed"

    aput-object v4, v1, v3

    .line 145
    const-string v3, "frameSkipMode"

    aput-object v3, v1, v7

    const/4 v3, 0x4

    .line 146
    const-string v4, "maxFrameSkips"

    aput-object v4, v1, v3

    const/4 v3, 0x5

    .line 147
    const-string v4, "refreshRate"

    aput-object v4, v1, v3

    const/4 v3, 0x6

    .line 148
    const-string v4, "soundEnabled"

    aput-object v4, v1, v3

    const/4 v3, 0x7

    .line 149
    const-string v4, "soundVolume"

    aput-object v4, v1, v3

    const/16 v3, 0x8

    .line 150
    const-string v4, "accurateRendering"

    aput-object v4, v1, v3

    const/16 v3, 0x9

    .line 151
    const-string v4, "secondController"

    aput-object v4, v1, v3

    const/16 v3, 0xa

    .line 152
    const-string v4, "enableTrackball"

    aput-object v4, v1, v3

    const/16 v3, 0xb

    .line 153
    const-string v4, "trackballSensitivity"

    aput-object v4, v1, v3

    const/16 v3, 0xc

    .line 154
    const-string v4, "enableSensor"

    aput-object v4, v1, v3

    const/16 v3, 0xd

    .line 155
    const-string v4, "sensorSensitivity"

    aput-object v4, v1, v3

    const/16 v3, 0xe

    .line 156
    const-string v4, "enableVKeypad"

    aput-object v4, v1, v3

    const/16 v3, 0xf

    .line 157
    const-string v4, "scalingMode"

    aput-object v4, v1, v3

    const/16 v3, 0x10

    .line 158
    const-string v4, "aspectRatio"

    aput-object v4, v1, v3

    const/16 v3, 0x11

    .line 159
    const-string v4, "enableCheats"

    aput-object v4, v1, v3

    const/16 v3, 0x12

    .line 160
    const-string v4, "orientation"

    aput-object v4, v1, v3

    const/16 v3, 0x13

    .line 161
    const-string v4, "useInputMethod"

    aput-object v4, v1, v3

    const/16 v3, 0x14

    .line 162
    const-string v4, "quickLoad"

    aput-object v4, v1, v3

    const/16 v3, 0x15

    .line 163
    const-string v4, "quickSave"

    aput-object v4, v1, v3

    const/16 v3, 0x16

    .line 164
    const-string v4, "fastForward"

    aput-object v4, v1, v3

    const/16 v3, 0x17

    .line 165
    const-string v4, "screenshot"

    aput-object v4, v1, v3

    .line 168
    .local v1, "prefKeys":[Ljava/lang/String;
    array-length v3, v1

    move v4, v5

    :goto_1
    if-lt v4, v3, :cond_1

    .line 170
    invoke-direct {p0, v2}, Lcom/androidemu/nes/EmulatorActivity;->loadKeyBindings(Landroid/content/SharedPreferences;)V

    .line 171
    invoke-direct {p0, v2}, Lcom/androidemu/nes/EmulatorActivity;->loadGameGenie(Landroid/content/SharedPreferences;)V

    .line 172
    invoke-direct {p0, v2}, Lcom/androidemu/nes/EmulatorActivity;->loadFdsRom(Landroid/content/SharedPreferences;)V

    .line 174
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->loadROM()Z

    move-result v3

    if-nez v3, :cond_2

    .line 175
    invoke-virtual {p0}, Lcom/androidemu/nes/EmulatorActivity;->finish()V

    goto/16 :goto_0

    .line 168
    :cond_1
    aget-object v0, v1, v4

    .line 169
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v2, v0}, Lcom/androidemu/nes/EmulatorActivity;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 168
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 178
    .end local v0    # "key":Ljava/lang/String;
    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/androidemu/nes/EmulatorService;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 179
    const-string v4, "com.androidemu.actions.FOREGROUND"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 178
    invoke-virtual {p0, v3}, Lcom/androidemu/nes/EmulatorActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 248
    packed-switch p1, :pswitch_data_0

    .line 256
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 250
    :pswitch_0
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->createQuitGameDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 252
    :pswitch_1
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->createReplaceGameDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 254
    :pswitch_2
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->createWifiConnectDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 248
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 303
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 305
    invoke-virtual {p0}, Lcom/androidemu/nes/EmulatorActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f080001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 307
    iget v0, p0, Lcom/androidemu/nes/EmulatorActivity;->fdsTotalSides:I

    if-le v0, v2, :cond_0

    .line 308
    const v0, 0x7f090019

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 310
    :cond_0
    invoke-static {}, Lcom/androidemu/nes/wrapper/Wrapper;->isBluetoothPresent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 311
    const v0, 0x7f09001d

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 312
    const v0, 0x7f09001e

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 314
    :cond_1
    return v2
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 184
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 186
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v0}, Lcom/androidemu/Emulator;->unloadROM()V

    .line 188
    :cond_0
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->onDisconnect()V

    .line 190
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/androidemu/nes/EmulatorService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/androidemu/nes/EmulatorActivity;->stopService(Landroid/content/Intent;)Z

    .line 191
    return-void
.end method

.method public onFrameUpdate(I)I
    .locals 2
    .param p1, "keys"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 456
    iget-object v1, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayService:Lcom/androidemu/nes/NetPlayService;

    invoke-virtual {v1, p1}, Lcom/androidemu/nes/NetPlayService;->sendFrameUpdate(I)I

    move-result v0

    .line 457
    .local v0, "remote":I
    iget-object v1, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayService:Lcom/androidemu/nes/NetPlayService;

    invoke-virtual {v1}, Lcom/androidemu/nes/NetPlayService;->isServer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 458
    invoke-static {p1, v0}, Lcom/androidemu/nes/EmulatorActivity;->makeKeyStates(II)I

    move-result v1

    .line 460
    :goto_0
    return v1

    :cond_0
    invoke-static {v0, p1}, Lcom/androidemu/nes/EmulatorActivity;->makeKeyStates(II)I

    move-result v1

    goto :goto_0
.end method

.method public onGameKeyChanged()V
    .locals 4

    .prologue
    .line 590
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity;->keyboard:Lcom/androidemu/nes/input/Keyboard;

    invoke-virtual {v2}, Lcom/androidemu/nes/input/Keyboard;->getKeyStates()I

    move-result v1

    .line 592
    .local v1, "states":I
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity;->sensor:Lcom/androidemu/nes/input/SensorKeypad;

    if-eqz v2, :cond_3

    .line 593
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity;->sensor:Lcom/androidemu/nes/input/SensorKeypad;

    invoke-virtual {v2}, Lcom/androidemu/nes/input/SensorKeypad;->getKeyStates()I

    move-result v0

    .line 594
    .local v0, "keys":I
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_0

    .line 595
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity;->sensorMappings:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    or-int/2addr v1, v2

    .line 596
    :cond_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    .line 597
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity;->sensorMappings:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    or-int/2addr v1, v2

    .line 598
    :cond_1
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_2

    .line 599
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity;->sensorMappings:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    or-int/2addr v1, v2

    .line 600
    :cond_2
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_3

    .line 601
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity;->sensorMappings:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    or-int/2addr v1, v2

    .line 603
    .end local v0    # "keys":I
    :cond_3
    iget-boolean v2, p0, Lcom/androidemu/nes/EmulatorActivity;->flipScreen:Z

    if-eqz v2, :cond_4

    .line 604
    invoke-direct {p0, v1}, Lcom/androidemu/nes/EmulatorActivity;->flipGameKeys(I)I

    move-result v1

    .line 606
    :cond_4
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity;->vkeypad:Lcom/androidemu/nes/input/VirtualKeypad;

    if-eqz v2, :cond_5

    .line 607
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity;->vkeypad:Lcom/androidemu/nes/input/VirtualKeypad;

    invoke-virtual {v2}, Lcom/androidemu/nes/input/VirtualKeypad;->getKeyStates()I

    move-result v2

    or-int/2addr v1, v2

    .line 610
    :cond_5
    and-int/lit16 v2, v1, 0xc0

    const/16 v3, 0xc0

    if-ne v2, v3, :cond_6

    .line 611
    and-int/lit16 v1, v1, -0xc1

    .line 612
    :cond_6
    and-int/lit8 v2, v1, 0x30

    const/16 v3, 0x30

    if-ne v2, v3, :cond_7

    .line 613
    and-int/lit8 v1, v1, -0x31

    .line 615
    :cond_7
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v2, v1}, Lcom/androidemu/Emulator;->setKeyStates(I)V

    .line 616
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 272
    iget v0, p0, Lcom/androidemu/nes/EmulatorActivity;->quickLoadKey:I

    if-ne p1, v0, :cond_0

    .line 273
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->quickLoad()V

    move v0, v1

    .line 298
    :goto_0
    return v0

    .line 276
    :cond_0
    iget v0, p0, Lcom/androidemu/nes/EmulatorActivity;->quickSaveKey:I

    if-ne p1, v0, :cond_1

    .line 277
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->quickSave()V

    move v0, v1

    .line 278
    goto :goto_0

    .line 280
    :cond_1
    iget v0, p0, Lcom/androidemu/nes/EmulatorActivity;->fastForwardKey:I

    if-ne p1, v0, :cond_2

    .line 281
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->onFastForward()V

    move v0, v1

    .line 282
    goto :goto_0

    .line 284
    :cond_2
    iget v0, p0, Lcom/androidemu/nes/EmulatorActivity;->screenshotKey:I

    if-ne p1, v0, :cond_3

    .line 285
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->onScreenshot()V

    move v0, v1

    .line 286
    goto :goto_0

    .line 289
    :cond_3
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_4

    .line 290
    const/16 v0, 0x54

    if-ne p1, v0, :cond_5

    :cond_4
    move v0, v1

    .line 291
    goto :goto_0

    .line 293
    :cond_5
    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    .line 294
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->pauseEmulator()V

    .line 295
    invoke-virtual {p0, v1}, Lcom/androidemu/nes/EmulatorActivity;->showDialog(I)V

    move v0, v1

    .line 296
    goto :goto_0

    .line 298
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 237
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    :goto_0
    return-void

    .line 240
    :cond_0
    iput-object p1, p0, Lcom/androidemu/nes/EmulatorActivity;->newIntent:Landroid/content/Intent;

    .line 242
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->pauseEmulator()V

    .line 243
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/androidemu/nes/EmulatorActivity;->showDialog(I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x3

    const/4 v2, 0x1

    .line 338
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 413
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 340
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/androidemu/nes/EmulatorSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/androidemu/nes/EmulatorActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v2

    .line 341
    goto :goto_0

    .line 345
    :pswitch_2
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->doReset()V

    :goto_1
    move v0, v2

    .line 349
    goto :goto_0

    .line 353
    :pswitch_3
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->doPower()V

    :goto_2
    move v0, v2

    .line 357
    goto :goto_0

    .line 360
    :pswitch_4
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->onChangeDisk()V

    move v0, v2

    .line 361
    goto :goto_0

    .line 364
    :pswitch_5
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->onFastForward()V

    move v0, v2

    .line 365
    goto :goto_0

    .line 368
    :pswitch_6
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->onScreenshot()V

    move v0, v2

    .line 369
    goto :goto_0

    .line 372
    :pswitch_7
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/androidemu/nes/CheatsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/androidemu/nes/EmulatorActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v2

    .line 373
    goto :goto_0

    .line 376
    :pswitch_8
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->onSaveState()V

    move v0, v2

    .line 377
    goto :goto_0

    .line 380
    :pswitch_9
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->onLoadState()V

    move v0, v2

    .line 381
    goto :goto_0

    .line 384
    :pswitch_a
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->onWifiServer()V

    move v0, v2

    .line 385
    goto :goto_0

    .line 388
    :pswitch_b
    invoke-virtual {p0, v1}, Lcom/androidemu/nes/EmulatorActivity;->showDialog(I)V

    move v0, v2

    .line 389
    goto :goto_0

    .line 392
    :pswitch_c
    invoke-direct {p0, v1}, Lcom/androidemu/nes/EmulatorActivity;->checkBluetoothEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 393
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->onBluetoothServer()V

    :cond_2
    move v0, v2

    .line 394
    goto :goto_0

    .line 397
    :pswitch_d
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/androidemu/nes/EmulatorActivity;->checkBluetoothEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 398
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->onBluetoothClient()V

    :cond_3
    move v0, v2

    .line 399
    goto :goto_0

    .line 402
    :pswitch_e
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->onDisconnect()V

    move v0, v2

    .line 403
    goto :goto_0

    .line 406
    :pswitch_f
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->onNetPlaySync()V

    move v0, v2

    .line 407
    goto :goto_0

    .line 410
    :pswitch_10
    invoke-virtual {p0}, Lcom/androidemu/nes/EmulatorActivity;->finish()V

    move v0, v2

    .line 411
    goto/16 :goto_0

    .line 356
    :catch_0
    move-exception v0

    goto :goto_2

    .line 348
    :catch_1
    move-exception v0

    goto :goto_1

    .line 338
    :pswitch_data_0
    .packed-switch 0x7f090015
        :pswitch_f
        :pswitch_9
        :pswitch_8
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_a
        :pswitch_b
        :pswitch_e
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_10
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 195
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 197
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->pauseEmulator()V

    .line 198
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->sensor:Lcom/androidemu/nes/input/SensorKeypad;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->sensor:Lcom/androidemu/nes/input/SensorKeypad;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/androidemu/nes/input/SensorKeypad;->setGameKeyListener(Lcom/androidemu/nes/input/GameKeyListener;)V

    .line 200
    :cond_0
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 261
    packed-switch p1, :pswitch_data_0

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 263
    :pswitch_0
    const v1, 0x7f090013

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 264
    .local v0, "v":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 265
    const/16 v1, 0x14f9

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 261
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v5, 0x7f09001a

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 319
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 320
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->pauseEmulator()V

    .line 322
    iget-object v1, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayService:Lcom/androidemu/nes/NetPlayService;

    if-eqz v1, :cond_0

    move v0, v3

    .line 323
    .local v0, "netplay":Z
    :goto_0
    const v1, 0x7f09001c

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v0, :cond_1

    move v2, v4

    :goto_1
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 324
    const v1, 0x7f090021

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 325
    const v1, 0x7f090015

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 326
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v0, :cond_2

    move v2, v4

    :goto_2
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 328
    const v1, 0x7f09001b

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 329
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v2}, Lcom/androidemu/Emulator;->getCheats()Lcom/androidemu/Cheats;

    move-result-object v2

    if-eqz v2, :cond_3

    move v2, v3

    .line 328
    :goto_3
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 330
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 331
    iget-boolean v2, p0, Lcom/androidemu/nes/EmulatorActivity;->inFastForward:Z

    if-eqz v2, :cond_4

    const v2, 0x7f070025

    .line 330
    :goto_4
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 333
    return v3

    .end local v0    # "netplay":Z
    :cond_0
    move v0, v4

    .line 322
    goto :goto_0

    .restart local v0    # "netplay":Z
    :cond_1
    move v2, v3

    .line 323
    goto :goto_1

    :cond_2
    move v2, v3

    .line 326
    goto :goto_2

    :cond_3
    move v2, v4

    .line 329
    goto :goto_3

    .line 332
    :cond_4
    const v2, 0x7f070024

    goto :goto_4
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 204
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 206
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->sensor:Lcom/androidemu/nes/input/SensorKeypad;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->sensor:Lcom/androidemu/nes/input/SensorKeypad;

    invoke-virtual {v0, p0}, Lcom/androidemu/nes/input/SensorKeypad;->setGameKeyListener(Lcom/androidemu/nes/input/GameKeyListener;)V

    .line 208
    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 10
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x7

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 464
    const-string v4, "gamepad"

    invoke-virtual {p2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 465
    invoke-direct {p0, p1}, Lcom/androidemu/nes/EmulatorActivity;->loadKeyBindings(Landroid/content/SharedPreferences;)V

    .line 587
    :cond_0
    :goto_0
    return-void

    .line 467
    :cond_1
    const-string v4, "fullScreenMode"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 468
    invoke-virtual {p0}, Lcom/androidemu/nes/EmulatorActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 469
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    const-string v4, "fullScreenMode"

    invoke-interface {p1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 470
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v4, v4, 0x400

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 473
    :goto_1
    invoke-virtual {p0}, Lcom/androidemu/nes/EmulatorActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    .line 472
    :cond_2
    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v4, v4, -0x401

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1

    .line 475
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_3
    const-string v4, "flipScreen"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 476
    invoke-virtual {p0}, Lcom/androidemu/nes/EmulatorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/androidemu/nes/EmulatorActivity;->setFlipScreen(Landroid/content/SharedPreferences;Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 478
    :cond_4
    const-string v4, "fastForwardSpeed"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 479
    const-string v4, "2x"

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 481
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 480
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iput v4, p0, Lcom/androidemu/nes/EmulatorActivity;->fastForwardSpeed:F

    .line 482
    iget-boolean v4, p0, Lcom/androidemu/nes/EmulatorActivity;->inFastForward:Z

    if-eqz v4, :cond_0

    .line 483
    iget v4, p0, Lcom/androidemu/nes/EmulatorActivity;->fastForwardSpeed:F

    invoke-direct {p0, v4}, Lcom/androidemu/nes/EmulatorActivity;->setGameSpeed(F)V

    goto :goto_0

    .line 485
    .end local v3    # "value":Ljava/lang/String;
    :cond_5
    const-string v4, "frameSkipMode"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 486
    iget-object v4, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    const-string v5, "auto"

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p2, v5}, Lcom/androidemu/Emulator;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 488
    :cond_6
    const-string v4, "maxFrameSkips"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 489
    iget-object v4, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-interface {p1, p2, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p2, v5}, Lcom/androidemu/Emulator;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 491
    :cond_7
    const-string v4, "maxFramesAhead"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 492
    iget-object v4, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayService:Lcom/androidemu/nes/NetPlayService;

    if-eqz v4, :cond_0

    .line 493
    iget-object v4, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayService:Lcom/androidemu/nes/NetPlayService;

    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/androidemu/nes/NetPlayService;->setMaxFramesAhead(I)V

    goto/16 :goto_0

    .line 495
    :cond_8
    const-string v4, "autoSyncClient"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 496
    const-string v4, "autoSyncClientInterval"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 498
    :cond_9
    iget-object v4, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayService:Lcom/androidemu/nes/NetPlayService;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayService:Lcom/androidemu/nes/NetPlayService;

    invoke-virtual {v4}, Lcom/androidemu/nes/NetPlayService;->isServer()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 499
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->stopAutoSyncClient()V

    .line 500
    iget-object v4, p0, Lcom/androidemu/nes/EmulatorActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v5, "autoSyncClient"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 501
    iget-object v4, p0, Lcom/androidemu/nes/EmulatorActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    .line 502
    const-string v5, "autoSyncClientInterval"

    const-string v6, "30"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 501
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/androidemu/nes/EmulatorActivity;->autoSyncClientInterval:I

    .line 503
    iget v4, p0, Lcom/androidemu/nes/EmulatorActivity;->autoSyncClientInterval:I

    mul-int/lit16 v4, v4, 0x3e8

    iput v4, p0, Lcom/androidemu/nes/EmulatorActivity;->autoSyncClientInterval:I

    .line 504
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->startAutoSyncClient()V

    goto/16 :goto_0

    .line 507
    :cond_a
    const-string v4, "refreshRate"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 508
    iget-object v4, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    const-string v5, "default"

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p2, v5}, Lcom/androidemu/Emulator;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 510
    :cond_b
    const-string v4, "soundEnabled"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 511
    iget-object v4, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, p2, v5}, Lcom/androidemu/Emulator;->setOption(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 513
    :cond_c
    const-string v4, "soundVolume"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 514
    iget-object v4, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    const/16 v5, 0x64

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, p2, v5}, Lcom/androidemu/Emulator;->setOption(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 516
    :cond_d
    const-string v4, "accurateRendering"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 517
    iget-object v4, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, p2, v5}, Lcom/androidemu/Emulator;->setOption(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 519
    :cond_e
    const-string v4, "secondController"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 520
    iget-object v4, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    const-string v5, "none"

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p2, v5}, Lcom/androidemu/Emulator;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 522
    :cond_f
    const-string v4, "enableTrackball"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 523
    iget-object v4, p0, Lcom/androidemu/nes/EmulatorActivity;->emulatorView:Lcom/androidemu/EmulatorView;

    .line 524
    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_10

    move-object v5, p0

    .line 523
    :goto_2
    invoke-virtual {v4, v5}, Lcom/androidemu/EmulatorView;->setOnTrackballListener(Lcom/androidemu/EmulatorView$OnTrackballListener;)V

    goto/16 :goto_0

    :cond_10
    move-object v5, v7

    .line 524
    goto :goto_2

    .line 526
    :cond_11
    const-string v4, "trackballSensitivity"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 527
    invoke-interface {p1, p2, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x5

    add-int/lit8 v4, v4, 0xa

    iput v4, p0, Lcom/androidemu/nes/EmulatorActivity;->trackballSensitivity:I

    goto/16 :goto_0

    .line 529
    :cond_12
    const-string v4, "enableSensor"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 530
    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_13

    .line 531
    iput-object v7, p0, Lcom/androidemu/nes/EmulatorActivity;->sensor:Lcom/androidemu/nes/input/SensorKeypad;

    goto/16 :goto_0

    .line 532
    :cond_13
    iget-object v4, p0, Lcom/androidemu/nes/EmulatorActivity;->sensor:Lcom/androidemu/nes/input/SensorKeypad;

    if-nez v4, :cond_0

    .line 533
    new-instance v4, Lcom/androidemu/nes/input/SensorKeypad;

    invoke-direct {v4, p0}, Lcom/androidemu/nes/input/SensorKeypad;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/androidemu/nes/EmulatorActivity;->sensor:Lcom/androidemu/nes/input/SensorKeypad;

    .line 534
    iget-object v4, p0, Lcom/androidemu/nes/EmulatorActivity;->sensor:Lcom/androidemu/nes/input/SensorKeypad;

    const-string v5, "sensorSensitivity"

    invoke-interface {p1, v5, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/androidemu/nes/input/SensorKeypad;->setSensitivity(I)V

    goto/16 :goto_0

    .line 536
    :cond_14
    const-string v4, "sensorSensitivity"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 537
    iget-object v4, p0, Lcom/androidemu/nes/EmulatorActivity;->sensor:Lcom/androidemu/nes/input/SensorKeypad;

    if-eqz v4, :cond_0

    .line 538
    iget-object v4, p0, Lcom/androidemu/nes/EmulatorActivity;->sensor:Lcom/androidemu/nes/input/SensorKeypad;

    invoke-interface {p1, p2, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/androidemu/nes/input/SensorKeypad;->setSensitivity(I)V

    goto/16 :goto_0

    .line 540
    :cond_15
    const-string v4, "enableVKeypad"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 541
    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_16

    .line 542
    iget-object v4, p0, Lcom/androidemu/nes/EmulatorActivity;->vkeypad:Lcom/androidemu/nes/input/VirtualKeypad;

    if-eqz v4, :cond_0

    .line 543
    iget-object v4, p0, Lcom/androidemu/nes/EmulatorActivity;->vkeypad:Lcom/androidemu/nes/input/VirtualKeypad;

    invoke-virtual {v4}, Lcom/androidemu/nes/input/VirtualKeypad;->destroy()V

    .line 544
    iput-object v7, p0, Lcom/androidemu/nes/EmulatorActivity;->vkeypad:Lcom/androidemu/nes/input/VirtualKeypad;

    goto/16 :goto_0

    .line 546
    :cond_16
    iget-object v4, p0, Lcom/androidemu/nes/EmulatorActivity;->vkeypad:Lcom/androidemu/nes/input/VirtualKeypad;

    if-nez v4, :cond_0

    .line 547
    new-instance v4, Lcom/androidemu/nes/input/VirtualKeypad;

    iget-object v5, p0, Lcom/androidemu/nes/EmulatorActivity;->emulatorView:Lcom/androidemu/EmulatorView;

    invoke-direct {v4, v5, p0}, Lcom/androidemu/nes/input/VirtualKeypad;-><init>(Landroid/view/View;Lcom/androidemu/nes/input/GameKeyListener;)V

    iput-object v4, p0, Lcom/androidemu/nes/EmulatorActivity;->vkeypad:Lcom/androidemu/nes/input/VirtualKeypad;

    goto/16 :goto_0

    .line 549
    :cond_17
    const-string v4, "scalingMode"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 550
    iget-object v4, p0, Lcom/androidemu/nes/EmulatorActivity;->emulatorView:Lcom/androidemu/EmulatorView;

    .line 551
    const-string v5, "proportional"

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 550
    invoke-static {v5}, Lcom/androidemu/nes/EmulatorActivity;->getScalingMode(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/androidemu/EmulatorView;->setScalingMode(I)V

    goto/16 :goto_0

    .line 553
    :cond_18
    const-string v4, "aspectRatio"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 554
    const-string v4, "1.3333"

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 555
    .local v2, "ratio":F
    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_19

    .line 556
    iget-object v4, p0, Lcom/androidemu/nes/EmulatorActivity;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->xdpi:F

    iget-object v5, p0, Lcom/androidemu/nes/EmulatorActivity;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->ydpi:F

    div-float v1, v4, v5

    .line 558
    .local v1, "dpiRatio":F
    const v4, 0x3fd5566d    # 1.6667f

    cmpg-float v4, v1, v4

    if-gez v4, :cond_19

    const v4, 0x3f19999a    # 0.6f

    cmpl-float v4, v1, v4

    if-lez v4, :cond_19

    .line 559
    mul-float/2addr v2, v1

    .line 561
    .end local v1    # "dpiRatio":F
    :cond_19
    iget-object v4, p0, Lcom/androidemu/nes/EmulatorActivity;->emulatorView:Lcom/androidemu/EmulatorView;

    invoke-virtual {v4, v2}, Lcom/androidemu/EmulatorView;->setAspectRatio(F)V

    goto/16 :goto_0

    .line 563
    .end local v2    # "ratio":F
    :cond_1a
    const-string v4, "enableCheats"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 564
    iget-object v4, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/androidemu/Emulator;->enableCheats(Z)V

    goto/16 :goto_0

    .line 566
    :cond_1b
    const-string v4, "orientation"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 568
    const-string v4, "unspecified"

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 567
    invoke-static {v4}, Lcom/androidemu/nes/EmulatorActivity;->getScreenOrientation(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/androidemu/nes/EmulatorActivity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 570
    :cond_1c
    const-string v4, "useInputMethod"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 571
    invoke-virtual {p0}, Lcom/androidemu/nes/EmulatorActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1d

    move v5, v6

    .line 573
    :goto_3
    const/high16 v6, 0x20000

    .line 571
    invoke-virtual {v4, v5, v6}, Landroid/view/Window;->setFlags(II)V

    goto/16 :goto_0

    .line 572
    :cond_1d
    const/high16 v5, 0x20000

    goto :goto_3

    .line 575
    :cond_1e
    const-string v4, "quickLoad"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 576
    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/androidemu/nes/EmulatorActivity;->quickLoadKey:I

    goto/16 :goto_0

    .line 578
    :cond_1f
    const-string v4, "quickSave"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 579
    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/androidemu/nes/EmulatorActivity;->quickSaveKey:I

    goto/16 :goto_0

    .line 581
    :cond_20
    const-string v4, "fastForward"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 582
    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/androidemu/nes/EmulatorActivity;->fastForwardKey:I

    goto/16 :goto_0

    .line 584
    :cond_21
    const-string v4, "screenshot"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 585
    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/androidemu/nes/EmulatorActivity;->screenshotKey:I

    goto/16 :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 693
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity;->vkeypad:Lcom/androidemu/nes/input/VirtualKeypad;

    if-eqz v2, :cond_0

    .line 694
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity;->vkeypad:Lcom/androidemu/nes/input/VirtualKeypad;

    iget-boolean v3, p0, Lcom/androidemu/nes/EmulatorActivity;->flipScreen:Z

    invoke-virtual {v2, p2, v3}, Lcom/androidemu/nes/input/VirtualKeypad;->onTouch(Landroid/view/MotionEvent;Z)Z

    move-result v2

    .line 712
    :goto_0
    return v2

    .line 696
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    .line 697
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    .line 698
    iget v3, p0, Lcom/androidemu/nes/EmulatorActivity;->surfaceWidth:I

    .line 697
    mul-int/2addr v2, v3

    .line 698
    iget-object v3, p0, Lcom/androidemu/nes/EmulatorActivity;->emulatorView:Lcom/androidemu/EmulatorView;

    invoke-virtual {v3}, Lcom/androidemu/EmulatorView;->getWidth()I

    move-result v3

    .line 697
    div-int v0, v2, v3

    .line 699
    .local v0, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 700
    iget v3, p0, Lcom/androidemu/nes/EmulatorActivity;->surfaceHeight:I

    .line 699
    mul-int/2addr v2, v3

    .line 700
    iget-object v3, p0, Lcom/androidemu/nes/EmulatorActivity;->emulatorView:Lcom/androidemu/EmulatorView;

    invoke-virtual {v3}, Lcom/androidemu/EmulatorView;->getHeight()I

    move-result v3

    .line 699
    div-int v1, v2, v3

    .line 701
    .local v1, "y":I
    iget-boolean v2, p0, Lcom/androidemu/nes/EmulatorActivity;->flipScreen:Z

    if-eqz v2, :cond_1

    .line 702
    iget v2, p0, Lcom/androidemu/nes/EmulatorActivity;->surfaceWidth:I

    sub-int v0, v2, v0

    .line 703
    iget v2, p0, Lcom/androidemu/nes/EmulatorActivity;->surfaceHeight:I

    sub-int v1, v2, v1

    .line 705
    :cond_1
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity;->surfaceRegion:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 706
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity;->surfaceRegion:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    .line 707
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity;->surfaceRegion:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 708
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v2, v0, v1}, Lcom/androidemu/Emulator;->fireLightGun(II)V

    .line 709
    const/4 v2, 0x1

    goto :goto_0

    .line 712
    .end local v0    # "x":I
    .end local v1    # "y":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onTrackball(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 619
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 620
    .local v2, "dx":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 621
    .local v3, "dy":F
    iget-boolean v6, p0, Lcom/androidemu/nes/EmulatorActivity;->flipScreen:Z

    if-eqz v6, :cond_0

    .line 622
    neg-float v2, v2

    .line 623
    neg-float v3, v3

    .line 626
    :cond_0
    iget v6, p0, Lcom/androidemu/nes/EmulatorActivity;->trackballSensitivity:I

    int-to-float v6, v6

    mul-float/2addr v6, v2

    float-to-int v0, v6

    .line 627
    .local v0, "duration1":I
    iget v6, p0, Lcom/androidemu/nes/EmulatorActivity;->trackballSensitivity:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    float-to-int v1, v6

    .line 628
    .local v1, "duration2":I
    const/4 v4, 0x0

    .line 629
    .local v4, "key1":I
    const/4 v5, 0x0

    .line 631
    .local v5, "key2":I
    if-gez v0, :cond_3

    .line 632
    const/16 v4, 0x40

    .line 636
    :cond_1
    :goto_0
    if-gez v1, :cond_4

    .line 637
    const/16 v5, 0x10

    .line 641
    :cond_2
    :goto_1
    if-nez v4, :cond_5

    if-nez v5, :cond_5

    .line 642
    const/4 v6, 0x0

    .line 646
    :goto_2
    return v6

    .line 633
    :cond_3
    if-lez v0, :cond_1

    .line 634
    const/16 v4, 0x80

    goto :goto_0

    .line 638
    :cond_4
    if-lez v1, :cond_2

    .line 639
    const/16 v5, 0x20

    goto :goto_1

    .line 644
    :cond_5
    iget-object v6, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 645
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 644
    invoke-virtual {v6, v4, v7, v5, v8}, Lcom/androidemu/Emulator;->processTrackball(IIII)V

    .line 646
    const/4 v6, 0x1

    goto :goto_2
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 221
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 223
    if-eqz p1, :cond_1

    .line 225
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->keyboard:Lcom/androidemu/nes/input/Keyboard;

    invoke-virtual {v0}, Lcom/androidemu/nes/input/Keyboard;->reset()V

    .line 226
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->vkeypad:Lcom/androidemu/nes/input/VirtualKeypad;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->vkeypad:Lcom/androidemu/nes/input/VirtualKeypad;

    invoke-virtual {v0}, Lcom/androidemu/nes/input/VirtualKeypad;->reset()V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/androidemu/Emulator;->setKeyStates(I)V

    .line 230
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v0}, Lcom/androidemu/Emulator;->resume()V

    .line 233
    :goto_0
    return-void

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v0}, Lcom/androidemu/Emulator;->pause()V

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 8
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v0, 0x0

    .line 663
    iput p3, p0, Lcom/androidemu/nes/EmulatorActivity;->surfaceWidth:I

    .line 664
    iput p4, p0, Lcom/androidemu/nes/EmulatorActivity;->surfaceHeight:I

    .line 666
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v0, v0, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 667
    .local v7, "rc":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->vkeypad:Lcom/androidemu/nes/input/VirtualKeypad;

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->vkeypad:Lcom/androidemu/nes/input/VirtualKeypad;

    iget-object v1, p0, Lcom/androidemu/nes/EmulatorActivity;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v7, v1}, Lcom/androidemu/nes/input/VirtualKeypad;->resize(Landroid/graphics/Rect;Landroid/util/DisplayMetrics;)V

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v0}, Lcom/androidemu/Emulator;->getVideoWidth()I

    move-result v5

    .line 671
    .local v5, "w":I
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v0}, Lcom/androidemu/Emulator;->getVideoHeight()I

    move-result v6

    .line 672
    .local v6, "h":I
    iget v0, v7, Landroid/graphics/Rect;->left:I

    iget v1, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    sub-int/2addr v0, v5

    div-int/lit8 v3, v0, 0x2

    .line 673
    .local v3, "x":I
    iget v0, v7, Landroid/graphics/Rect;->top:I

    iget v1, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    sub-int/2addr v0, v6

    div-int/lit8 v4, v0, 0x2

    .line 675
    .local v4, "y":I
    if-gez v3, :cond_3

    .line 676
    const/4 v3, 0x0

    .line 679
    :cond_1
    :goto_0
    if-gez v4, :cond_4

    .line 680
    const/4 v4, 0x0

    .line 684
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    move v1, p3

    move v2, p4

    invoke-virtual/range {v0 .. v6}, Lcom/androidemu/Emulator;->setSurfaceRegion(IIIIII)V

    .line 686
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->surfaceRegion:Landroid/graphics/Rect;

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 687
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->surfaceRegion:Landroid/graphics/Rect;

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 688
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->surfaceRegion:Landroid/graphics/Rect;

    add-int v1, v3, v5

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 689
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->surfaceRegion:Landroid/graphics/Rect;

    add-int v1, v4, v6

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 690
    return-void

    .line 677
    :cond_3
    sub-int v0, p3, v5

    if-le v3, v0, :cond_1

    .line 678
    sub-int v3, p3, v5

    goto :goto_0

    .line 681
    :cond_4
    sub-int v0, p4, v6

    if-le v4, v0, :cond_2

    .line 682
    sub-int v4, p4, v6

    goto :goto_1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 650
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v0, p1}, Lcom/androidemu/Emulator;->setSurface(Landroid/view/SurfaceHolder;)V

    .line 651
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 654
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->vkeypad:Lcom/androidemu/nes/input/VirtualKeypad;

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->vkeypad:Lcom/androidemu/nes/input/VirtualKeypad;

    invoke-virtual {v0}, Lcom/androidemu/nes/input/VirtualKeypad;->destroy()V

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/androidemu/Emulator;->setSurface(Landroid/view/SurfaceHolder;)V

    .line 658
    return-void
.end method
