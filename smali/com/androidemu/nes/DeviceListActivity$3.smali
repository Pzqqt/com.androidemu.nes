.class Lcom/androidemu/nes/DeviceListActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "DeviceListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidemu/nes/DeviceListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidemu/nes/DeviceListActivity;


# direct methods
.method constructor <init>(Lcom/androidemu/nes/DeviceListActivity;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/androidemu/nes/DeviceListActivity$3;->this$0:Lcom/androidemu/nes/DeviceListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 180
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 185
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 187
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_0

    .line 188
    iget-object v3, p0, Lcom/androidemu/nes/DeviceListActivity$3;->this$0:Lcom/androidemu/nes/DeviceListActivity;

    invoke-static {v3}, Lcom/androidemu/nes/DeviceListActivity;->access$200(Lcom/androidemu/nes/DeviceListActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 199
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    const-string v3, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 192
    iget-object v3, p0, Lcom/androidemu/nes/DeviceListActivity$3;->this$0:Lcom/androidemu/nes/DeviceListActivity;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/androidemu/nes/DeviceListActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 193
    iget-object v3, p0, Lcom/androidemu/nes/DeviceListActivity$3;->this$0:Lcom/androidemu/nes/DeviceListActivity;

    const v4, 0x7f06003c

    invoke-virtual {v3, v4}, Lcom/androidemu/nes/DeviceListActivity;->setTitle(I)V

    .line 194
    iget-object v3, p0, Lcom/androidemu/nes/DeviceListActivity$3;->this$0:Lcom/androidemu/nes/DeviceListActivity;

    invoke-static {v3}, Lcom/androidemu/nes/DeviceListActivity;->access$200(Lcom/androidemu/nes/DeviceListActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 195
    iget-object v3, p0, Lcom/androidemu/nes/DeviceListActivity$3;->this$0:Lcom/androidemu/nes/DeviceListActivity;

    invoke-virtual {v3}, Lcom/androidemu/nes/DeviceListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06003e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, "noDevices":Ljava/lang/String;
    iget-object v3, p0, Lcom/androidemu/nes/DeviceListActivity$3;->this$0:Lcom/androidemu/nes/DeviceListActivity;

    invoke-static {v3}, Lcom/androidemu/nes/DeviceListActivity;->access$200(Lcom/androidemu/nes/DeviceListActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0
.end method
