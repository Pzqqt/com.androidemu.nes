.class public Lcom/androidemu/nes/wrapper/Wrapper;
.super Ljava/lang/Object;
.source "Wrapper.java"


# static fields
.field public static final MULTITOUCH_CAPS_FULL:I = 0x2

.field public static final MULTITOUCH_CAPS_PARTIAL:I = 0x1

.field public static final MULTITOUCH_CAPS_UNSUPPORTED:I

.field static final SDK_INT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/androidemu/nes/wrapper/Wrapper;->SDK_INT:I

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final MotionEvent_getPointerCount(Landroid/view/MotionEvent;)I
    .locals 2
    .param p0, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 40
    sget v0, Lcom/androidemu/nes/wrapper/Wrapper;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 41
    invoke-static {p0}, Lcom/androidemu/nes/wrapper/Wrapper5;->MotionEvent_getPointerCount(Landroid/view/MotionEvent;)I

    move-result v0

    .line 42
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
    .line 47
    sget v0, Lcom/androidemu/nes/wrapper/Wrapper;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 48
    invoke-static {p0, p1}, Lcom/androidemu/nes/wrapper/Wrapper5;->MotionEvent_getPointerId(Landroid/view/MotionEvent;I)I

    move-result v0

    .line 49
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
    .line 68
    sget v0, Lcom/androidemu/nes/wrapper/Wrapper;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 69
    invoke-static {p0, p1}, Lcom/androidemu/nes/wrapper/Wrapper5;->MotionEvent_getSize(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 70
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
    .line 54
    sget v0, Lcom/androidemu/nes/wrapper/Wrapper;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 55
    invoke-static {p0, p1}, Lcom/androidemu/nes/wrapper/Wrapper5;->MotionEvent_getX(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 56
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
    .line 61
    sget v0, Lcom/androidemu/nes/wrapper/Wrapper;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 62
    invoke-static {p0, p1}, Lcom/androidemu/nes/wrapper/Wrapper5;->MotionEvent_getY(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 63
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_0
.end method

.method public static getMultitouchCaps(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    sget v0, Lcom/androidemu/nes/wrapper/Wrapper;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 35
    invoke-static {p0}, Lcom/androidemu/nes/wrapper/Wrapper5;->getMultitouchCaps(Landroid/content/Context;)I

    move-result v0

    .line 36
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBluetoothDiscoverable()Z
    .locals 2

    .prologue
    .line 28
    sget v0, Lcom/androidemu/nes/wrapper/Wrapper;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 29
    invoke-static {}, Lcom/androidemu/nes/wrapper/Wrapper5;->isBluetoothDiscoverable()Z

    move-result v0

    .line 30
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBluetoothEnabled()Z
    .locals 2

    .prologue
    .line 22
    sget v0, Lcom/androidemu/nes/wrapper/Wrapper;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 23
    invoke-static {}, Lcom/androidemu/nes/wrapper/Wrapper5;->isBluetoothEnabled()Z

    move-result v0

    .line 24
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBluetoothPresent()Z
    .locals 2

    .prologue
    .line 16
    sget v0, Lcom/androidemu/nes/wrapper/Wrapper;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 17
    invoke-static {}, Lcom/androidemu/nes/wrapper/Wrapper5;->isBluetoothPresent()Z

    move-result v0

    .line 18
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
