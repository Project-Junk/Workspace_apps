.class public final Lcom/android/settingslib/deviceinfo/b;
.super Ljava/lang/Object;
.source "PrivateStorageInfo.java"


# instance fields
.field public final a:J

.field public final b:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide p1, p0, Lcom/android/settingslib/deviceinfo/b;->a:J

    .line 38
    iput-wide p3, p0, Lcom/android/settingslib/deviceinfo/b;->b:J

    return-void
.end method

.method public static a(Landroid/os/storage/VolumeInfo;)J
    .locals 2

    .line 61
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    .line 62
    const-class v1, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/StorageStatsManager;

    .line 64
    :try_start_0
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/usage/StorageStatsManager;->getTotalBytes(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    const-string v0, "PrivateStorageInfo"

    .line 66
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static a(Lcom/android/settingslib/deviceinfo/e;)Lcom/android/settingslib/deviceinfo/b;
    .locals 9

    .line 42
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    .line 43
    const-class v1, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/StorageStatsManager;

    .line 47
    invoke-interface {p0}, Lcom/android/settingslib/deviceinfo/e;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/VolumeInfo;

    .line 48
    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    invoke-virtual {v6}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 50
    :try_start_0
    invoke-interface {p0, v0, v6}, Lcom/android/settingslib/deviceinfo/e;->a(Landroid/app/usage/StorageStatsManager;Landroid/os/storage/VolumeInfo;)J

    move-result-wide v7

    add-long/2addr v4, v7

    .line 51
    invoke-interface {p0, v0, v6}, Lcom/android/settingslib/deviceinfo/e;->b(Landroid/app/usage/StorageStatsManager;Landroid/os/storage/VolumeInfo;)J

    move-result-wide v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-long/2addr v2, v6

    goto :goto_0

    :catch_0
    move-exception v6

    const-string v7, "PrivateStorageInfo"

    .line 53
    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 57
    :cond_1
    new-instance p0, Lcom/android/settingslib/deviceinfo/b;

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/settingslib/deviceinfo/b;-><init>(JJ)V

    return-object p0
.end method
