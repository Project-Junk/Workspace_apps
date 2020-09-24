.class public final Lcom/coloros/settings/utils/e;
.super Ljava/lang/Object;
.source "BurmeseFontSettingUtil.java"


# static fields
.field public static final a:Ljava/util/Locale;

.field public static final b:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    new-instance v0, Ljava/util/Locale;

    const-string v1, "my"

    const-string v2, "ZG"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/coloros/settings/utils/e;->a:Ljava/util/Locale;

    .line 36
    new-instance v0, Ljava/util/Locale;

    const-string v2, "MM"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/coloros/settings/utils/e;->b:Ljava/util/Locale;

    return-void
.end method

.method public static a()V
    .locals 3

    .line 44
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v0

    .line 45
    invoke-static {}, Lcom/coloros/settings/utils/x;->a()Ljava/util/Locale;

    move-result-object v1

    .line 46
    sget-object v2, Lcom/coloros/settings/utils/e;->a:Ljava/util/Locale;

    invoke-virtual {v2, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    invoke-static {v0}, Lcom/coloros/settings/utils/e;->a(Landroid/content/Context;)Z

    return-void

    .line 49
    :cond_0
    invoke-static {v0}, Lcom/coloros/settings/utils/e;->c(Landroid/content/Context;)Z

    return-void
.end method

.method public static a(Ljava/util/Locale;)V
    .locals 2

    .line 58
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v0

    .line 59
    sget-object v1, Lcom/coloros/settings/utils/e;->a:Ljava/util/Locale;

    invoke-virtual {v1, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    invoke-static {v0}, Lcom/coloros/settings/utils/e;->a(Landroid/content/Context;)Z

    return-void

    .line 61
    :cond_0
    sget-object v1, Lcom/coloros/settings/utils/e;->b:Ljava/util/Locale;

    invoke-virtual {v1, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 62
    invoke-static {v0}, Lcom/coloros/settings/utils/e;->c(Landroid/content/Context;)Z

    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 6

    const-string v0, "/system/fonts/MyanmarZg.ttf"

    const-string v1, "BurmeseFontSettingUtil"

    const-string v2, "setToZG()"

    .line 72
    invoke-static {v1, v2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/coloros/settings/utils/e;->b(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    return v3

    :cond_0
    const/4 v2, 0x0

    .line 79
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 80
    :try_start_1
    new-instance v2, Lcom/oppo/b/a/a;

    invoke-direct {v2, p0}, Lcom/oppo/b/a/a;-><init>(Landroid/content/Context;)V

    .line 81
    invoke-virtual {v2, p0, v4}, Lcom/oppo/b/a/a;->a(Landroid/content/Context;Ljava/io/InputStream;)Z

    .line 82
    invoke-virtual {v2, p0, v4}, Lcom/oppo/b/a/a;->a(Landroid/content/Context;Ljava/io/InputStream;)Z

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "current_typeface"

    invoke-static {p0, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 84
    invoke-static {}, Lcom/oppo/b/a/a;->a()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return v3

    :catchall_0
    move-exception p0

    move-object v2, v4

    goto :goto_1

    :catch_1
    move-exception p0

    move-object v2, v4

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    .line 86
    :goto_0
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "setToZG() "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_1

    .line 91
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_1
    const/4 p0, 0x0

    return p0

    :goto_1
    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 96
    :catch_4
    :cond_2
    throw p0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "current_typeface"

    invoke-static {p0, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "/system/fonts/MyanmarZg.ttf"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "BurmeseFontSettingUtil"

    const-string v1, "setToUnicode()"

    .line 108
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/settings/utils/e;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 112
    :cond_0
    new-instance v0, Lcom/oppo/b/a/a;

    invoke-direct {v0, p0}, Lcom/oppo/b/a/a;-><init>(Landroid/content/Context;)V

    const-string v1, "system.default.font"

    .line 113
    invoke-virtual {v0, p0, v1}, Lcom/oppo/b/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
