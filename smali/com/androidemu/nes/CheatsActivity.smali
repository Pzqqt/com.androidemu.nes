.class public Lcom/androidemu/nes/CheatsActivity;
.super Landroid/app/ListActivity;
.source "CheatsActivity.java"


# static fields
.field private static final DIALOG_EDIT_CHEAT:I = 0x1

.field private static final MENU_ITEM_DELETE:I = 0x2

.field private static final MENU_ITEM_EDIT:I = 0x1

.field private static currentCheat:Lcom/androidemu/Cheats$Item;


# instance fields
.field private adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/androidemu/Cheats$Item;",
            ">;"
        }
    .end annotation
.end field

.field private cheats:Lcom/androidemu/Cheats;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 29
    invoke-static {}, Lcom/androidemu/Emulator;->getInstance()Lcom/androidemu/Emulator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/androidemu/Emulator;->getCheats()Lcom/androidemu/Cheats;

    move-result-object v0

    iput-object v0, p0, Lcom/androidemu/nes/CheatsActivity;->cheats:Lcom/androidemu/Cheats;

    .line 22
    return-void
.end method

.method static synthetic access$0()Lcom/androidemu/Cheats$Item;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/androidemu/nes/CheatsActivity;->currentCheat:Lcom/androidemu/Cheats$Item;

    return-object v0
.end method

.method static synthetic access$1(Lcom/androidemu/Cheats$Item;)V
    .locals 0

    .prologue
    .line 31
    sput-object p0, Lcom/androidemu/nes/CheatsActivity;->currentCheat:Lcom/androidemu/Cheats$Item;

    return-void
.end method

.method static synthetic access$2(Lcom/androidemu/nes/CheatsActivity;)Lcom/androidemu/Cheats;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/androidemu/nes/CheatsActivity;->cheats:Lcom/androidemu/Cheats;

    return-object v0
.end method

.method static synthetic access$3(Lcom/androidemu/nes/CheatsActivity;)Landroid/widget/ArrayAdapter;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/androidemu/nes/CheatsActivity;->adapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$4(Lcom/androidemu/nes/CheatsActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/androidemu/nes/CheatsActivity;->addCheat(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addCheat(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v1, p0, Lcom/androidemu/nes/CheatsActivity;->cheats:Lcom/androidemu/Cheats;

    invoke-virtual {v1, p1, p2}, Lcom/androidemu/Cheats;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/androidemu/Cheats$Item;

    move-result-object v0

    .line 70
    .local v0, "c":Lcom/androidemu/Cheats$Item;
    if-nez v0, :cond_0

    .line 71
    const v1, 0x7f070048

    .line 72
    const/4 v2, 0x0

    .line 71
    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 72
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/androidemu/nes/CheatsActivity;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 77
    invoke-direct {p0}, Lcom/androidemu/nes/CheatsActivity;->syncCheckedStates()V

    goto :goto_0
.end method

.method private syncCheckedStates()V
    .locals 4

    .prologue
    .line 34
    iget-object v3, p0, Lcom/androidemu/nes/CheatsActivity;->cheats:Lcom/androidemu/Cheats;

    invoke-virtual {v3}, Lcom/androidemu/Cheats;->getAll()Ljava/util/List;

    move-result-object v1

    .line 35
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/androidemu/Cheats$Item;>;"
    invoke-virtual {p0}, Lcom/androidemu/nes/CheatsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 36
    .local v2, "listView":Landroid/widget/ListView;
    const/4 v0, 0x0

    .end local p0    # "this":Lcom/androidemu/nes/CheatsActivity;
    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 38
    return-void

    .line 37
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/androidemu/Cheats$Item;

    iget-boolean v3, p0, Lcom/androidemu/Cheats$Item;->enabled:Z

    invoke-virtual {v2, v0, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 164
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 166
    .local v0, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;, "Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 177
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 168
    :pswitch_0
    iget-object v1, p0, Lcom/androidemu/nes/CheatsActivity;->adapter:Landroid/widget/ArrayAdapter;

    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/androidemu/Cheats$Item;

    sput-object v1, Lcom/androidemu/nes/CheatsActivity;->currentCheat:Lcom/androidemu/Cheats$Item;

    .line 169
    invoke-virtual {p0, v3}, Lcom/androidemu/nes/CheatsActivity;->showDialog(I)V

    move v1, v3

    .line 170
    goto :goto_0

    .line 173
    :pswitch_1
    iget-object v1, p0, Lcom/androidemu/nes/CheatsActivity;->cheats:Lcom/androidemu/Cheats;

    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v2}, Lcom/androidemu/Cheats;->remove(I)V

    .line 174
    iget-object v1, p0, Lcom/androidemu/nes/CheatsActivity;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    move v1, v3

    .line 175
    goto :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v1, 0x7f07002a

    invoke-virtual {p0, v1}, Lcom/androidemu/nes/CheatsActivity;->setTitle(I)V

    .line 45
    const/high16 v1, 0x7f030000

    invoke-virtual {p0, v1}, Lcom/androidemu/nes/CheatsActivity;->setContentView(I)V

    .line 46
    invoke-virtual {p0}, Lcom/androidemu/nes/CheatsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/high16 v2, 0x7f090000

    invoke-virtual {p0, v2}, Lcom/androidemu/nes/CheatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 48
    new-instance v1, Landroid/widget/ArrayAdapter;

    .line 49
    const v2, 0x1090010

    .line 50
    iget-object v3, p0, Lcom/androidemu/nes/CheatsActivity;->cheats:Lcom/androidemu/Cheats;

    invoke-virtual {v3}, Lcom/androidemu/Cheats;->getAll()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 48
    iput-object v1, p0, Lcom/androidemu/nes/CheatsActivity;->adapter:Landroid/widget/ArrayAdapter;

    .line 51
    iget-object v1, p0, Lcom/androidemu/nes/CheatsActivity;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, v1}, Lcom/androidemu/nes/CheatsActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 53
    invoke-virtual {p0}, Lcom/androidemu/nes/CheatsActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 54
    .local v0, "listView":Landroid/widget/ListView;
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 55
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 56
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 58
    invoke-direct {p0}, Lcom/androidemu/nes/CheatsActivity;->syncCheckedStates()V

    .line 59
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v2, 0x0

    .line 157
    const/4 v0, 0x1

    const v1, 0x7f070003

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 158
    const/4 v0, 0x2

    const v1, 0x7f070004

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 159
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v4, 0x0

    .line 82
    packed-switch p1, :pswitch_data_0

    .line 111
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 85
    :pswitch_0
    new-instance v0, Lcom/androidemu/nes/CheatsActivity$1;

    invoke-direct {v0, p0}, Lcom/androidemu/nes/CheatsActivity$1;-><init>(Lcom/androidemu/nes/CheatsActivity;)V

    .line 103
    .local v0, "l":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 104
    const v2, 0x7f070045

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 105
    invoke-virtual {p0}, Lcom/androidemu/nes/CheatsActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 106
    const v3, 0x7f030006

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 105
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 107
    const v2, 0x104000a

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 108
    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 109
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 82
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
    .line 136
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 138
    invoke-virtual {p0}, Lcom/androidemu/nes/CheatsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f080000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 139
    const/4 v0, 0x1

    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 182
    iget-object v0, p0, Lcom/androidemu/nes/CheatsActivity;->cheats:Lcom/androidemu/Cheats;

    invoke-virtual {p1, p3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v1

    invoke-virtual {v0, p3, v1}, Lcom/androidemu/Cheats;->enable(IZ)V

    .line 183
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 144
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 150
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 146
    :pswitch_0
    const/4 v0, 0x0

    sput-object v0, Lcom/androidemu/nes/CheatsActivity;->currentCheat:Lcom/androidemu/Cheats$Item;

    .line 147
    invoke-virtual {p0, v1}, Lcom/androidemu/nes/CheatsActivity;->showDialog(I)V

    move v0, v1

    .line 148
    goto :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x7f090014
        :pswitch_0
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    const/4 v3, 0x0

    .line 116
    packed-switch p1, :pswitch_data_0

    .line 132
    :goto_0
    return-void

    .line 118
    :pswitch_0
    const v2, 0x7f09000b

    invoke-virtual {p2, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 119
    .local v0, "codeView":Landroid/widget/TextView;
    const v2, 0x7f09000a

    invoke-virtual {p2, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 120
    .local v1, "nameView":Landroid/widget/TextView;
    sget-object v2, Lcom/androidemu/nes/CheatsActivity;->currentCheat:Lcom/androidemu/Cheats$Item;

    if-nez v2, :cond_0

    .line 121
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 122
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    :goto_1
    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    goto :goto_0

    .line 125
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 126
    sget-object v2, Lcom/androidemu/nes/CheatsActivity;->currentCheat:Lcom/androidemu/Cheats$Item;

    iget-object v2, v2, Lcom/androidemu/Cheats$Item;->code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    sget-object v2, Lcom/androidemu/nes/CheatsActivity;->currentCheat:Lcom/androidemu/Cheats$Item;

    iget-object v2, v2, Lcom/androidemu/Cheats$Item;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 116
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 65
    iget-object v0, p0, Lcom/androidemu/nes/CheatsActivity;->cheats:Lcom/androidemu/Cheats;

    invoke-virtual {v0}, Lcom/androidemu/Cheats;->save()V

    .line 66
    return-void
.end method
