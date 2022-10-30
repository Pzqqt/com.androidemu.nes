.class Lcom/androidemu/nes/wrapper/Wrapper5;
.super Ljava/lang/Object;
.source "Wrapper5.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final MotionEvent_getPointerCount(Landroid/view/MotionEvent;)I
    .locals 1
    .param p0, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 43
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    return v0
.end method

.method public static final MotionEvent_getPointerId(Landroid/view/MotionEvent;I)I
    .locals 1
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "pointerIndex"    # I

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    return v0
.end method

.method public static final MotionEvent_getSize(Landroid/view/MotionEvent;I)F
    .locals 1
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "pointerIndex"    # I

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v0

    return v0
.end method

.method public static final MotionEvent_getX(Landroid/view/MotionEvent;I)F
    .locals 1
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "pointerIndex"    # I

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    return v0
.end method

.method public static final MotionEvent_getY(Landroid/view/MotionEvent;I)F
    .locals 1
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "pointerIndex"    # I

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    return v0
.end method

.method public static final getMultitouchCaps(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 28
    sget v1, Lcom/androidemu/nes/wrapper/Wrapper;->SDK_INT:I

    const/4 v2, 0x7

    if-ge v1, v2, :cond_0

    move v1, v3

    .line 36
    :goto_0
    return v1

    .line 31
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 32
    .local v0, "pm":Landroid/content/pm/PackageManager;
    sget v1, Lcom/androidemu/nes/wrapper/Wrapper;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    .line 33
    const-string v1, "android.hardware.touchscreen.multitouch.distinct"

    .line 32
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    const/4 v1, 0x2

    goto :goto_0

    .line 37
    :cond_1
    const-string v1, "android.hardware.touchscreen.multitouch"

    .line 36
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final isBluetoothDiscoverable()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 20
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 21
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v0, :cond_0

    move v1, v3

    .line 23
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v1

    .line 24
    const/16 v2, 0x17

    .line 23
    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_0
.end method

.method public static final isBluetoothEnabled()Z
    .locals 2

    .prologue
    .line 15
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 16
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static final isBluetoothPresent()Z
    .locals 1

    .prologue
    .line 11
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
