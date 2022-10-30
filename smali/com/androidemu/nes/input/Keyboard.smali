.class public Lcom/androidemu/nes/input/Keyboard;
.super Ljava/lang/Object;
.source "Keyboard.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/16 v0, 0x80

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/androidemu/nes/input/Keyboard;->keysMap:[I

    .line 13
    iput-object p2, p0, Lcom/androidemu/nes/input/Keyboard;->gameKeyListener:Lcom/androidemu/nes/input/GameKeyListener;

    .line 14
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 15
    return-void
.end method


# virtual methods
.method public clearKeyMap()V
    .locals 3

    .prologue
    .line 26
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/androidemu/nes/input/Keyboard;->keysMap:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 28
    return-void

    .line 27
    :cond_0
    iget-object v1, p0, Lcom/androidemu/nes/input/Keyboard;->keysMap:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final getKeyStates()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/androidemu/nes/input/Keyboard;->keyStates:I

    return v0
.end method

.method public mapKey(II)V
    .locals 2
    .param p1, "gameKey"    # I
    .param p2, "keyCode"    # I

    .prologue
    .line 31
    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/androidemu/nes/input/Keyboard;->keysMap:[I

    array-length v0, v0

    if-ge p2, v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/androidemu/nes/input/Keyboard;->keysMap:[I

    aget v1, v0, p2

    or-int/2addr v1, p1

    aput v1, v0, p2

    .line 33
    :cond_0
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 36
    iget-object v1, p0, Lcom/androidemu/nes/input/Keyboard;->keysMap:[I

    array-length v1, v1

    if-lt p2, v1, :cond_0

    move v1, v2

    .line 51
    :goto_0
    return v1

    .line 39
    :cond_0
    iget-object v1, p0, Lcom/androidemu/nes/input/Keyboard;->keysMap:[I

    aget v0, v1, p2

    .line 40
    .local v0, "gameKey":I
    if-eqz v0, :cond_3

    .line 41
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 42
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 43
    iget v1, p0, Lcom/androidemu/nes/input/Keyboard;->keyStates:I

    or-int/2addr v1, v0

    iput v1, p0, Lcom/androidemu/nes/input/Keyboard;->keyStates:I

    .line 47
    :goto_1
    iget-object v1, p0, Lcom/androidemu/nes/input/Keyboard;->gameKeyListener:Lcom/androidemu/nes/input/GameKeyListener;

    invoke-interface {v1}, Lcom/androidemu/nes/input/GameKeyListener;->onGameKeyChanged()V

    .line 49
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 45
    :cond_2
    iget v1, p0, Lcom/androidemu/nes/input/Keyboard;->keyStates:I

    xor-int/lit8 v2, v0, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/androidemu/nes/input/Keyboard;->keyStates:I

    goto :goto_1

    :cond_3
    move v1, v2

    .line 51
    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/androidemu/nes/input/Keyboard;->keyStates:I

    .line 23
    return-void
.end method
