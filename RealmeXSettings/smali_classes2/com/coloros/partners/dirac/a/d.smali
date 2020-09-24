.class public Lcom/coloros/partners/dirac/a/d;
.super Ljava/lang/Object;
.source "SettingUtils.java"


# static fields
.field private static final a:[F

.field private static final b:Ljava/lang/String;

.field private static c:Z

.field private static d:Z

.field private static e:[Ljava/lang/String;

.field private static f:[Ljava/lang/String;

.field private static g:[Ljava/lang/String;

.field private static h:[Ljava/lang/String;

.field private static i:[Ljava/lang/String;

.field private static j:[Ljava/lang/String;

.field private static k:[Ljava/lang/String;

.field private static l:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    .line 60
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/coloros/partners/dirac/a/d;->a:[F

    .line 61
    const-class v0, Lcom/coloros/partners/dirac/a/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/partners/dirac/a/d;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 67
    sput-boolean v0, Lcom/coloros/partners/dirac/a/d;->c:Z

    .line 68
    sput-boolean v0, Lcom/coloros/partners/dirac/a/d;->d:Z

    return-void

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
        0x3f8ccccd    # 1.1f
        0x3fa00000    # 1.25f
        0x3fcccccd    # 1.6f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    .line 337
    invoke-static {p0}, Lcom/coloros/partners/dirac/a/d;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 343
    :cond_0
    :try_start_0
    sget-object p0, Lcom/coloros/partners/dirac/a/d;->l:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method public static a(Landroid/content/Context;Z)I
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "cur_eqband"

    .line 405
    invoke-static {p0, p1}, Lcom/coloros/partners/dirac/a/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const-string p1, "cur_speaker_eqband"

    .line 407
    invoke-static {p0, p1}, Lcom/coloros/partners/dirac/a/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;ZZ)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    const-string p0, "wired_headset"

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 186
    invoke-static {p0}, Lcom/coloros/partners/dirac/a/d;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, "device_none"

    :goto_0
    return-object p0
.end method

.method public static a(Lcom/oppo/a/a/a/b$a;)Ljava/lang/String;
    .locals 1

    .line 164
    sget-object v0, Lcom/coloros/partners/dirac/a/d$1;->a:[I

    invoke-virtual {p0}, Lcom/oppo/a/a/a/b$a;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string p0, "none"

    return-object p0

    :cond_0
    const-string p0, "movie"

    return-object p0

    :cond_1
    const-string p0, "game"

    return-object p0

    :cond_2
    const-string p0, "music"

    return-object p0

    :cond_3
    const-string p0, "auto"

    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 9

    .line 101
    sget-object v0, Lcom/coloros/partners/dirac/a/d;->l:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 102
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/coloros/partners/dirac/a/d;->l:Landroid/content/SharedPreferences;

    .line 1146
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1147
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1148
    sget-object v1, Lcom/coloros/partners/dirac/a/d;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "isEn, language="

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "en"

    .line 1149
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 105
    sput-boolean v0, Lcom/coloros/partners/dirac/a/d;->d:Z

    .line 1157
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 1158
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1159
    sget-object v1, Lcom/coloros/partners/dirac/a/d;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "isNeedShortenFontSize, language="

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/coloros/partners/dirac/a/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "sw"

    .line 1160
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    const-string v1, "ml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "my"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v3

    .line 106
    :goto_1
    sput-boolean v0, Lcom/coloros/partners/dirac/a/d;->c:Z

    .line 107
    sget-object v0, Lcom/coloros/partners/dirac/a/d;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "reloadRes, sbIsZH="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/coloros/partners/dirac/a/d;->d:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0300c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/partners/dirac/a/d;->k:[Ljava/lang/String;

    .line 112
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030092

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/partners/dirac/a/d;->e:[Ljava/lang/String;

    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f030093

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/partners/dirac/a/d;->f:[Ljava/lang/String;

    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0300f6

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/partners/dirac/a/d;->g:[Ljava/lang/String;

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/partners/dirac/a/d;->h:[Ljava/lang/String;

    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/partners/dirac/a/d;->i:[Ljava/lang/String;

    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/partners/dirac/a/d;->j:[Ljava/lang/String;

    .line 2127
    invoke-static {p0, v3}, Lcom/coloros/partners/dirac/a/d;->b(Landroid/content/Context;Z)[I

    move-result-object v0

    .line 2128
    invoke-static {p0, v2}, Lcom/coloros/partners/dirac/a/d;->b(Landroid/content/Context;Z)[I

    move-result-object p0

    .line 2130
    sget-object v1, Lcom/coloros/partners/dirac/a/d;->g:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v0, v3

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x2

    aget v0, v0, v6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0xb

    aput-object v0, v1, v4

    .line 2131
    sget-object v0, Lcom/coloros/partners/dirac/a/d;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "reloadRes, EQ_INDEX_OF_CUSTOMIZE=11, value="

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/coloros/partners/dirac/a/d;->g:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 2135
    sget-object v0, Lcom/coloros/partners/dirac/a/d;->j:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, p0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p0, p0, v6

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v4

    .line 2136
    sget-object p0, Lcom/coloros/partners/dirac/a/d;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/coloros/partners/dirac/a/d;->j:[Ljava/lang/String;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static a(Landroid/content/Context;IZ)V
    .locals 0

    if-eqz p2, :cond_0

    const-string p2, "cur_eqband"

    .line 413
    invoke-static {p0, p2, p1}, Lcom/coloros/partners/dirac/a/d;->a(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    :cond_0
    const-string p2, "cur_speaker_eqband"

    .line 415
    invoke-static {p0, p2, p1}, Lcom/coloros/partners/dirac/a/d;->a(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 323
    invoke-static {p0}, Lcom/coloros/partners/dirac/a/d;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 327
    :cond_0
    sget-object p0, Lcom/coloros/partners/dirac/a/d;->l:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 328
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 332
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 377
    invoke-static {p0}, Lcom/coloros/partners/dirac/a/d;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 381
    :cond_0
    sget-object p0, Lcom/coloros/partners/dirac/a/d;->l:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 382
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 386
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static a(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "eqband_custom_default_value"

    .line 451
    invoke-static {p0, p1, p2}, Lcom/coloros/partners/dirac/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "speaker_eqband_custom_default_value"

    .line 453
    invoke-static {p0, p1, p2}, Lcom/coloros/partners/dirac/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static varargs a(Landroid/content/Context;Z[I)V
    .locals 3

    .line 420
    array-length v0, p2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 424
    aget p1, p2, v2

    const-string v2, "eqband_custom_bass_value"

    invoke-static {p0, v2, p1}, Lcom/coloros/partners/dirac/a/d;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 425
    aget p1, p2, v1

    const-string v1, "eqband_custom_middle_value"

    invoke-static {p0, v1, p1}, Lcom/coloros/partners/dirac/a/d;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 426
    aget p1, p2, v0

    const-string p2, "eqband_custom_treble_value"

    invoke-static {p0, p2, p1}, Lcom/coloros/partners/dirac/a/d;->a(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    .line 428
    :cond_1
    aget p1, p2, v2

    const-string v2, "spoeaker_eqband_custom_bass_value"

    invoke-static {p0, v2, p1}, Lcom/coloros/partners/dirac/a/d;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 429
    aget p1, p2, v1

    const-string v1, "spoeaker_eqband_custom_middle_value"

    invoke-static {p0, v1, p1}, Lcom/coloros/partners/dirac/a/d;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 430
    aget p1, p2, v0

    const-string p2, "spoeaker_eqband_custom_treble_value"

    invoke-static {p0, p2, p1}, Lcom/coloros/partners/dirac/a/d;->a(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static a([I)V
    .locals 3

    .line 499
    array-length v0, p0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 502
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    .line 503
    aget v1, p0, v0

    const/4 v2, 0x6

    if-le v1, v2, :cond_1

    .line 504
    aput v2, p0, v0

    goto :goto_1

    .line 505
    :cond_1
    aget v1, p0, v0

    const/4 v2, -0x6

    if-ge v1, v2, :cond_2

    .line 506
    aput v2, p0, v0

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static a()[Ljava/lang/String;
    .locals 1

    .line 81
    sget-object v0, Lcom/coloros/partners/dirac/a/d;->k:[Ljava/lang/String;

    return-object v0
.end method

.method public static a(Z)[Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 86
    sget-object p0, Lcom/coloros/partners/dirac/a/d;->e:[Ljava/lang/String;

    :goto_0
    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_0
    sget-object p0, Lcom/coloros/partners/dirac/a/d;->h:[Ljava/lang/String;

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    const-string v0, ""

    if-nez p0, :cond_0

    :goto_0
    move-object v1, v0

    goto :goto_1

    :cond_0
    const-string v1, "audio"

    .line 2300
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "get_pid"

    .line 2305
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2306
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/4 v1, 0x0

    .line 216
    :cond_3
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v0

    :cond_4
    const-string v2, ":"

    .line 220
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 221
    array-length v2, v1

    if-gtz v2, :cond_5

    goto/16 :goto_5

    .line 225
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 226
    array-length v3, v1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_7

    aget-object v5, v1, v4

    .line 227
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 229
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v5

    .line 232
    sget-object v6, Lcom/coloros/partners/dirac/a/d;->b:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "getActiveAudioAppPackages can not convert to int "

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/coloros/partners/dirac/a/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    const-string v1, "activity"

    .line 236
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    if-nez p0, :cond_8

    return-object v0

    .line 240
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 241
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    .line 242
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 243
    iget v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 244
    iget-object v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 245
    iget v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 246
    iget-object v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 249
    :cond_a
    sget-object p0, Lcom/coloros/partners/dirac/a/d;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getActiveAudioAppPackages activeAudioAppList = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/coloros/partners/dirac/a/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    :goto_5
    return-object v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 391
    invoke-static {p0}, Lcom/coloros/partners/dirac/a/d;->e(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p2

    .line 397
    :cond_0
    :try_start_0
    sget-object p0, Lcom/coloros/partners/dirac/a/d;->l:Landroid/content/SharedPreferences;

    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "0"

    :goto_0
    return-object p0
.end method

.method public static b(Landroid/content/Context;ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "eqband_custom_default_value"

    .line 459
    invoke-static {p0, p1, p2}, Lcom/coloros/partners/dirac/a/d;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p1, "speaker_eqband_custom_default_value"

    .line 461
    invoke-static {p0, p1, p2}, Lcom/coloros/partners/dirac/a/d;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b()Z
    .locals 1

    .line 123
    sget-boolean v0, Lcom/coloros/partners/dirac/a/d;->c:Z

    return v0
.end method

.method public static b(Landroid/content/Context;Z)[I
    .locals 4

    const/4 v0, 0x3

    .line 435
    new-array v0, v0, [I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const-string p1, "eqband_custom_bass_value"

    .line 437
    invoke-static {p0, p1}, Lcom/coloros/partners/dirac/a/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    aput p1, v0, v3

    const-string p1, "eqband_custom_middle_value"

    .line 438
    invoke-static {p0, p1}, Lcom/coloros/partners/dirac/a/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    aput p1, v0, v2

    const-string p1, "eqband_custom_treble_value"

    .line 439
    invoke-static {p0, p1}, Lcom/coloros/partners/dirac/a/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    aput p0, v0, v1

    goto :goto_0

    :cond_0
    const-string p1, "spoeaker_eqband_custom_bass_value"

    .line 441
    invoke-static {p0, p1}, Lcom/coloros/partners/dirac/a/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    aput p1, v0, v3

    const-string p1, "spoeaker_eqband_custom_middle_value"

    .line 442
    invoke-static {p0, p1}, Lcom/coloros/partners/dirac/a/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    aput p1, v0, v2

    const-string p1, "spoeaker_eqband_custom_treble_value"

    .line 443
    invoke-static {p0, p1}, Lcom/coloros/partners/dirac/a/d;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    aput p0, v0, v1

    .line 445
    :goto_0
    invoke-static {v0}, Lcom/coloros/partners/dirac/a/d;->a([I)V

    return-object v0
.end method

.method public static b(Z)[Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 90
    sget-object p0, Lcom/coloros/partners/dirac/a/d;->f:[Ljava/lang/String;

    :goto_0
    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_0
    sget-object p0, Lcom/coloros/partners/dirac/a/d;->i:[Ljava/lang/String;

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "audio"

    .line 260
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 261
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 265
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "oppo.multimedia.dirac.a2dp.support"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 268
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    if-nez v2, :cond_2

    .line 270
    sget-object v1, Lcom/coloros/partners/dirac/a/d;->b:Ljava/lang/String;

    const-string v2, "getStatisticalEqbands() bluetooth adapter is null"

    invoke-static {v1, v2}, Lcom/coloros/partners/dirac/a/b;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 272
    :cond_2
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x2

    .line 273
    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 275
    sget-object v0, Lcom/coloros/partners/dirac/a/d;->b:Ljava/lang/String;

    const-string v2, "getStatisticalEqbands() A2DP wireless bluetooth device is connected"

    invoke-static {v0, v2}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 282
    :cond_3
    :goto_1
    sget-object v1, Lcom/coloros/partners/dirac/a/d;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getStatisticalEqbands, hasHeadset = "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-static {p0, v0}, Lcom/coloros/partners/dirac/a/d;->a(Landroid/content/Context;Z)I

    move-result v1

    const/16 v2, 0xb

    const-string v3, "0.0;0.0;0.0;0.0;0.0;0.0;0.0;"

    if-ne v1, v2, :cond_4

    .line 285
    invoke-static {p0, v0, v3}, Lcom/coloros/partners/dirac/a/d;->b(Landroid/content/Context;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 287
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f030093

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    if-ltz v1, :cond_5

    .line 288
    array-length v0, p0

    if-ge v1, v0, :cond_5

    .line 289
    aget-object v3, p0, v1

    .line 292
    :cond_5
    :goto_2
    sget-object p0, Lcom/coloros/partners/dirac/a/d;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getStatisticalEqbands, eqBands = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v3, :cond_6

    const-string v1, "null"

    goto :goto_3

    :cond_6
    move-object v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3
.end method

.method public static c()Z
    .locals 1

    .line 153
    sget-boolean v0, Lcom/coloros/partners/dirac/a/d;->d:Z

    return v0
.end method

.method public static c(Z)[Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 94
    sget-object p0, Lcom/coloros/partners/dirac/a/d;->g:[Ljava/lang/String;

    :goto_0
    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_0
    sget-object p0, Lcom/coloros/partners/dirac/a/d;->j:[Ljava/lang/String;

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 198
    :cond_0
    :try_start_0
    const-class v1, Landroid/media/AudioManager;

    const-string v2, "getBluetoothName"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    .line 199
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const-string v2, "audio"

    .line 200
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 201
    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 203
    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 206
    sget-object v1, Lcom/coloros/partners/dirac/a/d;->b:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "exception: "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/coloros/partners/dirac/a/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method private static e(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1

    .line 313
    sget-object v0, Lcom/coloros/partners/dirac/a/d;->l:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 317
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    sput-object p0, Lcom/coloros/partners/dirac/a/d;->l:Landroid/content/SharedPreferences;

    .line 319
    :cond_1
    sget-object p0, Lcom/coloros/partners/dirac/a/d;->l:Landroid/content/SharedPreferences;

    return-object p0
.end method
