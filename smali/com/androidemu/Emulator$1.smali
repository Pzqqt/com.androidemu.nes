.class Lcom/androidemu/Emulator$1;
.super Ljava/lang/Thread;
.source "Emulator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androidemu/Emulator;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidemu/Emulator;


# direct methods
.method constructor <init>(Lcom/androidemu/Emulator;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/androidemu/Emulator$1;->this$0:Lcom/androidemu/Emulator;

    .line 66
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/androidemu/Emulator$1;->this$0:Lcom/androidemu/Emulator;

    invoke-static {v0}, Lcom/androidemu/Emulator;->access$0(Lcom/androidemu/Emulator;)V

    .line 69
    return-void
.end method
