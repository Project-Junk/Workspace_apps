.class public final Lcom/coloros/settings/utils/ba;
.super Ljava/lang/Object;
.source "SettingsPackageUtils.java"


# static fields
.field private static a:Ljava/lang/Boolean;

.field private static b:Ljava/lang/Boolean;

.field private static c:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()Landroid/content/pm/PackageManager;
    .locals 1

    .line 42
    sget-object v0, Lcom/coloros/settings/utils/ba;->c:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    .line 1030
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v0

    .line 43
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/utils/ba;->c:Landroid/content/pm/PackageManager;

    .line 45
    :cond_0
    sget-object v0, Lcom/coloros/settings/utils/ba;->c:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    .line 102
    sget-object v0, Lcom/coloros/settings/utils/ba;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string v0, "com.android.contacts"

    .line 103
    invoke-static {p0, v0}, Lcom/coloros/settings/utils/ba;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/coloros/settings/utils/ba;->b:Ljava/lang/Boolean;

    .line 105
    :cond_0
    sget-object p0, Lcom/coloros/settings/utils/ba;->b:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 50
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 52
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_0

    .line 53
    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .line 2030
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v0

    .line 62
    invoke-static {v0, p0}, Lcom/coloros/settings/utils/ba;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static b()Z
    .locals 5

    const-string v0, "com.coloros.apprecover"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 82
    :try_start_0
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 83
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-object v0, v2

    :goto_0
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSignedWithPlatformKey()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 1

    .line 109
    sget-object v0, Lcom/coloros/settings/utils/ba;->a:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string v0, "com.android.mms"

    .line 110
    invoke-static {p0, v0}, Lcom/coloros/settings/utils/ba;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/coloros/settings/utils/ba;->a:Ljava/lang/Boolean;

    .line 112
    :cond_0
    sget-object p0, Lcom/coloros/settings/utils/ba;->a:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 68
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "isPackageInstalled: pkg: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", is not installed."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SettingsPackageUtils"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 95
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x10000

    .line 96
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 98
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    const-string v1, "SettingsPackageUtils"

    if-eqz p0, :cond_2

    .line 116
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "isSystemAppEnabledForExp method begin!"

    .line 123
    invoke-static {v1, v4}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v4, 0x100000

    invoke-virtual {p0, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v4, "isSystemAppEnabledForExp, "

    .line 127
    invoke-static {v1, v4, p0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    if-eqz v2, :cond_1

    .line 129
    iget-boolean p0, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v3

    .line 133
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "isSystemAppEnabledForExp : "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " packageName : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    :goto_2
    const-string p0, "isSystemAppEnabledForExp return true for context is null or package name is null!"

    .line 117
    invoke-static {v1, p0}, Lcom/coloros/settings/utils/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method
