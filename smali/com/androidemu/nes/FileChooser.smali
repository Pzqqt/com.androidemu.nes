.class public Lcom/androidemu/nes/FileChooser;
.super Landroid/app/ListActivity;
.source "FileChooser.java"

# interfaces
.implements Ljava/io/FileFilter;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;


# static fields
.field public static final EXTRA_FILTERS:Ljava/lang/String; = "filters"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "title"

.field private static final LOG_TAG:Ljava/lang/String; = "FileChooser"

.field private static final ROM_GRIPPER_ACTION:Ljava/lang/String; = "com.bingo.rom_gripper.action.ROM_LIST"

.field private static final ROM_GRIPPER_PACKAGE:Ljava/lang/String; = "com.bingo.rom_gripper"

.field private static final ROM_GRIPPER_URI:Landroid/net/Uri;


# instance fields
.field private currentDir:Ljava/io/File;

.field private filters:[Ljava/lang/String;

.field private pathEdit:Landroid/widget/EditText;

.field private final sdcardDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "http://market.android.com/details?id=com.bingo.rom_gripper"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/androidemu/nes/FileChooser;->ROM_GRIPPER_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 36
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/androidemu/nes/FileChooser;->sdcardDir:Ljava/io/File;

    return-void
.end method

.method private changeTo(Ljava/io/File;)V
    .locals 9
    .param p1, "dir"    # Ljava/io/File;

    .prologue
    .line 195
    iget-object v7, p0, Lcom/androidemu/nes/FileChooser;->filters:[Ljava/lang/String;

    if-nez v7, :cond_2

    const/4 v7, 0x0

    :goto_0
    invoke-virtual {p1, v7}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 196
    .local v2, "files":[Ljava/io/File;
    if-nez v2, :cond_0

    .line 197
    const/4 v7, 0x0

    new-array v2, v7, [Ljava/io/File;

    .line 199
    :cond_0
    iput-object p1, p0, Lcom/androidemu/nes/FileChooser;->currentDir:Ljava/io/File;

    .line 200
    iget-object v7, p0, Lcom/androidemu/nes/FileChooser;->pathEdit:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 202
    new-instance v4, Ljava/util/ArrayList;

    array-length v7, v2

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 203
    .local v4, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v1, v0, v3

    .line 204
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 205
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 206
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x2f

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 207
    :cond_1
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "arr$":[Ljava/io/File;
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "i$":I
    .end local v4    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "len$":I
    .end local v6    # "name":Ljava/lang/String;
    :cond_2
    move-object v7, p0

    .line 195
    goto :goto_0

    .line 210
    .restart local v0    # "arr$":[Ljava/io/File;
    .restart local v2    # "files":[Ljava/io/File;
    .restart local v3    # "i$":I
    .restart local v4    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "len$":I
    :cond_3
    sget-object v7, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v4, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 211
    new-instance v7, Landroid/widget/ArrayAdapter;

    const v8, 0x1090003

    invoke-direct {v7, p0, v8, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p0, v7}, Lcom/androidemu/nes/FileChooser;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 213
    return-void
.end method

.method private getDirectoryFromFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 185
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 187
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 188
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 189
    const/4 v0, 0x0

    .line 191
    :cond_0
    return-object v0
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 8
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 166
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 169
    .local v4, "name":Ljava/lang/String;
    const-string v7, "."

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 181
    :cond_0
    :goto_0
    return v5

    .line 173
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_2

    move v5, v6

    .line 174
    goto :goto_0

    .line 176
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 177
    iget-object v0, p0, Lcom/androidemu/nes/FileChooser;->filters:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 178
    .local v1, "f":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v5, v6

    .line 179
    goto :goto_0

    .line 177
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method protected getFileFilter()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/androidemu/nes/FileChooser;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "filters"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getInitialPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/androidemu/nes/FileChooser;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 120
    .local v0, "uri":Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 121
    const/4 v1, 0x0

    .line 122
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 150
    :pswitch_0
    goto :goto_0

    .line 154
    :pswitch_1
    iget-object v1, p0, Lcom/androidemu/nes/FileChooser;->sdcardDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/androidemu/nes/FileChooser;->changeTo(Ljava/io/File;)V

    goto :goto_0

    .line 158
    :pswitch_2
    iget-object v1, p0, Lcom/androidemu/nes/FileChooser;->currentDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 159
    .local v0, "parent":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 160
    invoke-direct {p0, v0}, Lcom/androidemu/nes/FileChooser;->changeTo(Ljava/io/File;)V

    goto :goto_0

    .line 148
    :pswitch_data_0
    .packed-switch 0x7f090007
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v3, 0x7f030004

    invoke-virtual {p0, v3}, Lcom/androidemu/nes/FileChooser;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lcom/androidemu/nes/FileChooser;->getListView()Landroid/widget/ListView;

    move-result-object v3

    const/high16 v4, 0x7f090000

    invoke-virtual {p0, v4}, Lcom/androidemu/nes/FileChooser;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 48
    const v3, 0x7f09000a

    invoke-virtual {p0, v3}, Lcom/androidemu/nes/FileChooser;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/androidemu/nes/FileChooser;->pathEdit:Landroid/widget/EditText;

    .line 49
    iget-object v3, p0, Lcom/androidemu/nes/FileChooser;->pathEdit:Landroid/widget/EditText;

    invoke-virtual {v3, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 51
    .line 52
    const v3, 0x7f090008

    invoke-virtual {p0, v3}, Lcom/androidemu/nes/FileChooser;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    const v3, 0x7f090009

    invoke-virtual {p0, v3}, Lcom/androidemu/nes/FileChooser;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    invoke-virtual {p0}, Lcom/androidemu/nes/FileChooser;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "title"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "title":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 57
    invoke-virtual {p0, v2}, Lcom/androidemu/nes/FileChooser;->setTitle(Ljava/lang/CharSequence;)V

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/androidemu/nes/FileChooser;->getFileFilter()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/androidemu/nes/FileChooser;->filters:[Ljava/lang/String;

    .line 60
    const/4 v1, 0x0

    .line 61
    .local v1, "path":Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 62
    const-string v3, "currentDir"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    :goto_0
    const/4 v0, 0x0

    .line 67
    .local v0, "dir":Ljava/io/File;
    if-eqz v1, :cond_1

    .line 68
    invoke-direct {p0, v1}, Lcom/androidemu/nes/FileChooser;->getDirectoryFromFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 69
    :cond_1
    if-nez v0, :cond_2

    .line 70
    iget-object v0, p0, Lcom/androidemu/nes/FileChooser;->sdcardDir:Ljava/io/File;

    .line 71
    :cond_2
    invoke-direct {p0, v0}, Lcom/androidemu/nes/FileChooser;->changeTo(Ljava/io/File;)V

    .line 72
    return-void

    .line 64
    .end local v0    # "dir":Ljava/io/File;
    :cond_3
    invoke-virtual {p0}, Lcom/androidemu/nes/FileChooser;->getInitialPath()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 78
    invoke-virtual {p0}, Lcom/androidemu/nes/FileChooser;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f080002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method protected onFileSelected(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 126
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/androidemu/nes/FileChooser;->setResult(ILandroid/content/Intent;)V

    .line 127
    invoke-virtual {p0}, Lcom/androidemu/nes/FileChooser;->finish()V

    .line 128
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 131
    const/16 v3, 0x42

    if-ne p2, v3, :cond_0

    .line 132
    iget-object v3, p0, Lcom/androidemu/nes/FileChooser;->pathEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 134
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 135
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 136
    invoke-direct {p0, v0}, Lcom/androidemu/nes/FileChooser;->changeTo(Ljava/io/File;)V

    .line 141
    :goto_0
    const/4 v2, 0x1

    .line 144
    .end local v0    # "dir":Ljava/io/File;
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    return v2

    .line 138
    .restart local v0    # "dir":Ljava/io/File;
    .restart local v1    # "name":Ljava/lang/String;
    :cond_1
    const v3, 0x7f060007

    invoke-static {p0, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 106
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "name":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/androidemu/nes/FileChooser;->currentDir:Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 108
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    invoke-direct {p0, v0}, Lcom/androidemu/nes/FileChooser;->changeTo(Ljava/io/File;)V

    .line 112
    :goto_0
    return-void

    .line 111
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/androidemu/nes/FileChooser;->onFileSelected(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 84
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 93
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 86
    :pswitch_0
    iget-object v1, p0, Lcom/androidemu/nes/FileChooser;->currentDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/androidemu/nes/FileChooser;->changeTo(Ljava/io/File;)V

    goto :goto_0

    .line 90
    :pswitch_1
    goto :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x7f090027
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 100
    iget-object v0, p0, Lcom/androidemu/nes/FileChooser;->currentDir:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 101
    const-string v0, "currentDir"

    iget-object v1, p0, Lcom/androidemu/nes/FileChooser;->currentDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_0
    return-void
.end method
