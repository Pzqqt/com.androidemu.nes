.class public Lcom/androidemu/nes/KeyProfilesActivity;
.super Landroid/app/ListActivity;
.source "KeyProfilesActivity.java"


# static fields
.field private static final DIALOG_EDIT_PROFILE:I = 0x1

.field public static final EXTRA_TITLE:Ljava/lang/String; = "title"

.field private static final MENU_ITEM_DELETE:I = 0x2

.field private static final MENU_ITEM_EDIT:I = 0x1

.field private static final XML_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static currentProfile:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/androidemu/nes/KeyProfilesActivity;->currentProfile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    sput-object p0, Lcom/androidemu/nes/KeyProfilesActivity;->currentProfile:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$2(Lcom/androidemu/nes/KeyProfilesActivity;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 226
    invoke-direct {p0, p1, p2}, Lcom/androidemu/nes/KeyProfilesActivity;->createOrRenameProfile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/androidemu/nes/KeyProfilesActivity;)V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/androidemu/nes/KeyProfilesActivity;->refresh()V

    return-void
.end method

.method private createOrRenameProfile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "oldName"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 227
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 243
    :goto_0
    return v2

    .line 230
    :cond_0
    invoke-static {p0, p2}, Lcom/androidemu/nes/KeyProfilesActivity;->getProfileFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 232
    .local v0, "newFile":Ljava/io/File;
    if-nez p1, :cond_1

    .line 233
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v2

    goto :goto_0

    .line 235
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 236
    const/4 v2, 0x1

    goto :goto_0

    .line 238
    :cond_2
    invoke-static {p0, p1}, Lcom/androidemu/nes/KeyProfilesActivity;->getProfileFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 239
    .local v1, "oldFile":Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 241
    .end local v1    # "oldFile":Ljava/io/File;
    :catch_0
    move-exception v2

    move v2, v3

    .line 243
    goto :goto_0
.end method

.method private static getKeyProfilesDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const-string v0, "key-profiles"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static getProfileFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 60
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/androidemu/nes/KeyProfilesActivity;->getKeyProfilesDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getProfileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "file"    # Ljava/lang/String;

    .prologue
    .line 52
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 53
    .local v0, "dot":I
    if-ltz v0, :cond_0

    .line 54
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 55
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static loadProfile(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 68
    .local v4, "mappings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 70
    .local v1, "in":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    .line 71
    new-instance v6, Ljava/io/FileInputStream;

    invoke-static {p0, p1}, Lcom/androidemu/nes/KeyProfilesActivity;->getProfileFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 70
    invoke-direct {v2, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .end local v1    # "in":Ljava/io/BufferedInputStream;
    .local v2, "in":Ljava/io/BufferedInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 74
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v6, "UTF-8"

    invoke-interface {v5, v2, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 76
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    .line 77
    .local v0, "event":I
    :goto_0
    const/4 v6, 0x1

    if-ne v0, v6, :cond_1

    .line 89
    if-eqz v2, :cond_0

    .line 90
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 94
    .end local v0    # "event":I
    .end local v2    # "in":Ljava/io/BufferedInputStream;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_0
    :goto_1
    return-object v4

    .line 78
    .restart local v0    # "event":I
    .restart local v2    # "in":Ljava/io/BufferedInputStream;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_1
    const/4 v6, 0x2

    if-ne v0, v6, :cond_2

    .line 79
    :try_start_3
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "key"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 80
    const/4 v6, 0x0

    const-string v7, "name"

    invoke-interface {v5, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v3

    .line 83
    .local v3, "keyName":Ljava/lang/String;
    :try_start_4
    new-instance v6, Ljava/lang/Integer;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v4, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 86
    .end local v3    # "keyName":Ljava/lang/String;
    :cond_2
    :goto_2
    :try_start_5
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v0

    goto :goto_0

    .line 88
    .end local v0    # "event":I
    .end local v2    # "in":Ljava/io/BufferedInputStream;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v1    # "in":Ljava/io/BufferedInputStream;
    :catchall_0
    move-exception v6

    .line 89
    :goto_3
    if-eqz v1, :cond_3

    .line 90
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 91
    :cond_3
    throw v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 92
    :catch_0
    move-exception v6

    goto :goto_1

    .end local v1    # "in":Ljava/io/BufferedInputStream;
    .restart local v0    # "event":I
    .restart local v2    # "in":Ljava/io/BufferedInputStream;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedInputStream;
    .restart local v1    # "in":Ljava/io/BufferedInputStream;
    goto :goto_1

    .line 88
    .end local v0    # "event":I
    .end local v1    # "in":Ljava/io/BufferedInputStream;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v2    # "in":Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "in":Ljava/io/BufferedInputStream;
    .restart local v1    # "in":Ljava/io/BufferedInputStream;
    goto :goto_3

    .line 84
    .end local v1    # "in":Ljava/io/BufferedInputStream;
    .restart local v0    # "event":I
    .restart local v2    # "in":Ljava/io/BufferedInputStream;
    .restart local v3    # "keyName":Ljava/lang/String;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v6

    goto :goto_2
.end method

.method private refresh()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 133
    invoke-static {p0}, Lcom/androidemu/nes/KeyProfilesActivity;->getKeyProfilesDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 134
    .local v0, "dir":Ljava/io/File;
    new-instance v4, Lcom/androidemu/nes/KeyProfilesActivity$1;

    invoke-direct {v4, p0}, Lcom/androidemu/nes/KeyProfilesActivity$1;-><init>(Lcom/androidemu/nes/KeyProfilesActivity;)V

    invoke-virtual {v0, v4}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "files":[Ljava/lang/String;
    if-nez v2, :cond_0

    .line 140
    new-array v2, v5, [Ljava/lang/String;

    .line 142
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 143
    .local v3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v4, v2

    :goto_0
    if-lt v5, v4, :cond_1

    .line 146
    sget-object v4, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 147
    new-instance v4, Landroid/widget/ArrayAdapter;

    .line 148
    const v5, 0x1090003

    invoke-direct {v4, p0, v5, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 147
    invoke-virtual {p0, v4}, Lcom/androidemu/nes/KeyProfilesActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 149
    return-void

    .line 143
    :cond_1
    aget-object v1, v2, v5

    .line 144
    .local v1, "f":Ljava/lang/String;
    invoke-static {v1}, Lcom/androidemu/nes/KeyProfilesActivity;->getProfileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method public static saveProfile(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p2, "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 102
    .local v1, "out":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    .line 103
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-static {p0, p1}, Lcom/androidemu/nes/KeyProfilesActivity;->getProfileFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 102
    invoke-direct {v2, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 105
    .end local v1    # "out":Ljava/io/BufferedOutputStream;
    .local v2, "out":Ljava/io/BufferedOutputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    .line 106
    .local v4, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string v5, "UTF-8"

    invoke-interface {v4, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 107
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 108
    const/4 v5, 0x0

    const-string v6, "key-profile"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 111
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 112
    .end local p0    # "context":Landroid/content/Context;
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 121
    const/4 v5, 0x0

    const-string v6, "key-profile"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 122
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    if-eqz v2, :cond_0

    .line 126
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 130
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v2    # "out":Ljava/io/BufferedOutputStream;
    .end local v4    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :cond_0
    :goto_1
    return-void

    .line 114
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .restart local v2    # "out":Ljava/io/BufferedOutputStream;
    .restart local v4    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :cond_1
    :try_start_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 116
    .local v3, "pairs":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    const-string v6, "key"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 117
    const/4 v5, 0x0

    const-string v6, "name"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-interface {v4, v5, v6, p0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 118
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 119
    const/4 v5, 0x0

    const-string v6, "key"

    invoke-interface {v4, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 124
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v3    # "pairs":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v4    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catchall_0
    move-exception v5

    move-object v1, v2

    .line 125
    .end local v2    # "out":Ljava/io/BufferedOutputStream;
    .restart local v1    # "out":Ljava/io/BufferedOutputStream;
    :goto_2
    if-eqz v1, :cond_2

    .line 126
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 127
    :cond_2
    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 128
    :catch_0
    move-exception v5

    goto :goto_1

    .end local v1    # "out":Ljava/io/BufferedOutputStream;
    .restart local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .restart local v2    # "out":Ljava/io/BufferedOutputStream;
    .restart local v4    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "out":Ljava/io/BufferedOutputStream;
    .restart local v1    # "out":Ljava/io/BufferedOutputStream;
    goto :goto_1

    .line 124
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v4    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local p0    # "context":Landroid/content/Context;
    :catchall_1
    move-exception v5

    goto :goto_2
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x1

    .line 191
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 193
    .local v0, "info":Landroid/widget/AdapterView$AdapterContextMenuInfo;, "Landroid/widget/AdapterView$AdapterContextMenuInfo;"
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 205
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :goto_0
    return v2

    .line 195
    :pswitch_0
    invoke-virtual {p0}, Lcom/androidemu/nes/KeyProfilesActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    iget v3, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sput-object v2, Lcom/androidemu/nes/KeyProfilesActivity;->currentProfile:Ljava/lang/String;

    .line 196
    invoke-virtual {p0, v4}, Lcom/androidemu/nes/KeyProfilesActivity;->showDialog(I)V

    move v2, v4

    .line 197
    goto :goto_0

    .line 200
    :pswitch_1
    invoke-virtual {p0}, Lcom/androidemu/nes/KeyProfilesActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    iget v3, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 201
    .local v1, "name":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/androidemu/nes/KeyProfilesActivity;->getProfileFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    invoke-direct {p0}, Lcom/androidemu/nes/KeyProfilesActivity;->refresh()V

    :cond_0
    move v2, v4

    .line 203
    goto :goto_0

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 153
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 155
    invoke-virtual {p0}, Lcom/androidemu/nes/KeyProfilesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/androidemu/nes/KeyProfilesActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 157
    invoke-virtual {p0}, Lcom/androidemu/nes/KeyProfilesActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 158
    invoke-direct {p0}, Lcom/androidemu/nes/KeyProfilesActivity;->refresh()V

    .line 159
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v2, 0x0

    .line 184
    const/4 v0, 0x1

    const v1, 0x7f070003

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 185
    const/4 v0, 0x2

    const v1, 0x7f070004

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 186
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v4, 0x0

    .line 248
    packed-switch p1, :pswitch_data_0

    .line 278
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    :goto_0
    return-object v1

    .line 251
    :pswitch_0
    new-instance v0, Lcom/androidemu/nes/KeyProfilesActivity$2;

    invoke-direct {v0, p0}, Lcom/androidemu/nes/KeyProfilesActivity$2;-><init>(Lcom/androidemu/nes/KeyProfilesActivity;)V

    .line 270
    .local v0, "l":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 271
    const v2, 0x7f070039

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 272
    invoke-virtual {p0}, Lcom/androidemu/nes/KeyProfilesActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 273
    const v3, 0x7f030007

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 272
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 274
    const v2, 0x104000a

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 275
    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 276
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 248
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
    .line 163
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 165
    invoke-virtual {p0}, Lcom/androidemu/nes/KeyProfilesActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f080003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 166
    const/4 v0, 0x1

    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 221
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "name":Ljava/lang/String;
    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/androidemu/nes/KeyProfilesActivity;->setResult(ILandroid/content/Intent;)V

    .line 223
    invoke-virtual {p0}, Lcom/androidemu/nes/KeyProfilesActivity;->finish()V

    .line 224
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 171
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 177
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 173
    :pswitch_0
    const/4 v0, 0x0

    sput-object v0, Lcom/androidemu/nes/KeyProfilesActivity;->currentProfile:Ljava/lang/String;

    .line 174
    invoke-virtual {p0, v1}, Lcom/androidemu/nes/KeyProfilesActivity;->showDialog(I)V

    move v0, v1

    .line 175
    goto :goto_0

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x7f090027
        :pswitch_0
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 210
    packed-switch p1, :pswitch_data_0

    .line 217
    :goto_0
    return-void

    .line 213
    :pswitch_0
    const v1, 0x7f09000c

    invoke-virtual {p2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 212
    check-cast v0, Landroid/widget/TextView;

    .line 214
    .local v0, "nameView":Landroid/widget/TextView;
    sget-object v1, Lcom/androidemu/nes/KeyProfilesActivity;->currentProfile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 210
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
