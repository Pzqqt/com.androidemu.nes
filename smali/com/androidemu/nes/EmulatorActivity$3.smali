.class Lcom/androidemu/nes/EmulatorActivity$3;
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
    .line 829
    iput-object p1, p0, Lcom/androidemu/nes/EmulatorActivity$3;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 831
    move-object v0, p1

    check-cast v0, Landroid/app/Dialog;

    .line 832
    .local v0, "d":Landroid/app/Dialog;
    const v3, 0x7f090013

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 834
    .local v1, "ip":Ljava/lang/String;
    const v3, 0x7f090014

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 836
    .local v2, "port":Ljava/lang/String;
    iget-object v3, p0, Lcom/androidemu/nes/EmulatorActivity$3;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-static {v3, v1, v2}, Lcom/androidemu/nes/EmulatorActivity;->access$300(Lcom/androidemu/nes/EmulatorActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    return-void
.end method
