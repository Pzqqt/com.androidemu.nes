.class public Lcom/androidemu/nes/MainActivity;
.super Lcom/androidemu/nes/FileChooser;
.source "MainActivity.java"


# static fields
.field private static final DIALOG_SHORTCUT:I = 0x1

.field private static final HELP_URI:Landroid/net/Uri;

.field private static emulatorIntent:Landroid/content/Intent;


# instance fields
.field private creatingShortcut:Z

.field private settings:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "file:///android_asset/faq.html"

    .line 23
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/androidemu/nes/MainActivity;->HELP_URI:Landroid/net/Uri;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/androidemu/nes/FileChooser;-><init>()V

    return-void
.end method

.method static synthetic access$0()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/androidemu/nes/MainActivity;->emulatorIntent:Landroid/content/Intent;

    return-object v0
.end method

.method private createShortcutNameDialog()Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 169
    new-instance v0, Lcom/androidemu/nes/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/androidemu/nes/MainActivity$1;-><init>(Lcom/androidemu/nes/MainActivity;)V

    .line 188
    .local v0, "l":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 189
    const v2, 0x7f07000c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 190
    invoke-virtual {p0}, Lcom/androidemu/nes/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030009

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 191
    const v2, 0x104000a

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 192
    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 193
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 188
    return-object v1
.end method

.method private static getSaveFile(Ljava/io/File;)Ljava/io/File;
    .locals 4
    .param p0, "rom"    # Ljava/io/File;

    .prologue
    .line 83
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "name":Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 85
    .local v0, "dot":I
    if-ltz v0, :cond_0

    .line 86
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 87
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".sav"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method protected getFileFilter()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/androidemu/nes/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f060000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getInitialPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/androidemu/nes/MainActivity;->settings:Landroid/content/SharedPreferences;

    const-string v1, "lastGame"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 94
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 96
    .local v1, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;, "Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    iget v2, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v2}, Lcom/androidemu/nes/MainActivity;->getFile(I)Ljava/io/File;

    move-result-object v0

    .line 98
    .local v0, "file":Ljava/io/File;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 112
    invoke-super {p0, p1}, Lcom/androidemu/nes/FileChooser;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 100
    :pswitch_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    iget v2, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v2}, Lcom/androidemu/nes/MainActivity;->removeFile(I)V

    :cond_0
    move v2, v3

    .line 102
    goto :goto_0

    .line 105
    :pswitch_1
    invoke-static {v0}, Lcom/androidemu/nes/MainActivity;->getSaveFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move v2, v3

    .line 106
    goto :goto_0

    .line 109
    :pswitch_2
    invoke-static {v0}, Lcom/androidemu/Cheats;->getCheatsFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move v2, v3

    .line 110
    goto :goto_0

    .line 98
    :pswitch_data_0
    .packed-switch 0x7f090029
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    const-string v0, "MainActivity"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/androidemu/nes/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/androidemu/nes/MainActivity;->settings:Landroid/content/SharedPreferences;

    .line 36
    invoke-super {p0, p1}, Lcom/androidemu/nes/FileChooser;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/androidemu/nes/MainActivity;->setVolumeControlStream(I)V

    .line 38
    const v0, 0x7f070005

    invoke-virtual {p0, v0}, Lcom/androidemu/nes/MainActivity;->setTitle(I)V

    .line 39
    invoke-virtual {p0}, Lcom/androidemu/nes/MainActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 41
    const-string v0, "android.intent.action.CREATE_SHORTCUT"

    .line 42
    invoke-virtual {p0}, Lcom/androidemu/nes/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/androidemu/nes/MainActivity;->creatingShortcut:Z

    .line 43
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 73
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v2, v0

    .line 74
    .local v2, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;, "Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    iget v3, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0, v3}, Lcom/androidemu/nes/MainActivity;->getFile(I)Ljava/io/File;

    move-result-object v1

    .line 75
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 79
    invoke-virtual {p0}, Lcom/androidemu/nes/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    const v4, 0x7f080005

    invoke-virtual {v3, v4, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 117
    packed-switch p1, :pswitch_data_0

    .line 121
    invoke-super {p0, p1}, Lcom/androidemu/nes/FileChooser;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 119
    :pswitch_0
    invoke-direct {p0}, Lcom/androidemu/nes/MainActivity;->createShortcutNameDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/androidemu/nes/FileChooser;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 49
    iget-boolean v0, p0, Lcom/androidemu/nes/MainActivity;->creatingShortcut:Z

    if-nez v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/androidemu/nes/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f080004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 51
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onFileSelected(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 154
    iget-object v1, p0, Lcom/androidemu/nes/MainActivity;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 155
    const-string v2, "lastGame"

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 157
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    .line 158
    const-class v2, Lcom/androidemu/nes/EmulatorActivity;

    .line 157
    invoke-direct {v0, v1, p1, p0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 159
    .local v0, "intent":Landroid/content/Intent;
    iget-boolean v1, p0, Lcom/androidemu/nes/MainActivity;->creatingShortcut:Z

    if-nez v1, :cond_0

    .line 160
    invoke-virtual {p0, v0}, Lcom/androidemu/nes/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 165
    :goto_0
    return-void

    .line 162
    :cond_0
    sput-object v0, Lcom/androidemu/nes/MainActivity;->emulatorIntent:Landroid/content/Intent;

    .line 163
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/androidemu/nes/MainActivity;->showDialog(I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 56
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 66
    invoke-super {p0, p1}, Lcom/androidemu/nes/FileChooser;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 58
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/androidemu/nes/HelpActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    sget-object v1, Lcom/androidemu/nes/MainActivity;->HELP_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 58
    invoke-virtual {p0, v0}, Lcom/androidemu/nes/MainActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v2

    .line 60
    goto :goto_0

    .line 63
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/androidemu/nes/EmulatorSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/androidemu/nes/MainActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v2

    .line 64
    goto :goto_0

    .line 56
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090018 -> :sswitch_1
        0x7f090028 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 126
    packed-switch p1, :pswitch_data_0

    .line 139
    :goto_0
    return-void

    .line 128
    :pswitch_0
    sget-object v3, Lcom/androidemu/nes/MainActivity;->emulatorIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "name":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 130
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 131
    .local v0, "dot":I
    if-lez v0, :cond_0

    .line 132
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 134
    :cond_0
    const v3, 0x7f09000f

    invoke-virtual {p2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 135
    .local v2, "v":Landroid/widget/EditText;
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 136
    invoke-virtual {v2}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
