.class public final Lcom/coloros/settings/feature/weather/a/a;
.super Ljava/lang/Object;
.source "CompactUtils.java"


# static fields
.field private static a:Z

.field private static b:Z


# direct methods
.method public static declared-synchronized a()Z
    .locals 6

    const-class v0, Lcom/coloros/settings/feature/weather/a/a;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-boolean v1, Lcom/coloros/settings/feature/weather/a/a;->b:Z

    if-nez v1, :cond_1

    .line 28
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/coloros/settings/feature/weather/a/d;->b(Landroid/content/Context;)J

    move-result-wide v1

    const-wide/32 v3, 0x9e34

    cmp-long v3, v1, v3

    const/4 v4, 0x1

    if-gez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 29
    :goto_0
    sput-boolean v3, Lcom/coloros/settings/feature/weather/a/a;->a:Z

    .line 30
    sput-boolean v4, Lcom/coloros/settings/feature/weather/a/a;->b:Z

    const-string v3, "WeatherCompactUtils"

    .line 31
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "initServiceInfo versionCode = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sIsOldService "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/coloros/settings/feature/weather/a/a;->a:Z

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    :cond_1
    sget-boolean v1, Lcom/coloros/settings/feature/weather/a/a;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
