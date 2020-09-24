.class public final Lcom/oppo/c/e/e;
.super Ljava/lang/Object;
.source "VersionUtil.java"


# direct methods
.method public static a(Landroid/content/Context;)Z
    .locals 2

    if-eqz p0, :cond_0

    .line 19
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.nearme.statistics.rom"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 20
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const v0, 0x4e1830

    if-lt p0, v0, :cond_0

    return v1

    :catch_0
    move-exception p0

    .line 24
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
