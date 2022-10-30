.class Lcom/androidemu/nes/NetPlayService$PacketOutputStream;
.super Ljava/lang/Object;
.source "NetPlayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidemu/nes/NetPlayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PacketOutputStream"
.end annotation


# instance fields
.field private stream:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    iput-object p1, p0, Lcom/androidemu/nes/NetPlayService$PacketOutputStream;->stream:Ljava/io/OutputStream;

    .line 462
    return-void
.end method

.method public static createPacket(I)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "len"    # I

    .prologue
    .line 457
    add-int/lit8 v0, p0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    int-to-short v1, p0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public writeBytes([B)V
    .locals 3
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 470
    const/4 v0, 0x0

    .line 471
    .local v0, "bytes":I
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    .line 478
    iget-object v2, p0, Lcom/androidemu/nes/NetPlayService$PacketOutputStream;->stream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 479
    return-void

    .line 472
    :cond_0
    array-length v2, p1

    sub-int v1, v2, v0

    .line 473
    .local v1, "n":I
    const/16 v2, 0x2000

    if-le v1, v2, :cond_1

    .line 474
    const/16 v1, 0x2000

    .line 475
    :cond_1
    iget-object v2, p0, Lcom/androidemu/nes/NetPlayService$PacketOutputStream;->stream:Ljava/io/OutputStream;

    invoke-virtual {v2, p1, v0, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 476
    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public writePacket(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 465
    iget-object v0, p0, Lcom/androidemu/nes/NetPlayService$PacketOutputStream;->stream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 466
    iget-object v0, p0, Lcom/androidemu/nes/NetPlayService$PacketOutputStream;->stream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 467
    return-void
.end method
