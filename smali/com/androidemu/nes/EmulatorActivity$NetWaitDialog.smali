.class Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;
.super Landroid/app/ProgressDialog;
.source "EmulatorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidemu/nes/EmulatorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetWaitDialog"
.end annotation


# instance fields
.field private onClickListener:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic this$0:Lcom/androidemu/nes/EmulatorActivity;


# direct methods
.method public constructor <init>(Lcom/androidemu/nes/EmulatorActivity;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1303
    iput-object p1, p0, Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    .line 1304
    invoke-direct {p0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1306
    invoke-virtual {p0, v0}, Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;->setIndeterminate(Z)V

    .line 1307
    invoke-virtual {p0, v0}, Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;->setCancelable(Z)V

    .line 1308
    invoke-virtual {p0, p0}, Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1309
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 1317
    iget-object v1, p0, Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 1319
    iget-object v1, p0, Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v2, -0x1

    invoke-interface {v1, p0, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 1322
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/ProgressDialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v1, 0x0

    .line 1326
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-static {v0, v1}, Lcom/androidemu/nes/EmulatorActivity;->access$802(Lcom/androidemu/nes/EmulatorActivity;Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;)Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;

    .line 1327
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-static {v0}, Lcom/androidemu/nes/EmulatorActivity;->access$400(Lcom/androidemu/nes/EmulatorActivity;)Lcom/androidemu/nes/NetPlayService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidemu/nes/NetPlayService;->disconnect()V

    .line 1328
    iget-object v0, p0, Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-static {v0, v1}, Lcom/androidemu/nes/EmulatorActivity;->access$402(Lcom/androidemu/nes/EmulatorActivity;Lcom/androidemu/nes/NetPlayService;)Lcom/androidemu/nes/NetPlayService;

    .line 1329
    return-void
.end method

.method public setOnClickListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "l"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 1312
    iput-object p1, p0, Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1313
    return-void
.end method
