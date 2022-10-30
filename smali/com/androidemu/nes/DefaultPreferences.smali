.class public Lcom/androidemu/nes/DefaultPreferences;
.super Ljava/lang/Object;
.source "DefaultPreferences.java"


# static fields
.field private static final keymaps_non_qwerty:[I

.field private static final keymaps_qwerty:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0xf

    const/16 v6, 0xb

    const/16 v5, 0xa

    const/16 v4, 0x8

    .line 11
    new-array v1, v7, [I

    const/4 v2, 0x0

    .line 12
    aput v4, v1, v2

    const/4 v2, 0x1

    .line 13
    const/16 v3, 0x1d

    aput v3, v1, v2

    const/4 v2, 0x2

    .line 14
    const/16 v3, 0x2d

    aput v3, v1, v2

    const/4 v2, 0x3

    .line 15
    const/16 v3, 0x33

    aput v3, v1, v2

    .line 17
    const/16 v2, 0x43

    aput v2, v1, v4

    const/16 v2, 0x9

    .line 18
    const/16 v3, 0x42

    aput v3, v1, v2

    .line 19
    const/16 v2, 0x2c

    aput v2, v1, v5

    .line 20
    const/16 v2, 0x2b

    aput v2, v1, v6

    const/16 v2, 0xc

    .line 21
    const/4 v3, 0x7

    aput v3, v1, v2

    const/16 v2, 0xd

    .line 22
    const/16 v3, 0x10

    aput v3, v1, v2

    .line 11
    sput-object v1, Lcom/androidemu/nes/DefaultPreferences;->keymaps_qwerty:[I

    .line 26
    new-array v1, v7, [I

    .line 30
    const/16 v2, 0x54

    aput v2, v1, v5

    .line 31
    const/4 v2, 0x4

    aput v2, v1, v6

    .line 26
    sput-object v1, Lcom/androidemu/nes/DefaultPreferences;->keymaps_non_qwerty:[I

    .line 38
    sget-object v1, Lcom/androidemu/nes/DefaultPreferences;->keymaps_qwerty:[I

    array-length v0, v1

    .line 39
    .local v0, "n":I
    sget-object v1, Lcom/androidemu/nes/DefaultPreferences;->keymaps_non_qwerty:[I

    array-length v1, v1

    if-eq v1, v0, :cond_0

    .line 40
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Key configurations are not consistent"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 9
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getKeyMappings(Landroid/content/Context;)[I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-static {p0}, Lcom/androidemu/nes/DefaultPreferences;->isKeyboardQwerty(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    sget-object v0, Lcom/androidemu/nes/DefaultPreferences;->keymaps_qwerty:[I

    .line 62
    .local v0, "keymaps":[I
    :goto_0
    invoke-static {p0}, Lcom/androidemu/nes/DefaultPreferences;->isNavigationDPad(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    const/4 v1, 0x0

    const/16 v2, 0x13

    aput v2, v0, v1

    .line 64
    const/4 v1, 0x1

    const/16 v2, 0x14

    aput v2, v0, v1

    .line 65
    const/4 v1, 0x2

    const/16 v2, 0x15

    aput v2, v0, v1

    .line 66
    const/4 v1, 0x3

    const/16 v2, 0x16

    aput v2, v0, v1

    .line 68
    :cond_0
    return-object v0

    .line 60
    .end local v0    # "keymaps":[I
    :cond_1
    sget-object v0, Lcom/androidemu/nes/DefaultPreferences;->keymaps_non_qwerty:[I

    .restart local v0    # "keymaps":[I
    goto :goto_0
.end method

.method public static getVKeypadLayout(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-static {p0}, Lcom/androidemu/nes/wrapper/Wrapper;->getMultitouchCaps(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 73
    const-string v0, "bottom_bottom"

    .line 74
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "top_bottom"

    goto :goto_0
.end method

.method private static isKeyboardQwerty(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    .line 46
    const/4 v1, 0x2

    .line 45
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
    .line 50
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->navigation:I

    .line 51
    const/4 v1, 0x3

    .line 50
    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
