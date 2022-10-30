.class abstract Lcom/androidemu/nes/NetPlayService$NetThread;
.super Ljava/lang/Thread;
.source "NetPlayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidemu/nes/NetPlayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "NetThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidemu/nes/NetPlayService;


# direct methods
.method private constructor <init>(Lcom/androidemu/nes/NetPlayService;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/androidemu/nes/NetPlayService$NetThread;->this$0:Lcom/androidemu/nes/NetPlayService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/androidemu/nes/NetPlayService;Lcom/androidemu/nes/NetPlayService$NetThread;)V
    .locals 0

    .prologue
    .line 273
    invoke-direct {p0, p1}, Lcom/androidemu/nes/NetPlayService$NetThread;-><init>(Lcom/androidemu/nes/NetPlayService;)V

    return-void
.end method


# virtual methods
.method public abstract cancel()V
.end method

.method public run()V
    .locals 5

    .prologue
    .line 279
    const/4 v1, 0x3

    .line 281
    .local v1, "error":I
    :try_start_0
    invoke-virtual {p0}, Lcom/androidemu/nes/NetPlayService$NetThread;->runIO()V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 288
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/androidemu/nes/NetPlayService$NetThread;->this$0:Lcom/androidemu/nes/NetPlayService;

    invoke-static {v2}, Lcom/androidemu/nes/NetPlayService;->access$1(Lcom/androidemu/nes/NetPlayService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 289
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 290
    return-void

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Ljava/net/ProtocolException;
    const/4 v1, 0x2

    goto :goto_0

    .line 284
    .end local v0    # "e":Ljava/net/ProtocolException;
    :catch_1
    move-exception v0

    .line 285
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/androidemu/nes/NetPlayService$NetThread;->this$0:Lcom/androidemu/nes/NetPlayService;

    invoke-static {v2}, Lcom/androidemu/nes/NetPlayService;->access$0(Lcom/androidemu/nes/NetPlayService;)Lcom/androidemu/nes/NetPlayService$PacketOutputStream;

    move-result-object v2

    if-nez v2, :cond_0

    .line 286
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected abstract runIO()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
