.class public abstract Lcom/android/settings/deviceinfo/d;
.super Landroid/os/AsyncTask;
.source "MigrateEstimateTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field a:J

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-wide/16 v0, -0x1

    .line 49
    iput-wide v0, p0, Lcom/android/settings/deviceinfo/d;->a:J

    .line 52
    iput-object p1, p0, Lcom/android/settings/deviceinfo/d;->b:Landroid/content/Context;

    return-void
.end method

.method private varargs a()Ljava/lang/Long;
    .locals 12

    .line 65
    iget-wide v0, p0, Lcom/android/settings/deviceinfo/d;->a:J

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 66
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/d;->b:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 70
    iget-object v1, p0, Lcom/android/settings/deviceinfo/d;->b:Landroid/content/Context;

    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 71
    iget-object v2, p0, Lcom/android/settings/deviceinfo/d;->b:Landroid/content/Context;

    const-class v3, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/StorageStatsManager;

    .line 73
    iget-object v3, p0, Lcom/android/settings/deviceinfo/d;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v3

    .line 74
    invoke-virtual {v1, v3}, Landroid/os/storage/StorageManager;->findEmulatedForPrivate(Landroid/os/storage/VolumeInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v3

    const/4 v5, 0x0

    const-string v6, "StorageSettings"

    if-nez v3, :cond_1

    .line 77
    new-array v0, v5, [Ljava/lang/Object;

    const-string v1, "Failed to find current primary storage"

    invoke-static {v6, v1, v0}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v4

    .line 82
    :cond_1
    :try_start_0
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/storage/StorageManager;->getUuidForPath(Ljava/io/File;)Ljava/util/UUID;

    move-result-object v1

    const-string v3, "Measuring size of "

    .line 83
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v6, v3, v7}, Landroid/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v7, 0x0

    .line 86
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 87
    iget v9, v3, Landroid/content/pm/UserInfo;->id:I

    .line 88
    invoke-static {v9}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v9

    .line 87
    invoke-virtual {v2, v1, v9}, Landroid/app/usage/StorageStatsManager;->queryExternalStatsForUser(Ljava/util/UUID;Landroid/os/UserHandle;)Landroid/app/usage/ExternalStorageStats;

    move-result-object v9

    .line 89
    invoke-virtual {v9}, Landroid/app/usage/ExternalStorageStats;->getTotalBytes()J

    move-result-wide v10

    add-long/2addr v7, v10

    .line 90
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    if-nez v3, :cond_2

    .line 91
    invoke-virtual {v9}, Landroid/app/usage/ExternalStorageStats;->getObbBytes()J

    move-result-wide v9

    add-long/2addr v7, v9

    goto :goto_0

    .line 94
    :cond_3
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    .line 96
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v5

    const-string v0, "Failed to measure"

    invoke-static {v6, v0, v1}, Landroid/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v4
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/d;->a()Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 6

    .line 39
    check-cast p1, Ljava/lang/Long;

    .line 1103
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/deviceinfo/d;->a:J

    .line 1104
    iget-wide v0, p0, Lcom/android/settings/deviceinfo/d;->a:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/32 v4, 0xa00000

    div-long/2addr v0, v4

    .line 1105
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 1107
    iget-object p1, p0, Lcom/android/settings/deviceinfo/d;->b:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/settings/deviceinfo/d;->a:J

    invoke-static {p1, v2, v3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    .line 1108
    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatDuration(J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1109
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/deviceinfo/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
