.class public Lcom/androidemu/EmulatorView;
.super Landroid/view/SurfaceView;
.source "EmulatorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidemu/EmulatorView$OnTrackballListener;
    }
.end annotation


# static fields
.field public static final SCALING_2X:I = 0x1

.field public static final SCALING_ORIGINAL:I = 0x0

.field public static final SCALING_PROPORTIONAL:I = 0x2

.field public static final SCALING_STRETCH:I = 0x3


# instance fields
.field private actualHeight:I

.field private actualWidth:I

.field private aspectRatio:F

.field private onTrackballListener:Lcom/androidemu/EmulatorView$OnTrackballListener;

.field private scalingMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v1, 0x2

    iput v1, p0, Lcom/androidemu/EmulatorView;->scalingMode:I

    .line 31
    invoke-virtual {p0}, Lcom/androidemu/EmulatorView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 32
    .local v0, "holder":Landroid/view/SurfaceHolder;
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 33
    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 35
    invoke-virtual {p0, v2}, Lcom/androidemu/EmulatorView;->setFocusableInTouchMode(Z)V

    .line 36
    return-void
.end method

.method private updateSurfaceSize()V
    .locals 7

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/androidemu/EmulatorView;->getWidth()I

    move-result v3

    .line 66
    .local v3, "viewWidth":I
    invoke-virtual {p0}, Lcom/androidemu/EmulatorView;->getHeight()I

    move-result v2

    .line 67
    .local v2, "viewHeight":I
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    iget v5, p0, Lcom/androidemu/EmulatorView;->actualWidth:I

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/androidemu/EmulatorView;->actualHeight:I

    if-nez v5, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    const/4 v4, 0x0

    .line 72
    .local v4, "w":I
    const/4 v0, 0x0

    .line 74
    .local v0, "h":I
    iget v5, p0, Lcom/androidemu/EmulatorView;->scalingMode:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_2

    iget v5, p0, Lcom/androidemu/EmulatorView;->aspectRatio:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_2

    .line 75
    iget v5, p0, Lcom/androidemu/EmulatorView;->aspectRatio:F

    iget v6, p0, Lcom/androidemu/EmulatorView;->actualHeight:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/androidemu/EmulatorView;->actualWidth:I

    int-to-float v6, v6

    div-float v1, v5, v6

    .line 76
    .local v1, "ratio":F
    int-to-float v5, v3

    div-float/2addr v5, v1

    float-to-int v3, v5

    .line 79
    .end local v1    # "ratio":F
    :cond_2
    iget v5, p0, Lcom/androidemu/EmulatorView;->scalingMode:I

    packed-switch v5, :pswitch_data_0

    .line 98
    :cond_3
    :goto_1
    :pswitch_0
    iget v5, p0, Lcom/androidemu/EmulatorView;->actualWidth:I

    if-lt v4, v5, :cond_4

    iget v5, p0, Lcom/androidemu/EmulatorView;->actualHeight:I

    if-ge v0, v5, :cond_5

    .line 99
    :cond_4
    iget v0, p0, Lcom/androidemu/EmulatorView;->actualHeight:I

    .line 100
    mul-int v5, v0, v3

    div-int v4, v5, v2

    .line 101
    iget v5, p0, Lcom/androidemu/EmulatorView;->actualWidth:I

    if-ge v4, v5, :cond_5

    .line 102
    iget v4, p0, Lcom/androidemu/EmulatorView;->actualWidth:I

    .line 103
    mul-int v5, v4, v2

    div-int v0, v5, v3

    .line 107
    :cond_5
    add-int/lit8 v5, v4, 0x3

    and-int/lit8 v4, v5, -0x4

    .line 108
    add-int/lit8 v5, v0, 0x3

    and-int/lit8 v0, v5, -0x4

    .line 109
    invoke-virtual {p0}, Lcom/androidemu/EmulatorView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v5

    invoke-interface {v5, v4, v0}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    goto :goto_0

    .line 81
    :pswitch_1
    move v4, v3

    .line 82
    move v0, v2

    .line 83
    goto :goto_1

    .line 86
    :pswitch_2
    div-int/lit8 v4, v3, 0x2

    .line 87
    div-int/lit8 v0, v2, 0x2

    .line 88
    goto :goto_1

    .line 91
    :pswitch_3
    iget v5, p0, Lcom/androidemu/EmulatorView;->actualHeight:I

    mul-int/2addr v5, v3

    iget v6, p0, Lcom/androidemu/EmulatorView;->actualWidth:I

    mul-int/2addr v6, v2

    if-lt v5, v6, :cond_3

    .line 92
    iget v4, p0, Lcom/androidemu/EmulatorView;->actualWidth:I

    .line 93
    iget v0, p0, Lcom/androidemu/EmulatorView;->actualHeight:I

    goto :goto_1

    .line 79
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/androidemu/EmulatorView;->updateSurfaceSize()V

    .line 115
    return-void
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/androidemu/EmulatorView;->onTrackballListener:Lcom/androidemu/EmulatorView$OnTrackballListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/androidemu/EmulatorView;->onTrackballListener:Lcom/androidemu/EmulatorView$OnTrackballListener;

    invoke-interface {v0, p1}, Lcom/androidemu/EmulatorView$OnTrackballListener;->onTrackball(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    const/4 v0, 0x1

    .line 123
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setActualSize(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 43
    iget v0, p0, Lcom/androidemu/EmulatorView;->actualWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/androidemu/EmulatorView;->actualHeight:I

    if-eq v0, p2, :cond_1

    .line 44
    :cond_0
    iput p1, p0, Lcom/androidemu/EmulatorView;->actualWidth:I

    .line 45
    iput p2, p0, Lcom/androidemu/EmulatorView;->actualHeight:I

    .line 46
    invoke-direct {p0}, Lcom/androidemu/EmulatorView;->updateSurfaceSize()V

    .line 48
    :cond_1
    return-void
.end method

.method public setAspectRatio(F)V
    .locals 1
    .param p1, "ratio"    # F

    .prologue
    .line 58
    iget v0, p0, Lcom/androidemu/EmulatorView;->aspectRatio:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 59
    iput p1, p0, Lcom/androidemu/EmulatorView;->aspectRatio:F

    .line 60
    invoke-direct {p0}, Lcom/androidemu/EmulatorView;->updateSurfaceSize()V

    .line 62
    :cond_0
    return-void
.end method

.method public setOnTrackballListener(Lcom/androidemu/EmulatorView$OnTrackballListener;)V
    .locals 0
    .param p1, "l"    # Lcom/androidemu/EmulatorView$OnTrackballListener;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/androidemu/EmulatorView;->onTrackballListener:Lcom/androidemu/EmulatorView$OnTrackballListener;

    .line 40
    return-void
.end method

.method public setScalingMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 51
    iget v0, p0, Lcom/androidemu/EmulatorView;->scalingMode:I

    if-eq v0, p1, :cond_0

    .line 52
    iput p1, p0, Lcom/androidemu/EmulatorView;->scalingMode:I

    .line 53
    invoke-direct {p0}, Lcom/androidemu/EmulatorView;->updateSurfaceSize()V

    .line 55
    :cond_0
    return-void
.end method
