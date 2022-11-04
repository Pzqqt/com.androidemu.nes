.class Lcom/androidemu/nes/EmulatorActivity$NetplayConnectDialog_OnClickListener;
.super Ljava/lang/Object;
.source "EmulatorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androidemu/nes/EmulatorActivity;->showNetplayConnectDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidemu/nes/EmulatorActivity;


# direct methods
.method constructor <init>(Lcom/androidemu/nes/EmulatorActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androidemu/nes/EmulatorActivity$NetplayConnectDialog_OnClickListener;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    .line 815
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method private checkRunningNetPlay()Z
    .locals 4

    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity$NetplayConnectDialog_OnClickListener;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    const/4 v2, 0x0
    .local v2, "isHaveRunningNetPlay":Z

    invoke-static {v0}, Lcom/androidemu/nes/EmulatorActivity;->access$0(Lcom/androidemu/nes/EmulatorActivity;)Lcom/androidemu/nes/NetPlayService;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    const v1, 0x7f0700b5

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_0
    return v2
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue

    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity$NetplayConnectDialog_OnClickListener;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    const/4 v1, 0x3

    if-gt p2, v1, :cond_0

    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorActivity$NetplayConnectDialog_OnClickListener;->checkRunningNetPlay()Z

    move-result v1

    if-nez v1, :goto_0

    :cond_0
    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_doBluetoothServer
    invoke-static {v0}, Lcom/androidemu/nes/EmulatorActivity;->access$doBluetoothServer(Lcom/androidemu/nes/EmulatorActivity;)V

    goto :goto_0

    :pswitch_doBluetoothClient
    invoke-static {v0}, Lcom/androidemu/nes/EmulatorActivity;->access$doBluetoothClient(Lcom/androidemu/nes/EmulatorActivity;)V

    goto :goto_0

    :pswitch_doWifiServer
    invoke-static {v0}, Lcom/androidemu/nes/EmulatorActivity;->access$doWifiServer(Lcom/androidemu/nes/EmulatorActivity;)V

    goto :goto_0

    :pswitch_doWifiClient
    invoke-static {v0}, Lcom/androidemu/nes/EmulatorActivity;->access$doWifiClient(Lcom/androidemu/nes/EmulatorActivity;)V

    goto :goto_0

    :pswitch_onNetPlaySync
    invoke-static {v0}, Lcom/androidemu/nes/EmulatorActivity;->access$onNetPlaySync(Lcom/androidemu/nes/EmulatorActivity;)V

    goto :goto_0

    :pswitch_onDisconnect
    invoke-static {v0}, Lcom/androidemu/nes/EmulatorActivity;->access$onDisconnect(Lcom/androidemu/nes/EmulatorActivity;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_doBluetoothServer
        :pswitch_doBluetoothClient
        :pswitch_doWifiServer
        :pswitch_doWifiClient
        :pswitch_onNetPlaySync
        :pswitch_onDisconnect
    .end packed-switch
.end method
