.class Lcom/androidemu/nes/EmulatorActivity$6;
.super Ljava/lang/Object;
.source "EmulatorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androidemu/nes/EmulatorActivity;->onChangeDisk()V
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
    .line 1154
    iput-object p1, p0, Lcom/androidemu/nes/EmulatorActivity$6;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity$6;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-static {v0}, Lcom/androidemu/nes/EmulatorActivity;->access$600(Lcom/androidemu/nes/EmulatorActivity;)Lcom/androidemu/Emulator;

    move-result-object v0

    const-string v1, "fdsChangeDisk"

    invoke-virtual {v0, v1, p2}, Lcom/androidemu/Emulator;->setOption(Ljava/lang/String;I)V

    .line 1157
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1158
    return-void
.end method
