.class public final Lcom/android/settingslib/applications/a;
.super Ljava/lang/Object;
.source "AppUtils.java"


# static fields
.field private static a:Lcom/android/settingslib/applications/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    invoke-static {p0}, Lcom/android/settingslib/applications/ApplicationsState;->a(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object p0

    .line 132
    invoke-virtual {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/pm/ApplicationInfo;)Z
    .locals 7

    .line 86
    sget-object v0, Lcom/android/settingslib/applications/a;->a:Lcom/android/settingslib/applications/a/a;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 87
    invoke-interface {v0}, Lcom/android/settingslib/applications/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 90
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "settingsdebug.instant.packages"

    .line 97
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 98
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_3

    const-string v3, ","

    .line 99
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 101
    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    .line 102
    iget-object v6, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method
