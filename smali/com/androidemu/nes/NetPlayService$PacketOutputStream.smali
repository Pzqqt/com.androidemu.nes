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
    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 457
    iput-object p1, p0, Lcom/androidemu/nes/NetPlayService$PacketOutputStream;->stream:Ljava/io/OutputStream;

    .line 458
    return-void
.end method

.method public static createPacket(I)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "len"    # I

    .prologue
    .line 453
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
    .locals 1
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 465
    iget-object v0, p0, Lcom/androidemu/nes/NetPlayService$PacketOutputStream;->stream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 466
    iget-object v0, p0, Lcom/androidemu/nes/NetPlayService$PacketOutputStream;->stream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 467
    return-void
.end method

.method public writePacket(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 461
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androidemu/nes/NetPlayService$PacketOutputStream;->writeBytes([B)V

    .line 462
    return-void
.end method
