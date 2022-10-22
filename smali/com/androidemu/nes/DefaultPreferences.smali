.class public Lcom/androidemu/nes/DefaultPreferences;
.super Ljava/lang/Object;
.source "DefaultPreferences.java"


# static fields
.field private static final keymaps_non_qwerty:[I

.field private static final keymaps_qwerty:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0xf

    .line 9
    new-array v1, v2, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/androidemu/nes/DefaultPreferences;->keymaps_qwerty:[I

    .line 24
    new-array v1, v2, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/androidemu/nes/DefaultPreferences;->keymaps_non_qwerty:[I

    .line 36
    sget-object v1, Lcom/androidemu/nes/DefaultPreferences;->keymaps_qwerty:[I

    array-length v0, v1

    .line 37
    .local v0, "n":I
    sget-object v1, Lcom/androidemu/nes/DefaultPreferences;->keymaps_non_qwerty:[I

    array-length v1, v1

    if-eq v1, v0, :cond_0

    .line 38
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Key configurations are not consistent"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 39
    :cond_0
    return-void

    .line 9
    nop

    :array_0
    .array-data 4
        0x8
        0x1d
        0x2d
        0x33
        0x0
        0x0
        0x0
        0x0
        0x43
        0x42
        0x2c
        0x2b
        0x7
        0x10
        0x0
    .end array-data

    .line 24
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x54
        0x4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getKeyMappings(Landroid/content/Context;)[I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-static {p0}, Lcom/androidemu/nes/DefaultPreferences;->isKeyboardQwerty(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    sget-object v0, Lcom/androidemu/nes/DefaultPreferences;->keymaps_qwerty:[I

    .line 60
    .local v0, "keymaps":[I
    :goto_0
    invoke-static {p0}, Lcom/androidemu/nes/DefaultPreferences;->isNavigationDPad(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    const/4 v1, 0x0

    const/16 v2, 0x13

    aput v2, v0, v1

    .line 62
    const/4 v1, 0x1

    const/16 v2, 0x14

    aput v2, v0, v1

    .line 63
    const/4 v1, 0x2

    const/16 v2, 0x15

    aput v2, v0, v1

    .line 64
    const/4 v1, 0x3

    const/16 v2, 0x16

    aput v2, v0, v1

    .line 66
    :cond_0
    return-object v0

    .line 58
    .end local v0    # "keymaps":[I
    :cond_1
    sget-object v0, Lcom/androidemu/nes/DefaultPreferences;->keymaps_non_qwerty:[I

    .restart local v0    # "keymaps":[I
    goto :goto_0
.end method

.method private static isKeyboardQwerty(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNavigationDPad(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->navigation:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
