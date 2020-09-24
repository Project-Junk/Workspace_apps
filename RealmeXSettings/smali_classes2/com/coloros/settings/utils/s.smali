.class public final Lcom/coloros/settings/utils/s;
.super Ljava/lang/Object;
.source "FontUtils.java"


# static fields
.field private static final a:Ljava/util/Locale;

.field private static final b:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 33
    new-instance v0, Ljava/util/Locale;

    const-string v1, "my"

    const-string v2, "ZG"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/coloros/settings/utils/s;->a:Ljava/util/Locale;

    .line 34
    new-instance v0, Ljava/util/Locale;

    const-string v2, "MM"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/coloros/settings/utils/s;->b:Ljava/util/Locale;

    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .locals 1

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "settings_tailue_enable"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "settings_tailue_enable"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/util/Locale;)Z
    .locals 3

    const-string v0, "pref"

    const/4 v1, 0x0

    .line 42
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "FONT_NAME"

    const-string v2, "UNKNOWN"

    .line 44
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1214e8

    .line 45
    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 46
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CN_US"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 60
    invoke-static {p0}, Lcom/coloros/settings/utils/s;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    new-instance v0, Lcom/coloros/settings/utils/d;

    const-string v1, "com.monotype.android.font.system.default.font"

    invoke-direct {v0, p0, v1}, Lcom/coloros/settings/utils/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 63
    new-array p0, p0, [Ljava/lang/Void;

    invoke-virtual {v0, p0}, Lcom/coloros/settings/utils/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
