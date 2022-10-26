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
    .line 19
    const-string v0, "file:///android_asset/faq.html"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/androidemu/nes/MainActivity;->HELP_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/androidemu/nes/FileChooser;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/androidemu/nes/MainActivity;->emulatorIntent:Landroid/content/Intent;

    return-object v0
.end method

.method private createShortcutNameDialog()Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 121
    new-instance v0, Lcom/androidemu/nes/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/androidemu/nes/MainActivity$1;-><init>(Lcom/androidemu/nes/MainActivity;)V

    .line 141
    .local v0, "l":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f060009

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/androidemu/nes/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030009

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected getFileFilter()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/androidemu/nes/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f050000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getInitialPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/androidemu/nes/MainActivity;->settings:Landroid/content/SharedPreferences;

    const-string v1, "lastGame"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    const-string v0, "MainActivity"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/androidemu/nes/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/androidemu/nes/MainActivity;->settings:Landroid/content/SharedPreferences;

    .line 32
    invoke-super {p0, p1}, Lcom/androidemu/nes/FileChooser;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/androidemu/nes/MainActivity;->setVolumeControlStream(I)V

    .line 34
    const v0, 0x7f060005

    invoke-virtual {p0, v0}, Lcom/androidemu/nes/MainActivity;->setTitle(I)V

    .line 36
    invoke-virtual {p0}, Lcom/androidemu/nes/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/androidemu/nes/MainActivity;->creatingShortcut:Z

    .line 38
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 70
    packed-switch p1, :pswitch_data_0

    .line 74
    invoke-super {p0, p1}, Lcom/androidemu/nes/FileChooser;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 72
    :pswitch_0
    invoke-direct {p0}, Lcom/androidemu/nes/MainActivity;->createShortcutNameDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 70
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
    .line 42
    invoke-super {p0, p1}, Lcom/androidemu/nes/FileChooser;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 44
    iget-boolean v0, p0, Lcom/androidemu/nes/MainActivity;->creatingShortcut:Z

    if-nez v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/androidemu/nes/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f080004

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 46
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onFileSelected(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 107
    iget-object v1, p0, Lcom/androidemu/nes/MainActivity;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "lastGame"

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 110
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-class v2, Lcom/androidemu/nes/EmulatorActivity;

    invoke-direct {v0, v1, p1, p0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    .local v0, "intent":Landroid/content/Intent;
    iget-boolean v1, p0, Lcom/androidemu/nes/MainActivity;->creatingShortcut:Z

    if-nez v1, :cond_0

    .line 113
    invoke-virtual {p0, v0}, Lcom/androidemu/nes/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 118
    :goto_0
    return-void

    .line 115
    :cond_0
    sput-object v0, Lcom/androidemu/nes/MainActivity;->emulatorIntent:Landroid/content/Intent;

    .line 116
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/androidemu/nes/MainActivity;->showDialog(I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 51
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 65
    invoke-super {p0, p1}, Lcom/androidemu/nes/FileChooser;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 53
    :sswitch_0
    goto :goto_0

    .line 57
    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/androidemu/nes/HelpActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v2, Lcom/androidemu/nes/MainActivity;->HELP_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/androidemu/nes/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 62
    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/androidemu/nes/EmulatorSettings;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/androidemu/nes/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 51
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090019 -> :sswitch_2
        0x7f09002a -> :sswitch_0
        0x7f09002b -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 79
    packed-switch p1, :pswitch_data_0

    .line 92
    :goto_0
    return-void

    .line 81
    :pswitch_0
    sget-object v3, Lcom/androidemu/nes/MainActivity;->emulatorIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "name":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 83
    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 84
    .local v0, "dot":I
    if-lez v0, :cond_0

    .line 85
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 87
    :cond_0
    const v3, 0x7f090010

    invoke-virtual {p2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 88
    .local v2, "v":Landroid/widget/EditText;
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual {v2}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
