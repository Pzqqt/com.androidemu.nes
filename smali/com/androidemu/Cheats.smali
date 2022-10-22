.class public Lcom/androidemu/Cheats;
.super Ljava/lang/Object;
.source "Cheats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidemu/Cheats$Item;
    }
.end annotation


# static fields
.field private static final XML_ENCODING:Ljava/lang/String; = "UTF-8"


# instance fields
.field private file:Ljava/io/File;

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/androidemu/Cheats$Item;",
            ">;"
        }
    .end annotation
.end field

.field private modified:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "romFile"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/androidemu/Cheats;->items:Ljava/util/ArrayList;

    .line 38
    move-object v1, p1

    .line 39
    .local v1, "path":Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 40
    .local v0, "dot":I
    if-ltz v0, :cond_0

    .line 41
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 42
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".cht"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 44
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/androidemu/Cheats;->file:Ljava/io/File;

    .line 45
    invoke-direct {p0}, Lcom/androidemu/Cheats;->load()V

    .line 46
    return-void
.end method

.method private add(Ljava/lang/String;Ljava/lang/String;Z)Lcom/androidemu/Cheats$Item;
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "enabled"    # Z

    .prologue
    const/4 v0, 0x0

    .line 64
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-object v0

    .line 67
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p0, p1}, Lcom/androidemu/Cheats;->nativeAdd(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    :cond_2
    const-string v1, ""

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 72
    const/4 p2, 0x0

    .line 74
    :cond_3
    new-instance v0, Lcom/androidemu/Cheats$Item;

    invoke-direct {v0, p0}, Lcom/androidemu/Cheats$Item;-><init>(Lcom/androidemu/Cheats;)V

    .line 75
    .local v0, "c":Lcom/androidemu/Cheats$Item;
    iput-boolean p3, v0, Lcom/androidemu/Cheats$Item;->enabled:Z

    .line 76
    iput-object p1, v0, Lcom/androidemu/Cheats$Item;->code:Ljava/lang/String;

    .line 77
    iput-object p2, v0, Lcom/androidemu/Cheats$Item;->name:Ljava/lang/String;

    .line 78
    iget-object v1, p0, Lcom/androidemu/Cheats;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private load()V
    .locals 13

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 107
    const/4 v4, 0x0

    .line 109
    .local v4, "in":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    iget-object v11, p0, Lcom/androidemu/Cheats;->file:Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .local v5, "in":Ljava/io/BufferedInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 112
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v10, "UTF-8"

    invoke-interface {v7, v5, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 114
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 115
    .local v3, "event":I
    :goto_0
    if-eq v3, v8, :cond_2

    .line 116
    const/4 v10, 0x2

    if-ne v3, v10, :cond_0

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "item"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 118
    const/4 v10, 0x0

    const-string v11, "code"

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "code":Ljava/lang/String;
    const/4 v10, 0x0

    const-string v11, "name"

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 120
    .local v6, "name":Ljava/lang/String;
    const-string v10, "true"

    const/4 v11, 0x0

    const-string v12, "disabled"

    invoke-interface {v7, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    move v2, v8

    .line 122
    .local v2, "enabled":Z
    :goto_1
    invoke-direct {p0, v0, v6, v2}, Lcom/androidemu/Cheats;->add(Ljava/lang/String;Ljava/lang/String;Z)Lcom/androidemu/Cheats$Item;

    .line 124
    .end local v0    # "code":Ljava/lang/String;
    .end local v2    # "enabled":Z
    .end local v6    # "name":Ljava/lang/String;
    :cond_0
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    goto :goto_0

    .restart local v0    # "code":Ljava/lang/String;
    .restart local v6    # "name":Ljava/lang/String;
    :cond_1
    move v2, v9

    .line 120
    goto :goto_1

    .line 127
    .end local v0    # "code":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    :cond_2
    if-eqz v5, :cond_3

    .line 128
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 136
    .end local v3    # "event":I
    .end local v5    # "in":Ljava/io/BufferedInputStream;
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_3
    :goto_2
    iput-boolean v9, p0, Lcom/androidemu/Cheats;->modified:Z

    .line 137
    return-void

    .line 127
    .restart local v4    # "in":Ljava/io/BufferedInputStream;
    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v4, :cond_4

    .line 128
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V

    :cond_4
    throw v8
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 130
    :catch_0
    move-exception v8

    goto :goto_2

    .line 132
    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v3    # "event":I
    .restart local v5    # "in":Ljava/io/BufferedInputStream;
    .restart local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v1

    move-object v4, v5

    .line 133
    .end local v3    # "event":I
    .end local v5    # "in":Ljava/io/BufferedInputStream;
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v4    # "in":Ljava/io/BufferedInputStream;
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 132
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    goto :goto_4

    .line 130
    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v3    # "event":I
    .restart local v5    # "in":Ljava/io/BufferedInputStream;
    .restart local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_3
    move-exception v8

    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedInputStream;
    .restart local v4    # "in":Ljava/io/BufferedInputStream;
    goto :goto_2

    .line 127
    .end local v3    # "event":I
    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "in":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "in":Ljava/io/BufferedInputStream;
    .restart local v4    # "in":Ljava/io/BufferedInputStream;
    goto :goto_3
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)Lcom/androidemu/Cheats$Item;
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 57
    invoke-direct {p0, p1, p2, v1}, Lcom/androidemu/Cheats;->add(Ljava/lang/String;Ljava/lang/String;Z)Lcom/androidemu/Cheats$Item;

    move-result-object v0

    .line 58
    .local v0, "c":Lcom/androidemu/Cheats$Item;
    if-eqz v0, :cond_0

    .line 59
    iput-boolean v1, p0, Lcom/androidemu/Cheats;->modified:Z

    .line 60
    :cond_0
    return-object v0
.end method

.method public destroy()V
    .locals 3

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/androidemu/Cheats;->save()V

    .line 183
    iget-object v2, p0, Lcom/androidemu/Cheats;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "i":I
    :cond_0
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    .line 184
    iget-object v2, p0, Lcom/androidemu/Cheats;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidemu/Cheats$Item;

    .line 185
    .local v0, "c":Lcom/androidemu/Cheats$Item;
    iget-boolean v2, v0, Lcom/androidemu/Cheats$Item;->enabled:Z

    if-eqz v2, :cond_0

    .line 186
    iget-object v2, v0, Lcom/androidemu/Cheats$Item;->code:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/androidemu/Cheats;->nativeRemove(Ljava/lang/String;)V

    goto :goto_0

    .line 188
    .end local v0    # "c":Lcom/androidemu/Cheats$Item;
    :cond_1
    iget-object v2, p0, Lcom/androidemu/Cheats;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 189
    return-void
.end method

.method public enable(IZ)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 92
    iget-object v1, p0, Lcom/androidemu/Cheats;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidemu/Cheats$Item;

    .line 93
    .local v0, "c":Lcom/androidemu/Cheats$Item;
    iget-boolean v1, v0, Lcom/androidemu/Cheats$Item;->enabled:Z

    if-ne v1, p2, :cond_0

    .line 103
    :goto_0
    return-void

    .line 96
    :cond_0
    iput-boolean p2, v0, Lcom/androidemu/Cheats$Item;->enabled:Z

    .line 97
    if-eqz p2, :cond_1

    .line 98
    iget-object v1, v0, Lcom/androidemu/Cheats$Item;->code:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/androidemu/Cheats;->nativeAdd(Ljava/lang/String;)Z

    .line 102
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/androidemu/Cheats;->modified:Z

    goto :goto_0

    .line 100
    :cond_1
    iget-object v1, v0, Lcom/androidemu/Cheats$Item;->code:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/androidemu/Cheats;->nativeRemove(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final getAll()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/androidemu/Cheats$Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/androidemu/Cheats;->items:Ljava/util/ArrayList;

    return-object v0
.end method

.method public native nativeAdd(Ljava/lang/String;)Z
.end method

.method public native nativeRemove(Ljava/lang/String;)V
.end method

.method public remove(I)V
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 83
    iget-object v1, p0, Lcom/androidemu/Cheats;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidemu/Cheats$Item;

    .line 84
    .local v0, "c":Lcom/androidemu/Cheats$Item;
    iget-boolean v1, v0, Lcom/androidemu/Cheats$Item;->enabled:Z

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, v0, Lcom/androidemu/Cheats$Item;->code:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/androidemu/Cheats;->nativeRemove(Ljava/lang/String;)V

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/androidemu/Cheats;->items:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 88
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/androidemu/Cheats;->modified:Z

    .line 89
    return-void
.end method

.method public save()V
    .locals 8

    .prologue
    .line 140
    iget-boolean v5, p0, Lcom/androidemu/Cheats;->modified:Z

    if-nez v5, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v5, p0, Lcom/androidemu/Cheats;->items:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/androidemu/Cheats;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_0

    .line 148
    :cond_2
    const/4 v2, 0x0

    .line 150
    .local v2, "out":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v6, p0, Lcom/androidemu/Cheats;->file:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 152
    .end local v2    # "out":Ljava/io/BufferedOutputStream;
    .local v3, "out":Ljava/io/BufferedOutputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    .line 153
    .local v4, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string v5, "UTF-8"

    invoke-interface {v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 154
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 155
    const/4 v5, 0x0

    const-string v6, "cheats"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 156
    iget-object v5, p0, Lcom/androidemu/Cheats;->items:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/androidemu/Cheats$Item;

    .line 157
    .local v0, "c":Lcom/androidemu/Cheats$Item;
    const/4 v5, 0x0

    const-string v6, "item"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 159
    iget-boolean v5, v0, Lcom/androidemu/Cheats$Item;->enabled:Z

    if-nez v5, :cond_3

    .line 160
    const/4 v5, 0x0

    const-string v6, "disabled"

    const-string v7, "true"

    invoke-interface {v4, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 161
    :cond_3
    const/4 v5, 0x0

    const-string v6, "code"

    iget-object v7, v0, Lcom/androidemu/Cheats$Item;->code:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 162
    iget-object v5, v0, Lcom/androidemu/Cheats$Item;->name:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 163
    const/4 v5, 0x0

    const-string v6, "name"

    iget-object v7, v0, Lcom/androidemu/Cheats$Item;->name:Ljava/lang/String;

    invoke-interface {v4, v5, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 165
    :cond_4
    const/4 v5, 0x0

    const-string v6, "item"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 171
    .end local v0    # "c":Lcom/androidemu/Cheats$Item;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catchall_0
    move-exception v5

    move-object v2, v3

    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    .restart local v2    # "out":Ljava/io/BufferedOutputStream;
    :goto_2
    if-eqz v2, :cond_5

    .line 172
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    :cond_5
    throw v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 174
    :catch_0
    move-exception v5

    .line 177
    .end local v2    # "out":Ljava/io/BufferedOutputStream;
    :cond_6
    :goto_3
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/androidemu/Cheats;->modified:Z

    goto :goto_0

    .line 167
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "out":Ljava/io/BufferedOutputStream;
    .restart local v4    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :cond_7
    const/4 v5, 0x0

    :try_start_3
    const-string v6, "cheats"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 168
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 171
    if-eqz v3, :cond_6

    .line 172
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 174
    :catch_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "out":Ljava/io/BufferedOutputStream;
    .restart local v2    # "out":Ljava/io/BufferedOutputStream;
    goto :goto_3

    .line 171
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v4    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catchall_1
    move-exception v5

    goto :goto_2
.end method

.method public setModified()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/androidemu/Cheats;->modified:Z

    .line 54
    return-void
.end method
