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
    .line 85
    iput-object p1, p0, Lcom/androidemu/nes/CheatsActivity$1;->this$0:Lcom/androidemu/nes/CheatsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 87
    move-object v1, p1

    check-cast v1, Landroid/app/Dialog;

    .line 88
    .local v1, "d":Landroid/app/Dialog;
    const v3, 0x7f09000b

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 90
    .local v2, "name":Ljava/lang/String;
    invoke-static {}, Lcom/androidemu/nes/CheatsActivity;->access$000()Lcom/androidemu/Cheats$Item;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 91
    invoke-static {}, Lcom/androidemu/nes/CheatsActivity;->access$000()Lcom/androidemu/Cheats$Item;

    move-result-object v3

    iput-object v2, v3, Lcom/androidemu/Cheats$Item;->name:Ljava/lang/String;

    .line 92
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/androidemu/nes/CheatsActivity;->access$002(Lcom/androidemu/Cheats$Item;)Lcom/androidemu/Cheats$Item;

    .line 93
    iget-object v3, p0, Lcom/androidemu/nes/CheatsActivity$1;->this$0:Lcom/androidemu/nes/CheatsActivity;

    invoke-static {v3}, Lcom/androidemu/nes/CheatsActivity;->access$100(Lcom/androidemu/nes/CheatsActivity;)Lcom/androidemu/Cheats;

    move-result-object v3

    invoke-virtual {v3}, Lcom/androidemu/Cheats;->setModified()V

    .line 94
    iget-object v3, p0, Lcom/androidemu/nes/CheatsActivity$1;->this$0:Lcom/androidemu/nes/CheatsActivity;

    invoke-static {v3}, Lcom/androidemu/nes/CheatsActivity;->access$200(Lcom/androidemu/nes/CheatsActivity;)Landroid/widget/ArrayAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 101
    :goto_0
    return-void

    .line 96
    :cond_0
    const v3, 0x7f09000c

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "code":Ljava/lang/String;
    iget-object v3, p0, Lcom/androidemu/nes/CheatsActivity$1;->this$0:Lcom/androidemu/nes/CheatsActivity;

    invoke-static {v3, v0, v2}, Lcom/androidemu/nes/CheatsActivity;->access$300(Lcom/androidemu/nes/CheatsActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
