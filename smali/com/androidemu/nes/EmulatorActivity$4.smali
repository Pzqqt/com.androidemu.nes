.class Lcom/androidemu/nes/EmulatorActivity$4;
.super Landroid/os/Handler;
.source "EmulatorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidemu/nes/EmulatorActivity;
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
    .line 904
    iput-object p1, p0, Lcom/androidemu/nes/EmulatorActivity$4;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 907
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity$4;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/nes/EmulatorActivity;->access$400(Lcom/androidemu/nes/EmulatorActivity;)Lcom/androidemu/nes/NetPlayService;

    move-result-object v2

    if-nez v2, :cond_1

    .line 973
    :cond_0
    :goto_0
    return-void

    .line 910
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 912
    :sswitch_0
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity$4;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/nes/EmulatorActivity;->access$400(Lcom/androidemu/nes/EmulatorActivity;)Lcom/androidemu/nes/NetPlayService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidemu/nes/NetPlayService;->isServer()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 913
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity$4;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/nes/EmulatorActivity;->access$500(Lcom/androidemu/nes/EmulatorActivity;)V

    .line 915
    :cond_2
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity$4;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/nes/EmulatorActivity;->access$600(Lcom/androidemu/nes/EmulatorActivity;)Lcom/androidemu/Emulator;

    move-result-object v2

    iget-object v3, p0, Lcom/androidemu/nes/EmulatorActivity$4;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-virtual {v2, v3}, Lcom/androidemu/Emulator;->setFrameUpdateListener(Lcom/androidemu/Emulator$FrameUpdateListener;)V

    .line 916
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity$4;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/nes/EmulatorActivity;->access$700(Lcom/androidemu/nes/EmulatorActivity;)V

    .line 917
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity$4;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/nes/EmulatorActivity;->access$400(Lcom/androidemu/nes/EmulatorActivity;)Lcom/androidemu/nes/NetPlayService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidemu/nes/NetPlayService;->sendMessageReply()V

    .line 919
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity$4;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/nes/EmulatorActivity;->access$800(Lcom/androidemu/nes/EmulatorActivity;)Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 920
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity$4;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/nes/EmulatorActivity;->access$800(Lcom/androidemu/nes/EmulatorActivity;)Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;->dismiss()V

    .line 921
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity$4;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-static {v2, v4}, Lcom/androidemu/nes/EmulatorActivity;->access$802(Lcom/androidemu/nes/EmulatorActivity;Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;)Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;

    goto :goto_0

    .line 926
    :sswitch_1
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity$4;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/nes/EmulatorActivity;->access$900(Lcom/androidemu/nes/EmulatorActivity;)V

    .line 928
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity$4;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/nes/EmulatorActivity;->access$800(Lcom/androidemu/nes/EmulatorActivity;)Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 929
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity$4;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/nes/EmulatorActivity;->access$800(Lcom/androidemu/nes/EmulatorActivity;)Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;->dismiss()V

    .line 930
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity$4;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-static {v2, v4}, Lcom/androidemu/nes/EmulatorActivity;->access$802(Lcom/androidemu/nes/EmulatorActivity;Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;)Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;

    .line 932
    :cond_3
    const v0, 0x7f06002a

    .line 933
    .local v0, "error":I
    iget v2, p1, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_0

    .line 941
    :goto_1
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity$4;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 935
    :pswitch_0
    const v0, 0x7f06002b

    .line 936
    goto :goto_1

    .line 938
    :pswitch_1
    const v0, 0x7f06002c

    goto :goto_1

    .line 946
    .end local v0    # "error":I
    :sswitch_2
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity$4;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/nes/EmulatorActivity;->access$600(Lcom/androidemu/nes/EmulatorActivity;)Lcom/androidemu/Emulator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidemu/Emulator;->power()V

    .line 947
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity$4;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/nes/EmulatorActivity;->access$400(Lcom/androidemu/nes/EmulatorActivity;)Lcom/androidemu/nes/NetPlayService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidemu/nes/NetPlayService;->sendMessageReply()V

    goto/16 :goto_0

    .line 951
    :sswitch_3
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity$4;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/nes/EmulatorActivity;->access$600(Lcom/androidemu/nes/EmulatorActivity;)Lcom/androidemu/Emulator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidemu/Emulator;->reset()V

    .line 952
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity$4;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/nes/EmulatorActivity;->access$400(Lcom/androidemu/nes/EmulatorActivity;)Lcom/androidemu/nes/NetPlayService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidemu/nes/NetPlayService;->sendMessageReply()V

    goto/16 :goto_0

    .line 956
    :sswitch_4
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity$4;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/nes/EmulatorActivity;->access$1000(Lcom/androidemu/nes/EmulatorActivity;)Ljava/io/File;

    move-result-object v1

    .line 958
    .local v1, "file":Ljava/io/File;
    :try_start_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    check-cast v2, [B

    invoke-static {v1, v2}, Lcom/androidemu/nes/EmulatorActivity;->access$1100(Ljava/io/File;[B)V

    .line 959
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity$4;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/nes/EmulatorActivity;->access$600(Lcom/androidemu/nes/EmulatorActivity;)Lcom/androidemu/Emulator;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/androidemu/Emulator;->loadState(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 962
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 964
    :goto_2
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity$4;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/nes/EmulatorActivity;->access$400(Lcom/androidemu/nes/EmulatorActivity;)Lcom/androidemu/nes/NetPlayService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidemu/nes/NetPlayService;->sendMessageReply()V

    goto/16 :goto_0

    .line 960
    :catch_0
    move-exception v2

    .line 962
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_2

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    throw v2

    .line 968
    .end local v1    # "file":Ljava/io/File;
    :sswitch_5
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity$4;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-virtual {v2}, Lcom/androidemu/nes/EmulatorActivity;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 969
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity$4;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/nes/EmulatorActivity;->access$500(Lcom/androidemu/nes/EmulatorActivity;)V

    .line 970
    :cond_4
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity$4;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/nes/EmulatorActivity;->access$1200(Lcom/androidemu/nes/EmulatorActivity;)V

    goto/16 :goto_0

    .line 910
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x3e8 -> :sswitch_5
    .end sparse-switch

    .line 933
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
