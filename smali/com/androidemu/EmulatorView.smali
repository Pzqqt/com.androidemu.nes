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

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v1, 0x2

    iput v1, p0, Lcom/androidemu/EmulatorView;->scalingMode:I

    .line 30
    invoke-virtual {p0}, Lcom/androidemu/EmulatorView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 31
    .local v0, "holder":Landroid/view/SurfaceHolder;
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 32
    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 34
    invoke-virtual {p0, v2}, Lcom/androidemu/EmulatorView;->setFocusableInTouchMode(Z)V

    .line 35
    return-void
.end method

.method private updateSurfaceSize()V
    .locals 7

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/androidemu/EmulatorView;->getWidth()I

    move-result v3

    .line 65
    .local v3, "viewWidth":I
    invoke-virtual {p0}, Lcom/androidemu/EmulatorView;->getHeight()I

    move-result v2

    .line 66
    .local v2, "viewHeight":I
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 67
    iget v5, p0, Lcom/androidemu/EmulatorView;->actualWidth:I

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/androidemu/EmulatorView;->actualHeight:I

    if-nez v5, :cond_1

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    const/4 v4, 0x0

    .line 71
    .local v4, "w":I
    const/4 v0, 0x0

    .line 73
    .local v0, "h":I
    iget v5, p0, Lcom/androidemu/EmulatorView;->scalingMode:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_2

    iget v5, p0, Lcom/androidemu/EmulatorView;->aspectRatio:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_2

    .line 74
    iget v5, p0, Lcom/androidemu/EmulatorView;->aspectRatio:F

    iget v6, p0, Lcom/androidemu/EmulatorView;->actualHeight:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/androidemu/EmulatorView;->actualWidth:I

    int-to-float v6, v6

    div-float v1, v5, v6

    .line 75
    .local v1, "ratio":F
    int-to-float v5, v3

    div-float/2addr v5, v1

    float-to-int v3, v5

    .line 78
    .end local v1    # "ratio":F
    :cond_2
    iget v5, p0, Lcom/androidemu/EmulatorView;->scalingMode:I

    packed-switch v5, :pswitch_data_0

    .line 97
    :cond_3
    :goto_1
    :pswitch_0
    iget v5, p0, Lcom/androidemu/EmulatorView;->actualWidth:I

    if-lt v4, v5, :cond_4

    iget v5, p0, Lcom/androidemu/EmulatorView;->actualHeight:I

    if-ge v0, v5, :cond_5

    .line 98
    :cond_4
    iget v0, p0, Lcom/androidemu/EmulatorView;->actualHeight:I

    .line 99
    mul-int v5, v0, v3

    div-int v4, v5, v2

    .line 100
    iget v5, p0, Lcom/androidemu/EmulatorView;->actualWidth:I

    if-ge v4, v5, :cond_5

    .line 101
    iget v4, p0, Lcom/androidemu/EmulatorView;->actualWidth:I

    .line 102
    mul-int v5, v4, v2

    div-int v0, v5, v3

    .line 106
    :cond_5
    add-int/lit8 v5, v4, 0x3

    and-int/lit8 v4, v5, -0x4

    .line 107
    add-int/lit8 v5, v0, 0x3

    and-int/lit8 v0, v5, -0x4

    .line 108
    invoke-virtual {p0}, Lcom/androidemu/EmulatorView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v5

    invoke-interface {v5, v4, v0}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    goto :goto_0

    .line 80
    :pswitch_1
    move v4, v3

    .line 81
    move v0, v2

    .line 82
    goto :goto_1

    .line 85
    :pswitch_2
    div-int/lit8 v4, v3, 0x2

    .line 86
    div-int/lit8 v0, v2, 0x2

    .line 87
    goto :goto_1

    .line 90
    :pswitch_3
    if-lt v3, v2, :cond_3

    .line 91
    iget v4, p0, Lcom/androidemu/EmulatorView;->actualWidth:I

    .line 92
    iget v0, p0, Lcom/androidemu/EmulatorView;->actualHeight:I

    goto :goto_1

    .line 78
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
    .line 113
    invoke-direct {p0}, Lcom/androidemu/EmulatorView;->updateSurfaceSize()V

    .line 114
    return-void
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/androidemu/EmulatorView;->onTrackballListener:Lcom/androidemu/EmulatorView$OnTrackballListener;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/androidemu/EmulatorView;->onTrackballListener:Lcom/androidemu/EmulatorView$OnTrackballListener;

    invoke-interface {v0, p1}, Lcom/androidemu/EmulatorView$OnTrackballListener;->onTrackball(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const/4 v0, 0x1

    .line 122
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
    .line 42
    iget v0, p0, Lcom/androidemu/EmulatorView;->actualWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/androidemu/EmulatorView;->actualHeight:I

    if-eq v0, p2, :cond_1

    .line 43
    :cond_0
    iput p1, p0, Lcom/androidemu/EmulatorView;->actualWidth:I

    .line 44
    iput p2, p0, Lcom/androidemu/EmulatorView;->actualHeight:I

    .line 45
    invoke-direct {p0}, Lcom/androidemu/EmulatorView;->updateSurfaceSize()V

    .line 47
    :cond_1
    return-void
.end method

.method public setAspectRatio(F)V
    .locals 1
    .param p1, "ratio"    # F

    .prologue
    .line 57
    iget v0, p0, Lcom/androidemu/EmulatorView;->aspectRatio:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 58
    iput p1, p0, Lcom/androidemu/EmulatorView;->aspectRatio:F

    .line 59
    invoke-direct {p0}, Lcom/androidemu/EmulatorView;->updateSurfaceSize()V

    .line 61
    :cond_0
    return-void
.end method

.method public setOnTrackballListener(Lcom/androidemu/EmulatorView$OnTrackballListener;)V
    .locals 0
    .param p1, "l"    # Lcom/androidemu/EmulatorView$OnTrackballListener;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/androidemu/EmulatorView;->onTrackballListener:Lcom/androidemu/EmulatorView$OnTrackballListener;

    .line 39
    return-void
.end method

.method public setScalingMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 50
    iget v0, p0, Lcom/androidemu/EmulatorView;->scalingMode:I

    if-eq v0, p1, :cond_0

    .line 51
    iput p1, p0, Lcom/androidemu/EmulatorView;->scalingMode:I

    .line 52
    invoke-direct {p0}, Lcom/androidemu/EmulatorView;->updateSurfaceSize()V

    .line 54
    :cond_0
    return-void
.end method
