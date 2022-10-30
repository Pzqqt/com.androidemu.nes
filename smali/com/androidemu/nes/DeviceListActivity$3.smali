.class Lcom/androidemu/nes/DeviceListActivity$3;
.super Ljava/lang/Object;
.source "DeviceListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androidemu/nes/DeviceListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidemu/nes/DeviceListActivity;


# direct methods
.method constructor <init>(Lcom/androidemu/nes/DeviceListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androidemu/nes/DeviceListActivity$3;->this$0:Lcom/androidemu/nes/DeviceListActivity;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/androidemu/nes/DeviceListActivity$3;->this$0:Lcom/androidemu/nes/DeviceListActivity;

    invoke-static {v0}, Lcom/androidemu/nes/DeviceListActivity;->access$2(Lcom/androidemu/nes/DeviceListActivity;)V

    .line 75
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 76
    return-void
.end method
