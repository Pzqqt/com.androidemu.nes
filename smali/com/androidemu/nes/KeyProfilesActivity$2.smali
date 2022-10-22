.class Lcom/androidemu/nes/KeyProfilesActivity$2;
.super Ljava/lang/Object;
.source "KeyProfilesActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androidemu/nes/KeyProfilesActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidemu/nes/KeyProfilesActivity;


# direct methods
.method constructor <init>(Lcom/androidemu/nes/KeyProfilesActivity;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/androidemu/nes/KeyProfilesActivity$2;->this$0:Lcom/androidemu/nes/KeyProfilesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 253
    invoke-static {}, Lcom/androidemu/nes/KeyProfilesActivity;->access$000()Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, "oldName":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/androidemu/nes/KeyProfilesActivity;->access$002(Ljava/lang/String;)Ljava/lang/String;

    move-object v0, p1

    .line 256
    check-cast v0, Landroid/app/Dialog;

    .line 257
    .local v0, "d":Landroid/app/Dialog;
    const v3, 0x7f09000d

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "newName":Ljava/lang/String;
    iget-object v3, p0, Lcom/androidemu/nes/KeyProfilesActivity$2;->this$0:Lcom/androidemu/nes/KeyProfilesActivity;

    invoke-static {v3, v2, v1}, Lcom/androidemu/nes/KeyProfilesActivity;->access$100(Lcom/androidemu/nes/KeyProfilesActivity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 262
    iget-object v3, p0, Lcom/androidemu/nes/KeyProfilesActivity$2;->this$0:Lcom/androidemu/nes/KeyProfilesActivity;

    invoke-static {v3}, Lcom/androidemu/nes/KeyProfilesActivity;->access$200(Lcom/androidemu/nes/KeyProfilesActivity;)V

    .line 268
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v3, p0, Lcom/androidemu/nes/KeyProfilesActivity$2;->this$0:Lcom/androidemu/nes/KeyProfilesActivity;

    const v4, 0x7f060038

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
