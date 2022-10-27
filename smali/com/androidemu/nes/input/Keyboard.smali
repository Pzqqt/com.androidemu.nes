.class public Lcom/androidemu/nes/input/Keyboard;
.super Ljava/lang/Object;
.source "Keyboard.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "Keyboard"


# instance fields
.field private gameKeyListener:Lcom/androidemu/nes/input/GameKeyListener;

.field private keyStates:I

.field private keysMap:[I


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/androidemu/nes/input/GameKeyListener;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "listener"    # Lcom/androidemu/nes/input/GameKeyListener;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/16 v0, 0x80

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/androidemu/nes/input/Keyboard;->keysMap:[I

    .line 16
    iput-object p2, p0, Lcom/androidemu/nes/input/Keyboard;->gameKeyListener:Lcom/androidemu/nes/input/GameKeyListener;

    .line 17
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 18
    return-void
.end method


# virtual methods
.method public clearKeyMap()V
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/androidemu/nes/input/Keyboard;->keysMap:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 30
    iget-object v1, p0, Lcom/androidemu/nes/input/Keyboard;->keysMap:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method

.method public final getKeyStates()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/androidemu/nes/input/Keyboard;->keyStates:I

    return v0
.end method

.method public mapKey(II)V
    .locals 2
    .param p1, "gameKey"    # I
    .param p2, "keyCode"    # I

    .prologue
    .line 34
    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/androidemu/nes/input/Keyboard;->keysMap:[I

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/androidemu/nes/input/Keyboard;->keysMap:[I

    aget v1, v0, p2

    or-int/2addr v1, p1

    aput v1, v0, p2

    .line 36
    :cond_0
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 39
    iget-object v2, p0, Lcom/androidemu/nes/input/Keyboard;->keysMap:[I

    array-length v2, v2

    if-lt p2, v2, :cond_1

    .line 54
    :cond_0
    :goto_0
    return v1

    .line 42
    :cond_1
    iget-object v2, p0, Lcom/androidemu/nes/input/Keyboard;->keysMap:[I

    aget v0, v2, p2

    .line 43
    .local v0, "gameKey":I
    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 45
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3

    .line 46
    iget v1, p0, Lcom/androidemu/nes/input/Keyboard;->keyStates:I

    or-int/2addr v1, v0

    iput v1, p0, Lcom/androidemu/nes/input/Keyboard;->keyStates:I

    .line 50
    :goto_1
    iget-object v1, p0, Lcom/androidemu/nes/input/Keyboard;->gameKeyListener:Lcom/androidemu/nes/input/GameKeyListener;

    invoke-interface {v1}, Lcom/androidemu/nes/input/GameKeyListener;->onGameKeyChanged()V

    .line 52
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 48
    :cond_3
    iget v1, p0, Lcom/androidemu/nes/input/Keyboard;->keyStates:I

    xor-int/lit8 v2, v0, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/androidemu/nes/input/Keyboard;->keyStates:I

    goto :goto_1
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/androidemu/nes/input/Keyboard;->keyStates:I

    .line 26
    return-void
.end method
