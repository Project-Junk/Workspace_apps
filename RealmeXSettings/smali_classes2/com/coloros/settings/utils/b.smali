.class public final Lcom/coloros/settings/utils/b;
.super Ljava/lang/Object;
.source "AppFrozenUtils.java"


# direct methods
.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "getAppFrozenWhiteList"

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 73
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    if-nez v3, :cond_0

    return-object v1

    :cond_0
    const-string v4, "com.color.provider.SafeProvider"

    .line 77
    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    if-eqz v2, :cond_1

    .line 92
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V

    :cond_1
    return-object v1

    .line 81
    :cond_2
    :try_start_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "extra_type"

    .line 82
    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 83
    invoke-virtual {v2, p1, v0, p0, v3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 86
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, p0

    :cond_3
    if-eqz v2, :cond_4

    .line 92
    :goto_0
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "AppFrozenUtils"

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Error occur, e = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    return-object v1

    :goto_2
    if-eqz v2, :cond_5

    .line 92
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V

    .line 94
    :cond_5
    throw p0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 0

    .line 51
    invoke-static {p0}, Lcom/coloros/settings/utils/b;->b(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/coloros/settings/utils/bh;->F()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 43
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/color/compat/content/pm/ApplicationInfoNative;->getColorFreezeState(Landroid/content/pm/ApplicationInfo;)I

    move-result p0

    sget v1, Lcom/color/compat/content/pm/PackageManagerNative;->COLOR_STATE_FREEZE_FREEZED:I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0

    :catch_0
    const-string p0, "OppoSettingsUtils"

    const-string v1, "isAppFrozen no oppoFreezeState"

    .line 45
    invoke-static {p0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "app_disable_switch"

    .line 55
    invoke-static {p0, v0}, Lcom/coloros/settings/utils/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 56
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 57
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    return v0
.end method
