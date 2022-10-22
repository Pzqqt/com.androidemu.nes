.class public Lcom/androidemu/nes/wrapper/Wrapper;
.super Ljava/lang/Object;
.source "Wrapper.java"


# static fields
.field static final SDK_INT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/androidemu/nes/wrapper/Wrapper;->SDK_INT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final MotionEvent_findPointerIndex(Landroid/view/MotionEvent;I)I
    .locals 2
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "pointerId"    # I

    .prologue
    .line 50
    sget v0, Lcom/androidemu/nes/wrapper/Wrapper;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 51
    invoke-static {p0, p1}, Lcom/androidemu/nes/wrapper/Wrapper5;->MotionEvent_findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 54
    :goto_0
    return v0

    .line 52
    :cond_0
    if-nez p1, :cond_1

    .line 53
    const/4 v0, 0x0

    goto :goto_0

    .line 54
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static final MotionEvent_getPointerCount(Landroid/view/MotionEvent;)I
    .locals 2
    .param p0, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 36
    sget v0, Lcom/androidemu/nes/wrapper/Wrapper;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 37
    invoke-static {p0}, Lcom/androidemu/nes/wrapper/Wrapper5;->MotionEvent_getPointerCount(Landroid/view/MotionEvent;)I

    move-result v0

    .line 38
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final MotionEvent_getPointerId(Landroid/view/MotionEvent;I)I
    .locals 2
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "pointerIndex"    # I

    .prologue
    .line 43
    sget v0, Lcom/androidemu/nes/wrapper/Wrapper;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 44
    invoke-static {p0, p1}, Lcom/androidemu/nes/wrapper/Wrapper5;->MotionEvent_getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 45
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final MotionEvent_getSize(Landroid/view/MotionEvent;I)F
    .locals 2
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "pointerIndex"    # I

    .prologue
    .line 73
    sget v0, Lcom/androidemu/nes/wrapper/Wrapper;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 74
    invoke-static {p0, p1}, Lcom/androidemu/nes/wrapper/Wrapper5;->MotionEvent_getSize(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 75
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSize()F

    move-result v0

    goto :goto_0
.end method

.method public static final MotionEvent_getX(Landroid/view/MotionEvent;I)F
    .locals 2
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "pointerIndex"    # I

    .prologue
    .line 59
    sget v0, Lcom/androidemu/nes/wrapper/Wrapper;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 60
    invoke-static {p0, p1}, Lcom/androidemu/nes/wrapper/Wrapper5;->MotionEvent_getX(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 61
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    goto :goto_0
.end method

.method public static final MotionEvent_getY(Landroid/view/MotionEvent;I)F
    .locals 2
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "pointerIndex"    # I

    .prologue
    .line 66
    sget v0, Lcom/androidemu/nes/wrapper/Wrapper;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 67
    invoke-static {p0, p1}, Lcom/androidemu/nes/wrapper/Wrapper5;->MotionEvent_getY(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 68
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_0
.end method

.method public static isBluetoothDiscoverable()Z
    .locals 2

    .prologue
    .line 24
    sget v0, Lcom/androidemu/nes/wrapper/Wrapper;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 25
    invoke-static {}, Lcom/androidemu/nes/wrapper/Wrapper5;->isBluetoothDiscoverable()Z

    move-result v0

    .line 26
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBluetoothEnabled()Z
    .locals 2

    .prologue
    .line 18
    sget v0, Lcom/androidemu/nes/wrapper/Wrapper;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 19
    invoke-static {}, Lcom/androidemu/nes/wrapper/Wrapper5;->isBluetoothEnabled()Z

    move-result v0

    .line 20
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBluetoothPresent()Z
    .locals 2

    .prologue
    .line 12
    sget v0, Lcom/androidemu/nes/wrapper/Wrapper;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 13
    invoke-static {}, Lcom/androidemu/nes/wrapper/Wrapper5;->isBluetoothPresent()Z

    move-result v0

    .line 14
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportsMultitouch(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    sget v0, Lcom/androidemu/nes/wrapper/Wrapper;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 31
    invoke-static {p0}, Lcom/androidemu/nes/wrapper/Wrapper5;->supportsMultitouch(Landroid/content/Context;)Z

    move-result v0

    .line 32
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
