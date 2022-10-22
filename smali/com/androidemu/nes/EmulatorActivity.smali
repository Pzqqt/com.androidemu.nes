.class public Lcom/androidemu/nes/EmulatorActivity;
.super Landroid/app/Activity;
.source "EmulatorActivity.java"

# interfaces
.implements Lcom/androidemu/Emulator$FrameUpdateListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/androidemu/EmulatorView$OnTrackballListener;
.implements Lcom/androidemu/Emulator$OnFrameDrawnListener;
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


# instance fields
.field private autoSyncClientInterval:I

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

.field private sharedPrefs:Landroid/content/SharedPreferences;

.field private surfaceHeight:I

.field private surfaceRegion:Landroid/graphics/Rect;

.field private surfaceWidth:I

.field private trackballSensitivity:I

.field private vkeypad:Lcom/androidemu/nes/input/VirtualKeypad;

.field private waitDialog:Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->surfaceRegion:Landroid/graphics/Rect;

    .line 904
    new-instance v0, Lcom/androidemu/nes/EmulatorActivity$4;

    invoke-direct {v0, p0}, Lcom/androidemu/nes/EmulatorActivity$4;-><init>(Lcom/androidemu/nes/EmulatorActivity;)V

    iput-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayHandler:Landroid/os/Handler;

    .line 1298
    return-void
.end method

.method static synthetic access$000(Lcom/androidemu/nes/EmulatorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/androidemu/nes/EmulatorActivity;

    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->onLoadState()V

    return-void
.end method

.method static synthetic access$001(Lcom/androidemu/nes/EmulatorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/androidemu/nes/EmulatorActivity;

    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->onSaveState()V

    return-void
.end method

.method static synthetic access$002(Lcom/androidemu/nes/EmulatorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/androidemu/nes/EmulatorActivity;

    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->onFastForward()V

    return-void
.end method

.method static synthetic access$003(Lcom/androidemu/nes/EmulatorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/androidemu/nes/EmulatorActivity;

    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->doReset()V

    return-void
.end method

.method static synthetic access$004(Lcom/androidemu/nes/EmulatorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/androidemu/nes/EmulatorActivity;

    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->doPower()V

    return-void
.end method

.method static synthetic access$005(Lcom/androidemu/nes/EmulatorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/androidemu/nes/EmulatorActivity;

    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->onScreenshot()V

    return-void
.end method

.method static synthetic access$100(Lcom/androidemu/nes/EmulatorActivity;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lcom/androidemu/nes/EmulatorActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->newIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/androidemu/nes/EmulatorActivity;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lcom/androidemu/nes/EmulatorActivity;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->getTempStateFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/androidemu/nes/EmulatorActivity;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .param p0, "x0"    # Lcom/androidemu/nes/EmulatorActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/androidemu/nes/EmulatorActivity;->newIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$1100(Ljava/io/File;[B)V
    .locals 0
    .param p0, "x0"    # Ljava/io/File;
    .param p1, "x1"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-static {p0, p1}, Lcom/androidemu/nes/EmulatorActivity;->writeFile(Ljava/io/File;[B)V

    return-void
.end method

.method static synthetic access$1200(Lcom/androidemu/nes/EmulatorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/androidemu/nes/EmulatorActivity;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->startAutoSyncClient()V

    return-void
.end method

.method static synthetic access$1300(Lcom/androidemu/nes/EmulatorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/androidemu/nes/EmulatorActivity;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->ensureDiscoverable()V

    return-void
.end method

.method static synthetic access$200(Lcom/androidemu/nes/EmulatorActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/androidemu/nes/EmulatorActivity;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->loadROM()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/androidemu/nes/EmulatorActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/androidemu/nes/EmulatorActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/androidemu/nes/EmulatorActivity;->onWifiConnect(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/androidemu/nes/EmulatorActivity;)Lcom/androidemu/nes/NetPlayService;
    .locals 1
    .param p0, "x0"    # Lcom/androidemu/nes/EmulatorActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayService:Lcom/androidemu/nes/NetPlayService;

    return-object v0
.end method

.method static synthetic access$402(Lcom/androidemu/nes/EmulatorActivity;Lcom/androidemu/nes/NetPlayService;)Lcom/androidemu/nes/NetPlayService;
    .locals 0
    .param p0, "x0"    # Lcom/androidemu/nes/EmulatorActivity;
    .param p1, "x1"    # Lcom/androidemu/nes/NetPlayService;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayService:Lcom/androidemu/nes/NetPlayService;

    return-object p1
.end method

.method static synthetic access$500(Lcom/androidemu/nes/EmulatorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/androidemu/nes/EmulatorActivity;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->onNetPlaySync()V

    return-void
.end method

.method static synthetic access$600(Lcom/androidemu/nes/EmulatorActivity;)Lcom/androidemu/Emulator;
    .locals 1
    .param p0, "x0"    # Lcom/androidemu/nes/EmulatorActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    return-object v0
.end method

.method static synthetic access$700(Lcom/androidemu/nes/EmulatorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/androidemu/nes/EmulatorActivity;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->applyNetplaySettings()V

    return-void
.end method

.method static synthetic access$800(Lcom/androidemu/nes/EmulatorActivity;)Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;
    .locals 1
    .param p0, "x0"    # Lcom/androidemu/nes/EmulatorActivity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->waitDialog:Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;

    return-object v0
.end method

.method static synthetic access$802(Lcom/androidemu/nes/EmulatorActivity;Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;)Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;
    .locals 0
    .param p0, "x0"    # Lcom/androidemu/nes/EmulatorActivity;
    .param p1, "x1"    # Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/androidemu/nes/EmulatorActivity;->waitDialog:Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;

    return-object p1
.end method

.method static synthetic access$900(Lcom/androidemu/nes/EmulatorActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/androidemu/nes/EmulatorActivity;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->onDisconnect()V

    return-void
.end method

.method private applyNetplaySettings()V
    .locals 3

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    const-string v1, "secondController"

    const-string v2, "gamepad"

    invoke-virtual {v0, v1, v2}, Lcom/androidemu/Emulator;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "maxFramesAhead"

    invoke-virtual {p0, v0, v1}, Lcom/androidemu/nes/EmulatorActivity;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 1120
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "autoSyncClient"

    invoke-virtual {p0, v0, v1}, Lcom/androidemu/nes/EmulatorActivity;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 1122
    iget-boolean v0, p0, Lcom/androidemu/nes/EmulatorActivity;->inFastForward:Z

    if-eqz v0, :cond_0

    .line 1123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/androidemu/nes/EmulatorActivity;->inFastForward:Z

    .line 1124
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/androidemu/nes/EmulatorActivity;->setGameSpeed(F)V

    .line 1126
    :cond_0
    return-void
.end method

.method private checkBluetoothEnabled(I)Z
    .locals 2
    .param p1, "request"    # I

    .prologue
    .line 709
    invoke-static {}, Lcom/androidemu/nes/wrapper/Wrapper;->isBluetoothEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 710
    const/4 v1, 0x1

    .line 714
    :goto_0
    return v1

    .line 712
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 713
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0, p1}, Lcom/androidemu/nes/EmulatorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 714
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createNetWaitDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Dialog;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 894
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->waitDialog:Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->waitDialog:Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;

    invoke-virtual {v0}, Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;->dismiss()V

    .line 896
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->waitDialog:Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;

    .line 898
    :cond_0
    new-instance v0, Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;

    invoke-direct {v0, p0}, Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;-><init>(Lcom/androidemu/nes/EmulatorActivity;)V

    iput-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->waitDialog:Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;

    .line 899
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->waitDialog:Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;

    invoke-virtual {v0, p1}, Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 900
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->waitDialog:Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;

    invoke-virtual {v0, p2}, Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 901
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->waitDialog:Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;

    return-object v0
.end method

.method private createQuitGameDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 786
    new-instance v0, Lcom/androidemu/nes/EmulatorActivity$1;

    invoke-direct {v0, p0}, Lcom/androidemu/nes/EmulatorActivity$1;-><init>(Lcom/androidemu/nes/EmulatorActivity;)V

    .line 800
    .local v0, "l":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f05000b

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private createReplaceGameDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 807
    new-instance v0, Lcom/androidemu/nes/EmulatorActivity$2;

    invoke-direct {v0, p0}, Lcom/androidemu/nes/EmulatorActivity$2;-><init>(Lcom/androidemu/nes/EmulatorActivity;)V

    .line 818
    .local v0, "l":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f06000e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f06000f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040013

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1040009

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private createWifiConnectDialog()Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 828
    new-instance v0, Lcom/androidemu/nes/EmulatorActivity$3;

    invoke-direct {v0, p0}, Lcom/androidemu/nes/EmulatorActivity$3;-><init>(Lcom/androidemu/nes/EmulatorActivity;)V

    .line 840
    .local v0, "l":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f06001e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/androidemu/nes/EmulatorActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03000b

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

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
    .line 977
    invoke-static {}, Lcom/androidemu/nes/wrapper/Wrapper;->isBluetoothDiscoverable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 978
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 980
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/androidemu/nes/EmulatorActivity;->startActivity(Landroid/content/Intent;)V

    .line 982
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private flipGameKeys(I)I
    .locals 2
    .param p1, "keys"    # I

    .prologue
    .line 727
    and-int/lit16 v0, p1, -0xf1

    .line 728
    .local v0, "newKeys":I
    and-int/lit8 v1, p1, 0x40

    if-eqz v1, :cond_0

    .line 729
    or-int/lit16 v0, v0, 0x80

    .line 730
    :cond_0
    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_1

    .line 731
    or-int/lit8 v0, v0, 0x40

    .line 732
    :cond_1
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_2

    .line 733
    or-int/lit8 v0, v0, 0x20

    .line 734
    :cond_2
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_3

    .line 735
    or-int/lit8 v0, v0, 0x10

    .line 737
    :cond_3
    return v0
.end method

.method private getEmulatorEngine(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 1
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 759
    const-string v0, "nes"

    return-object v0
.end method

.method private getQuickSlotFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1287
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
    .line 850
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
    .line 741
    const-string v0, "original"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    const/4 v0, 0x0

    .line 747
    :goto_0
    return v0

    .line 743
    :cond_0
    const-string v0, "2x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 744
    const/4 v0, 0x1

    goto :goto_0

    .line 745
    :cond_1
    const-string v0, "proportional"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 746
    const/4 v0, 0x2

    goto :goto_0

    .line 747
    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private static getScreenOrientation(Ljava/lang/String;)I
    .locals 1
    .param p0, "orientation"    # Ljava/lang/String;

    .prologue
    .line 751
    const-string v0, "landscape"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 752
    const/4 v0, 0x0

    .line 755
    :goto_0
    return v0

    .line 753
    :cond_0
    const-string v0, "portrait"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 754
    const/4 v0, 0x1

    goto :goto_0

    .line 755
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getScreenshot()Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    .line 1275
    iget-object v4, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v4}, Lcom/androidemu/Emulator;->getVideoWidth()I

    move-result v3

    .line 1276
    .local v3, "w":I
    iget-object v4, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v4}, Lcom/androidemu/Emulator;->getVideoHeight()I

    move-result v2

    .line 1278
    .local v2, "h":I
    mul-int v4, v3, v2

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1279
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    iget-object v4, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v4, v1}, Lcom/androidemu/Emulator;->getScreenshot(Ljava/nio/Buffer;)V

    .line 1281
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1282
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 1283
    return-object v0
.end method

.method private getTempStateFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 1210
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/androidemu/nes/EmulatorActivity;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "saved_state"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private isROMSupported(Ljava/lang/String;)Z
    .locals 7
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 854
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 856
    invoke-virtual {p0}, Lcom/androidemu/nes/EmulatorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f050000

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 858
    .local v2, "filters":[Ljava/lang/String;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 859
    .local v1, "f":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 860
    const/4 v5, 0x1

    .line 862
    .end local v1    # "f":Ljava/lang/String;
    :goto_1
    return v5

    .line 858
    .restart local v1    # "f":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 862
    .end local v1    # "f":Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private loadGameGenie(Landroid/content/SharedPreferences;)V
    .locals 6
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v2, 0x0

    .line 780
    const-string v3, "enableGameGenie"

    const/4 v4, 0x0

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 781
    .local v0, "enableGG":Z
    const-string v1, "gameGenieRom"

    .line 782
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    const-string v4, "gameGenieRom"

    if-eqz v0, :cond_0

    const-string v5, "gameGenieRom"

    invoke-interface {p1, v5, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {v3, v4, v2}, Lcom/androidemu/Emulator;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    return-void
.end method

.method private loadKeyBindings(Landroid/content/SharedPreferences;)V
    .locals 8
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 763
    sget-object v1, Lcom/androidemu/nes/EmulatorSettings;->gameKeys:[I

    .line 764
    .local v1, "gameKeys":[I
    invoke-static {p0}, Lcom/androidemu/nes/DefaultPreferences;->getKeyMappings(Landroid/content/Context;)[I

    move-result-object v0

    .line 765
    .local v0, "defaultKeys":[I
    iget-object v4, p0, Lcom/androidemu/nes/EmulatorActivity;->keyboard:Lcom/androidemu/nes/input/Keyboard;

    invoke-virtual {v4}, Lcom/androidemu/nes/input/Keyboard;->clearKeyMap()V

    .line 767
    sget-object v2, Lcom/androidemu/nes/EmulatorSettings;->gameKeysPref:[Ljava/lang/String;

    .line 768
    .local v2, "gameKeysPref":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 769
    iget-object v4, p0, Lcom/androidemu/nes/EmulatorActivity;->keyboard:Lcom/androidemu/nes/input/Keyboard;

    aget v5, v1, v3

    aget-object v6, v2, v3

    aget v7, v0, v3

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/androidemu/nes/input/Keyboard;->mapKey(II)V

    .line 768
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 772
    :cond_0
    sget-object v2, Lcom/androidemu/nes/EmulatorSettings;->gameKeysPref2:[Ljava/lang/String;

    .line 773
    const/4 v3, 0x0

    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 774
    iget-object v4, p0, Lcom/androidemu/nes/EmulatorActivity;->keyboard:Lcom/androidemu/nes/input/Keyboard;

    aget v5, v1, v3

    shl-int/lit8 v5, v5, 0x10

    aget-object v6, v2, v3

    const/4 v7, 0x0

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/androidemu/nes/input/Keyboard;->mapKey(II)V

    .line 773
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 777
    :cond_1
    return-void
.end method

.method private loadROM()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 866
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->getROMFilePath()Ljava/lang/String;

    move-result-object v0

    .line 868
    .local v0, "path":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/androidemu/nes/EmulatorActivity;->isROMSupported(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 869
    const v2, 0x7f06000d

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 871
    invoke-virtual {p0}, Lcom/androidemu/nes/EmulatorActivity;->finish()V

    .line 889
    :goto_0
    return v1

    .line 874
    :cond_0
    iget-object v3, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v3, v0}, Lcom/androidemu/Emulator;->loadROM(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 875
    const v2, 0x7f06000c

    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 877
    invoke-virtual {p0}, Lcom/androidemu/nes/EmulatorActivity;->finish()V

    goto :goto_0

    .line 881
    :cond_1
    iput-boolean v1, p0, Lcom/androidemu/nes/EmulatorActivity;->inFastForward:Z

    .line 883
    iget-object v1, p0, Lcom/androidemu/nes/EmulatorActivity;->emulatorView:Lcom/androidemu/EmulatorView;

    iget-object v3, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v3}, Lcom/androidemu/Emulator;->getVideoWidth()I

    move-result v3

    iget-object v4, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v4}, Lcom/androidemu/Emulator;->getVideoHeight()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/androidemu/EmulatorView;->setActualSize(II)V

    .line 885
    iget-object v1, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    const-string v3, "fdsTotalSides"

    invoke-virtual {v1, v3}, Lcom/androidemu/Emulator;->getOption(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/androidemu/nes/EmulatorActivity;->fdsTotalSides:I

    .line 887
    iget-object v1, p0, Lcom/androidemu/nes/EmulatorActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v3, "quickLoadOnStart"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 888
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->quickLoad()V

    :cond_2
    move v1, v2

    .line 889
    goto :goto_0
.end method

.method private loadState(Ljava/lang/String;)V
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1260
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1261
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1272
    :goto_0
    return-void

    .line 1264
    :cond_0
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->pauseEmulator()V

    .line 1266
    :try_start_0
    iget-object v1, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayService:Lcom/androidemu/nes/NetPlayService;

    if-eqz v1, :cond_1

    .line 1267
    iget-object v1, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayService:Lcom/androidemu/nes/NetPlayService;

    invoke-static {v0}, Lcom/androidemu/nes/EmulatorActivity;->readFile(Ljava/io/File;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/androidemu/nes/NetPlayService;->sendSavedState([B)V

    .line 1268
    :cond_1
    iget-object v1, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v1, p1}, Lcom/androidemu/Emulator;->loadState(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1271
    :goto_1
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->resumeEmulator()V

    goto :goto_0

    .line 1270
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private static makeKeyStates(II)I
    .locals 2
    .param p0, "p1"    # I
    .param p1, "p2"    # I

    .prologue
    .line 447
    shl-int/lit8 v0, p1, 0x10

    const v1, 0xffff

    and-int/2addr v1, p0

    or-int/2addr v0, v1

    return v0
.end method

.method private onBluetoothClient()V
    .locals 2

    .prologue
    .line 1079
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/androidemu/nes/DeviceListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1080
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/androidemu/nes/EmulatorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1081
    return-void
.end method

.method private onBluetoothConnect(Ljava/lang/String;)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 1068
    :try_start_0
    new-instance v1, Lcom/androidemu/nes/NetPlayService;

    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Lcom/androidemu/nes/NetPlayService;-><init>(Landroid/os/Handler;)V

    .line 1069
    .local v1, "np":Lcom/androidemu/nes/NetPlayService;
    invoke-virtual {v1, p1}, Lcom/androidemu/nes/NetPlayService;->bluetoothConnect(Ljava/lang/String;)V

    .line 1070
    iput-object v1, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayService:Lcom/androidemu/nes/NetPlayService;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1074
    const v2, 0x7f060020

    invoke-virtual {p0, v2}, Lcom/androidemu/nes/EmulatorActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f06002f

    invoke-virtual {p0, v3}, Lcom/androidemu/nes/EmulatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/androidemu/nes/EmulatorActivity;->createNetWaitDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 1076
    .end local v1    # "np":Lcom/androidemu/nes/NetPlayService;
    :goto_0
    return-void

    .line 1071
    :catch_0
    move-exception v0

    .line 1072
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method private onBluetoothServer()V
    .locals 4

    .prologue
    .line 1048
    :try_start_0
    new-instance v1, Lcom/androidemu/nes/NetPlayService;

    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Lcom/androidemu/nes/NetPlayService;-><init>(Landroid/os/Handler;)V

    .line 1049
    .local v1, "np":Lcom/androidemu/nes/NetPlayService;
    invoke-virtual {v1}, Lcom/androidemu/nes/NetPlayService;->bluetoothListen()V

    .line 1050
    iput-object v1, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayService:Lcom/androidemu/nes/NetPlayService;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1055
    const v2, 0x7f06001f

    invoke-virtual {p0, v2}, Lcom/androidemu/nes/EmulatorActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f060030

    invoke-virtual {p0, v3}, Lcom/androidemu/nes/EmulatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/androidemu/nes/EmulatorActivity;->createNetWaitDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Dialog;

    .line 1057
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity;->waitDialog:Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;

    new-instance v3, Lcom/androidemu/nes/EmulatorActivity$5;

    invoke-direct {v3, p0}, Lcom/androidemu/nes/EmulatorActivity$5;-><init>(Lcom/androidemu/nes/EmulatorActivity;)V

    invoke-virtual {v2, v3}, Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;->setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V

    .line 1063
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity;->waitDialog:Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;

    invoke-virtual {v2}, Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;->show()V

    .line 1064
    .end local v1    # "np":Lcom/androidemu/nes/NetPlayService;
    :goto_0
    return-void

    .line 1051
    :catch_0
    move-exception v0

    .line 1052
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method private onChangeDisk()V
    .locals 8

    .prologue
    .line 1153
    new-instance v2, Lcom/androidemu/nes/EmulatorActivity$6;

    invoke-direct {v2, p0}, Lcom/androidemu/nes/EmulatorActivity$6;-><init>(Lcom/androidemu/nes/EmulatorActivity;)V

    .line 1161
    .local v2, "l":Landroid/content/DialogInterface$OnClickListener;
    iget v4, p0, Lcom/androidemu/nes/EmulatorActivity;->fdsTotalSides:I

    new-array v1, v4, [Ljava/lang/String;

    .line 1162
    .local v1, "items":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 1163
    const v5, 0x7f06001a

    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    div-int/lit8 v7, v0, 0x2

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    const/4 v7, 0x1

    rem-int/lit8 v4, v0, 0x2

    if-nez v4, :cond_0

    const/16 v4, 0x41

    :goto_1
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/androidemu/nes/EmulatorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    .line 1162
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1163
    :cond_0
    const/16 v4, 0x42

    goto :goto_1

    .line 1166
    :cond_1
    iget-object v4, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    const-string v5, "fdsCurrentDisk"

    invoke-virtual {v4, v5}, Lcom/androidemu/Emulator;->getOption(Ljava/lang/String;)I

    move-result v3

    .line 1168
    .local v3, "selected":I
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f060019

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1172
    return-void
.end method

.method private onDisconnect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1093
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayService:Lcom/androidemu/nes/NetPlayService;

    if-nez v0, :cond_0

    .line 1102
    :goto_0
    return-void

    .line 1096
    :cond_0
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "secondController"

    invoke-virtual {p0, v0, v1}, Lcom/androidemu/nes/EmulatorActivity;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 1097
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->stopAutoSyncClient()V

    .line 1099
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v0, v2}, Lcom/androidemu/Emulator;->setFrameUpdateListener(Lcom/androidemu/Emulator$FrameUpdateListener;)V

    .line 1100
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayService:Lcom/androidemu/nes/NetPlayService;

    invoke-virtual {v0}, Lcom/androidemu/nes/NetPlayService;->disconnect()V

    .line 1101
    iput-object v2, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayService:Lcom/androidemu/nes/NetPlayService;

    goto :goto_0
.end method

.method private onFastForward()V
    .locals 1

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayService:Lcom/androidemu/nes/NetPlayService;

    if-eqz v0, :cond_0

    .line 1150
    :goto_0
    return-void

    .line 1148
    :cond_0
    iget-boolean v0, p0, Lcom/androidemu/nes/EmulatorActivity;->inFastForward:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/androidemu/nes/EmulatorActivity;->inFastForward:Z

    .line 1149
    iget-boolean v0, p0, Lcom/androidemu/nes/EmulatorActivity;->inFastForward:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/androidemu/nes/EmulatorActivity;->fastForwardSpeed:F

    :goto_2
    invoke-direct {p0, v0}, Lcom/androidemu/nes/EmulatorActivity;->setGameSpeed(F)V

    goto :goto_0

    .line 1148
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1149
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_2
.end method

.method private onLoadState()V
    .locals 2

    .prologue
    .line 1105
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/androidemu/nes/StateSlotsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1106
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/androidemu/nes/EmulatorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1107
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/androidemu/nes/EmulatorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1108
    return-void
.end method

.method private onNetPlaySync()V
    .locals 3

    .prologue
    .line 1084
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->getTempStateFile()Ljava/io/File;

    move-result-object v0

    .line 1086
    .local v0, "file":Ljava/io/File;
    :try_start_0
    iget-object v1, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/androidemu/Emulator;->saveState(Ljava/lang/String;)Z

    .line 1087
    iget-object v1, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayService:Lcom/androidemu/nes/NetPlayService;

    invoke-static {v0}, Lcom/androidemu/nes/EmulatorActivity;->readFile(Ljava/io/File;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/androidemu/nes/NetPlayService;->sendSavedState([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1089
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1090
    return-void

    .line 1088
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private onSaveState()V
    .locals 3

    .prologue
    .line 1111
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/androidemu/nes/StateSlotsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1112
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/androidemu/nes/EmulatorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1113
    const-string v1, "saveMode"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1114
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/androidemu/nes/EmulatorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1115
    return-void
.end method

.method private onScreenshot()V
    .locals 9

    .prologue
    .line 1175
    new-instance v1, Ljava/io/File;

    const-string v6, "/sdcard/screenshot"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1176
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1177
    const-string v6, "Nesoid"

    const-string v7, "Could not create directory for screenshots"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    :goto_0
    return-void

    .line 1180
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1181
    .local v3, "name":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1183
    .local v2, "file":Ljava/io/File;
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->pauseEmulator()V

    .line 1185
    const/4 v4, 0x0

    .line 1188
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1189
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .local v5, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->getScreenshot()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1190
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {v0, v6, v7, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1191
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1193
    const v6, 0x7f060025

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 1196
    iget-object v6, p0, Lcom/androidemu/nes/EmulatorActivity;->mediaScanner:Lcom/androidemu/nes/MediaScanner;

    if-nez v6, :cond_1

    .line 1197
    new-instance v6, Lcom/androidemu/nes/MediaScanner;

    invoke-direct {v6, p0}, Lcom/androidemu/nes/MediaScanner;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/androidemu/nes/EmulatorActivity;->mediaScanner:Lcom/androidemu/nes/MediaScanner;

    .line 1198
    :cond_1
    iget-object v6, p0, Lcom/androidemu/nes/EmulatorActivity;->mediaScanner:Lcom/androidemu/nes/MediaScanner;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "image/png"

    invoke-virtual {v6, v7, v8}, Lcom/androidemu/nes/MediaScanner;->scanFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1201
    if-eqz v5, :cond_2

    .line 1202
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_2
    move-object v4, v5

    .line 1206
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :goto_1
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->resumeEmulator()V

    goto :goto_0

    .line 1201
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v4, :cond_3

    .line 1202
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    :cond_3
    throw v6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1204
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

    .line 1201
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method private onWifiConnect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "portStr"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1019
    const/4 v0, 0x0

    .line 1021
    .local v0, "addr":Ljava/net/InetAddress;
    :try_start_0
    invoke-static {p1}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1022
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1024
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 1025
    const v2, 0x7f060033

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1044
    :goto_1
    return-void

    .line 1030
    :cond_1
    const/4 v1, 0x0

    .line 1032
    .local v1, "port":I
    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 1034
    :goto_2
    if-gtz v1, :cond_2

    .line 1035
    const v2, 0x7f060034

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 1039
    :cond_2
    new-instance v2, Lcom/androidemu/nes/NetPlayService;

    iget-object v3, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Lcom/androidemu/nes/NetPlayService;-><init>(Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayService:Lcom/androidemu/nes/NetPlayService;

    .line 1040
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayService:Lcom/androidemu/nes/NetPlayService;

    invoke-virtual {v2, v0, v1}, Lcom/androidemu/nes/NetPlayService;->tcpConnect(Ljava/net/InetAddress;I)V

    .line 1042
    const v2, 0x7f06001e

    invoke-virtual {p0, v2}, Lcom/androidemu/nes/EmulatorActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f06002f

    invoke-virtual {p0, v3}, Lcom/androidemu/nes/EmulatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/androidemu/nes/EmulatorActivity;->createNetWaitDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 1033
    :catch_0
    move-exception v2

    goto :goto_2

    .line 1023
    .end local v1    # "port":I
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private onWifiServer()V
    .locals 13

    .prologue
    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v7, 0x0

    .line 985
    const-string v8, "wifi"

    invoke-virtual {p0, v8}, Lcom/androidemu/nes/EmulatorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    .line 986
    .local v6, "wifi":Landroid/net/wifi/WifiManager;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 987
    .local v2, "info":Landroid/net/wifi/WifiInfo;
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v3

    .line 988
    .local v3, "ip":I
    :goto_1
    if-nez v3, :cond_2

    .line 989
    const v8, 0x7f06002d

    invoke-static {p0, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 1016
    :goto_2
    return-void

    .line 986
    .end local v2    # "info":Landroid/net/wifi/WifiInfo;
    .end local v3    # "ip":I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .restart local v2    # "info":Landroid/net/wifi/WifiInfo;
    :cond_1
    move v3, v7

    .line 987
    goto :goto_1

    .line 994
    .restart local v3    # "ip":I
    :cond_2
    const/4 v0, 0x0

    .line 996
    .local v0, "addr":Ljava/net/InetAddress;
    const/4 v8, 0x4

    :try_start_0
    new-array v8, v8, [B

    const/4 v9, 0x0

    int-to-byte v10, v3

    aput-byte v10, v8, v9

    const/4 v9, 0x1

    ushr-int/lit8 v10, v3, 0x8

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    const/4 v9, 0x2

    ushr-int/lit8 v10, v3, 0x10

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    const/4 v9, 0x3

    ushr-int/lit8 v10, v3, 0x18

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    invoke-static {v8}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1004
    :goto_3
    const/16 v5, 0x14f9

    .line 1006
    .local v5, "port":I
    :try_start_1
    new-instance v4, Lcom/androidemu/nes/NetPlayService;

    iget-object v8, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayHandler:Landroid/os/Handler;

    invoke-direct {v4, v8}, Lcom/androidemu/nes/NetPlayService;-><init>(Landroid/os/Handler;)V

    .line 1007
    .local v4, "np":Lcom/androidemu/nes/NetPlayService;
    invoke-virtual {v4, v0, v5}, Lcom/androidemu/nes/NetPlayService;->tcpListen(Ljava/net/InetAddress;I)I

    move-result v5

    .line 1008
    iput-object v4, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayService:Lcom/androidemu/nes/NetPlayService;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1013
    const v8, 0x7f06001d

    invoke-virtual {p0, v8}, Lcom/androidemu/nes/EmulatorActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    const v9, 0x7f06002e

    new-array v10, v11, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v10, v12

    invoke-virtual {p0, v9, v10}, Lcom/androidemu/nes/EmulatorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v8, v7}, Lcom/androidemu/nes/EmulatorActivity;->createNetWaitDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/Dialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    goto :goto_2

    .line 1009
    .end local v4    # "np":Lcom/androidemu/nes/NetPlayService;
    :catch_0
    move-exception v1

    .line 1010
    .local v1, "e":Ljava/io/IOException;
    goto :goto_2

    .line 1002
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "port":I
    :catch_1
    move-exception v8

    goto :goto_3
.end method

.method private pauseEmulator()V
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v0}, Lcom/androidemu/Emulator;->pause()V

    .line 701
    return-void
.end method

.method private quickLoad()V
    .locals 1

    .prologue
    .line 1295
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->getQuickSlotFileName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/androidemu/nes/EmulatorActivity;->loadState(Ljava/lang/String;)V

    .line 1296
    return-void
.end method

.method private quickSave()V
    .locals 1

    .prologue
    .line 1291
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->getQuickSlotFileName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/androidemu/nes/EmulatorActivity;->saveState(Ljava/lang/String;)V

    .line 1292
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
    .line 1215
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1216
    .local v1, "in":Ljava/io/FileInputStream;
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v0, v2, [B

    .line 1218
    .local v0, "buffer":[B
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 1219
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1221
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    throw v2

    :cond_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 1223
    return-object v0
.end method

.method private resumeEmulator()V
    .locals 1

    .prologue
    .line 704
    invoke-virtual {p0}, Lcom/androidemu/nes/EmulatorActivity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v0}, Lcom/androidemu/Emulator;->resume()V

    .line 706
    :cond_0
    return-void
.end method

.method private saveState(Ljava/lang/String;)V
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1237
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->pauseEmulator()V

    .line 1239
    const/4 v1, 0x0

    .line 1242
    .local v1, "out":Ljava/util/zip/ZipOutputStream;
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1244
    .end local v1    # "out":Ljava/util/zip/ZipOutputStream;
    .local v2, "out":Ljava/util/zip/ZipOutputStream;
    :try_start_1
    new-instance v3, Ljava/util/zip/ZipEntry;

    const-string v4, "screenshot.png"

    invoke-direct {v3, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 1246
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->getScreenshot()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1247
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1248
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1250
    if-eqz v2, :cond_0

    .line 1251
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    move-object v1, v2

    .line 1255
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v1    # "out":Ljava/util/zip/ZipOutputStream;
    :goto_0
    iget-object v3, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v3, p1}, Lcom/androidemu/Emulator;->saveState(Ljava/lang/String;)Z

    .line 1256
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->resumeEmulator()V

    .line 1257
    return-void

    .line 1250
    :catchall_0
    move-exception v3

    :goto_1
    if-eqz v1, :cond_1

    .line 1251
    :try_start_3
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    :cond_1
    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1253
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

    .line 1250
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v2    # "out":Ljava/util/zip/ZipOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/util/zip/ZipOutputStream;
    .restart local v1    # "out":Ljava/util/zip/ZipOutputStream;
    goto :goto_1
.end method

.method private setFlipScreen(Landroid/content/SharedPreferences;Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "config"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v2, 0x0

    .line 718
    iget v0, p2, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 719
    const-string v0, "flipScreen"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/androidemu/nes/EmulatorActivity;->flipScreen:Z

    .line 723
    :goto_0
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    const-string v1, "flipScreen"

    iget-boolean v2, p0, Lcom/androidemu/nes/EmulatorActivity;->flipScreen:Z

    invoke-virtual {v0, v1, v2}, Lcom/androidemu/Emulator;->setOption(Ljava/lang/String;Z)V

    .line 724
    return-void

    .line 721
    :cond_0
    iput-boolean v2, p0, Lcom/androidemu/nes/EmulatorActivity;->flipScreen:Z

    goto :goto_0
.end method

.method private setGameSpeed(F)V
    .locals 3
    .param p1, "speed"    # F

    .prologue
    .line 1139
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->pauseEmulator()V

    .line 1140
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    const-string v1, "gameSpeed"

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/androidemu/Emulator;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->resumeEmulator()V

    .line 1142
    return-void
.end method

.method private startAutoSyncClient()V
    .locals 4

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/androidemu/nes/EmulatorActivity;->autoSyncClientInterval:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1132
    return-void
.end method

.method private stopAutoSyncClient()V
    .locals 2

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1136
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
    .line 1228
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1230
    .local v0, "out":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1232
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 1234
    return-void

    .line 1232
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

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

    .line 415
    packed-switch p1, :pswitch_data_0

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 417
    :pswitch_0
    if-ne p2, v1, :cond_0

    .line 418
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/androidemu/nes/EmulatorActivity;->loadState(Ljava/lang/String;)V

    goto :goto_0

    .line 422
    :pswitch_1
    if-ne p2, v1, :cond_0

    .line 423
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/androidemu/nes/EmulatorActivity;->saveState(Ljava/lang/String;)V

    goto :goto_0

    .line 427
    :pswitch_2
    if-ne p2, v1, :cond_0

    .line 428
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->onBluetoothServer()V

    goto :goto_0

    .line 432
    :pswitch_3
    if-ne p2, v1, :cond_0

    .line 433
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->onBluetoothClient()V

    goto :goto_0

    .line 437
    :pswitch_4
    if-ne p2, v1, :cond_0

    .line 438
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/androidemu/nes/DeviceListActivity;->EXTRA_DEVICE_ADDRESS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 440
    .local v0, "address":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/androidemu/nes/EmulatorActivity;->onBluetoothConnect(Ljava/lang/String;)V

    goto :goto_0

    .line 415
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
    .line 211
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 213
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    invoke-direct {p0, v0, p1}, Lcom/androidemu/nes/EmulatorActivity;->setFlipScreen(Landroid/content/SharedPreferences;Landroid/content/res/Configuration;)V

    .line 214
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    .line 114
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 116
    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {p0}, Lcom/androidemu/nes/EmulatorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/androidemu/nes/EmulatorActivity;->finish()V

    .line 179
    :goto_0
    return-void

    .line 120
    :cond_0
    invoke-virtual {p0, v8}, Lcom/androidemu/nes/EmulatorActivity;->requestWindowFeature(I)Z

    .line 121
    invoke-virtual {p0, v9}, Lcom/androidemu/nes/EmulatorActivity;->setVolumeControlStream(I)V

    .line 123
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/androidemu/nes/EmulatorActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    .line 124
    iget-object v5, p0, Lcom/androidemu/nes/EmulatorActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    .line 125
    .local v5, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v5, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 127
    invoke-virtual {p0}, Lcom/androidemu/nes/EmulatorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p0, v5}, Lcom/androidemu/nes/EmulatorActivity;->getEmulatorEngine(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/androidemu/Emulator;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/androidemu/Emulator;

    move-result-object v6

    iput-object v6, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    .line 129
    invoke-static {p0}, Lcom/androidemu/EmuMedia;->setOnFrameDrawnListener(Lcom/androidemu/Emulator$OnFrameDrawnListener;)V

    .line 131
    const v6, 0x7f030003

    invoke-virtual {p0, v6}, Lcom/androidemu/nes/EmulatorActivity;->setContentView(I)V

    .line 133
    const v6, 0x7f090006

    invoke-virtual {p0, v6}, Lcom/androidemu/nes/EmulatorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/androidemu/EmulatorView;

    iput-object v6, p0, Lcom/androidemu/nes/EmulatorActivity;->emulatorView:Lcom/androidemu/EmulatorView;

    .line 134
    iget-object v6, p0, Lcom/androidemu/nes/EmulatorActivity;->emulatorView:Lcom/androidemu/EmulatorView;

    invoke-virtual {v6}, Lcom/androidemu/EmulatorView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v6

    invoke-interface {v6, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 135
    iget-object v6, p0, Lcom/androidemu/nes/EmulatorActivity;->emulatorView:Lcom/androidemu/EmulatorView;

    invoke-virtual {v6, p0}, Lcom/androidemu/EmulatorView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 136
    iget-object v6, p0, Lcom/androidemu/nes/EmulatorActivity;->emulatorView:Lcom/androidemu/EmulatorView;

    invoke-virtual {v6}, Lcom/androidemu/EmulatorView;->requestFocus()Z

    .line 139
    new-instance v6, Lcom/androidemu/nes/input/Keyboard;

    iget-object v7, p0, Lcom/androidemu/nes/EmulatorActivity;->emulatorView:Lcom/androidemu/EmulatorView;

    invoke-direct {v6, v7, p0}, Lcom/androidemu/nes/input/Keyboard;-><init>(Landroid/view/View;Lcom/androidemu/nes/input/GameKeyListener;)V

    iput-object v6, p0, Lcom/androidemu/nes/EmulatorActivity;->keyboard:Lcom/androidemu/nes/input/Keyboard;

    .line 141
    const/16 v6, 0x18

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "fullScreenMode"

    aput-object v7, v4, v6

    const-string v6, "flipScreen"

    aput-object v6, v4, v8

    const/4 v6, 0x2

    const-string v7, "fastForwardSpeed"

    aput-object v7, v4, v6

    const-string v6, "frameSkipMode"

    aput-object v6, v4, v9

    const/4 v6, 0x4

    const-string v7, "maxFrameSkips"

    aput-object v7, v4, v6

    const/4 v6, 0x5

    const-string v7, "refreshRate"

    aput-object v7, v4, v6

    const/4 v6, 0x6

    const-string v7, "soundEnabled"

    aput-object v7, v4, v6

    const/4 v6, 0x7

    const-string v7, "soundVolume"

    aput-object v7, v4, v6

    const/16 v6, 0x8

    const-string v7, "accurateRendering"

    aput-object v7, v4, v6

    const/16 v6, 0x9

    const-string v7, "secondController"

    aput-object v7, v4, v6

    const/16 v6, 0xa

    const-string v7, "enableTrackball"

    aput-object v7, v4, v6

    const/16 v6, 0xb

    const-string v7, "trackballSensitivity"

    aput-object v7, v4, v6

    const/16 v6, 0xc

    const-string v7, "enableSensor"

    aput-object v7, v4, v6

    const/16 v6, 0xd

    const-string v7, "sensorSensitivity"

    aput-object v7, v4, v6

    const/16 v6, 0xe

    const-string v7, "enableVKeypad"

    aput-object v7, v4, v6

    const/16 v6, 0xf

    const-string v7, "scalingMode"

    aput-object v7, v4, v6

    const/16 v6, 0x10

    const-string v7, "aspectRatio"

    aput-object v7, v4, v6

    const/16 v6, 0x11

    const-string v7, "enableCheats"

    aput-object v7, v4, v6

    const/16 v6, 0x12

    const-string v7, "orientation"

    aput-object v7, v4, v6

    const/16 v6, 0x13

    const-string v7, "useInputMethod"

    aput-object v7, v4, v6

    const/16 v6, 0x14

    const-string v7, "quickLoad"

    aput-object v7, v4, v6

    const/16 v6, 0x15

    const-string v7, "quickSave"

    aput-object v7, v4, v6

    const/16 v6, 0x16

    const-string v7, "fastForward"

    aput-object v7, v4, v6

    const/16 v6, 0x17

    const-string v7, "screenshot"

    aput-object v7, v4, v6

    .line 168
    .local v4, "prefKeys":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 169
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v5, v2}, Lcom/androidemu/nes/EmulatorActivity;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 170
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v5}, Lcom/androidemu/nes/EmulatorActivity;->loadKeyBindings(Landroid/content/SharedPreferences;)V

    .line 171
    invoke-direct {p0, v5}, Lcom/androidemu/nes/EmulatorActivity;->loadGameGenie(Landroid/content/SharedPreferences;)V

    .line 173
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->loadROM()Z

    move-result v6

    if-nez v6, :cond_2

    .line 174
    invoke-virtual {p0}, Lcom/androidemu/nes/EmulatorActivity;->finish()V

    goto/16 :goto_0

    .line 177
    :cond_2
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/androidemu/nes/EmulatorService;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v7, "com.androidemu.actions.FOREGROUND"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/androidemu/nes/EmulatorActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 245
    packed-switch p1, :pswitch_data_0

    .line 253
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 247
    :pswitch_0
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->createQuitGameDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 249
    :pswitch_1
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->createReplaceGameDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 251
    :pswitch_2
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->createWifiConnectDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 245
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

    .line 300
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 302
    invoke-virtual {p0}, Lcom/androidemu/nes/EmulatorActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f080001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 304
    iget v0, p0, Lcom/androidemu/nes/EmulatorActivity;->fdsTotalSides:I

    if-le v0, v2, :cond_0

    .line 305
    const v0, 0x7f09001a

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 307
    :cond_0
    invoke-static {}, Lcom/androidemu/nes/wrapper/Wrapper;->isBluetoothPresent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 308
    const v0, 0x7f09001e

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 309
    const v0, 0x7f09001f

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 311
    :cond_1
    return v2
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 183
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 185
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v0}, Lcom/androidemu/Emulator;->unloadROM()V

    .line 187
    :cond_0
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->onDisconnect()V

    .line 189
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/androidemu/nes/EmulatorService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/androidemu/nes/EmulatorActivity;->stopService(Landroid/content/Intent;)Z

    .line 190
    return-void
.end method

.method public onFrameDrawn(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 672
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->vkeypad:Lcom/androidemu/nes/input/VirtualKeypad;

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->vkeypad:Lcom/androidemu/nes/input/VirtualKeypad;

    invoke-virtual {v0, p1}, Lcom/androidemu/nes/input/VirtualKeypad;->draw(Landroid/graphics/Canvas;)V

    .line 674
    :cond_0
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
    .line 453
    iget-object v1, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayService:Lcom/androidemu/nes/NetPlayService;

    invoke-virtual {v1, p1}, Lcom/androidemu/nes/NetPlayService;->sendFrameUpdate(I)I

    move-result v0

    .line 454
    .local v0, "remote":I
    iget-object v1, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayService:Lcom/androidemu/nes/NetPlayService;

    invoke-virtual {v1}, Lcom/androidemu/nes/NetPlayService;->isServer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 455
    invoke-static {p1, v0}, Lcom/androidemu/nes/EmulatorActivity;->makeKeyStates(II)I

    move-result v1

    .line 457
    :goto_0
    return v1

    :cond_0
    invoke-static {v0, p1}, Lcom/androidemu/nes/EmulatorActivity;->makeKeyStates(II)I

    move-result v1

    goto :goto_0
.end method

.method public onGameKeyChanged()V
    .locals 3

    .prologue
    .line 590
    iget-object v1, p0, Lcom/androidemu/nes/EmulatorActivity;->keyboard:Lcom/androidemu/nes/input/Keyboard;

    invoke-virtual {v1}, Lcom/androidemu/nes/input/Keyboard;->getKeyStates()I

    move-result v0

    .line 591
    .local v0, "states":I
    iget-object v1, p0, Lcom/androidemu/nes/EmulatorActivity;->sensor:Lcom/androidemu/nes/input/SensorKeypad;

    if-eqz v1, :cond_0

    .line 592
    iget-object v1, p0, Lcom/androidemu/nes/EmulatorActivity;->sensor:Lcom/androidemu/nes/input/SensorKeypad;

    invoke-virtual {v1}, Lcom/androidemu/nes/input/SensorKeypad;->getKeyStates()I

    move-result v1

    or-int/2addr v0, v1

    .line 594
    :cond_0
    iget-boolean v1, p0, Lcom/androidemu/nes/EmulatorActivity;->flipScreen:Z

    if-eqz v1, :cond_1

    .line 595
    invoke-direct {p0, v0}, Lcom/androidemu/nes/EmulatorActivity;->flipGameKeys(I)I

    move-result v0

    .line 597
    :cond_1
    iget-object v1, p0, Lcom/androidemu/nes/EmulatorActivity;->vkeypad:Lcom/androidemu/nes/input/VirtualKeypad;

    if-eqz v1, :cond_2

    .line 598
    iget-object v1, p0, Lcom/androidemu/nes/EmulatorActivity;->vkeypad:Lcom/androidemu/nes/input/VirtualKeypad;

    invoke-virtual {v1}, Lcom/androidemu/nes/input/VirtualKeypad;->getKeyStates()I

    move-result v1

    or-int/2addr v0, v1

    .line 601
    :cond_2
    and-int/lit16 v1, v0, 0xc0

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_3

    .line 602
    and-int/lit16 v0, v0, -0xc1

    .line 603
    :cond_3
    and-int/lit8 v1, v0, 0x30

    const/16 v2, 0x30

    if-ne v1, v2, :cond_4

    .line 604
    and-int/lit8 v0, v0, -0x31

    .line 606
    :cond_4
    iget-object v1, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v1, v0}, Lcom/androidemu/Emulator;->setKeyStates(I)V

    .line 607
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 269
    iget v1, p0, Lcom/androidemu/nes/EmulatorActivity;->quickLoadKey:I

    if-ne p1, v1, :cond_1

    .line 270
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->quickLoad()V

    .line 295
    :cond_0
    :goto_0
    return v0

    .line 273
    :cond_1
    iget v1, p0, Lcom/androidemu/nes/EmulatorActivity;->quickSaveKey:I

    if-ne p1, v1, :cond_2

    .line 274
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->quickSave()V

    goto :goto_0

    .line 277
    :cond_2
    iget v1, p0, Lcom/androidemu/nes/EmulatorActivity;->fastForwardKey:I

    if-ne p1, v1, :cond_3

    .line 278
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->onFastForward()V

    goto :goto_0

    .line 281
    :cond_3
    iget v1, p0, Lcom/androidemu/nes/EmulatorActivity;->screenshotKey:I

    if-ne p1, v1, :cond_4

    .line 282
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->onScreenshot()V

    goto :goto_0

    .line 286
    :cond_4
    const/16 v1, 0x1b

    if-eq p1, v1, :cond_0

    const/16 v1, 0x54

    if-eq p1, v1, :cond_0

    .line 290
    const/4 v1, 0x4

    if-ne p1, v1, :cond_5

    .line 291
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->pauseEmulator()V

    .line 292
    invoke-virtual {p0, v0}, Lcom/androidemu/nes/EmulatorActivity;->showDialog(I)V

    goto :goto_0

    .line 295
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 234
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    :goto_0
    return-void

    .line 237
    :cond_0
    iput-object p1, p0, Lcom/androidemu/nes/EmulatorActivity;->newIntent:Landroid/content/Intent;

    .line 239
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->pauseEmulator()V

    .line 240
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/androidemu/nes/EmulatorActivity;->showDialog(I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x3

    const/4 v0, 0x1

    .line 335
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 410
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    .line 337
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/androidemu/nes/EmulatorSettings;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/androidemu/nes/EmulatorActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->doReset()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->doPower()V

    goto :goto_0

    .line 357
    :pswitch_4
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->onChangeDisk()V

    goto :goto_0

    .line 361
    :pswitch_5
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->onFastForward()V

    goto :goto_0

    .line 365
    :pswitch_6
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->onScreenshot()V

    goto :goto_0

    .line 369
    :pswitch_7
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/androidemu/nes/CheatsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/androidemu/nes/EmulatorActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 373
    :pswitch_8
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->onSaveState()V

    goto :goto_0

    .line 377
    :pswitch_9
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->onLoadState()V

    goto :goto_0

    .line 381
    :pswitch_a
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->onWifiServer()V

    goto :goto_0

    .line 385
    :pswitch_b
    invoke-virtual {p0, v2}, Lcom/androidemu/nes/EmulatorActivity;->showDialog(I)V

    goto :goto_0

    .line 389
    :pswitch_c
    invoke-direct {p0, v2}, Lcom/androidemu/nes/EmulatorActivity;->checkBluetoothEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 390
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->onBluetoothServer()V

    goto :goto_0

    .line 394
    :pswitch_d
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/androidemu/nes/EmulatorActivity;->checkBluetoothEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->onBluetoothClient()V

    goto :goto_0

    .line 399
    :pswitch_e
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->onDisconnect()V

    goto :goto_0

    .line 403
    :pswitch_f
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->onNetPlaySync()V

    goto :goto_0

    .line 407
    :pswitch_10
    invoke-virtual {p0}, Lcom/androidemu/nes/EmulatorActivity;->finish()V

    goto :goto_0

    .line 335
    nop

    :pswitch_data_0
    .packed-switch 0x7f090016
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
    .line 194
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 196
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->pauseEmulator()V

    .line 197
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->sensor:Lcom/androidemu/nes/input/SensorKeypad;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->sensor:Lcom/androidemu/nes/input/SensorKeypad;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/androidemu/nes/input/SensorKeypad;->setGameKeyListener(Lcom/androidemu/nes/input/GameKeyListener;)V

    .line 199
    :cond_0
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 258
    packed-switch p1, :pswitch_data_0

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 260
    :pswitch_0
    const v1, 0x7f090014

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 261
    .local v0, "v":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 262
    const/16 v1, 0x14f9

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 258
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
    const v5, 0x7f09001b

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 316
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 317
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->pauseEmulator()V

    .line 319
    iget-object v3, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayService:Lcom/androidemu/nes/NetPlayService;

    if-eqz v3, :cond_1

    move v0, v1

    .line 320
    .local v0, "netplay":Z
    :goto_0
    const v3, 0x7f09001d

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-nez v0, :cond_2

    move v3, v1

    :goto_1
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 321
    const v3, 0x7f090022

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 322
    const v3, 0x7f090016

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 323
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    if-nez v0, :cond_3

    move v3, v1

    :goto_2
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 325
    const v3, 0x7f09001c

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-object v4, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v4}, Lcom/androidemu/Emulator;->getCheats()Lcom/androidemu/Cheats;

    move-result-object v4

    if-eqz v4, :cond_0

    move v2, v1

    :cond_0
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 327
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget-boolean v2, p0, Lcom/androidemu/nes/EmulatorActivity;->inFastForward:Z

    if-eqz v2, :cond_4

    const v2, 0x7f060023

    :goto_3
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 330
    return v1

    .end local v0    # "netplay":Z
    :cond_1
    move v0, v2

    .line 319
    goto :goto_0

    .restart local v0    # "netplay":Z
    :cond_2
    move v3, v2

    .line 320
    goto :goto_1

    :cond_3
    move v3, v2

    .line 323
    goto :goto_2

    .line 327
    :cond_4
    const v2, 0x7f060022

    goto :goto_3
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 203
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 205
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->sensor:Lcom/androidemu/nes/input/SensorKeypad;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->sensor:Lcom/androidemu/nes/input/SensorKeypad;

    invoke-virtual {v0, p0}, Lcom/androidemu/nes/input/SensorKeypad;->setGameKeyListener(Lcom/androidemu/nes/input/GameKeyListener;)V

    .line 207
    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 11
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x7

    const/4 v9, 0x2

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 461
    const-string v7, "gamepad"

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 462
    invoke-direct {p0, p1}, Lcom/androidemu/nes/EmulatorActivity;->loadKeyBindings(Landroid/content/SharedPreferences;)V

    .line 587
    .end local p0    # "this":Lcom/androidemu/nes/EmulatorActivity;
    :cond_0
    :goto_0
    return-void

    .line 464
    .restart local p0    # "this":Lcom/androidemu/nes/EmulatorActivity;
    :cond_1
    const-string v7, "fullScreenMode"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 465
    invoke-virtual {p0}, Lcom/androidemu/nes/EmulatorActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 466
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    const-string v5, "fullScreenMode"

    invoke-interface {p1, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 467
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 470
    :goto_1
    invoke-virtual {p0}, Lcom/androidemu/nes/EmulatorActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    .line 469
    :cond_2
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v5, v5, -0x401

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1

    .line 472
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_3
    const-string v7, "flipScreen"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 473
    invoke-virtual {p0}, Lcom/androidemu/nes/EmulatorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/androidemu/nes/EmulatorActivity;->setFlipScreen(Landroid/content/SharedPreferences;Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 475
    :cond_4
    const-string v7, "fastForwardSpeed"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 476
    const-string v5, "2x"

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 477
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, p0, Lcom/androidemu/nes/EmulatorActivity;->fastForwardSpeed:F

    .line 479
    iget-boolean v5, p0, Lcom/androidemu/nes/EmulatorActivity;->inFastForward:Z

    if-eqz v5, :cond_0

    .line 480
    iget v5, p0, Lcom/androidemu/nes/EmulatorActivity;->fastForwardSpeed:F

    invoke-direct {p0, v5}, Lcom/androidemu/nes/EmulatorActivity;->setGameSpeed(F)V

    goto :goto_0

    .line 482
    .end local v4    # "value":Ljava/lang/String;
    :cond_5
    const-string v7, "frameSkipMode"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 483
    iget-object v5, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    const-string v6, "auto"

    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p2, v6}, Lcom/androidemu/Emulator;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 485
    :cond_6
    const-string v7, "maxFrameSkips"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 486
    iget-object v5, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-interface {p1, p2, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p2, v6}, Lcom/androidemu/Emulator;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 488
    :cond_7
    const-string v7, "maxFramesAhead"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 489
    iget-object v5, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayService:Lcom/androidemu/nes/NetPlayService;

    if-eqz v5, :cond_0

    .line 490
    iget-object v5, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayService:Lcom/androidemu/nes/NetPlayService;

    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/androidemu/nes/NetPlayService;->setMaxFramesAhead(I)V

    goto/16 :goto_0

    .line 492
    :cond_8
    const-string v7, "autoSyncClient"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "autoSyncClientInterval"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 495
    :cond_9
    iget-object v5, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayService:Lcom/androidemu/nes/NetPlayService;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/androidemu/nes/EmulatorActivity;->netPlayService:Lcom/androidemu/nes/NetPlayService;

    invoke-virtual {v5}, Lcom/androidemu/nes/NetPlayService;->isServer()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 496
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->stopAutoSyncClient()V

    .line 497
    iget-object v5, p0, Lcom/androidemu/nes/EmulatorActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v7, "autoSyncClient"

    invoke-interface {v5, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 498
    iget-object v5, p0, Lcom/androidemu/nes/EmulatorActivity;->sharedPrefs:Landroid/content/SharedPreferences;

    const-string v6, "autoSyncClientInterval"

    const-string v7, "30"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/androidemu/nes/EmulatorActivity;->autoSyncClientInterval:I

    .line 500
    iget v5, p0, Lcom/androidemu/nes/EmulatorActivity;->autoSyncClientInterval:I

    mul-int/lit16 v5, v5, 0x3e8

    iput v5, p0, Lcom/androidemu/nes/EmulatorActivity;->autoSyncClientInterval:I

    .line 501
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity;->startAutoSyncClient()V

    goto/16 :goto_0

    .line 504
    :cond_a
    const-string v7, "refreshRate"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 505
    iget-object v5, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    const-string v6, "default"

    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p2, v6}, Lcom/androidemu/Emulator;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 507
    :cond_b
    const-string v7, "soundEnabled"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 508
    iget-object v5, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-interface {p1, p2, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, p2, v6}, Lcom/androidemu/Emulator;->setOption(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 510
    :cond_c
    const-string v7, "soundVolume"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 511
    iget-object v5, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    const/16 v6, 0x64

    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, p2, v6}, Lcom/androidemu/Emulator;->setOption(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 513
    :cond_d
    const-string v7, "accurateRendering"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 514
    iget-object v5, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, p2, v6}, Lcom/androidemu/Emulator;->setOption(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 516
    :cond_e
    const-string v7, "secondController"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 517
    iget-object v5, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    const-string v6, "none"

    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, p2, v6}, Lcom/androidemu/Emulator;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 519
    :cond_f
    const-string v7, "enableTrackball"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 520
    iget-object v6, p0, Lcom/androidemu/nes/EmulatorActivity;->emulatorView:Lcom/androidemu/EmulatorView;

    invoke-interface {p1, p2, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_10

    .end local p0    # "this":Lcom/androidemu/nes/EmulatorActivity;
    :goto_2
    invoke-virtual {v6, p0}, Lcom/androidemu/EmulatorView;->setOnTrackballListener(Lcom/androidemu/EmulatorView$OnTrackballListener;)V

    goto/16 :goto_0

    .restart local p0    # "this":Lcom/androidemu/nes/EmulatorActivity;
    :cond_10
    move-object p0, v5

    goto :goto_2

    .line 523
    :cond_11
    const-string v7, "trackballSensitivity"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 524
    invoke-interface {p1, p2, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x5

    add-int/lit8 v5, v5, 0xa

    iput v5, p0, Lcom/androidemu/nes/EmulatorActivity;->trackballSensitivity:I

    goto/16 :goto_0

    .line 526
    :cond_12
    const-string v7, "enableSensor"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 527
    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_13

    .line 528
    iput-object v5, p0, Lcom/androidemu/nes/EmulatorActivity;->sensor:Lcom/androidemu/nes/input/SensorKeypad;

    goto/16 :goto_0

    .line 529
    :cond_13
    iget-object v5, p0, Lcom/androidemu/nes/EmulatorActivity;->sensor:Lcom/androidemu/nes/input/SensorKeypad;

    if-nez v5, :cond_0

    .line 530
    new-instance v5, Lcom/androidemu/nes/input/SensorKeypad;

    invoke-direct {v5, p0}, Lcom/androidemu/nes/input/SensorKeypad;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/androidemu/nes/EmulatorActivity;->sensor:Lcom/androidemu/nes/input/SensorKeypad;

    .line 531
    iget-object v5, p0, Lcom/androidemu/nes/EmulatorActivity;->sensor:Lcom/androidemu/nes/input/SensorKeypad;

    const-string v6, "sensorSensitivity"

    invoke-interface {p1, v6, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/androidemu/nes/input/SensorKeypad;->setSensitivity(I)V

    goto/16 :goto_0

    .line 533
    :cond_14
    const-string v7, "sensorSensitivity"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 534
    iget-object v5, p0, Lcom/androidemu/nes/EmulatorActivity;->sensor:Lcom/androidemu/nes/input/SensorKeypad;

    if-eqz v5, :cond_0

    .line 535
    iget-object v5, p0, Lcom/androidemu/nes/EmulatorActivity;->sensor:Lcom/androidemu/nes/input/SensorKeypad;

    invoke-interface {p1, p2, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/androidemu/nes/input/SensorKeypad;->setSensitivity(I)V

    goto/16 :goto_0

    .line 537
    :cond_15
    const-string v7, "enableVKeypad"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 538
    invoke-interface {p1, p2, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_16

    .line 539
    iget-object v6, p0, Lcom/androidemu/nes/EmulatorActivity;->vkeypad:Lcom/androidemu/nes/input/VirtualKeypad;

    if-eqz v6, :cond_0

    .line 540
    iget-object v6, p0, Lcom/androidemu/nes/EmulatorActivity;->vkeypad:Lcom/androidemu/nes/input/VirtualKeypad;

    invoke-virtual {v6}, Lcom/androidemu/nes/input/VirtualKeypad;->destroy()V

    .line 541
    iput-object v5, p0, Lcom/androidemu/nes/EmulatorActivity;->vkeypad:Lcom/androidemu/nes/input/VirtualKeypad;

    goto/16 :goto_0

    .line 543
    :cond_16
    iget-object v5, p0, Lcom/androidemu/nes/EmulatorActivity;->vkeypad:Lcom/androidemu/nes/input/VirtualKeypad;

    if-nez v5, :cond_0

    .line 544
    new-instance v5, Lcom/androidemu/nes/input/VirtualKeypad;

    iget-object v6, p0, Lcom/androidemu/nes/EmulatorActivity;->emulatorView:Lcom/androidemu/EmulatorView;

    invoke-direct {v5, v6, p0}, Lcom/androidemu/nes/input/VirtualKeypad;-><init>(Landroid/view/View;Lcom/androidemu/nes/input/GameKeyListener;)V

    iput-object v5, p0, Lcom/androidemu/nes/EmulatorActivity;->vkeypad:Lcom/androidemu/nes/input/VirtualKeypad;

    goto/16 :goto_0

    .line 546
    :cond_17
    const-string v5, "scalingMode"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 547
    iget-object v5, p0, Lcom/androidemu/nes/EmulatorActivity;->emulatorView:Lcom/androidemu/EmulatorView;

    const-string v6, "proportional"

    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/androidemu/nes/EmulatorActivity;->getScalingMode(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/androidemu/EmulatorView;->setScalingMode(I)V

    goto/16 :goto_0

    .line 550
    :cond_18
    const-string v5, "aspectRatio"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 551
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 552
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/androidemu/nes/EmulatorActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 554
    const-string v5, "1.3333"

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 555
    .local v3, "ratio":F
    const/4 v5, 0x0

    cmpl-float v5, v3, v5

    if-eqz v5, :cond_19

    .line 556
    iget v5, v2, Landroid/util/DisplayMetrics;->xdpi:F

    iget v6, v2, Landroid/util/DisplayMetrics;->ydpi:F

    div-float v1, v5, v6

    .line 558
    .local v1, "dpiRatio":F
    const v5, 0x3fd5566d    # 1.6667f

    cmpg-float v5, v1, v5

    if-gez v5, :cond_19

    const v5, 0x3f19999a    # 0.6f

    cmpl-float v5, v1, v5

    if-lez v5, :cond_19

    .line 559
    mul-float/2addr v3, v1

    .line 561
    .end local v1    # "dpiRatio":F
    :cond_19
    iget-object v5, p0, Lcom/androidemu/nes/EmulatorActivity;->emulatorView:Lcom/androidemu/EmulatorView;

    invoke-virtual {v5, v3}, Lcom/androidemu/EmulatorView;->setAspectRatio(F)V

    goto/16 :goto_0

    .line 563
    .end local v2    # "metrics":Landroid/util/DisplayMetrics;
    .end local v3    # "ratio":F
    :cond_1a
    const-string v5, "enableCheats"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 564
    iget-object v5, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-interface {p1, p2, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/androidemu/Emulator;->enableCheats(Z)V

    goto/16 :goto_0

    .line 566
    :cond_1b
    const-string v5, "orientation"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 567
    const-string v5, "unspecified"

    invoke-interface {p1, p2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/androidemu/nes/EmulatorActivity;->getScreenOrientation(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/androidemu/nes/EmulatorActivity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 570
    :cond_1c
    const-string v5, "useInputMethod"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 571
    invoke-virtual {p0}, Lcom/androidemu/nes/EmulatorActivity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1d

    move v5, v6

    :goto_3
    const/high16 v6, 0x20000

    invoke-virtual {v7, v5, v6}, Landroid/view/Window;->setFlags(II)V

    goto/16 :goto_0

    :cond_1d
    const/high16 v5, 0x20000

    goto :goto_3

    .line 575
    :cond_1e
    const-string v5, "quickLoad"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 576
    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/androidemu/nes/EmulatorActivity;->quickLoadKey:I

    goto/16 :goto_0

    .line 578
    :cond_1f
    const-string v5, "quickSave"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 579
    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/androidemu/nes/EmulatorActivity;->quickSaveKey:I

    goto/16 :goto_0

    .line 581
    :cond_20
    const-string v5, "fastForward"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 582
    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/androidemu/nes/EmulatorActivity;->fastForwardKey:I

    goto/16 :goto_0

    .line 584
    :cond_21
    const-string v5, "screenshot"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 585
    invoke-interface {p1, p2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/androidemu/nes/EmulatorActivity;->screenshotKey:I

    goto/16 :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 677
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity;->vkeypad:Lcom/androidemu/nes/input/VirtualKeypad;

    if-eqz v2, :cond_0

    .line 678
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity;->vkeypad:Lcom/androidemu/nes/input/VirtualKeypad;

    iget-boolean v3, p0, Lcom/androidemu/nes/EmulatorActivity;->flipScreen:Z

    invoke-virtual {v2, p2, v3}, Lcom/androidemu/nes/input/VirtualKeypad;->onTouch(Landroid/view/MotionEvent;Z)Z

    move-result v2

    .line 696
    :goto_0
    return v2

    .line 680
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    .line 681
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/androidemu/nes/EmulatorActivity;->surfaceWidth:I

    mul-int/2addr v2, v3

    iget-object v3, p0, Lcom/androidemu/nes/EmulatorActivity;->emulatorView:Lcom/androidemu/EmulatorView;

    invoke-virtual {v3}, Lcom/androidemu/EmulatorView;->getWidth()I

    move-result v3

    div-int v0, v2, v3

    .line 683
    .local v0, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget v3, p0, Lcom/androidemu/nes/EmulatorActivity;->surfaceHeight:I

    mul-int/2addr v2, v3

    iget-object v3, p0, Lcom/androidemu/nes/EmulatorActivity;->emulatorView:Lcom/androidemu/EmulatorView;

    invoke-virtual {v3}, Lcom/androidemu/EmulatorView;->getHeight()I

    move-result v3

    div-int v1, v2, v3

    .line 685
    .local v1, "y":I
    iget-boolean v2, p0, Lcom/androidemu/nes/EmulatorActivity;->flipScreen:Z

    if-eqz v2, :cond_1

    .line 686
    iget v2, p0, Lcom/androidemu/nes/EmulatorActivity;->surfaceWidth:I

    sub-int v0, v2, v0

    .line 687
    iget v2, p0, Lcom/androidemu/nes/EmulatorActivity;->surfaceHeight:I

    sub-int v1, v2, v1

    .line 689
    :cond_1
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity;->surfaceRegion:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 690
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity;->surfaceRegion:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    .line 691
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity;->surfaceRegion:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 692
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v2, v0, v1}, Lcom/androidemu/Emulator;->fireLightGun(II)V

    .line 693
    const/4 v2, 0x1

    goto :goto_0

    .line 696
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
    .line 610
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 611
    .local v2, "dx":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 612
    .local v3, "dy":F
    iget-boolean v6, p0, Lcom/androidemu/nes/EmulatorActivity;->flipScreen:Z

    if-eqz v6, :cond_0

    .line 613
    neg-float v2, v2

    .line 614
    neg-float v3, v3

    .line 617
    :cond_0
    iget v6, p0, Lcom/androidemu/nes/EmulatorActivity;->trackballSensitivity:I

    int-to-float v6, v6

    mul-float/2addr v6, v2

    float-to-int v0, v6

    .line 618
    .local v0, "duration1":I
    iget v6, p0, Lcom/androidemu/nes/EmulatorActivity;->trackballSensitivity:I

    int-to-float v6, v6

    mul-float/2addr v6, v3

    float-to-int v1, v6

    .line 619
    .local v1, "duration2":I
    const/4 v4, 0x0

    .line 620
    .local v4, "key1":I
    const/4 v5, 0x0

    .line 622
    .local v5, "key2":I
    if-gez v0, :cond_3

    .line 623
    const/16 v4, 0x40

    .line 627
    :cond_1
    :goto_0
    if-gez v1, :cond_4

    .line 628
    const/16 v5, 0x10

    .line 632
    :cond_2
    :goto_1
    if-nez v4, :cond_5

    if-nez v5, :cond_5

    .line 633
    const/4 v6, 0x0

    .line 637
    :goto_2
    return v6

    .line 624
    :cond_3
    if-lez v0, :cond_1

    .line 625
    const/16 v4, 0x80

    goto :goto_0

    .line 629
    :cond_4
    if-lez v1, :cond_2

    .line 630
    const/16 v5, 0x20

    goto :goto_1

    .line 635
    :cond_5
    iget-object v6, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-virtual {v6, v4, v7, v5, v8}, Lcom/androidemu/Emulator;->processTrackball(IIII)V

    .line 637
    const/4 v6, 0x1

    goto :goto_2
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 218
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 220
    if-eqz p1, :cond_1

    .line 222
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->keyboard:Lcom/androidemu/nes/input/Keyboard;

    invoke-virtual {v0}, Lcom/androidemu/nes/input/Keyboard;->reset()V

    .line 223
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->vkeypad:Lcom/androidemu/nes/input/VirtualKeypad;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->vkeypad:Lcom/androidemu/nes/input/VirtualKeypad;

    invoke-virtual {v0}, Lcom/androidemu/nes/input/VirtualKeypad;->reset()V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/androidemu/Emulator;->setKeyStates(I)V

    .line 227
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v0}, Lcom/androidemu/Emulator;->resume()V

    .line 230
    :goto_0
    return-void

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v0}, Lcom/androidemu/Emulator;->pause()V

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 5
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 654
    iput p3, p0, Lcom/androidemu/nes/EmulatorActivity;->surfaceWidth:I

    .line 655
    iput p4, p0, Lcom/androidemu/nes/EmulatorActivity;->surfaceHeight:I

    .line 657
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity;->vkeypad:Lcom/androidemu/nes/input/VirtualKeypad;

    if-eqz v2, :cond_0

    .line 658
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity;->vkeypad:Lcom/androidemu/nes/input/VirtualKeypad;

    invoke-virtual {v2, p3, p4}, Lcom/androidemu/nes/input/VirtualKeypad;->resize(II)V

    .line 660
    :cond_0
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v2}, Lcom/androidemu/Emulator;->getVideoWidth()I

    move-result v1

    .line 661
    .local v1, "w":I
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v2}, Lcom/androidemu/Emulator;->getVideoHeight()I

    move-result v0

    .line 662
    .local v0, "h":I
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity;->surfaceRegion:Landroid/graphics/Rect;

    sub-int v3, p3, v1

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 663
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity;->surfaceRegion:Landroid/graphics/Rect;

    sub-int v3, p4, v0

    div-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 664
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity;->surfaceRegion:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/androidemu/nes/EmulatorActivity;->surfaceRegion:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 665
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity;->surfaceRegion:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/androidemu/nes/EmulatorActivity;->surfaceRegion:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v0

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 667
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    iget-object v3, p0, Lcom/androidemu/nes/EmulatorActivity;->surfaceRegion:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/androidemu/nes/EmulatorActivity;->surfaceRegion:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, v3, v4, v1, v0}, Lcom/androidemu/Emulator;->setSurfaceRegion(IIII)V

    .line 669
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 641
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    invoke-virtual {v0, p1}, Lcom/androidemu/Emulator;->setSurface(Landroid/view/SurfaceHolder;)V

    .line 642
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 645
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->vkeypad:Lcom/androidemu/nes/input/VirtualKeypad;

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->vkeypad:Lcom/androidemu/nes/input/VirtualKeypad;

    invoke-virtual {v0}, Lcom/androidemu/nes/input/VirtualKeypad;->destroy()V

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity;->emulator:Lcom/androidemu/Emulator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/androidemu/Emulator;->setSurface(Landroid/view/SurfaceHolder;)V

    .line 649
    return-void
.end method
