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
    .line 1
    iput-object p1, p0, Lcom/androidemu/nes/MainActivity$1;->this$0:Lcom/androidemu/nes/MainActivity;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 171
    move-object v0, p1

    check-cast v0, Landroid/app/Dialog;

    move-object v1, v0

    .line 172
    .local v1, "d":Landroid/app/Dialog;
    const v5, 0x7f09000f

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 173
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 175
    .local v4, "name":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 176
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "android.intent.extra.shortcut.INTENT"

    .line 177
    invoke-static {}, Lcom/androidemu/nes/MainActivity;->access$0()Landroid/content/Intent;

    move-result-object v6

    .line 176
    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 178
    const-string v5, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    iget-object v5, p0, Lcom/androidemu/nes/MainActivity$1;->this$0:Lcom/androidemu/nes/MainActivity;

    const/high16 v6, 0x7f020000

    .line 179
    invoke-static {v5, v6}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    .line 181
    .local v2, "icon":Landroid/os/Parcelable;
    const-string v5, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 183
    iget-object v5, p0, Lcom/androidemu/nes/MainActivity$1;->this$0:Lcom/androidemu/nes/MainActivity;

    const/4 v6, -0x1

    invoke-virtual {v5, v6, v3}, Lcom/androidemu/nes/MainActivity;->setResult(ILandroid/content/Intent;)V

    .line 184
    iget-object v5, p0, Lcom/androidemu/nes/MainActivity$1;->this$0:Lcom/androidemu/nes/MainActivity;

    invoke-virtual {v5}, Lcom/androidemu/nes/MainActivity;->finish()V

    .line 185
    return-void
.end method
