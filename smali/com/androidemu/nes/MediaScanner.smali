.class public Lcom/androidemu/nes/MediaScanner;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# instance fields
.field private conn:Landroid/media/MediaScannerConnection;

.field private filePath:Ljava/lang/String;

.field private mimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/media/MediaScannerConnection;

    invoke-direct {v0, p1, p0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    iput-object v0, p0, Lcom/androidemu/nes/MediaScanner;->conn:Landroid/media/MediaScannerConnection;

    .line 16
    iget-object v0, p0, Lcom/androidemu/nes/MediaScanner;->conn:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->connect()V

    .line 17
    return-void
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 29
    iget-object v0, p0, Lcom/androidemu/nes/MediaScanner;->filePath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/androidemu/nes/MediaScanner;->conn:Landroid/media/MediaScannerConnection;

    iget-object v1, p0, Lcom/androidemu/nes/MediaScanner;->filePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/androidemu/nes/MediaScanner;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_0
    iput-object v3, p0, Lcom/androidemu/nes/MediaScanner;->filePath:Ljava/lang/String;

    .line 33
    iput-object v3, p0, Lcom/androidemu/nes/MediaScanner;->mimeType:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 37
    return-void
.end method

.method public scanFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mime"    # Ljava/lang/String;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/androidemu/nes/MediaScanner;->conn:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/androidemu/nes/MediaScanner;->conn:Landroid/media/MediaScannerConnection;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :goto_0
    return-void

    .line 23
    :cond_0
    iput-object p1, p0, Lcom/androidemu/nes/MediaScanner;->filePath:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/androidemu/nes/MediaScanner;->mimeType:Ljava/lang/String;

    goto :goto_0
.end method
