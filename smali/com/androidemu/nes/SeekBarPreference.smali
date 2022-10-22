.class public Lcom/androidemu/nes/SeekBarPreference;
.super Landroid/preference/DialogPreference;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SeekBarPreference"

.field private static final NS:Ljava/lang/String; = "http://androidemu.com/apk/res/android"


# instance fields
.field private maxValue:I

.field private minValue:I

.field private newValue:I

.field private oldValue:I

.field private seekBar:Landroid/widget/SeekBar;

.field private valueView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const-string v0, "http://androidemu.com/apk/res/android"

    const-string v1, "minValue"

    const/4 v2, 0x0

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/androidemu/nes/SeekBarPreference;->minValue:I

    .line 27
    const-string v0, "http://androidemu.com/apk/res/android"

    const-string v1, "maxValue"

    const/16 v2, 0x64

    invoke-interface {p2, v0, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/androidemu/nes/SeekBarPreference;->maxValue:I

    .line 29
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/androidemu/nes/SeekBarPreference;->setDialogLayoutResource(I)V

    .line 30
    const v0, 0x104000a

    invoke-virtual {p0, v0}, Lcom/androidemu/nes/SeekBarPreference;->setPositiveButtonText(I)V

    .line 31
    const/high16 v0, 0x1040000

    invoke-virtual {p0, v0}, Lcom/androidemu/nes/SeekBarPreference;->setNegativeButtonText(I)V

    .line 32
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 38
    iget v0, p0, Lcom/androidemu/nes/SeekBarPreference;->newValue:I

    iget v1, p0, Lcom/androidemu/nes/SeekBarPreference;->minValue:I

    if-ge v0, v1, :cond_0

    .line 39
    iget v0, p0, Lcom/androidemu/nes/SeekBarPreference;->minValue:I

    iput v0, p0, Lcom/androidemu/nes/SeekBarPreference;->newValue:I

    .line 40
    :cond_0
    iget v0, p0, Lcom/androidemu/nes/SeekBarPreference;->newValue:I

    iget v1, p0, Lcom/androidemu/nes/SeekBarPreference;->maxValue:I

    if-le v0, v1, :cond_1

    .line 41
    iget v0, p0, Lcom/androidemu/nes/SeekBarPreference;->maxValue:I

    iput v0, p0, Lcom/androidemu/nes/SeekBarPreference;->newValue:I

    .line 43
    :cond_1
    const v0, 0x7f09000f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/androidemu/nes/SeekBarPreference;->seekBar:Landroid/widget/SeekBar;

    .line 44
    iget-object v0, p0, Lcom/androidemu/nes/SeekBarPreference;->seekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/androidemu/nes/SeekBarPreference;->maxValue:I

    iget v2, p0, Lcom/androidemu/nes/SeekBarPreference;->minValue:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 45
    iget-object v0, p0, Lcom/androidemu/nes/SeekBarPreference;->seekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/androidemu/nes/SeekBarPreference;->newValue:I

    iget v2, p0, Lcom/androidemu/nes/SeekBarPreference;->minValue:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 46
    iget-object v0, p0, Lcom/androidemu/nes/SeekBarPreference;->seekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/androidemu/nes/SeekBarPreference;->newValue:I

    iget v2, p0, Lcom/androidemu/nes/SeekBarPreference;->minValue:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 47
    iget-object v0, p0, Lcom/androidemu/nes/SeekBarPreference;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 49
    const v0, 0x7f09000e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/androidemu/nes/SeekBarPreference;->valueView:Landroid/widget/TextView;

    .line 50
    iget-object v0, p0, Lcom/androidemu/nes/SeekBarPreference;->valueView:Landroid/widget/TextView;

    iget v1, p0, Lcom/androidemu/nes/SeekBarPreference;->newValue:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .param p1, "positiveResult"    # Z

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 69
    if-nez p1, :cond_0

    .line 70
    iget v0, p0, Lcom/androidemu/nes/SeekBarPreference;->oldValue:I

    iput v0, p0, Lcom/androidemu/nes/SeekBarPreference;->newValue:I

    .line 75
    :goto_0
    return-void

    .line 72
    :cond_0
    iget v0, p0, Lcom/androidemu/nes/SeekBarPreference;->newValue:I

    iput v0, p0, Lcom/androidemu/nes/SeekBarPreference;->oldValue:I

    .line 73
    iget v0, p0, Lcom/androidemu/nes/SeekBarPreference;->newValue:I

    invoke-virtual {p0, v0}, Lcom/androidemu/nes/SeekBarPreference;->persistInt(I)Z

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 55
    iget v0, p0, Lcom/androidemu/nes/SeekBarPreference;->minValue:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/androidemu/nes/SeekBarPreference;->newValue:I

    .line 56
    iget-object v0, p0, Lcom/androidemu/nes/SeekBarPreference;->valueView:Landroid/widget/TextView;

    iget v1, p0, Lcom/androidemu/nes/SeekBarPreference;->newValue:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 85
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/androidemu/nes/SeekBarPreference;->getPersistedInt(I)I

    move-result v0

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    iput v0, p0, Lcom/androidemu/nes/SeekBarPreference;->oldValue:I

    .line 87
    iget v0, p0, Lcom/androidemu/nes/SeekBarPreference;->oldValue:I

    iput v0, p0, Lcom/androidemu/nes/SeekBarPreference;->newValue:I

    .line 88
    return-void

    .line 85
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "defaultValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 60
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 63
    return-void
.end method
