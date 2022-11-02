.class Lcom/androidemu/nes/EmulatorActivity$2;
.super Ljava/lang/Object;
.source "EmulatorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androidemu/nes/EmulatorActivity;->createQuitGameDialog()Landroid/app/Dialog;
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
    iput-object p1, p0, Lcom/androidemu/nes/EmulatorActivity$2;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    .line 815
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue

    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity$2;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_onLoadState
    invoke-static {v0}, Lcom/androidemu/nes/EmulatorActivity;->access$onLoadState(Lcom/androidemu/nes/EmulatorActivity;)V

    goto :goto_0

    :pswitch_onSaveState
    invoke-static {v0}, Lcom/androidemu/nes/EmulatorActivity;->access$onSaveState(Lcom/androidemu/nes/EmulatorActivity;)V

    goto :goto_0

    :pswitch_doChangeDisk
    invoke-static {v0}, Lcom/androidemu/nes/EmulatorActivity;->access$doChangeDisk(Lcom/androidemu/nes/EmulatorActivity;)V

    goto :goto_0

    :pswitch_onFastForward
    invoke-static {v0}, Lcom/androidemu/nes/EmulatorActivity;->access$onFastForward(Lcom/androidemu/nes/EmulatorActivity;)V

    goto :goto_0

    :pswitch_showNetplayConnectDialog
    invoke-static {v0}, Lcom/androidemu/nes/EmulatorActivity;->access$showNetplayConnectDialog(Lcom/androidemu/nes/EmulatorActivity;)V

    goto :goto_0

    :pswitch_doReset
    invoke-static {v0}, Lcom/androidemu/nes/EmulatorActivity;->access$doReset(Lcom/androidemu/nes/EmulatorActivity;)V

    goto :goto_0

    :pswitch_doPower
    invoke-static {v0}, Lcom/androidemu/nes/EmulatorActivity;->access$doPower(Lcom/androidemu/nes/EmulatorActivity;)V

    goto :goto_0

    :pswitch_onScreenshot
    invoke-static {v0}, Lcom/androidemu/nes/EmulatorActivity;->access$onScreenshot(Lcom/androidemu/nes/EmulatorActivity;)V

    goto :goto_0

    :pswitch_finish
    invoke-virtual {v0}, Lcom/androidemu/nes/EmulatorActivity;->finish()V

    goto :goto_0

    :pswitch_gotoSettings

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/androidemu/nes/EmulatorSettings;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/androidemu/nes/EmulatorActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_gotoCheats

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/androidemu/nes/CheatsActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/androidemu/nes/EmulatorActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_onLoadState
        :pswitch_onSaveState
        :pswitch_gotoSettings
        :pswitch_doChangeDisk
        :pswitch_onFastForward
        :pswitch_gotoCheats
        :pswitch_showNetplayConnectDialog
        :pswitch_doReset
        :pswitch_doPower
        :pswitch_onScreenshot
        :pswitch_finish
    .end packed-switch
.end method
