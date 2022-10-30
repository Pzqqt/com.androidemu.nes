.class Lcom/androidemu/nes/EmulatorActivity$1;
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
    .line 1
    iput-object p1, p0, Lcom/androidemu/nes/EmulatorActivity$1;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    .line 932
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 935
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity$1;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/nes/EmulatorActivity;->access$0(Lcom/androidemu/nes/EmulatorActivity;)Lcom/androidemu/nes/NetPlayService;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1004
    :goto_0
    return-void

    .line 938
    :cond_0
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity$1;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/nes/EmulatorActivity;->access$1(Lcom/androidemu/nes/EmulatorActivity;)V

    .line 940
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 1003
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity$1;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/nes/EmulatorActivity;->access$11(Lcom/androidemu/nes/EmulatorActivity;)V

    goto :goto_0

    .line 942
    :sswitch_0
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity$1;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/nes/EmulatorActivity;->access$0(Lcom/androidemu/nes/EmulatorActivity;)Lcom/androidemu/nes/NetPlayService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidemu/nes/NetPlayService;->isServer()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 943
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity$1;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/nes/EmulatorActivity;->access$2(Lcom/androidemu/nes/EmulatorActivity;)V

    .line 945
    :cond_2
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity$1;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/nes/EmulatorActivity;->access$3(Lcom/androidemu/nes/EmulatorActivity;)Lcom/androidemu/Emulator;

    move-result-object v2

    iget-object v3, p0, Lcom/androidemu/nes/EmulatorActivity$1;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-virtual {v2, v3}, Lcom/androidemu/Emulator;->setFrameUpdateListener(Lcom/androidemu/Emulator$FrameUpdateListener;)V

    .line 946
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity$1;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/nes/EmulatorActivity;->access$4(Lcom/androidemu/nes/EmulatorActivity;)V

    .line 947
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity$1;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/nes/EmulatorActivity;->access$0(Lcom/androidemu/nes/EmulatorActivity;)Lcom/androidemu/nes/NetPlayService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidemu/nes/NetPlayService;->sendMessageReply()V

    .line 949
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity$1;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/nes/EmulatorActivity;->access$5(Lcom/androidemu/nes/EmulatorActivity;)Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 950
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity$1;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/nes/EmulatorActivity;->access$5(Lcom/androidemu/nes/EmulatorActivity;)Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;->dismiss()V

    .line 951
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity$1;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-static {v2, v4}, Lcom/androidemu/nes/EmulatorActivity;->access$6(Lcom/androidemu/nes/EmulatorActivity;Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;)V

    goto :goto_1

    .line 956
    :sswitch_1
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity$1;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/nes/EmulatorActivity;->access$7(Lcom/androidemu/nes/EmulatorActivity;)V

    .line 958
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity$1;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/nes/EmulatorActivity;->access$5(Lcom/androidemu/nes/EmulatorActivity;)Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 959
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity$1;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/nes/EmulatorActivity;->access$5(Lcom/androidemu/nes/EmulatorActivity;)Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;->dismiss()V

    .line 960
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity$1;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-static {v2, v4}, Lcom/androidemu/nes/EmulatorActivity;->access$6(Lcom/androidemu/nes/EmulatorActivity;Lcom/androidemu/nes/EmulatorActivity$NetWaitDialog;)V

    .line 962
    :cond_3
    const v0, 0x7f07002c

    .line 963
    .local v0, "error":I
    iget v2, p1, Landroid/os/Message;->arg1:I

    packed-switch v2, :pswitch_data_0

    .line 971
    :goto_2
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity$1;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    .line 972
    const/4 v3, 0x1

    .line 971
    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 972
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 965
    :pswitch_0
    const v0, 0x7f07002d

    .line 966
    goto :goto_2

    .line 968
    :pswitch_1
    const v0, 0x7f07002e

    goto :goto_2

    .line 976
    .end local v0    # "error":I
    :sswitch_2
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity$1;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/nes/EmulatorActivity;->access$3(Lcom/androidemu/nes/EmulatorActivity;)Lcom/androidemu/Emulator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidemu/Emulator;->power()V

    .line 977
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity$1;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/nes/EmulatorActivity;->access$0(Lcom/androidemu/nes/EmulatorActivity;)Lcom/androidemu/nes/NetPlayService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidemu/nes/NetPlayService;->sendMessageReply()V

    goto/16 :goto_1

    .line 981
    :sswitch_3
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity$1;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/nes/EmulatorActivity;->access$3(Lcom/androidemu/nes/EmulatorActivity;)Lcom/androidemu/Emulator;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidemu/Emulator;->reset()V

    .line 982
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity$1;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/nes/EmulatorActivity;->access$0(Lcom/androidemu/nes/EmulatorActivity;)Lcom/androidemu/nes/NetPlayService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidemu/nes/NetPlayService;->sendMessageReply()V

    goto/16 :goto_1

    .line 986
    :sswitch_4
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity$1;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/nes/EmulatorActivity;->access$8(Lcom/androidemu/nes/EmulatorActivity;)Ljava/io/File;

    move-result-object v1

    .line 988
    .local v1, "file":Ljava/io/File;
    :try_start_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-static {v1, v2}, Lcom/androidemu/nes/EmulatorActivity;->access$9(Ljava/io/File;[B)V

    .line 989
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity$1;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/nes/EmulatorActivity;->access$3(Lcom/androidemu/nes/EmulatorActivity;)Lcom/androidemu/Emulator;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/androidemu/Emulator;->loadState(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 992
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 994
    :goto_3
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity$1;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/nes/EmulatorActivity;->access$0(Lcom/androidemu/nes/EmulatorActivity;)Lcom/androidemu/nes/NetPlayService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/androidemu/nes/NetPlayService;->sendMessageReply()V

    goto/16 :goto_1

    .line 990
    :catch_0
    move-exception v2

    .line 992
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_3

    .line 991
    :catchall_0
    move-exception v2

    .line 992
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 993
    throw v2

    .line 998
    .end local v1    # "file":Ljava/io/File;
    :sswitch_5
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity$1;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-virtual {v2}, Lcom/androidemu/nes/EmulatorActivity;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 999
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity$1;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/nes/EmulatorActivity;->access$2(Lcom/androidemu/nes/EmulatorActivity;)V

    .line 1000
    :cond_4
    iget-object v2, p0, Lcom/androidemu/nes/EmulatorActivity$1;->this$0:Lcom/androidemu/nes/EmulatorActivity;

    invoke-static {v2}, Lcom/androidemu/nes/EmulatorActivity;->access$10(Lcom/androidemu/nes/EmulatorActivity;)V

    goto/16 :goto_1

    .line 940
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

    .line 963
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
