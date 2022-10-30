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
    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->bounds:Landroid/graphics/RectF;

    .line 466
    iput p1, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->resId:I

    .line 467
    return-void
.end method

.method static synthetic access$0(Lcom/androidemu/nes/input/VirtualKeypad$Control;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method


# virtual methods
.method final disable(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 506
    iput-boolean p1, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->disabled:Z

    .line 507
    return-void
.end method

.method final draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 545
    iget-object v0, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->bounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 546
    return-void
.end method

.method final getHeight()I
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method final getVisibleHeight()I
    .locals 1

    .prologue
    .line 490
    invoke-virtual {p0}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final getVisibleWidth()I
    .locals 1

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/androidemu/nes/input/VirtualKeypad$Control;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final getWidth()I
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method final getX()F
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->bounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    return v0
.end method

.method final getY()F
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->bounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    return v0
.end method

.method final hide(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 502
    iput-boolean p1, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->hidden:Z

    .line 503
    return-void
.end method

.method final hitTest(FF)I
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 510
    iget-boolean v2, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->disabled:Z

    if-eqz v2, :cond_0

    .line 511
    const v2, 0x1869f

    .line 525
    :goto_0
    return v2

    .line 513
    :cond_0
    const/4 v0, 0x0

    .line 514
    .local v0, "dx":F
    const/4 v1, 0x0

    .line 516
    .local v1, "dy":F
    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_3

    .line 517
    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float v0, v2, p1

    .line 520
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    cmpg-float v2, p2, v2

    if-gez v2, :cond_4

    .line 521
    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float v1, v2, p2

    .line 525
    :cond_2
    :goto_2
    add-float v2, v0, v1

    float-to-int v2, v2

    goto :goto_0

    .line 518
    :cond_3
    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    .line 519
    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float v0, p1, v2

    goto :goto_1

    .line 522
    :cond_4
    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, p2, v2

    if-lez v2, :cond_2

    .line 523
    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->bounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float v1, p2, v2

    goto :goto_2
.end method

.method final isEnabled()Z
    .locals 1

    .prologue
    .line 494
    iget-boolean v0, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->disabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method final isVisible()Z
    .locals 1

    .prologue
    .line 498
    iget-boolean v0, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->hidden:Z

    if-nez v0, :cond_0

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
    .locals 5
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "sx"    # F
    .param p3, "sy"    # F

    .prologue
    .line 533
    iget v1, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->resId:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 534
    .local v0, "in":Ljava/io/InputStream;
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->bitmap:Landroid/graphics/Bitmap;

    .line 536
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    :goto_0
    iget-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->bitmap:Landroid/graphics/Bitmap;

    .line 540
    iget-object v2, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    float-to-int v2, v2

    .line 541
    iget-object v3, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p3

    float-to-int v3, v3

    const/4 v4, 0x1

    .line 539
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/androidemu/nes/input/VirtualKeypad$Control;->bitmap:Landroid/graphics/Bitmap;

    .line 542
    return-void

    .line 537
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method final move(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 529
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

    .line 530
    return-void
.end method
