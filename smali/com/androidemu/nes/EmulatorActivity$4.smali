.class Lcom/androidemu/nes/EmulatorActivity$4;
.super Ljava/lang/Object;
.source "EmulatorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androidemu/nes/EmulatorActivity;->createWifiConnectDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidemu/nes/EmulatorActivity;


# direct methods
.method constructor <init>(Lcom/androidemu/nes/EmulatorActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androidemu/nes/EmulatorActivity$4;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    .line 857
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 859
    move-object v0, p1

    check-cast v0, Landroid/app/Dialog;

    move-object v1, v0

    .line 861
    .local v1, "d":Landroid/app/Dialog;
    const v4, 0x7f090012

    .line 860
    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 861
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 863
    .local v2, "ip":Ljava/lang/String;
    const v4, 0x7f090013

    .line 862
    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 863
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 864
    .local v3, "port":Ljava/lang/String;
    iget-object v4, p0, Lcom/androidemu/nes/EmulatorActivity$4;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-static {v4, v2, v3}, Lcom/androidemu/nes/EmulatorActivity;->access$17(Lcom/androidemu/nes/EmulatorActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    return-void
.end method
