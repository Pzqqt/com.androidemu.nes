.class public Lcom/androidemu/nes/DeviceListActivity;
.super Landroid/app/Activity;
.source "DeviceListActivity.java"


# static fields
.field private static final D:Z = false

.field public static EXTRA_DEVICE_ADDRESS:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "DeviceListActivity"


# instance fields
.field private mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mDeviceClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mNewDevicesArrayAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPairedDevicesArrayAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string v0, "device_address"

    sput-object v0, Lcom/androidemu/nes/DeviceListActivity;->EXTRA_DEVICE_ADDRESS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 156
    new-instance v0, Lcom/androidemu/nes/DeviceListActivity$2;

    invoke-direct {v0, p0}, Lcom/androidemu/nes/DeviceListActivity$2;-><init>(Lcom/androidemu/nes/DeviceListActivity;)V

    iput-object v0, p0, Lcom/androidemu/nes/DeviceListActivity;->mDeviceClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 177
    new-instance v0, Lcom/androidemu/nes/DeviceListActivity$3;

    invoke-direct {v0, p0}, Lcom/androidemu/nes/DeviceListActivity$3;-><init>(Lcom/androidemu/nes/DeviceListActivity;)V

    iput-object v0, p0, Lcom/androidemu/nes/DeviceListActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/androidemu/nes/DeviceListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/androidemu/nes/DeviceListActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/androidemu/nes/DeviceListActivity;->doDiscovery()V

    return-void
.end method

.method static synthetic access$100(Lcom/androidemu/nes/DeviceListActivity;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/androidemu/nes/DeviceListActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/androidemu/nes/DeviceListActivity;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/androidemu/nes/DeviceListActivity;)Landroid/widget/ArrayAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/androidemu/nes/DeviceListActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/androidemu/nes/DeviceListActivity;->mNewDevicesArrayAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method private doDiscovery()V
    .locals 2

    .prologue
    .line 140
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/androidemu/nes/DeviceListActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 141
    const v0, 0x7f06003b

    invoke-virtual {p0, v0}, Lcom/androidemu/nes/DeviceListActivity;->setTitle(I)V

    .line 144
    const v0, 0x7f090003

    invoke-virtual {p0, v0}, Lcom/androidemu/nes/DeviceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/androidemu/nes/DeviceListActivity;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/androidemu/nes/DeviceListActivity;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/androidemu/nes/DeviceListActivity;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    .line 153
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v10, 0x7f030002

    const/4 v9, 0x0

    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const/4 v8, 0x5

    invoke-virtual {p0, v8}, Lcom/androidemu/nes/DeviceListActivity;->requestWindowFeature(I)Z

    .line 65
    const v8, 0x7f030001

    invoke-virtual {p0, v8}, Lcom/androidemu/nes/DeviceListActivity;->setContentView(I)V

    .line 68
    invoke-virtual {p0, v9}, Lcom/androidemu/nes/DeviceListActivity;->setResult(I)V

    .line 71
    const v8, 0x7f090005

    invoke-virtual {p0, v8}, Lcom/androidemu/nes/DeviceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 72
    .local v7, "scanButton":Landroid/widget/Button;
    new-instance v8, Lcom/androidemu/nes/DeviceListActivity$1;

    invoke-direct {v8, p0}, Lcom/androidemu/nes/DeviceListActivity$1;-><init>(Lcom/androidemu/nes/DeviceListActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    new-instance v8, Landroid/widget/ArrayAdapter;

    invoke-direct {v8, p0, v10}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v8, p0, Lcom/androidemu/nes/DeviceListActivity;->mPairedDevicesArrayAdapter:Landroid/widget/ArrayAdapter;

    .line 82
    new-instance v8, Landroid/widget/ArrayAdapter;

    invoke-direct {v8, p0, v10}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v8, p0, Lcom/androidemu/nes/DeviceListActivity;->mNewDevicesArrayAdapter:Landroid/widget/ArrayAdapter;

    .line 85
    const v8, 0x7f090002

    invoke-virtual {p0, v8}, Lcom/androidemu/nes/DeviceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    .line 86
    .local v6, "pairedListView":Landroid/widget/ListView;
    iget-object v8, p0, Lcom/androidemu/nes/DeviceListActivity;->mPairedDevicesArrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v6, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 87
    iget-object v8, p0, Lcom/androidemu/nes/DeviceListActivity;->mDeviceClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v6, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 90
    const v8, 0x7f090004

    invoke-virtual {p0, v8}, Lcom/androidemu/nes/DeviceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 91
    .local v3, "newDevicesListView":Landroid/widget/ListView;
    iget-object v8, p0, Lcom/androidemu/nes/DeviceListActivity;->mNewDevicesArrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 92
    iget-object v8, p0, Lcom/androidemu/nes/DeviceListActivity;->mDeviceClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v3, v8}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 95
    new-instance v1, Landroid/content/IntentFilter;

    const-string v8, "android.bluetooth.device.action.FOUND"

    invoke-direct {v1, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 96
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v8, p0, Lcom/androidemu/nes/DeviceListActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v1}, Lcom/androidemu/nes/DeviceListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 99
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "filter":Landroid/content/IntentFilter;
    const-string v8, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-direct {v1, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 100
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    iget-object v8, p0, Lcom/androidemu/nes/DeviceListActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v1}, Lcom/androidemu/nes/DeviceListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 103
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v8

    iput-object v8, p0, Lcom/androidemu/nes/DeviceListActivity;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 106
    iget-object v8, p0, Lcom/androidemu/nes/DeviceListActivity;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v5

    .line 109
    .local v5, "pairedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 110
    const v8, 0x7f090001

    invoke-virtual {p0, v8}, Lcom/androidemu/nes/DeviceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 111
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 112
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v8, p0, Lcom/androidemu/nes/DeviceListActivity;->mPairedDevicesArrayAdapter:Landroid/widget/ArrayAdapter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 115
    .end local v0    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {p0}, Lcom/androidemu/nes/DeviceListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f06003d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 116
    .local v4, "noDevices":Ljava/lang/String;
    iget-object v8, p0, Lcom/androidemu/nes/DeviceListActivity;->mPairedDevicesArrayAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v8, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 118
    .end local v4    # "noDevices":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 125
    iget-object v0, p0, Lcom/androidemu/nes/DeviceListActivity;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/androidemu/nes/DeviceListActivity;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/androidemu/nes/DeviceListActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/androidemu/nes/DeviceListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 131
    return-void
.end method
