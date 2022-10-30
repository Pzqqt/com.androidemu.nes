.class public Lcom/androidemu/EmuMedia;
.super Ljava/lang/Object;
.source "EmuMedia.java"


# static fields
.field private static bitmap:Landroid/graphics/Bitmap;

.field private static dirty:Landroid/graphics/Rect;

.field private static firstBlt:Z

.field private static holder:Landroid/view/SurfaceHolder;

.field private static overlay:Landroid/graphics/Picture;

.field private static region:Landroid/graphics/Rect;

.field private static surfaceHeight:I

.field private static surfaceWidth:I

.field private static track:Landroid/media/AudioTrack;

.field private static volume:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/androidemu/EmuMedia;->region:Landroid/graphics/Rect;

    .line 18
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/androidemu/EmuMedia;->dirty:Landroid/graphics/Rect;

    .line 25
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v0

    sput v0, Lcom/androidemu/EmuMedia;->volume:F

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static audioCreate(III)Z
    .locals 12
    .param p0, "rate"    # I
    .param p1, "bits"    # I
    .param p2, "channels"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v10, 0x1

    .line 96
    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    move v4, v1

    .line 99
    .local v4, "format":I
    :goto_0
    if-ne p2, v1, :cond_1

    move v3, v2

    .line 104
    .local v3, "channelConfig":I
    :goto_1
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    if-eqz v0, :cond_2

    .line 105
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v0

    if-ne v0, p0, :cond_2

    .line 106
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioFormat()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 107
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getChannelCount()I

    move-result v0

    if-ne v0, p2, :cond_2

    move v0, v10

    .line 137
    :goto_2
    return v0

    .end local v3    # "channelConfig":I
    .end local v4    # "format":I
    :cond_0
    move v4, v2

    .line 98
    goto :goto_0

    .restart local v4    # "format":I
    :cond_1
    move v3, v1

    .line 101
    goto :goto_1

    .line 110
    .restart local v3    # "channelConfig":I
    :cond_2
    div-int/lit8 v0, p1, 0x8

    mul-int/2addr v0, p0

    mul-int/2addr v0, p2

    div-int/lit8 v8, v0, 0x3c

    .line 111
    .local v8, "frameSize":I
    mul-int/lit8 v9, v8, 0x2

    .line 113
    .local v9, "minBufferSize":I
    invoke-static {p0, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v5

    .line 115
    .local v5, "bufferSize":I
    if-ge v5, v9, :cond_3

    .line 116
    move v5, v9

    .line 119
    :cond_3
    :try_start_0
    new-instance v0, Landroid/media/AudioTrack;

    .line 120
    const/4 v1, 0x3

    .line 125
    const/4 v6, 0x1

    move v2, p0

    .line 119
    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    sput-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    .line 127
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-nez v0, :cond_4

    .line 128
    const/4 v0, 0x0

    sput-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :cond_4
    :goto_3
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    if-nez v0, :cond_5

    .line 134
    const/4 v0, 0x0

    goto :goto_2

    .line 130
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 131
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    sput-object v11, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    goto :goto_3

    .line 136
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :cond_5
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    sget v1, Lcom/androidemu/EmuMedia;->volume:F

    sget v2, Lcom/androidemu/EmuMedia;->volume:F

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    move v0, v10

    .line 137
    goto :goto_2
.end method

.method static audioDestroy()V
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 151
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 152
    const/4 v0, 0x0

    sput-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    .line 154
    :cond_0
    return-void
.end method

.method static audioPause()V
    .locals 1

    .prologue
    .line 169
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 170
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 171
    :cond_0
    return-void
.end method

.method static audioPlay([BI)V
    .locals 2
    .param p0, "data"    # [B
    .param p1, "size"    # I

    .prologue
    .line 174
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 175
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Landroid/media/AudioTrack;->write([BII)I

    .line 176
    :cond_0
    return-void
.end method

.method static audioSetVolume(I)V
    .locals 5
    .param p0, "vol"    # I

    .prologue
    .line 141
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v1

    .line 142
    .local v1, "min":F
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v0

    .line 143
    .local v0, "max":F
    sub-float v2, v0, v1

    int-to-float v3, p0

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    add-float/2addr v2, v1

    sput v2, Lcom/androidemu/EmuMedia;->volume:F

    .line 145
    sget-object v2, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    if-eqz v2, :cond_0

    .line 146
    sget-object v2, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    sget v3, Lcom/androidemu/EmuMedia;->volume:F

    sget v4, Lcom/androidemu/EmuMedia;->volume:F

    invoke-virtual {v2, v3, v4}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 147
    :cond_0
    return-void
.end method

.method static audioStart()V
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 158
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 159
    :cond_0
    return-void
.end method

.method static audioStop()V
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 163
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 164
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 166
    :cond_0
    return-void
.end method

.method static bitBlt(Ljava/nio/Buffer;Z)V
    .locals 5
    .param p0, "src"    # Ljava/nio/Buffer;
    .param p1, "flip"    # Z

    .prologue
    .line 66
    if-eqz p0, :cond_0

    .line 67
    sget-object v1, Lcom/androidemu/EmuMedia;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 69
    :cond_0
    const/4 v0, 0x0

    .line 70
    .local v0, "canvas":Landroid/graphics/Canvas;
    sget-boolean v1, Lcom/androidemu/EmuMedia;->firstBlt:Z

    if-eqz v1, :cond_3

    .line 71
    const/4 v1, 0x0

    sput-boolean v1, Lcom/androidemu/EmuMedia;->firstBlt:Z

    .line 72
    sget-object v1, Lcom/androidemu/EmuMedia;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 73
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 85
    :goto_0
    if-eqz p1, :cond_1

    .line 86
    const/high16 v1, 0x43340000    # 180.0f

    sget v2, Lcom/androidemu/EmuMedia;->surfaceWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sget v3, Lcom/androidemu/EmuMedia;->surfaceHeight:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 88
    :cond_1
    sget-object v1, Lcom/androidemu/EmuMedia;->bitmap:Landroid/graphics/Bitmap;

    sget-object v2, Lcom/androidemu/EmuMedia;->region:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sget-object v3, Lcom/androidemu/EmuMedia;->region:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 89
    sget-object v1, Lcom/androidemu/EmuMedia;->overlay:Landroid/graphics/Picture;

    if-eqz v1, :cond_2

    .line 90
    sget-object v1, Lcom/androidemu/EmuMedia;->overlay:Landroid/graphics/Picture;

    invoke-virtual {v1, v0}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    .line 92
    :cond_2
    sget-object v1, Lcom/androidemu/EmuMedia;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 93
    return-void

    .line 75
    :cond_3
    if-nez p1, :cond_4

    .line 76
    sget-object v1, Lcom/androidemu/EmuMedia;->dirty:Landroid/graphics/Rect;

    sget-object v2, Lcom/androidemu/EmuMedia;->region:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 83
    :goto_1
    sget-object v1, Lcom/androidemu/EmuMedia;->holder:Landroid/view/SurfaceHolder;

    sget-object v2, Lcom/androidemu/EmuMedia;->dirty:Landroid/graphics/Rect;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    goto :goto_0

    .line 78
    :cond_4
    sget-object v1, Lcom/androidemu/EmuMedia;->dirty:Landroid/graphics/Rect;

    sget v2, Lcom/androidemu/EmuMedia;->surfaceWidth:I

    sget-object v3, Lcom/androidemu/EmuMedia;->region:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 79
    sget-object v1, Lcom/androidemu/EmuMedia;->dirty:Landroid/graphics/Rect;

    sget v2, Lcom/androidemu/EmuMedia;->surfaceWidth:I

    sget-object v3, Lcom/androidemu/EmuMedia;->region:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 80
    sget-object v1, Lcom/androidemu/EmuMedia;->dirty:Landroid/graphics/Rect;

    sget v2, Lcom/androidemu/EmuMedia;->surfaceHeight:I

    sget-object v3, Lcom/androidemu/EmuMedia;->region:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 81
    sget-object v1, Lcom/androidemu/EmuMedia;->dirty:Landroid/graphics/Rect;

    sget v2, Lcom/androidemu/EmuMedia;->surfaceHeight:I

    sget-object v3, Lcom/androidemu/EmuMedia;->region:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1
.end method

.method static destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    sput-object v1, Lcom/androidemu/EmuMedia;->overlay:Landroid/graphics/Picture;

    .line 30
    sget-object v0, Lcom/androidemu/EmuMedia;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lcom/androidemu/EmuMedia;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 32
    sput-object v1, Lcom/androidemu/EmuMedia;->bitmap:Landroid/graphics/Bitmap;

    .line 34
    :cond_0
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    .line 35
    sget-object v0, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 36
    sput-object v1, Lcom/androidemu/EmuMedia;->track:Landroid/media/AudioTrack;

    .line 38
    :cond_1
    return-void
.end method

.method static setOverlay(Landroid/graphics/Picture;)V
    .locals 0
    .param p0, "pic"    # Landroid/graphics/Picture;

    .prologue
    .line 62
    sput-object p0, Lcom/androidemu/EmuMedia;->overlay:Landroid/graphics/Picture;

    .line 63
    return-void
.end method

.method static setSurface(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p0, "h"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 41
    sput-object p0, Lcom/androidemu/EmuMedia;->holder:Landroid/view/SurfaceHolder;

    .line 42
    return-void
.end method

.method static setSurfaceRegion(IIIIII)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "sw"    # I
    .param p1, "sh"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I

    .prologue
    .line 46
    const/4 v0, 0x1

    sput-boolean v0, Lcom/androidemu/EmuMedia;->firstBlt:Z

    .line 47
    sput p0, Lcom/androidemu/EmuMedia;->surfaceWidth:I

    .line 48
    sput p1, Lcom/androidemu/EmuMedia;->surfaceHeight:I

    .line 50
    sget-object v0, Lcom/androidemu/EmuMedia;->region:Landroid/graphics/Rect;

    add-int v1, p2, p4

    add-int v2, p3, p5

    invoke-virtual {v0, p2, p3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 52
    sget-object v0, Lcom/androidemu/EmuMedia;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lcom/androidemu/EmuMedia;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, p4, :cond_0

    sget-object v0, Lcom/androidemu/EmuMedia;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, p5, :cond_2

    .line 54
    :cond_0
    sget-object v0, Lcom/androidemu/EmuMedia;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 55
    sget-object v0, Lcom/androidemu/EmuMedia;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 56
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/androidemu/EmuMedia;->bitmap:Landroid/graphics/Bitmap;

    .line 58
    :cond_2
    sget-object v0, Lcom/androidemu/EmuMedia;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method
