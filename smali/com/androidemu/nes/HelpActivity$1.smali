.class Lcom/androidemu/nes/HelpActivity$1;
.super Landroid/webkit/WebChromeClient;
.source "HelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androidemu/nes/HelpActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidemu/nes/HelpActivity;


# direct methods
.method constructor <init>(Lcom/androidemu/nes/HelpActivity;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lcom/androidemu/nes/HelpActivity$1;->this$0:Lcom/androidemu/nes/HelpActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/androidemu/nes/HelpActivity$1;->this$0:Lcom/androidemu/nes/HelpActivity;

    invoke-virtual {v0, p2}, Lcom/androidemu/nes/HelpActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 18
    return-void
.end method
