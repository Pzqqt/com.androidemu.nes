.class Lcom/androidemu/nes/input/VirtualKeypad$Control;
.super Ljava/lang/Object;
.source "VirtualKeypad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidemu/nes/input/VirtualKeypad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Control"
.end annotation


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private bounds:Landroid/graphics/RectF;

.field private disabled:Z

.field private hidden:Z

.field private resId:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "r"    # I

    .prologue
    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->bounds:Landroid/graphics/RectF;

    .line 383
    iput p1, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->resId:I

    .line 384
    return-void
.end method


# virtual methods
.method final disable(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 411
    iput-boolean p1, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->disabled:Z

    .line 412
    return-void
.end method

.method final draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 437
    iget-boolean v0, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->hidden:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->disabled:Z

    if-nez v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->bounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 439
    :cond_0
    return-void
.end method

.method final getHeight()I
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method final getWidth()I
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method final getX()F
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->bounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    return v0
.end method

.method final getY()F
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->bounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    return v0
.end method

.method final hide(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 407
    iput-boolean p1, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->hidden:Z

    .line 408
    return-void
.end method

.method final hitTest(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 415
    iget-object v0, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->bounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    return v0
.end method

.method final isEnabled()Z
    .locals 1

    .prologue
    .line 403
    iget-boolean v0, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->disabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final load(Landroid/content/res/Resources;FF)V
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "sx"    # F
    .param p3, "sy"    # F

    .prologue
    .line 423
    iget v0, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->resId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->bitmap:Landroid/graphics/Bitmap;

    .line 424
    iget-object v0, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p3

    float-to-int v2, v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->bitmap:Landroid/graphics/Bitmap;

    .line 427
    return-void
.end method

.method final move(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 419
    iget-object v0, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->bounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p1

    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, p2

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 420
    return-void
.end method

.method final reload(Landroid/content/res/Resources;I)V
    .locals 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I

    .prologue
    .line 430
    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 431
    .local v1, "w":I
    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 432
    .local v0, "h":I
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->bitmap:Landroid/graphics/Bitmap;

    .line 433
    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->bitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x1

    invoke-static {v2, v1, v0, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->bitmap:Landroid/graphics/Bitmap;

    .line 434
    return-void
.end method
