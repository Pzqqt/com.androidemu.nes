.class public Lcom/androidemu/nes/StateSlotsActivity;
.super Landroid/app/ListActivity;
.source "StateSlotsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidemu/nes/StateSlotsActivity$SaveSlotAdapter;
    }
.end annotation


# static fields
.field public static final EXTRA_SAVE_MODE:Ljava/lang/String; = "saveMode"

.field private static final MENU_ITEM_DELETE:I = 0x1


# instance fields
.field private adapter:Lcom/androidemu/nes/StateSlotsActivity$SaveSlotAdapter;

.field private inflater:Landroid/view/LayoutInflater;

.field private isSaveMode:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/androidemu/nes/StateSlotsActivity;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/androidemu/nes/StateSlotsActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/androidemu/nes/StateSlotsActivity;->inflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$100(Lcom/androidemu/nes/StateSlotsActivity;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/androidemu/nes/StateSlotsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/androidemu/nes/StateSlotsActivity;->getSlotName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Ljava/io/File;

    .prologue
    .line 29
    invoke-static {p0}, Lcom/androidemu/nes/StateSlotsActivity;->getScreenshot(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static getScreenshot(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 50
    const/4 v1, 0x0

    .line 53
    .local v1, "in":Ljava/util/zip/ZipInputStream;
    :try_start_0
    new-instance v2, Ljava/util/zip/ZipInputStream;

    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .end local v1    # "in":Ljava/util/zip/ZipInputStream;
    .local v2, "in":Ljava/util/zip/ZipInputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    .local v0, "entry":Ljava/util/zip/ZipEntry;
    if-eqz v0, :cond_1

    .line 57
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "screenshot.png"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    :cond_1
    if-eqz v0, :cond_3

    .line 61
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 64
    if-eqz v2, :cond_2

    .line 65
    :try_start_2
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V

    :cond_2
    move-object v1, v2

    .line 69
    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    .end local v2    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v1    # "in":Ljava/util/zip/ZipInputStream;
    :goto_0
    return-object v3

    .line 64
    .end local v1    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v0    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v2    # "in":Ljava/util/zip/ZipInputStream;
    :cond_3
    if-eqz v2, :cond_4

    .line 65
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_4
    move-object v1, v2

    .line 69
    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    .end local v2    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v1    # "in":Ljava/util/zip/ZipInputStream;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_5

    .line 65
    :try_start_3
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V

    :cond_5
    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 67
    :catch_0
    move-exception v3

    goto :goto_1

    .end local v1    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v0    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v2    # "in":Ljava/util/zip/ZipInputStream;
    :catch_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v1    # "in":Ljava/util/zip/ZipInputStream;
    goto :goto_1

    .line 64
    .end local v0    # "entry":Ljava/util/zip/ZipEntry;
    .end local v1    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v2    # "in":Ljava/util/zip/ZipInputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "in":Ljava/util/zip/ZipInputStream;
    .restart local v1    # "in":Ljava/util/zip/ZipInputStream;
    goto :goto_2
.end method

.method public static getSlotFileName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "slot"    # I

    .prologue
    .line 40
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 41
    .local v0, "len":I
    if-gez v0, :cond_0

    .line 42
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 44
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    add-int/lit8 v2, v0, 0x4

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".ss"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getSlotName(I)Ljava/lang/String;
    .locals 4
    .param p1, "slot"    # I

    .prologue
    .line 129
    if-nez p1, :cond_0

    .line 130
    const v0, 0x7f060013

    invoke-virtual {p0, v0}, Lcom/androidemu/nes/StateSlotsActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 132
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f060014

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/androidemu/nes/StateSlotsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 105
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 108
    .local v0, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 113
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 110
    :pswitch_0
    iget-object v1, p0, Lcom/androidemu/nes/StateSlotsActivity;->adapter:Lcom/androidemu/nes/StateSlotsActivity$SaveSlotAdapter;

    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v2}, Lcom/androidemu/nes/StateSlotsActivity$SaveSlotAdapter;->delete(I)V

    .line 111
    const/4 v1, 0x1

    goto :goto_0

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/androidemu/nes/StateSlotsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/androidemu/nes/StateSlotsActivity;->inflater:Landroid/view/LayoutInflater;

    .line 79
    invoke-virtual {p0}, Lcom/androidemu/nes/StateSlotsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 80
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "saveMode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/androidemu/nes/StateSlotsActivity;->isSaveMode:Z

    .line 81
    iget-boolean v1, p0, Lcom/androidemu/nes/StateSlotsActivity;->isSaveMode:Z

    if-eqz v1, :cond_0

    const v1, 0x7f060012

    :goto_0
    invoke-virtual {p0, v1}, Lcom/androidemu/nes/StateSlotsActivity;->setTitle(I)V

    .line 84
    invoke-virtual {p0}, Lcom/androidemu/nes/StateSlotsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 86
    new-instance v1, Lcom/androidemu/nes/StateSlotsActivity$SaveSlotAdapter;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/androidemu/nes/StateSlotsActivity$SaveSlotAdapter;-><init>(Lcom/androidemu/nes/StateSlotsActivity;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/androidemu/nes/StateSlotsActivity;->adapter:Lcom/androidemu/nes/StateSlotsActivity$SaveSlotAdapter;

    .line 87
    iget-object v1, p0, Lcom/androidemu/nes/StateSlotsActivity;->adapter:Lcom/androidemu/nes/StateSlotsActivity$SaveSlotAdapter;

    invoke-virtual {p0, v1}, Lcom/androidemu/nes/StateSlotsActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 88
    return-void

    .line 81
    :cond_0
    const v1, 0x7f060011

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v4, 0x0

    .line 93
    move-object v1, p3

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 96
    .local v1, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v2, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v2}, Lcom/androidemu/nes/StateSlotsActivity;->getSlotName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 98
    invoke-virtual {p0}, Lcom/androidemu/nes/StateSlotsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    iget v3, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 99
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    const/4 v2, 0x1

    const v3, 0x7f060004

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 101
    :cond_0
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 118
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 119
    .local v0, "file":Ljava/io/File;
    iget-boolean v2, p0, Lcom/androidemu/nes/StateSlotsActivity;->isSaveMode:Z

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 126
    :goto_0
    return-void

    .line 122
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 123
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 124
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/androidemu/nes/StateSlotsActivity;->setResult(ILandroid/content/Intent;)V

    .line 125
    invoke-virtual {p0}, Lcom/androidemu/nes/StateSlotsActivity;->finish()V

    goto :goto_0
.end method
