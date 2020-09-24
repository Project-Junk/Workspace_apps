.class public Lcom/color/compat/content/pm/ApplicationInfoNative;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "ApplicationInfoNative"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBaseCodePath(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/color/inner/content/pm/ApplicationInfoWrapper;->getBaseCodePath(Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ApplicationInfoNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getColorFreezeState(Landroid/content/pm/ApplicationInfo;)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/color/inner/content/pm/ApplicationInfoWrapper;->getColorFreezeState(Landroid/content/pm/ApplicationInfo;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "ApplicationInfoNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public static getLongVersionCode(Landroid/content/pm/ApplicationInfo;)J
    .locals 2

    :try_start_0
    invoke-static {p0}, Lcom/color/inner/content/pm/ApplicationInfoWrapper;->getLongVersionCode(Landroid/content/pm/ApplicationInfo;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ApplicationInfoNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public static getVersionCode(Landroid/content/pm/ApplicationInfo;)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/color/inner/content/pm/ApplicationInfoWrapper;->getVersionCode(Landroid/content/pm/ApplicationInfo;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ApplicationInfoNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static isSystemApp(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/color/inner/content/pm/ApplicationInfoWrapper;->isSystemApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "ApplicationInfoNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static setColorFreezeState(Landroid/content/pm/ApplicationInfo;I)V
    .locals 0

    :try_start_0
    invoke-static {p0, p1}, Lcom/color/inner/content/pm/ApplicationInfoWrapper;->setColorFreezeState(Landroid/content/pm/ApplicationInfo;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ApplicationInfoNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static setLongVersionCode(Landroid/content/pm/ApplicationInfo;J)V
    .locals 0

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/color/inner/content/pm/ApplicationInfoWrapper;->setLongVersionCode(Landroid/content/pm/ApplicationInfo;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ApplicationInfoNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static setVersionCode(Landroid/content/pm/ApplicationInfo;I)V
    .locals 0

    :try_start_0
    invoke-static {p0, p1}, Lcom/color/inner/content/pm/ApplicationInfoWrapper;->setVersionCode(Landroid/content/pm/ApplicationInfo;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ApplicationInfoNative"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
