.class public Lcom/androidemu/EmuMedia;
.super Ljava/lang/Object;
.source "EmuMedia.java"


# static fields
.field private static holder:Landroid/view/SurfaceHolder;

.field private static onFrameDrawnListener:Lcom/androidemu/Emulator$OnFrameDrawnListener;

.field private static region:Landroid/graphics/Rect;

.field private static track:Landroid/media/AudioTrack;

.field private static volume:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/androidemu/EmuMedia;->region:Landroid/graphics/Rect;

    .line 17
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v0

    sput v0, Lcom/androidemu/EmuMedia;->volume:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static audioCreate(III)Z
    .locals 10
    .param p0, "rate"    # I
    .param p1, "bits"    # I
    .param p2, "channels"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x3

    const/4 v0, 0x2

    const/4 v8, 0x1

    .line 55
    const/16 v1, 0x10

    if-ne p1, v1, :cond_0

    move v4, v0

    .line 58
    .local v4, "format":I
    :goto_0
    if-ne p2, v0, :cond_1

    .line 63
    .local v3, "channelConfig":I
    :goto_1
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v0

    if-ne v0, p0, :cond_2

    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioFormat()I

    move-result v0

    if-ne v0, v4, :cond_2

    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getChannelCount()I

    move-result v0

    if-ne v0, p2, :cond_2

    move v0, v8

    .line 93
    :goto_2
    return v0

    .end local v3    # "channelConfig":I
    .end local v4    # "format":I
    :cond_0
    move v4, v3

    .line 55
    goto :goto_0

    .restart local v4    # "format":I
    :cond_1
    move v3, v0

    .line 58
    goto :goto_1

    .line 69
    .restart local v3    # "channelConfig":I
    :cond_2
    invoke-static {p0, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    mul-int/lit8 v5, v0, 0x2

    .line 71
    .local v5, "bufferSize":I
    const/16 v0, 0x5dc

    if-ge v5, v0, :cond_3

    .line 72
    const/16 v5, 0x5dc

    .line 75
    :cond_3
    :try_start_0
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/4 v6, 0x1

    move v2, p0

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    sput-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    .line 83
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-nez v0, :cond_4

    .line 84
    const/4 v0, 0x0

    sput-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :cond_4
    :goto_3
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    if-nez v0, :cond_5

    .line 90
    const/4 v0, 0x0

    goto :goto_2

    .line 86
    :catch_0
    move-exception v7

    .line 87
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    sput-object v9, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    goto :goto_3

    .line 92
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :cond_5
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    sget v1, Lcom/androidemu/EmuMedia;->volume:F

    sget v2, Lcom/androidemu/EmuMedia;->volume:F

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    move v0, v8

    .line 93
    goto :goto_2
.end method

.method static audioDestroy()V
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 107
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 108
    const/4 v0, 0x0

    sput-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    .line 110
    :cond_0
    return-void
.end method

.method static audioPause()V
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 126
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 127
    :cond_0
    return-void
.end method

.method static audioPlay([BI)V
    .locals 2
    .param p0, "data"    # [B
    .param p1, "size"    # I

    .prologue
    .line 130
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 131
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Landroid/media/AudioTrack;->write([BII)I

    .line 132
    :cond_0
    return-void
.end method

.method static audioSetVolume(I)V
    .locals 5
    .param p0, "vol"    # I

    .prologue
    .line 97
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v1

    .line 98
    .local v1, "min":F
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v0

    .line 99
    .local v0, "max":F
    sub-float v2, v0, v1

    int-to-float v3, p0

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    add-float/2addr v2, v1

    sput v2, Lcom/androidemu/EmuMedia;->volume:F

    .line 101
    sget-object v2, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    if-eqz v2, :cond_0

    .line 102
    sget-object v2, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    sget v3, Lcom/androidemu/EmuMedia;->volume:F

    sget v4, Lcom/androidemu/EmuMedia;->volume:F

    invoke-virtual {v2, v3, v4}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 103
    :cond_0
    return-void
.end method

.method static audioStart()V
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 115
    :cond_0
    return-void
.end method

.method static audioStop()V
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 119
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 120
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 122
    :cond_0
    return-void
.end method

.method static bitBlt([IZ)V
    .locals 10
    .param p0, "image"    # [I
    .param p1, "flip"    # Z

    .prologue
    const/4 v2, 0x0

    .line 41
    sget-object v1, Lcom/androidemu/EmuMedia;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 42
    .local v0, "canvas":Landroid/graphics/Canvas;
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 43
    if-eqz p1, :cond_0

    .line 44
    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v0, v1, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 46
    :cond_0
    sget-object v1, Lcom/androidemu/EmuMedia;->region:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    sget-object v1, Lcom/androidemu/EmuMedia;->region:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    sget-object v1, Lcom/androidemu/EmuMedia;->region:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->top:I

    sget-object v1, Lcom/androidemu/EmuMedia;->region:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    sget-object v1, Lcom/androidemu/EmuMedia;->region:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    const/4 v9, 0x0

    move-object v1, p0

    move v8, v2

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    .line 48
    sget-object v1, Lcom/androidemu/EmuMedia;->onFrameDrawnListener:Lcom/androidemu/Emulator$OnFrameDrawnListener;

    if-eqz v1, :cond_1

    .line 49
    sget-object v1, Lcom/androidemu/EmuMedia;->onFrameDrawnListener:Lcom/androidemu/Emulator$OnFrameDrawnListener;

    invoke-interface {v1, v0}, Lcom/androidemu/Emulator$OnFrameDrawnListener;->onFrameDrawn(Landroid/graphics/Canvas;)V

    .line 51
    :cond_1
    sget-object v1, Lcom/androidemu/EmuMedia;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 52
    return-void
.end method

.method static destroy()V
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 21
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    .line 24
    :cond_0
    return-void
.end method

.method public static setOnFrameDrawnListener(Lcom/androidemu/Emulator$OnFrameDrawnListener;)V
    .locals 0
    .param p0, "l"    # Lcom/androidemu/Emulator$OnFrameDrawnListener;

    .prologue
    .line 28
    sput-object p0, Lcom/androidemu/EmuMedia;->onFrameDrawnListener:Lcom/androidemu/Emulator$OnFrameDrawnListener;

    .line 29
    return-void
.end method

.method static setSurface(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p0, "h"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 32
    sput-object p0, Lcom/androidemu/EmuMedia;->holder:Landroid/view/SurfaceHolder;

    .line 33
    return-void
.end method

.method static setSurfaceRegion(IIII)V
    .locals 3
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 36
    sget-object v0, Lcom/androidemu/EmuMedia;->region:Landroid/graphics/Rect;

    add-int v1, p0, p2

    add-int v2, p1, p3

    invoke-virtual {v0, p0, p1, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 37
    return-void
.end method
