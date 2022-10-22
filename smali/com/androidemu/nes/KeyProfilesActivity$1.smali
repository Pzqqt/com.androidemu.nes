.class Lcom/androidemu/nes/KeyProfilesActivity$1;
.super Ljava/lang/Object;
.source "KeyProfilesActivity.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androidemu/nes/KeyProfilesActivity;->refresh()V
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
    .line 134
    iput-object p1, p0, Lcom/androidemu/nes/KeyProfilesActivity$1;->this$0:Lcom/androidemu/nes/KeyProfilesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 136
    const-string v0, ".xml"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
