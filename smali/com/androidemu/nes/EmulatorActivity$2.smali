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

    :pswitch_0
    invoke-static {v0}, Lcom/androidemu/nes/EmulatorActivity;->access$200(Lcom/androidemu/nes/EmulatorActivity;)V

    goto :goto_0

    :pswitch_1
    invoke-static {v0}, Lcom/androidemu/nes/EmulatorActivity;->access$201(Lcom/androidemu/nes/EmulatorActivity;)V

    goto :goto_0

    :pswitch_3
    invoke-static {v0}, Lcom/androidemu/nes/EmulatorActivity;->access$203(Lcom/androidemu/nes/EmulatorActivity;)V

    goto :goto_0

    :pswitch_5
    invoke-static {v0}, Lcom/androidemu/nes/EmulatorActivity;->access$205(Lcom/androidemu/nes/EmulatorActivity;)V

    goto :goto_0

    :pswitch_6
    invoke-static {v0}, Lcom/androidemu/nes/EmulatorActivity;->access$206(Lcom/androidemu/nes/EmulatorActivity;)V

    goto :goto_0

    :pswitch_7
    invoke-static {v0}, Lcom/androidemu/nes/EmulatorActivity;->access$207(Lcom/androidemu/nes/EmulatorActivity;)V

    goto :goto_0

    :pswitch_8
    invoke-virtual {v0}, Lcom/androidemu/nes/EmulatorActivity;->finish()V

    goto :goto_0

    :pswitch_2

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/androidemu/nes/EmulatorSettings;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/androidemu/nes/EmulatorActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_4

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/androidemu/nes/CheatsActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/androidemu/nes/EmulatorActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
