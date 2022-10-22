.class Lcom/androidemu/nes/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androidemu/nes/MainActivity;->createShortcutNameDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidemu/nes/MainActivity;


# direct methods
.method constructor <init>(Lcom/androidemu/nes/MainActivity;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/androidemu/nes/MainActivity$1;->this$0:Lcom/androidemu/nes/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 124
    move-object v0, p1

    check-cast v0, Landroid/app/Dialog;

    .line 125
    .local v0, "d":Landroid/app/Dialog;
    const v4, 0x7f090010

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, "name":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 129
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.extra.shortcut.INTENT"

    invoke-static {}, Lcom/androidemu/nes/MainActivity;->access$000()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 131
    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    iget-object v4, p0, Lcom/androidemu/nes/MainActivity$1;->this$0:Lcom/androidemu/nes/MainActivity;

    const/high16 v5, 0x7f020000

    invoke-static {v4, v5}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v1

    .line 134
    .local v1, "icon":Landroid/os/Parcelable;
    const-string v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 136
    iget-object v4, p0, Lcom/androidemu/nes/MainActivity$1;->this$0:Lcom/androidemu/nes/MainActivity;

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v2}, Lcom/androidemu/nes/MainActivity;->setResult(ILandroid/content/Intent;)V

    .line 137
    iget-object v4, p0, Lcom/androidemu/nes/MainActivity$1;->this$0:Lcom/androidemu/nes/MainActivity;

    invoke-virtual {v4}, Lcom/androidemu/nes/MainActivity;->finish()V

    .line 138
    return-void
.end method
