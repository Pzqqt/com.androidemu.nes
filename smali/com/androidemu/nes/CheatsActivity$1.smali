.class Lcom/androidemu/nes/CheatsActivity$1;
.super Ljava/lang/Object;
.source "CheatsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androidemu/nes/CheatsActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidemu/nes/CheatsActivity;


# direct methods
.method constructor <init>(Lcom/androidemu/nes/CheatsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androidemu/nes/CheatsActivity$1;->this$0:Lcom/androidemu/nes/CheatsActivity;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 87
    move-object v0, p1

    check-cast v0, Landroid/app/Dialog;

    move-object v2, v0

    .line 89
    .local v2, "d":Landroid/app/Dialog;
    const v4, 0x7f09000a

    .line 88
    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 89
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "name":Ljava/lang/String;
    invoke-static {}, Lcom/androidemu/nes/CheatsActivity;->access$0()Lcom/androidemu/Cheats$Item;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 91
    invoke-static {}, Lcom/androidemu/nes/CheatsActivity;->access$0()Lcom/androidemu/Cheats$Item;

    move-result-object v4

    iput-object v3, v4, Lcom/androidemu/Cheats$Item;->name:Ljava/lang/String;

    .line 92
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/androidemu/nes/CheatsActivity;->access$1(Lcom/androidemu/Cheats$Item;)V

    .line 93
    iget-object v4, p0, Lcom/androidemu/nes/CheatsActivity$1;->this$0:Lcom/androidemu/nes/CheatsActivity;

    invoke-static {v4}, Lcom/androidemu/nes/CheatsActivity;->access$2(Lcom/androidemu/nes/CheatsActivity;)Lcom/androidemu/Cheats;

    move-result-object v4

    invoke-virtual {v4}, Lcom/androidemu/Cheats;->setModified()V

    .line 94
    iget-object v4, p0, Lcom/androidemu/nes/CheatsActivity$1;->this$0:Lcom/androidemu/nes/CheatsActivity;

    invoke-static {v4}, Lcom/androidemu/nes/CheatsActivity;->access$3(Lcom/androidemu/nes/CheatsActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 101
    :goto_0
    return-void

    .line 97
    :cond_0
    const v4, 0x7f09000b

    .line 96
    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 97
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 98
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "code":Ljava/lang/String;
    iget-object v4, p0, Lcom/androidemu/nes/CheatsActivity$1;->this$0:Lcom/androidemu/nes/CheatsActivity;

    invoke-static {v4, v1, v3}, Lcom/androidemu/nes/CheatsActivity;->access$4(Lcom/androidemu/nes/CheatsActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
