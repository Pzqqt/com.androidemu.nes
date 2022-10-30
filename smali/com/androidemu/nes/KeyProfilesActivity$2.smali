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
    .line 1
    iput-object p1, p0, Lcom/androidemu/nes/KeyProfilesActivity$2;->this$0:Lcom/androidemu/nes/KeyProfilesActivity;

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 253
    invoke-static {}, Lcom/androidemu/nes/KeyProfilesActivity;->access$0()Ljava/lang/String;

    move-result-object v3

    .line 254
    .local v3, "oldName":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/androidemu/nes/KeyProfilesActivity;->access$1(Ljava/lang/String;)V

    .line 256
    move-object v0, p1

    check-cast v0, Landroid/app/Dialog;

    move-object v1, v0

    .line 258
    .local v1, "d":Landroid/app/Dialog;
    const v4, 0x7f09000c

    .line 257
    invoke-virtual {v1, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 258
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 259
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, "newName":Ljava/lang/String;
    iget-object v4, p0, Lcom/androidemu/nes/KeyProfilesActivity$2;->this$0:Lcom/androidemu/nes/KeyProfilesActivity;

    invoke-static {v4, v3, v2}, Lcom/androidemu/nes/KeyProfilesActivity;->access$2(Lcom/androidemu/nes/KeyProfilesActivity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 262
    iget-object v4, p0, Lcom/androidemu/nes/KeyProfilesActivity$2;->this$0:Lcom/androidemu/nes/KeyProfilesActivity;

    invoke-static {v4}, Lcom/androidemu/nes/KeyProfilesActivity;->access$3(Lcom/androidemu/nes/KeyProfilesActivity;)V

    .line 268
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v4, p0, Lcom/androidemu/nes/KeyProfilesActivity$2;->this$0:Lcom/androidemu/nes/KeyProfilesActivity;

    .line 265
    const v5, 0x7f07003a

    .line 266
    const/4 v6, 0x0

    .line 264
    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    .line 266
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
