.class public Lcom/androidemu/Cheats$Item;
.super Ljava/lang/Object;
.source "Cheats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidemu/Cheats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Item"
.end annotation


# instance fields
.field public code:Ljava/lang/String;

.field public enabled:Z

.field public name:Ljava/lang/String;

.field final synthetic this$0:Lcom/androidemu/Cheats;


# direct methods
.method public constructor <init>(Lcom/androidemu/Cheats;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/androidemu/Cheats$Item;->this$0:Lcom/androidemu/Cheats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/androidemu/Cheats$Item;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/androidemu/Cheats$Item;->code:Ljava/lang/String;

    .line 25
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/androidemu/Cheats$Item;->name:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/androidemu/Cheats$Item;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
