.class Lcom/androidemu/nes/NetPlayService$TCPServerThread;
.super Lcom/androidemu/nes/NetPlayService$NetThread;
.source "NetPlayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidemu/nes/NetPlayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TCPServerThread"
.end annotation


# instance fields
.field private serverSocket:Ljava/net/ServerSocket;

.field private socket:Ljava/net/Socket;

.field final synthetic this$0:Lcom/androidemu/nes/NetPlayService;


# direct methods
.method public constructor <init>(Lcom/androidemu/nes/NetPlayService;Ljava/net/InetAddress;I)V
    .locals 4
    .param p2, "addr"    # Ljava/net/InetAddress;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 358
    iput-object p1, p0, Lcom/androidemu/nes/NetPlayService$TCPServerThread;->this$0:Lcom/androidemu/nes/NetPlayService;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/androidemu/nes/NetPlayService$NetThread;-><init>(Lcom/androidemu/nes/NetPlayService;Lcom/androidemu/nes/NetPlayService$1;)V

    .line 360
    :try_start_0
    new-instance v1, Ljava/net/ServerSocket;

    const/4 v2, 0x1

    invoke-direct {v1, p3, v2, p2}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v1, p0, Lcom/androidemu/nes/NetPlayService$TCPServerThread;->serverSocket:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :cond_0
    iget-object v1, p0, Lcom/androidemu/nes/NetPlayService$TCPServerThread;->serverSocket:Ljava/net/ServerSocket;

    if-nez v1, :cond_1

    .line 367
    new-instance v1, Ljava/net/ServerSocket;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v3, p2}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v1, p0, Lcom/androidemu/nes/NetPlayService$TCPServerThread;->serverSocket:Ljava/net/ServerSocket;

    .line 368
    :cond_1
    return-void

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Ljava/io/IOException;
    if-nez p3, :cond_0

    .line 363
    throw v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 386
    :try_start_0
    iget-object v0, p0, Lcom/androidemu/nes/NetPlayService$TCPServerThread;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 390
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/androidemu/nes/NetPlayService$TCPServerThread;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/androidemu/nes/NetPlayService$TCPServerThread;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 393
    :cond_0
    :goto_1
    return-void

    .line 392
    :catch_0
    move-exception v0

    goto :goto_1

    .line 387
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public getLocalPort()I
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/androidemu/nes/NetPlayService$TCPServerThread;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    return v0
.end method

.method protected runIO()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 376
    iget-object v0, p0, Lcom/androidemu/nes/NetPlayService$TCPServerThread;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/androidemu/nes/NetPlayService$TCPServerThread;->socket:Ljava/net/Socket;

    .line 377
    iget-object v0, p0, Lcom/androidemu/nes/NetPlayService$TCPServerThread;->serverSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V

    .line 379
    iget-object v0, p0, Lcom/androidemu/nes/NetPlayService$TCPServerThread;->this$0:Lcom/androidemu/nes/NetPlayService;

    iget-object v1, p0, Lcom/androidemu/nes/NetPlayService$TCPServerThread;->socket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iget-object v2, p0, Lcom/androidemu/nes/NetPlayService$TCPServerThread;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/androidemu/nes/NetPlayService;->access$400(Lcom/androidemu/nes/NetPlayService;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 381
    return-void
.end method
