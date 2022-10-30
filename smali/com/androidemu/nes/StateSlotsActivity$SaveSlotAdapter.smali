.class Lcom/androidemu/nes/StateSlotsActivity$SaveSlotAdapter;
.super Landroid/widget/BaseAdapter;
.source "StateSlotsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidemu/nes/StateSlotsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveSlotAdapter"
.end annotation


# instance fields
.field private files:[Ljava/io/File;

.field final synthetic this$0:Lcom/androidemu/nes/StateSlotsActivity;


# direct methods
.method public constructor <init>(Lcom/androidemu/nes/StateSlotsActivity;Ljava/lang/String;)V
    .locals 4
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/androidemu/nes/StateSlotsActivity$SaveSlotAdapter;->this$0:Lcom/androidemu/nes/StateSlotsActivity;

    .line 138
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 136
    const/16 v1, 0xa

    new-array v1, v1, [Ljava/io/File;

    iput-object v1, p0, Lcom/androidemu/nes/StateSlotsActivity$SaveSlotAdapter;->files:[Ljava/io/File;

    .line 139
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/androidemu/nes/StateSlotsActivity$SaveSlotAdapter;->files:[Ljava/io/File;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    return-void

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/androidemu/nes/StateSlotsActivity$SaveSlotAdapter;->files:[Ljava/io/File;

    new-instance v2, Ljava/io/File;

    invoke-static {p2, v0}, Lcom/androidemu/nes/StateSlotsActivity;->getSlotFileName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v0

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public delete(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Lcom/androidemu/nes/StateSlotsActivity$SaveSlotAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 145
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/androidemu/nes/StateSlotsActivity$SaveSlotAdapter;->notifyDataSetChanged()V

    .line 147
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/androidemu/nes/StateSlotsActivity$SaveSlotAdapter;->files:[Ljava/io/File;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 158
    iget-object v0, p0, Lcom/androidemu/nes/StateSlotsActivity$SaveSlotAdapter;->files:[Ljava/io/File;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 154
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 162
    if-nez p2, :cond_0

    .line 163
    iget-object v4, p0, Lcom/androidemu/nes/StateSlotsActivity$SaveSlotAdapter;->this$0:Lcom/androidemu/nes/StateSlotsActivity;

    invoke-static {v4}, Lcom/androidemu/nes/StateSlotsActivity;->access$0(Lcom/androidemu/nes/StateSlotsActivity;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03000a

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 165
    :cond_0
    const v4, 0x7f09000f

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 166
    .local v3, "nameView":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/androidemu/nes/StateSlotsActivity$SaveSlotAdapter;->this$0:Lcom/androidemu/nes/StateSlotsActivity;

    invoke-static {v4, p1}, Lcom/androidemu/nes/StateSlotsActivity;->access$1(Lcom/androidemu/nes/StateSlotsActivity;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    const v4, 0x7f090011

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 168
    check-cast v0, Landroid/widget/TextView;

    .line 171
    .local v0, "detailView":Landroid/widget/TextView;
    const v4, 0x7f090010

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 170
    check-cast v2, Landroid/widget/ImageView;

    .line 173
    .local v2, "imageView":Landroid/widget/ImageView;
    invoke-virtual {p0, p1}, Lcom/androidemu/nes/StateSlotsActivity$SaveSlotAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 174
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 176
    const-string v4, "yyyy-MM-dd hh:mm:ss"

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    .line 175
    invoke-static {v4, v5, v6}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    invoke-static {v1}, Lcom/androidemu/nes/StateSlotsActivity;->access$2(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 182
    :goto_0
    return-object p2

    .line 179
    :cond_1
    iget-object v4, p0, Lcom/androidemu/nes/StateSlotsActivity$SaveSlotAdapter;->this$0:Lcom/androidemu/nes/StateSlotsActivity;

    const v5, 0x7f070017

    invoke-virtual {v4, v5}, Lcom/androidemu/nes/StateSlotsActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
