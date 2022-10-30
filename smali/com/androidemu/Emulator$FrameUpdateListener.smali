.class public interface abstract Lcom/androidemu/Emulator$FrameUpdateListener;
.super Ljava/lang/Object;
.source "Emulator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidemu/Emulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FrameUpdateListener"
.end annotation


# virtual methods
.method public abstract onFrameUpdate(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method
