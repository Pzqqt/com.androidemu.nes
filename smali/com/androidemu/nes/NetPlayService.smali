.class public Lcom/androidemu/nes/NetPlayService;
.super Ljava/lang/Object;
.source "NetPlayService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidemu/nes/NetPlayService$BluetoothClientThread;,
        Lcom/androidemu/nes/NetPlayService$BluetoothServerThread;,
        Lcom/androidemu/nes/NetPlayService$NetThread;,
        Lcom/androidemu/nes/NetPlayService$PacketInputStream;,
        Lcom/androidemu/nes/NetPlayService$PacketOutputStream;,
        Lcom/androidemu/nes/NetPlayService$TCPClientThread;,
        Lcom/androidemu/nes/NetPlayService$TCPServerThread;
    }
.end annotation


# static fields
.field private static final BT_SERVICE_NAME:Ljava/lang/String; = "Nesoid"

.field private static final BT_SERVICE_UUID:Ljava/util/UUID;

.field private static final CMD_FRAME_UPDATE:S = 0x2s

.field private static final CMD_HELLO:S = 0x1s

.field private static final CMD_POWER_ROM:S = 0x3s

.field private static final CMD_RESET_ROM:S = 0x4s

.field private static final CMD_SAVED_STATE:S = 0x5s

.field public static final E_CONNECTION_CLOSED:I = 0x3

.field public static final E_CONNECT_FAILED:I = 0x1

.field public static final E_PROTOCOL_INCOMPATIBLE:I = 0x2

.field private static final MAX_SAVED_STATE_SIZE:I = 0x200000

.field public static final MESSAGE_CONNECTED:I = 0x1

.field public static final MESSAGE_DISCONNECTED:I = 0x2

.field public static final MESSAGE_POWER_ROM:I = 0x3

.field public static final MESSAGE_RESET_ROM:I = 0x4

.field public static final MESSAGE_SAVED_STATE:I = 0x5

.field private static final PROTO_VERSION:S = 0x1s


# instance fields
.field private frameLock:Ljava/lang/Object;

.field private handler:Landroid/os/Handler;

.field private inputStream:Lcom/androidemu/nes/NetPlayService$PacketInputStream;

.field private isServer:Z

.field private localFrameCount:I

.field private maxFramesAhead:I

.field private netThread:Lcom/androidemu/nes/NetPlayService$NetThread;

.field private outputStream:Lcom/androidemu/nes/NetPlayService$PacketOutputStream;

.field private remoteFrameCount:I

.field private remoteKeys:I

.field private waitOnMessage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "8f996e39-374d-466c-bd0c-e0ced64b4e54"

    .line 41
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/androidemu/nes/NetPlayService;->BT_SERVICE_UUID:Ljava/util/UUID;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/androidemu/nes/NetPlayService;->frameLock:Ljava/lang/Object;

    .line 59
    iput-object p1, p0, Lcom/androidemu/nes/NetPlayService;->handler:Landroid/os/Handler;

    .line 60
    return-void
.end method

.method static synthetic access$0(Lcom/androidemu/nes/NetPlayService;)Lcom/androidemu/nes/NetPlayService$PacketOutputStream;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/androidemu/nes/NetPlayService;->outputStream:Lcom/androidemu/nes/NetPlayService$PacketOutputStream;

    return-object v0
.end method

.method static synthetic access$1(Lcom/androidemu/nes/NetPlayService;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/androidemu/nes/NetPlayService;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/androidemu/nes/NetPlayService;->BT_SERVICE_UUID:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$3(Lcom/androidemu/nes/NetPlayService;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    invoke-direct {p0, p1, p2}, Lcom/androidemu/nes/NetPlayService;->manageConnection(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method private createPacket(S)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "cmd"    # S

    .prologue
    .line 233
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/androidemu/nes/NetPlayService;->createPacket(SI)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private createPacket(SI)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "cmd"    # S
    .param p2, "len"    # I

    .prologue
    .line 229
    add-int/lit8 v0, p2, 0x2

    invoke-static {v0}, Lcom/androidemu/nes/NetPlayService$PacketOutputStream;->createPacket(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 228
    return-object v0
.end method

.method private handleFrameUpdate(Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "p"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 242
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 243
    .local v0, "frameCount":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 245
    .local v1, "keys":I
    iget-object v2, p0, Lcom/androidemu/nes/NetPlayService;->frameLock:Ljava/lang/Object;

    monitor-enter v2

    .line 246
    :try_start_0
    iget v3, p0, Lcom/androidemu/nes/NetPlayService;->remoteFrameCount:I

    if-eq v3, v0, :cond_0

    .line 247
    monitor-exit v2

    .line 253
    :goto_0
    return-void

    .line 249
    :cond_0
    iput v1, p0, Lcom/androidemu/nes/NetPlayService;->remoteKeys:I

    .line 250
    iget v3, p0, Lcom/androidemu/nes/NetPlayService;->remoteFrameCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/androidemu/nes/NetPlayService;->remoteFrameCount:I

    iget v4, p0, Lcom/androidemu/nes/NetPlayService;->localFrameCount:I

    add-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_1

    .line 251
    iget-object v3, p0, Lcom/androidemu/nes/NetPlayService;->frameLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 245
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private handleHello(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "p"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 238
    new-instance v0, Ljava/net/ProtocolException;

    invoke-direct {v0}, Ljava/net/ProtocolException;-><init>()V

    throw v0

    .line 239
    :cond_0
    return-void
.end method

.method private handlePowerROM(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "p"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/androidemu/nes/NetPlayService;->handler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/androidemu/nes/NetPlayService;->sendMessage(Landroid/os/Message;)V

    .line 257
    return-void
.end method

.method private handleResetROM(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "p"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/androidemu/nes/NetPlayService;->handler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/androidemu/nes/NetPlayService;->sendMessage(Landroid/os/Message;)V

    .line 261
    return-void
.end method

.method private handleSavedState(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "p"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 265
    .local v1, "len":I
    if-lez v1, :cond_0

    const/high16 v2, 0x200000

    if-le v1, v2, :cond_1

    .line 266
    :cond_0
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 268
    :cond_1
    new-array v0, v1, [B

    .line 269
    .local v0, "buffer":[B
    iget-object v2, p0, Lcom/androidemu/nes/NetPlayService;->inputStream:Lcom/androidemu/nes/NetPlayService$PacketInputStream;

    invoke-virtual {v2, v0}, Lcom/androidemu/nes/NetPlayService$PacketInputStream;->readBytes([B)[B

    .line 270
    iget-object v2, p0, Lcom/androidemu/nes/NetPlayService;->handler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/androidemu/nes/NetPlayService;->sendMessage(Landroid/os/Message;)V

    .line 271
    return-void
.end method

.method private manageConnection(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 188
    new-instance v1, Lcom/androidemu/nes/NetPlayService$PacketInputStream;

    invoke-direct {v1, p1}, Lcom/androidemu/nes/NetPlayService$PacketInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/androidemu/nes/NetPlayService;->inputStream:Lcom/androidemu/nes/NetPlayService$PacketInputStream;

    .line 189
    new-instance v1, Lcom/androidemu/nes/NetPlayService$PacketOutputStream;

    invoke-direct {v1, p2}, Lcom/androidemu/nes/NetPlayService$PacketOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/androidemu/nes/NetPlayService;->outputStream:Lcom/androidemu/nes/NetPlayService$PacketOutputStream;

    .line 192
    iget-boolean v1, p0, Lcom/androidemu/nes/NetPlayService;->isServer:Z

    if-eqz v1, :cond_1

    .line 193
    iget-object v1, p0, Lcom/androidemu/nes/NetPlayService;->inputStream:Lcom/androidemu/nes/NetPlayService$PacketInputStream;

    invoke-virtual {v1}, Lcom/androidemu/nes/NetPlayService$PacketInputStream;->readPacket()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 194
    .local v0, "p":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    if-eq v1, v3, :cond_0

    .line 195
    new-instance v1, Ljava/net/ProtocolException;

    invoke-direct {v1}, Ljava/net/ProtocolException;-><init>()V

    throw v1

    .line 196
    :cond_0
    invoke-direct {p0, v0}, Lcom/androidemu/nes/NetPlayService;->handleHello(Ljava/nio/ByteBuffer;)V

    .line 205
    :goto_0
    iget-object v1, p0, Lcom/androidemu/nes/NetPlayService;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/androidemu/nes/NetPlayService;->sendMessage(Landroid/os/Message;)V

    .line 207
    :goto_1
    iget-object v1, p0, Lcom/androidemu/nes/NetPlayService;->inputStream:Lcom/androidemu/nes/NetPlayService$PacketInputStream;

    invoke-virtual {v1}, Lcom/androidemu/nes/NetPlayService$PacketInputStream;->readPacket()Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez v0, :cond_3

    .line 225
    return-void

    .line 198
    .end local v0    # "p":Ljava/nio/ByteBuffer;
    :cond_1
    invoke-direct {p0}, Lcom/androidemu/nes/NetPlayService;->sendHello()V

    .line 200
    iget-object v1, p0, Lcom/androidemu/nes/NetPlayService;->inputStream:Lcom/androidemu/nes/NetPlayService$PacketInputStream;

    invoke-virtual {v1}, Lcom/androidemu/nes/NetPlayService$PacketInputStream;->readPacket()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 201
    .restart local v0    # "p":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    .line 202
    new-instance v1, Ljava/net/ProtocolException;

    invoke-direct {v1}, Ljava/net/ProtocolException;-><init>()V

    throw v1

    .line 203
    :cond_2
    invoke-direct {p0, v0}, Lcom/androidemu/nes/NetPlayService;->handleSavedState(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 208
    :cond_3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 222
    new-instance v1, Ljava/net/ProtocolException;

    invoke-direct {v1}, Ljava/net/ProtocolException;-><init>()V

    throw v1

    .line 210
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/androidemu/nes/NetPlayService;->handleFrameUpdate(Ljava/nio/ByteBuffer;)V

    goto :goto_1

    .line 213
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/androidemu/nes/NetPlayService;->handlePowerROM(Ljava/nio/ByteBuffer;)V

    goto :goto_1

    .line 216
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/androidemu/nes/NetPlayService;->handleResetROM(Ljava/nio/ByteBuffer;)V

    goto :goto_1

    .line 219
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/androidemu/nes/NetPlayService;->handleSavedState(Ljava/nio/ByteBuffer;)V

    goto :goto_1

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private resetFrame()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 158
    iput v0, p0, Lcom/androidemu/nes/NetPlayService;->remoteFrameCount:I

    iput v0, p0, Lcom/androidemu/nes/NetPlayService;->localFrameCount:I

    .line 159
    iput v0, p0, Lcom/androidemu/nes/NetPlayService;->remoteKeys:I

    .line 160
    return-void
.end method

.method private sendHello()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 112
    iget-object v0, p0, Lcom/androidemu/nes/NetPlayService;->outputStream:Lcom/androidemu/nes/NetPlayService$PacketOutputStream;

    .line 113
    const/4 v1, 0x2

    invoke-direct {p0, v2, v1}, Lcom/androidemu/nes/NetPlayService;->createPacket(SI)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Lcom/androidemu/nes/NetPlayService$PacketOutputStream;->writePacket(Ljava/nio/ByteBuffer;)V

    .line 114
    return-void
.end method

.method private declared-synchronized sendMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 176
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/androidemu/nes/NetPlayService;->waitOnMessage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :goto_0
    :try_start_1
    iget-boolean v1, p0, Lcom/androidemu/nes/NetPlayService;->waitOnMessage:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    .line 183
    :goto_1
    monitor-exit p0

    return-void

    .line 179
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 180
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 181
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v1, 0x0

    :try_start_3
    iput-boolean v1, p0, Lcom/androidemu/nes/NetPlayService;->waitOnMessage:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 174
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private start(Lcom/androidemu/nes/NetPlayService$NetThread;)V
    .locals 1
    .param p1, "t"    # Lcom/androidemu/nes/NetPlayService$NetThread;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/androidemu/nes/NetPlayService;->netThread:Lcom/androidemu/nes/NetPlayService$NetThread;

    if-eqz v0, :cond_0

    .line 151
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 153
    :cond_0
    iput-object p1, p0, Lcom/androidemu/nes/NetPlayService;->netThread:Lcom/androidemu/nes/NetPlayService$NetThread;

    .line 154
    iget-object v0, p0, Lcom/androidemu/nes/NetPlayService;->netThread:Lcom/androidemu/nes/NetPlayService$NetThread;

    invoke-virtual {v0}, Lcom/androidemu/nes/NetPlayService$NetThread;->start()V

    .line 155
    return-void
.end method


# virtual methods
.method public bluetoothConnect(Ljava/lang/String;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/androidemu/nes/NetPlayService;->isServer:Z

    .line 84
    new-instance v0, Lcom/androidemu/nes/NetPlayService$BluetoothClientThread;

    invoke-direct {v0, p0, p1}, Lcom/androidemu/nes/NetPlayService$BluetoothClientThread;-><init>(Lcom/androidemu/nes/NetPlayService;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/androidemu/nes/NetPlayService;->start(Lcom/androidemu/nes/NetPlayService$NetThread;)V

    .line 85
    return-void
.end method

.method public bluetoothListen()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androidemu/nes/NetPlayService;->isServer:Z

    .line 79
    new-instance v0, Lcom/androidemu/nes/NetPlayService$BluetoothServerThread;

    invoke-direct {v0, p0}, Lcom/androidemu/nes/NetPlayService$BluetoothServerThread;-><init>(Lcom/androidemu/nes/NetPlayService;)V

    invoke-direct {p0, v0}, Lcom/androidemu/nes/NetPlayService;->start(Lcom/androidemu/nes/NetPlayService$NetThread;)V

    .line 80
    return-void
.end method

.method public disconnect()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    iget-object v0, p0, Lcom/androidemu/nes/NetPlayService;->netThread:Lcom/androidemu/nes/NetPlayService$NetThread;

    if-nez v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/androidemu/nes/NetPlayService;->netThread:Lcom/androidemu/nes/NetPlayService$NetThread;

    invoke-virtual {v0}, Lcom/androidemu/nes/NetPlayService$NetThread;->interrupt()V

    .line 103
    iget-object v0, p0, Lcom/androidemu/nes/NetPlayService;->netThread:Lcom/androidemu/nes/NetPlayService$NetThread;

    invoke-virtual {v0}, Lcom/androidemu/nes/NetPlayService$NetThread;->cancel()V

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/androidemu/nes/NetPlayService;->netThread:Lcom/androidemu/nes/NetPlayService$NetThread;

    invoke-virtual {v0}, Lcom/androidemu/nes/NetPlayService$NetThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_1
    iput-object v1, p0, Lcom/androidemu/nes/NetPlayService;->netThread:Lcom/androidemu/nes/NetPlayService$NetThread;

    .line 108
    iput-object v1, p0, Lcom/androidemu/nes/NetPlayService;->outputStream:Lcom/androidemu/nes/NetPlayService$PacketOutputStream;

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final isServer()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/androidemu/nes/NetPlayService;->isServer:Z

    return v0
.end method

.method public sendFrameUpdate(I)I
    .locals 5
    .param p1, "keys"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 119
    const/4 v1, 0x2

    const/16 v2, 0x8

    invoke-direct {p0, v1, v2}, Lcom/androidemu/nes/NetPlayService;->createPacket(SI)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 120
    .local v0, "p":Ljava/nio/ByteBuffer;
    iget v1, p0, Lcom/androidemu/nes/NetPlayService;->localFrameCount:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 121
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 122
    iget-object v1, p0, Lcom/androidemu/nes/NetPlayService;->outputStream:Lcom/androidemu/nes/NetPlayService$PacketOutputStream;

    invoke-virtual {v1, v0}, Lcom/androidemu/nes/NetPlayService$PacketOutputStream;->writePacket(Ljava/nio/ByteBuffer;)V

    .line 124
    iget-object v1, p0, Lcom/androidemu/nes/NetPlayService;->frameLock:Ljava/lang/Object;

    monitor-enter v1

    .line 125
    :goto_0
    :try_start_0
    iget v2, p0, Lcom/androidemu/nes/NetPlayService;->localFrameCount:I

    iget v3, p0, Lcom/androidemu/nes/NetPlayService;->remoteFrameCount:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/androidemu/nes/NetPlayService;->maxFramesAhead:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-gt v2, v3, :cond_0

    .line 127
    iget v2, p0, Lcom/androidemu/nes/NetPlayService;->localFrameCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/androidemu/nes/NetPlayService;->localFrameCount:I

    .line 128
    iget v2, p0, Lcom/androidemu/nes/NetPlayService;->remoteKeys:I

    monitor-exit v1

    return v2

    .line 126
    :cond_0
    iget-object v2, p0, Lcom/androidemu/nes/NetPlayService;->frameLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public sendMessageReply()V
    .locals 1

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/androidemu/nes/NetPlayService;->resetFrame()V

    .line 165
    monitor-enter p0

    .line 166
    :try_start_0
    iget-boolean v0, p0, Lcom/androidemu/nes/NetPlayService;->waitOnMessage:Z

    if-eqz v0, :cond_0

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/androidemu/nes/NetPlayService;->waitOnMessage:Z

    .line 168
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 165
    :cond_0
    monitor-exit p0

    .line 171
    return-void

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sendPowerROM()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/androidemu/nes/NetPlayService;->resetFrame()V

    .line 134
    iget-object v0, p0, Lcom/androidemu/nes/NetPlayService;->outputStream:Lcom/androidemu/nes/NetPlayService$PacketOutputStream;

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/androidemu/nes/NetPlayService;->createPacket(S)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androidemu/nes/NetPlayService$PacketOutputStream;->writePacket(Ljava/nio/ByteBuffer;)V

    .line 135
    return-void
.end method

.method public sendResetROM()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/androidemu/nes/NetPlayService;->resetFrame()V

    .line 139
    iget-object v0, p0, Lcom/androidemu/nes/NetPlayService;->outputStream:Lcom/androidemu/nes/NetPlayService$PacketOutputStream;

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/androidemu/nes/NetPlayService;->createPacket(S)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androidemu/nes/NetPlayService$PacketOutputStream;->writePacket(Ljava/nio/ByteBuffer;)V

    .line 140
    return-void
.end method

.method public sendSavedState([B)V
    .locals 3
    .param p1, "state"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/androidemu/nes/NetPlayService;->resetFrame()V

    .line 144
    iget-object v0, p0, Lcom/androidemu/nes/NetPlayService;->outputStream:Lcom/androidemu/nes/NetPlayService$PacketOutputStream;

    .line 145
    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-direct {p0, v1, v2}, Lcom/androidemu/nes/NetPlayService;->createPacket(SI)Ljava/nio/ByteBuffer;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 144
    invoke-virtual {v0, v1}, Lcom/androidemu/nes/NetPlayService$PacketOutputStream;->writePacket(Ljava/nio/ByteBuffer;)V

    .line 146
    iget-object v0, p0, Lcom/androidemu/nes/NetPlayService;->outputStream:Lcom/androidemu/nes/NetPlayService$PacketOutputStream;

    invoke-virtual {v0, p1}, Lcom/androidemu/nes/NetPlayService$PacketOutputStream;->writeBytes([B)V

    .line 147
    return-void
.end method

.method public final setMaxFramesAhead(I)V
    .locals 2
    .param p1, "max"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/androidemu/nes/NetPlayService;->frameLock:Ljava/lang/Object;

    monitor-enter v0

    .line 93
    :try_start_0
    iput p1, p0, Lcom/androidemu/nes/NetPlayService;->maxFramesAhead:I

    .line 94
    iget-object v1, p0, Lcom/androidemu/nes/NetPlayService;->frameLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 92
    monitor-exit v0

    .line 96
    return-void

    .line 92
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public tcpConnect(Ljava/net/InetAddress;I)V
    .locals 1
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I

    .prologue
    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/androidemu/nes/NetPlayService;->isServer:Z

    .line 74
    new-instance v0, Lcom/androidemu/nes/NetPlayService$TCPClientThread;

    invoke-direct {v0, p0, p1, p2}, Lcom/androidemu/nes/NetPlayService$TCPClientThread;-><init>(Lcom/androidemu/nes/NetPlayService;Ljava/net/InetAddress;I)V

    invoke-direct {p0, v0}, Lcom/androidemu/nes/NetPlayService;->start(Lcom/androidemu/nes/NetPlayService$NetThread;)V

    .line 75
    return-void
.end method

.method public tcpListen(Ljava/net/InetAddress;I)I
    .locals 2
    .param p1, "addr"    # Ljava/net/InetAddress;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/androidemu/nes/NetPlayService;->isServer:Z

    .line 66
    new-instance v0, Lcom/androidemu/nes/NetPlayService$TCPServerThread;

    invoke-direct {v0, p0, p1, p2}, Lcom/androidemu/nes/NetPlayService$TCPServerThread;-><init>(Lcom/androidemu/nes/NetPlayService;Ljava/net/InetAddress;I)V

    .line 67
    .local v0, "t":Lcom/androidemu/nes/NetPlayService$TCPServerThread;
    invoke-virtual {v0}, Lcom/androidemu/nes/NetPlayService$TCPServerThread;->getLocalPort()I

    move-result p2

    .line 68
    invoke-direct {p0, v0}, Lcom/androidemu/nes/NetPlayService;->start(Lcom/androidemu/nes/NetPlayService$NetThread;)V

    .line 69
    return p2
.end method
