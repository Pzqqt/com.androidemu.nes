.class Lcom/androidemu/nes/EmulatorActivity$1;
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
    .line 787
    iput-object p1, p0, Lcom/androidemu/nes/EmulatorActivity$1;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue

    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity$1;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {v0}, Lcom/androidemu/nes/EmulatorActivity;->access$000(Lcom/androidemu/nes/EmulatorActivity;)V

    goto :goto_0

    :pswitch_1
    invoke-static {v0}, Lcom/androidemu/nes/EmulatorActivity;->access$001(Lcom/androidemu/nes/EmulatorActivity;)V

    goto :goto_0

    :pswitch_2
    invoke-static {v0}, Lcom/androidemu/nes/EmulatorActivity;->access$002(Lcom/androidemu/nes/EmulatorActivity;)V

    goto :goto_0

    :pswitch_3
    invoke-static {v0}, Lcom/androidemu/nes/EmulatorActivity;->access$003(Lcom/androidemu/nes/EmulatorActivity;)V

    goto :goto_0

    :pswitch_4
    invoke-static {v0}, Lcom/androidemu/nes/EmulatorActivity;->access$004(Lcom/androidemu/nes/EmulatorActivity;)V

    goto :goto_0

    :pswitch_5
    invoke-static {v0}, Lcom/androidemu/nes/EmulatorActivity;->access$005(Lcom/androidemu/nes/EmulatorActivity;)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {v0}, Lcom/androidemu/nes/EmulatorActivity;->finish()V

    goto :goto_0

    .line 789
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
    .end packed-switch
.end method
