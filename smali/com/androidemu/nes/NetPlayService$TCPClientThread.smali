.class Lcom/androidemu/nes/NetPlayService$TCPClientThread;
.super Lcom/androidemu/nes/NetPlayService$NetThread;
.source "NetPlayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidemu/nes/NetPlayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TCPClientThread"
.end annotation


# instance fields
.field private socket:Ljava/net/Socket;

.field private socketAddr:Ljava/net/InetSocketAddress;

.field final synthetic this$0:Lcom/androidemu/nes/NetPlayService;


# direct methods
.method public constructor <init>(Lcom/androidemu/nes/NetPlayService;Ljava/net/InetAddress;I)V
    .locals 1
    .param p2, "addr"    # Ljava/net/InetAddress;
    .param p3, "port"    # I

    .prologue
    .line 404
    iput-object p1, p0, Lcom/androidemu/nes/NetPlayService$TCPClientThread;->this$0:Lcom/androidemu/nes/NetPlayService;

    .line 401
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/androidemu/nes/NetPlayService$NetThread;-><init>(Lcom/androidemu/nes/NetPlayService;Lcom/androidemu/nes/NetPlayService$NetThread;)V

    .line 402
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p2, p3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, p0, Lcom/androidemu/nes/NetPlayService$TCPClientThread;->socketAddr:Ljava/net/InetSocketAddress;

    .line 403
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    iput-object v0, p0, Lcom/androidemu/nes/NetPlayService$TCPClientThread;->socket:Ljava/net/Socket;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 419
    :try_start_0
    iget-object v0, p0, Lcom/androidemu/nes/NetPlayService$TCPClientThread;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :goto_0
    return-void

    .line 420
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
    .line 408
    iget-object v0, p0, Lcom/androidemu/nes/NetPlayService$TCPClientThread;->socket:Ljava/net/Socket;

    iget-object v1, p0, Lcom/androidemu/nes/NetPlayService$TCPClientThread;->socketAddr:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V

    .line 409
    iget-object v0, p0, Lcom/androidemu/nes/NetPlayService$TCPClientThread;->socket:Ljava/net/Socket;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 410
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/androidemu/nes/NetPlayService$TCPClientThread;->socketAddr:Ljava/net/InetSocketAddress;

    .line 412
    iget-object v0, p0, Lcom/androidemu/nes/NetPlayService$TCPClientThread;->this$0:Lcom/androidemu/nes/NetPlayService;

    iget-object v1, p0, Lcom/androidemu/nes/NetPlayService$TCPClientThread;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 413
    iget-object v2, p0, Lcom/androidemu/nes/NetPlayService$TCPClientThread;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 412
    invoke-static {v0, v1, v2}, Lcom/androidemu/nes/NetPlayService;->access$3(Lcom/androidemu/nes/NetPlayService;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 414
    return-void
.end method
