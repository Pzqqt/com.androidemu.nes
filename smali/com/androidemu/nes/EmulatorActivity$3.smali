.class Lcom/androidemu/nes/EmulatorActivity$3;
.super Ljava/lang/Object;
.source "EmulatorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androidemu/nes/EmulatorActivity;->createReplaceGameDialog()Landroid/app/Dialog;
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
    iput-object p1, p0, Lcom/androidemu/nes/EmulatorActivity$3;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    .line 836
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 838
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 839
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity$3;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    iget-object v1, p0, Lcom/androidemu/nes/EmulatorActivity$3;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-static {v1}, Lcom/androidemu/nes/EmulatorActivity;->access$14(Lcom/androidemu/nes/EmulatorActivity;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androidemu/nes/EmulatorActivity;->setIntent(Landroid/content/Intent;)V

    .line 840
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity$3;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-static {v0}, Lcom/androidemu/nes/EmulatorActivity;->access$15(Lcom/androidemu/nes/EmulatorActivity;)Z

    .line 842
    :cond_0
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity$3;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/androidemu/nes/EmulatorActivity;->access$16(Lcom/androidemu/nes/EmulatorActivity;Landroid/content/Intent;)V

    .line 843
    return-void
.end method
