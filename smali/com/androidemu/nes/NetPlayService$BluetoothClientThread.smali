.class Lcom/androidemu/nes/NetPlayService$BluetoothClientThread;
.super Lcom/androidemu/nes/NetPlayService$NetThread;
.source "NetPlayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidemu/nes/NetPlayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothClientThread"
.end annotation


# instance fields
.field private adapter:Landroid/bluetooth/BluetoothAdapter;

.field private socket:Landroid/bluetooth/BluetoothSocket;

.field final synthetic this$0:Lcom/androidemu/nes/NetPlayService;


# direct methods
.method public constructor <init>(Lcom/androidemu/nes/NetPlayService;Ljava/lang/String;)V
    .locals 2
    .param p2, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 334
    iput-object p1, p0, Lcom/androidemu/nes/NetPlayService$BluetoothClientThread;->this$0:Lcom/androidemu/nes/NetPlayService;

    .line 329
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/androidemu/nes/NetPlayService$NetThread;-><init>(Lcom/androidemu/nes/NetPlayService;Lcom/androidemu/nes/NetPlayService$NetThread;)V

    .line 331
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/androidemu/nes/NetPlayService$BluetoothClientThread;->adapter:Landroid/bluetooth/BluetoothAdapter;

    .line 332
    iget-object v1, p0, Lcom/androidemu/nes/NetPlayService$BluetoothClientThread;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, p2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 333
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-static {}, Lcom/androidemu/nes/NetPlayService;->access$2()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v1

    iput-object v1, p0, Lcom/androidemu/nes/NetPlayService$BluetoothClientThread;->socket:Landroid/bluetooth/BluetoothSocket;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 348
    :try_start_0
    iget-object v0, p0, Lcom/androidemu/nes/NetPlayService$BluetoothClientThread;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :goto_0
    return-void

    .line 349
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected runIO()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    iget-object v0, p0, Lcom/androidemu/nes/NetPlayService$BluetoothClientThread;->adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 340
    iget-object v0, p0, Lcom/androidemu/nes/NetPlayService$BluetoothClientThread;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V

    .line 341
    iget-object v0, p0, Lcom/androidemu/nes/NetPlayService$BluetoothClientThread;->this$0:Lcom/androidemu/nes/NetPlayService;

    iget-object v1, p0, Lcom/androidemu/nes/NetPlayService$BluetoothClientThread;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 342
    iget-object v2, p0, Lcom/androidemu/nes/NetPlayService$BluetoothClientThread;->socket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 341
    invoke-static {v0, v1, v2}, Lcom/androidemu/nes/NetPlayService;->access$3(Lcom/androidemu/nes/NetPlayService;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 343
    return-void
.end method
