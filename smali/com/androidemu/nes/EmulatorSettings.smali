.class public Lcom/androidemu/nes/EmulatorSettings;
.super Landroid/preference/PreferenceActivity;
.source "EmulatorSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final GAME_GRIPPER_URI:Ljava/lang/String; = "http://www.game-gripper.com"

.field private static final LEGAL_URI:Landroid/net/Uri;

.field private static final LICENSE_URI:Landroid/net/Uri;

.field private static final MARKET_URI:Ljava/lang/String; = "http://market.android.com/details?id="

.field private static final REQUEST_FDS_ROM:I = 0x65

.field private static final REQUEST_GG_ROM:I = 0x64

.field private static final REQUEST_LOAD_KEY_PROFILE:I = 0x1

.field private static final REQUEST_SAVE_KEY_PROFILE:I = 0x2

.field public static final gameKeys:[I

.field private static final gameKeysName:[I

.field public static final gameKeysPref:[Ljava/lang/String;

.field public static final gameKeysPref2:[Ljava/lang/String;


# instance fields
.field private settings:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0xf

    .line 27
    const-string v1, "file:///android_asset/copying.html"

    .line 26
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/androidemu/nes/EmulatorSettings;->LICENSE_URI:Landroid/net/Uri;

    .line 29
    const-string v1, "file:///android_asset/legal.html"

    .line 28
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/androidemu/nes/EmulatorSettings;->LEGAL_URI:Landroid/net/Uri;

    .line 40
    new-array v1, v4, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/androidemu/nes/EmulatorSettings;->gameKeys:[I

    .line 58
    new-array v1, v4, [Ljava/lang/String;

    .line 59
    const-string v2, "gamepad_up"

    aput-object v2, v1, v5

    .line 60
    const-string v2, "gamepad_down"

    aput-object v2, v1, v6

    .line 61
    const-string v2, "gamepad_left"

    aput-object v2, v1, v7

    .line 62
    const-string v2, "gamepad_right"

    aput-object v2, v1, v8

    const/4 v2, 0x4

    .line 63
    const-string v3, "gamepad_up_left"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 64
    const-string v3, "gamepad_up_right"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    .line 65
    const-string v3, "gamepad_down_left"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 66
    const-string v3, "gamepad_down_right"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    .line 67
    const-string v3, "gamepad_select"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    .line 68
    const-string v3, "gamepad_start"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    .line 69
    const-string v3, "gamepad_A"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    .line 70
    const-string v3, "gamepad_B"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    .line 71
    const-string v3, "gamepad_A_turbo"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    .line 72
    const-string v3, "gamepad_B_turbo"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    .line 73
    const-string v3, "gamepad_AB"

    aput-object v3, v1, v2

    .line 58
    sput-object v1, Lcom/androidemu/nes/EmulatorSettings;->gameKeysPref:[Ljava/lang/String;

    .line 76
    new-array v1, v4, [Ljava/lang/String;

    .line 77
    const-string v2, "gamepad2_up"

    aput-object v2, v1, v5

    .line 78
    const-string v2, "gamepad2_down"

    aput-object v2, v1, v6

    .line 79
    const-string v2, "gamepad2_left"

    aput-object v2, v1, v7

    .line 80
    const-string v2, "gamepad2_right"

    aput-object v2, v1, v8

    const/4 v2, 0x4

    .line 81
    const-string v3, "gamepad2_up_left"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 82
    const-string v3, "gamepad2_up_right"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    .line 83
    const-string v3, "gamepad2_down_left"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 84
    const-string v3, "gamepad2_down_right"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    .line 85
    const-string v3, "gamepad2_select"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    .line 86
    const-string v3, "gamepad2_start"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    .line 87
    const-string v3, "gamepad2_A"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    .line 88
    const-string v3, "gamepad2_B"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    .line 89
    const-string v3, "gamepad2_A_turbo"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    .line 90
    const-string v3, "gamepad2_B_turbo"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    .line 91
    const-string v3, "gamepad2_AB"

    aput-object v3, v1, v2

    .line 76
    sput-object v1, Lcom/androidemu/nes/EmulatorSettings;->gameKeysPref2:[Ljava/lang/String;

    .line 94
    new-array v1, v4, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/androidemu/nes/EmulatorSettings;->gameKeysName:[I

    .line 113
    sget-object v1, Lcom/androidemu/nes/EmulatorSettings;->gameKeys:[I

    array-length v0, v1

    .line 114
    .local v0, "n":I
    sget-object v1, Lcom/androidemu/nes/EmulatorSettings;->gameKeysPref:[Ljava/lang/String;

    array-length v1, v1

    if-ne v1, v0, :cond_0

    .line 115
    sget-object v1, Lcom/androidemu/nes/EmulatorSettings;->gameKeysPref2:[Ljava/lang/String;

    array-length v1, v1

    if-ne v1, v0, :cond_0

    .line 116
    sget-object v1, Lcom/androidemu/nes/EmulatorSettings;->gameKeysName:[I

    array-length v1, v1

    if-eq v1, v0, :cond_1

    .line 117
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Key configurations are not consistent"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 23
    :cond_1
    return-void

    .line 40
    nop

    :array_0
    .array-data 4
        0x10
        0x20
        0x40
        0x80
        0x50
        0x90
        0x60
        0xa0
        0x4
        0x8
        0x1
        0x2
        0x100
        0x200
        0x3
    .end array-data

    .line 94
    :array_1
    .array-data 4
        0x7f07009f
        0x7f0700a0
        0x7f0700a1
        0x7f0700a2
        0x7f0700a3
        0x7f0700a4
        0x7f0700a5
        0x7f0700a6
        0x7f0700a7
        0x7f0700a8
        0x7f0700a9
        0x7f0700aa
        0x7f0700ab
        0x7f0700ac
        0x7f0700ad
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private enableDisablePad2(Ljava/lang/String;)V
    .locals 2
    .param p1, "device"    # Ljava/lang/String;

    .prologue
    .line 155
    const-string v0, "gamepad2"

    invoke-virtual {p0, v0}, Lcom/androidemu/nes/EmulatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const-string v1, "gamepad"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 156
    return-void
.end method

.method private static getAllKeyPrefs()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v1, Lcom/androidemu/nes/EmulatorSettings;->gameKeysPref:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 124
    sget-object v1, Lcom/androidemu/nes/EmulatorSettings;->gameKeysPref2:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 125
    return-object v0
.end method

.method private getKeyMappings()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 133
    .local v1, "mappings":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/androidemu/nes/EmulatorSettings;->getAllKeyPrefs()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 137
    return-object v1

    .line 133
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 134
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/androidemu/nes/EmulatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/androidemu/nes/KeyPreference;

    .line 135
    .local v2, "pref":Lcom/androidemu/nes/KeyPreference;
    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {v2}, Lcom/androidemu/nes/KeyPreference;->getKeyValue()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v0, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private setKeyMappings(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/androidemu/nes/EmulatorSettings;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 143
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/androidemu/nes/EmulatorSettings;->getAllKeyPrefs()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 151
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 152
    return-void

    .line 143
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 144
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 145
    .local v3, "value":Ljava/lang/Integer;
    if-eqz v3, :cond_0

    .line 146
    invoke-virtual {p0, v1}, Lcom/androidemu/nes/EmulatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/androidemu/nes/KeyPreference;

    .line 147
    .local v2, "pref":Lcom/androidemu/nes/KeyPreference;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/androidemu/nes/KeyPreference;->setKey(I)V

    .line 148
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "request"    # I
    .param p2, "result"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 227
    sparse-switch p1, :sswitch_data_0

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 229
    :sswitch_0
    if-ne p2, v1, :cond_0

    .line 230
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "rom":Ljava/lang/String;
    iget-object v1, p0, Lcom/androidemu/nes/EmulatorSettings;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "gameGenieRom"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 232
    const-string v1, "gameGenieRom"

    invoke-virtual {p0, v1}, Lcom/androidemu/nes/EmulatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 237
    .end local v0    # "rom":Ljava/lang/String;
    :sswitch_1
    if-ne p2, v1, :cond_0

    .line 238
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 239
    .restart local v0    # "rom":Ljava/lang/String;
    iget-object v1, p0, Lcom/androidemu/nes/EmulatorSettings;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "fdsRom"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 240
    const-string v1, "fdsRom"

    invoke-virtual {p0, v1}, Lcom/androidemu/nes/EmulatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 245
    .end local v0    # "rom":Ljava/lang/String;
    :sswitch_2
    if-ne p2, v1, :cond_0

    .line 247
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/androidemu/nes/KeyProfilesActivity;->loadProfile(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 246
    invoke-direct {p0, v1}, Lcom/androidemu/nes/EmulatorSettings;->setKeyMappings(Ljava/util/Map;)V

    goto :goto_0

    .line 252
    :sswitch_3
    if-ne p2, v1, :cond_0

    .line 253
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 254
    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorSettings;->getKeyMappings()Ljava/util/Map;

    move-result-object v2

    .line 253
    invoke-static {p0, v1, v2}, Lcom/androidemu/nes/KeyProfilesActivity;->saveProfile(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 227
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x0

    .line 160
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 161
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    iput-object v6, p0, Lcom/androidemu/nes/EmulatorSettings;->settings:Landroid/content/SharedPreferences;

    .line 164
    iget-object v6, p0, Lcom/androidemu/nes/EmulatorSettings;->settings:Landroid/content/SharedPreferences;

    const-string v7, "vkeypadLayout"

    invoke-interface {v6, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 165
    iget-object v6, p0, Lcom/androidemu/nes/EmulatorSettings;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 166
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "vkeypadLayout"

    .line 167
    invoke-static {p0}, Lcom/androidemu/nes/DefaultPreferences;->getVKeypadLayout(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 166
    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 168
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 171
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    const v6, 0x7f070018

    invoke-virtual {p0, v6}, Lcom/androidemu/nes/EmulatorSettings;->setTitle(I)V

    .line 172
    const/high16 v6, 0x7f040000

    invoke-virtual {p0, v6}, Lcom/androidemu/nes/EmulatorSettings;->addPreferencesFromResource(I)V

    .line 174
    iget-object v6, p0, Lcom/androidemu/nes/EmulatorSettings;->settings:Landroid/content/SharedPreferences;

    const-string v7, "secondController"

    const-string v8, "none"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/androidemu/nes/EmulatorSettings;->enableDisablePad2(Ljava/lang/String;)V

    .line 177
    iget-object v6, p0, Lcom/androidemu/nes/EmulatorSettings;->settings:Landroid/content/SharedPreferences;

    const-string v7, "gameGenieRom"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 178
    .local v5, "rom":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 179
    const-string v6, "gameGenieRom"

    invoke-virtual {p0, v6}, Lcom/androidemu/nes/EmulatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 182
    :cond_1
    iget-object v6, p0, Lcom/androidemu/nes/EmulatorSettings;->settings:Landroid/content/SharedPreferences;

    const-string v7, "fdsRom"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 183
    if-eqz v5, :cond_2

    .line 184
    const-string v6, "fdsRom"

    invoke-virtual {p0, v6}, Lcom/androidemu/nes/EmulatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 186
    :cond_2
    invoke-static {p0}, Lcom/androidemu/nes/DefaultPreferences;->getKeyMappings(Landroid/content/Context;)[I

    move-result-object v0

    .line 189
    .local v0, "defaultKeys":[I
    const-string v6, "gamepad1"

    invoke-virtual {p0, v6}, Lcom/androidemu/nes/EmulatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 190
    .local v2, "group":Landroid/preference/PreferenceGroup;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    sget-object v6, Lcom/androidemu/nes/EmulatorSettings;->gameKeysPref:[Ljava/lang/String;

    array-length v6, v6

    if-lt v3, v6, :cond_4

    .line 198
    const-string v6, "gamepad2"

    invoke-virtual {p0, v6}, Lcom/androidemu/nes/EmulatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .end local v2    # "group":Landroid/preference/PreferenceGroup;
    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 199
    .restart local v2    # "group":Landroid/preference/PreferenceGroup;
    const/4 v3, 0x0

    :goto_1
    sget-object v6, Lcom/androidemu/nes/EmulatorSettings;->gameKeysPref2:[Ljava/lang/String;

    array-length v6, v6

    if-lt v3, v6, :cond_5

    .line 206
    invoke-static {p0}, Lcom/androidemu/nes/wrapper/Wrapper;->getMultitouchCaps(Landroid/content/Context;)I

    move-result v6

    if-nez v6, :cond_3

    .line 208
    const-string v6, "enableVKeypad"

    invoke-virtual {p0, v6}, Lcom/androidemu/nes/EmulatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 209
    const v7, 0x7f070068

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setSummary(I)V

    .line 211
    :cond_3
    const-string v6, "accurateRendering"

    invoke-virtual {p0, v6}, Lcom/androidemu/nes/EmulatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 212
    const-string v6, "secondController"

    invoke-virtual {p0, v6}, Lcom/androidemu/nes/EmulatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 214
    const-string v6, "license"

    invoke-virtual {p0, v6}, Lcom/androidemu/nes/EmulatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    .line 215
    const-class v8, Lcom/androidemu/nes/HelpActivity;

    invoke-direct {v7, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v8, Lcom/androidemu/nes/EmulatorSettings;->LICENSE_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v7

    .line 214
    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 216
    const-string v6, "legal"

    invoke-virtual {p0, v6}, Lcom/androidemu/nes/EmulatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    .line 217
    const-class v8, Lcom/androidemu/nes/HelpActivity;

    invoke-direct {v7, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v8, Lcom/androidemu/nes/EmulatorSettings;->LEGAL_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v7

    .line 216
    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 218
    const-string v6, "upgrade"

    invoke-virtual {p0, v6}, Lcom/androidemu/nes/EmulatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    .line 219
    const-string v8, "android.intent.action.VIEW"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "http://market.android.com/details?id="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/androidemu/nes/EmulatorSettings;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 218
    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 221
    const-string v6, "gameGripper"

    invoke-virtual {p0, v6}, Lcom/androidemu/nes/EmulatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    .line 222
    const-string v8, "android.intent.action.VIEW"

    const-string v9, "http://www.game-gripper.com"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 221
    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 223
    return-void

    .line 191
    :cond_4
    new-instance v4, Lcom/androidemu/nes/KeyPreference;

    invoke-direct {v4, p0}, Lcom/androidemu/nes/KeyPreference;-><init>(Landroid/content/Context;)V

    .line 192
    .local v4, "pref":Lcom/androidemu/nes/KeyPreference;
    sget-object v6, Lcom/androidemu/nes/EmulatorSettings;->gameKeysPref:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v4, v6}, Lcom/androidemu/nes/KeyPreference;->setKey(Ljava/lang/String;)V

    .line 193
    sget-object v6, Lcom/androidemu/nes/EmulatorSettings;->gameKeysName:[I

    aget v6, v6, v3

    invoke-virtual {v4, v6}, Lcom/androidemu/nes/KeyPreference;->setTitle(I)V

    .line 194
    aget v6, v0, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/androidemu/nes/KeyPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 195
    invoke-virtual {v2, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 190
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 200
    .end local v4    # "pref":Lcom/androidemu/nes/KeyPreference;
    :cond_5
    new-instance v4, Lcom/androidemu/nes/KeyPreference;

    invoke-direct {v4, p0}, Lcom/androidemu/nes/KeyPreference;-><init>(Landroid/content/Context;)V

    .line 201
    .restart local v4    # "pref":Lcom/androidemu/nes/KeyPreference;
    sget-object v6, Lcom/androidemu/nes/EmulatorSettings;->gameKeysPref2:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v4, v6}, Lcom/androidemu/nes/KeyPreference;->setKey(Ljava/lang/String;)V

    .line 202
    sget-object v6, Lcom/androidemu/nes/EmulatorSettings;->gameKeysName:[I

    aget v6, v6, v3

    invoke-virtual {v4, v6}, Lcom/androidemu/nes/KeyPreference;->setTitle(I)V

    .line 203
    invoke-virtual {v2, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 199
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 316
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "key":Ljava/lang/String;
    const-string v1, "accurateRendering"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 319
    const v1, 0x7f070059

    .line 320
    const/4 v2, 0x0

    .line 319
    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 320
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 325
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 322
    :cond_1
    const-string v1, "secondController"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/androidemu/nes/EmulatorSettings;->enableDisablePad2(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 11
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v5, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 263
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, "key":Ljava/lang/String;
    const-string v4, "gameGenieRom"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 266
    iget-object v4, p0, Lcom/androidemu/nes/EmulatorSettings;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v4, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 267
    .local v2, "path":Ljava/lang/String;
    const/4 v3, 0x0

    .line 268
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 269
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 271
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/androidemu/nes/FileChooser;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 272
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 273
    const-string v4, "title"

    .line 274
    invoke-virtual {p0}, Lcom/androidemu/nes/EmulatorSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07008a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 273
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    const-string v4, "filters"

    .line 276
    new-array v5, v10, [Ljava/lang/String;

    const-string v6, ".nes"

    aput-object v6, v5, v9

    const-string v6, ".rom"

    aput-object v6, v5, v7

    const-string v6, ".bin"

    aput-object v6, v5, v8

    .line 275
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const/16 v4, 0x64

    invoke-virtual {p0, v0, v4}, Lcom/androidemu/nes/EmulatorSettings;->startActivityForResult(Landroid/content/Intent;I)V

    move v4, v7

    .line 312
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    :goto_0
    return v4

    .line 281
    :cond_1
    const-string v4, "fdsRom"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 282
    iget-object v4, p0, Lcom/androidemu/nes/EmulatorSettings;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v4, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 283
    .restart local v2    # "path":Ljava/lang/String;
    const/4 v3, 0x0

    .line 284
    .restart local v3    # "uri":Landroid/net/Uri;
    if-eqz v2, :cond_2

    .line 285
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 287
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/androidemu/nes/FileChooser;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 288
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 289
    const-string v4, "title"

    .line 290
    invoke-virtual {p0}, Lcom/androidemu/nes/EmulatorSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07008b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 289
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    const-string v4, "filters"

    .line 292
    new-array v5, v10, [Ljava/lang/String;

    const-string v6, ".nes"

    aput-object v6, v5, v9

    const-string v6, ".rom"

    aput-object v6, v5, v7

    const-string v6, ".bin"

    aput-object v6, v5, v8

    .line 291
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    const/16 v4, 0x65

    invoke-virtual {p0, v0, v4}, Lcom/androidemu/nes/EmulatorSettings;->startActivityForResult(Landroid/content/Intent;I)V

    move v4, v7

    .line 295
    goto :goto_0

    .line 298
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_3
    const-string v4, "loadKeyProfile"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 299
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/androidemu/nes/KeyProfilesActivity;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 300
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v4, "title"

    .line 301
    const v5, 0x7f07003b

    invoke-virtual {p0, v5}, Lcom/androidemu/nes/EmulatorSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 300
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    invoke-virtual {p0, v0, v7}, Lcom/androidemu/nes/EmulatorSettings;->startActivityForResult(Landroid/content/Intent;I)V

    move v4, v7

    .line 303
    goto :goto_0

    .line 305
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    const-string v4, "saveKeyProfile"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 306
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/androidemu/nes/KeyProfilesActivity;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 307
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v4, "title"

    .line 308
    const v5, 0x7f07003c

    invoke-virtual {p0, v5}, Lcom/androidemu/nes/EmulatorSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 307
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    invoke-virtual {p0, v0, v8}, Lcom/androidemu/nes/EmulatorSettings;->startActivityForResult(Landroid/content/Intent;I)V

    move v4, v7

    .line 310
    goto/16 :goto_0

    .line 312
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto/16 :goto_0
.end method
