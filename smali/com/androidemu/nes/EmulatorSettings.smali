.class public Lcom/androidemu/nes/EmulatorSettings;
.super Landroid/preference/PreferenceActivity;
.source "EmulatorSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final ABOUT_URI:Landroid/net/Uri;

.field private static final GAME_GRIPPER_URI:Ljava/lang/String; = "https://sites.google.com/site/gamegripper"

.field private static final MARKET_URI:Ljava/lang/String; = "http://market.android.com/details?id="

.field private static final REQUEST_FDS_ROM:I = 0x65

.field private static final REQUEST_GG_ROM:I = 0x64

.field private static final REQUEST_LOAD_KEY_PROFILE:I = 0x1

.field private static final REQUEST_SAVE_KEY_PROFILE:I = 0x2

.field private static final SEARCH_ROM_URI:Ljava/lang/String; = "http://www.romfind.com/nes-roms.html?sid=YONG"

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

    .line 28
    const-string v1, "file:///android_asset/about.html"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/androidemu/nes/EmulatorSettings;->ABOUT_URI:Landroid/net/Uri;

    .line 40
    new-array v1, v4, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/androidemu/nes/EmulatorSettings;->gameKeys:[I

    .line 58
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "gamepad_up"

    aput-object v2, v1, v5

    const-string v2, "gamepad_down"

    aput-object v2, v1, v6

    const-string v2, "gamepad_left"

    aput-object v2, v1, v7

    const-string v2, "gamepad_right"

    aput-object v2, v1, v8

    const/4 v2, 0x4

    const-string v3, "gamepad_up_left"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "gamepad_up_right"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "gamepad_down_left"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "gamepad_down_right"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "gamepad_select"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "gamepad_start"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "gamepad_A"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "gamepad_B"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "gamepad_A_turbo"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "gamepad_B_turbo"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "gamepad_AB"

    aput-object v3, v1, v2

    sput-object v1, Lcom/androidemu/nes/EmulatorSettings;->gameKeysPref:[Ljava/lang/String;

    .line 76
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "gamepad2_up"

    aput-object v2, v1, v5

    const-string v2, "gamepad2_down"

    aput-object v2, v1, v6

    const-string v2, "gamepad2_left"

    aput-object v2, v1, v7

    const-string v2, "gamepad2_right"

    aput-object v2, v1, v8

    const/4 v2, 0x4

    const-string v3, "gamepad2_up_left"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "gamepad2_up_right"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "gamepad2_down_left"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "gamepad2_down_right"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "gamepad2_select"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "gamepad2_start"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "gamepad2_A"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "gamepad2_B"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "gamepad2_A_turbo"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "gamepad2_B_turbo"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "gamepad2_AB"

    aput-object v3, v1, v2

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

    sget-object v1, Lcom/androidemu/nes/EmulatorSettings;->gameKeysPref2:[Ljava/lang/String;

    array-length v1, v1

    if-ne v1, v0, :cond_0

    sget-object v1, Lcom/androidemu/nes/EmulatorSettings;->gameKeysName:[I

    array-length v1, v1

    if-eq v1, v0, :cond_1

    .line 117
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Key configurations are not consistent"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 118
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
        0x7f06009c
        0x7f06009d
        0x7f06009e
        0x7f06009f
        0x7f0600a0
        0x7f0600a1
        0x7f0600a2
        0x7f0600a3
        0x7f0600a4
        0x7f0600a5
        0x7f0600a6
        0x7f0600a7
        0x7f0600a8
        0x7f0600a9
        0x7f0600aa
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
    .line 160
    const-string v0, "gamepad2"

    invoke-virtual {p0, v0}, Lcom/androidemu/nes/EmulatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const-string v1, "gamepad"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 161
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
    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v1, Lcom/androidemu/nes/EmulatorSettings;->gameKeysPref:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 129
    sget-object v1, Lcom/androidemu/nes/EmulatorSettings;->gameKeysPref2:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 130
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
    .line 136
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 138
    .local v2, "mappings":Ljava/util/TreeMap;
    invoke-static {}, Lcom/androidemu/nes/EmulatorSettings;->getAllKeyPrefs()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 139
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/androidemu/nes/EmulatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/androidemu/nes/KeyPreference;

    .line 140
    .local v3, "pref":Lcom/androidemu/nes/KeyPreference;
    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {v3}, Lcom/androidemu/nes/KeyPreference;->getKeyValue()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v1, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 142
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "pref":Lcom/androidemu/nes/KeyPreference;
    :cond_0
    return-object v2
.end method

.method public static getSearchROMIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 121
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://www.romfind.com/nes-roms.html?sid=YONG"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
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
    .line 146
    .local p1, "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/androidemu/nes/EmulatorSettings;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 148
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/androidemu/nes/EmulatorSettings;->getAllKeyPrefs()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 149
    .local v2, "key":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 150
    .local v4, "value":Ljava/lang/Integer;
    if-eqz v4, :cond_0

    .line 151
    invoke-virtual {p0, v2}, Lcom/androidemu/nes/EmulatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/androidemu/nes/KeyPreference;

    .line 152
    .local v3, "pref":Lcom/androidemu/nes/KeyPreference;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/androidemu/nes/KeyPreference;->setKey(I)V

    .line 153
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 156
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "pref":Lcom/androidemu/nes/KeyPreference;
    .end local v4    # "value":Ljava/lang/Integer;
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 157
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "request"    # I
    .param p2, "result"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 223
    sparse-switch p1, :sswitch_data_0

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 225
    :sswitch_0
    if-ne p2, v1, :cond_0

    .line 226
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "rom":Ljava/lang/String;
    iget-object v1, p0, Lcom/androidemu/nes/EmulatorSettings;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "gameGenieRom"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 228
    const-string v1, "gameGenieRom"

    invoke-virtual {p0, v1}, Lcom/androidemu/nes/EmulatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 233
    .end local v0    # "rom":Ljava/lang/String;
    :sswitch_1
    if-ne p2, v1, :cond_0

    .line 234
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 235
    .restart local v0    # "rom":Ljava/lang/String;
    iget-object v1, p0, Lcom/androidemu/nes/EmulatorSettings;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "fdsRom"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 236
    const-string v1, "fdsRom"

    invoke-virtual {p0, v1}, Lcom/androidemu/nes/EmulatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 241
    .end local v0    # "rom":Ljava/lang/String;
    :sswitch_2
    if-ne p2, v1, :cond_0

    .line 242
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/androidemu/nes/KeyProfilesActivity;->loadProfile(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/androidemu/nes/EmulatorSettings;->setKeyMappings(Ljava/util/Map;)V

    goto :goto_0

    .line 248
    :sswitch_3
    if-ne p2, v1, :cond_0

    .line 249
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/androidemu/nes/EmulatorSettings;->getKeyMappings()Ljava/util/Map;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/androidemu/nes/KeyProfilesActivity;->saveProfile(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 223
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
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 165
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 167
    const v5, 0x7f060016

    invoke-virtual {p0, v5}, Lcom/androidemu/nes/EmulatorSettings;->setTitle(I)V

    .line 168
    const/high16 v5, 0x7f040000

    invoke-virtual {p0, v5}, Lcom/androidemu/nes/EmulatorSettings;->addPreferencesFromResource(I)V

    .line 170
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/androidemu/nes/EmulatorSettings;->settings:Landroid/content/SharedPreferences;

    .line 171
    iget-object v5, p0, Lcom/androidemu/nes/EmulatorSettings;->settings:Landroid/content/SharedPreferences;

    const-string v6, "secondController"

    const-string v7, "none"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/androidemu/nes/EmulatorSettings;->enableDisablePad2(Ljava/lang/String;)V

    .line 174
    iget-object v5, p0, Lcom/androidemu/nes/EmulatorSettings;->settings:Landroid/content/SharedPreferences;

    const-string v6, "gameGenieRom"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 175
    .local v4, "rom":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 176
    const-string v5, "gameGenieRom"

    invoke-virtual {p0, v5}, Lcom/androidemu/nes/EmulatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 179
    :cond_0
    iget-object v5, p0, Lcom/androidemu/nes/EmulatorSettings;->settings:Landroid/content/SharedPreferences;

    const-string v6, "fdsRom"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 180
    if-eqz v4, :cond_1

    .line 181
    const-string v5, "fdsRom"

    invoke-virtual {p0, v5}, Lcom/androidemu/nes/EmulatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 183
    :cond_1
    invoke-static {p0}, Lcom/androidemu/nes/DefaultPreferences;->getKeyMappings(Landroid/content/Context;)[I

    move-result-object v0

    .line 186
    .local v0, "defaultKeys":[I
    const-string v5, "gamepad1"

    invoke-virtual {p0, v5}, Lcom/androidemu/nes/EmulatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 187
    .local v1, "group":Landroid/preference/PreferenceGroup;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v5, Lcom/androidemu/nes/EmulatorSettings;->gameKeysPref:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_2

    .line 188
    new-instance v3, Lcom/androidemu/nes/KeyPreference;

    invoke-direct {v3, p0}, Lcom/androidemu/nes/KeyPreference;-><init>(Landroid/content/Context;)V

    .line 189
    .local v3, "pref":Lcom/androidemu/nes/KeyPreference;
    sget-object v5, Lcom/androidemu/nes/EmulatorSettings;->gameKeysPref:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v3, v5}, Lcom/androidemu/nes/KeyPreference;->setKey(Ljava/lang/String;)V

    .line 190
    sget-object v5, Lcom/androidemu/nes/EmulatorSettings;->gameKeysName:[I

    aget v5, v5, v2

    invoke-virtual {v3, v5}, Lcom/androidemu/nes/KeyPreference;->setTitle(I)V

    .line 191
    aget v5, v0, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/androidemu/nes/KeyPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 192
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 187
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 195
    .end local v3    # "pref":Lcom/androidemu/nes/KeyPreference;
    :cond_2
    const-string v5, "gamepad2"

    invoke-virtual {p0, v5}, Lcom/androidemu/nes/EmulatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .end local v1    # "group":Landroid/preference/PreferenceGroup;
    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 196
    .restart local v1    # "group":Landroid/preference/PreferenceGroup;
    const/4 v2, 0x0

    :goto_1
    sget-object v5, Lcom/androidemu/nes/EmulatorSettings;->gameKeysPref2:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_3

    .line 197
    new-instance v3, Lcom/androidemu/nes/KeyPreference;

    invoke-direct {v3, p0}, Lcom/androidemu/nes/KeyPreference;-><init>(Landroid/content/Context;)V

    .line 198
    .restart local v3    # "pref":Lcom/androidemu/nes/KeyPreference;
    sget-object v5, Lcom/androidemu/nes/EmulatorSettings;->gameKeysPref2:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v3, v5}, Lcom/androidemu/nes/KeyPreference;->setKey(Ljava/lang/String;)V

    .line 199
    sget-object v5, Lcom/androidemu/nes/EmulatorSettings;->gameKeysName:[I

    aget v5, v5, v2

    invoke-virtual {v3, v5}, Lcom/androidemu/nes/KeyPreference;->setTitle(I)V

    .line 200
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 196
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 203
    .end local v3    # "pref":Lcom/androidemu/nes/KeyPreference;
    :cond_3
    invoke-static {p0}, Lcom/androidemu/nes/wrapper/Wrapper;->supportsMultitouch(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 204
    const-string v5, "enableVKeypad"

    invoke-virtual {p0, v5}, Lcom/androidemu/nes/EmulatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    const v6, 0x7f060066

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 208
    :cond_4
    const-string v5, "accurateRendering"

    invoke-virtual {p0, v5}, Lcom/androidemu/nes/EmulatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 209
    const-string v5, "secondController"

    invoke-virtual {p0, v5}, Lcom/androidemu/nes/EmulatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v5, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 211
    const-string v5, "about"

    invoke-virtual {p0, v5}, Lcom/androidemu/nes/EmulatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/androidemu/nes/HelpActivity;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v7, Lcom/androidemu/nes/EmulatorSettings;->ABOUT_URI:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 213
    const-string v5, "upgrade"

    invoke-virtual {p0, v5}, Lcom/androidemu/nes/EmulatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "http://market.android.com/details?id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/androidemu/nes/EmulatorSettings;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 215

    .line 217
    const-string v5, "gameGripper"

    invoke-virtual {p0, v5}, Lcom/androidemu/nes/EmulatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    const-string v8, "https://sites.google.com/site/gamegripper"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 219
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 312
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "key":Ljava/lang/String;
    const-string v1, "accurateRendering"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 315
    const v1, 0x7f060057

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 321
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 318
    :cond_1
    const-string v1, "secondController"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
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
    const/4 v6, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v4, 0x1

    .line 259
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "key":Ljava/lang/String;
    const-string v5, "gameGenieRom"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 262
    iget-object v5, p0, Lcom/androidemu/nes/EmulatorSettings;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v5, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, "path":Ljava/lang/String;
    const/4 v3, 0x0

    .line 264
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 265
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 267
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/androidemu/nes/FileChooser;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 268
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 269
    const-string v5, "title"

    invoke-virtual {p0}, Lcom/androidemu/nes/EmulatorSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060088

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    const-string v5, "filters"

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, ".nes"

    aput-object v7, v6, v9

    const-string v7, ".rom"

    aput-object v7, v6, v4

    const-string v7, ".bin"

    aput-object v7, v6, v8

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    const/16 v5, 0x64

    invoke-virtual {p0, v0, v5}, Lcom/androidemu/nes/EmulatorSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 308
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    :goto_0
    return v4

    .line 277
    :cond_1
    const-string v5, "fdsRom"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 278
    iget-object v5, p0, Lcom/androidemu/nes/EmulatorSettings;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v5, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 279
    .restart local v2    # "path":Ljava/lang/String;
    const/4 v3, 0x0

    .line 280
    .restart local v3    # "uri":Landroid/net/Uri;
    if-eqz v2, :cond_2

    .line 281
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 283
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/androidemu/nes/FileChooser;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 284
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 285
    const-string v5, "title"

    invoke-virtual {p0}, Lcom/androidemu/nes/EmulatorSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060089

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    const-string v5, "filters"

    new-array v6, v10, [Ljava/lang/String;

    const-string v7, ".nes"

    aput-object v7, v6, v9

    const-string v7, ".rom"

    aput-object v7, v6, v4

    const-string v7, ".bin"

    aput-object v7, v6, v8

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    const/16 v5, 0x65

    invoke-virtual {p0, v0, v5}, Lcom/androidemu/nes/EmulatorSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 294
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_3
    const-string v5, "loadKeyProfile"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 295
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/androidemu/nes/KeyProfilesActivity;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 296
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v5, "title"

    const v6, 0x7f060039

    invoke-virtual {p0, v6}, Lcom/androidemu/nes/EmulatorSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    invoke-virtual {p0, v0, v4}, Lcom/androidemu/nes/EmulatorSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 301
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    const-string v5, "saveKeyProfile"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 302
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/androidemu/nes/KeyProfilesActivity;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 303
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v5, "title"

    const v6, 0x7f06003a

    invoke-virtual {p0, v6}, Lcom/androidemu/nes/EmulatorSettings;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    invoke-virtual {p0, v0, v8}, Lcom/androidemu/nes/EmulatorSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 308
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto/16 :goto_0
.end method
