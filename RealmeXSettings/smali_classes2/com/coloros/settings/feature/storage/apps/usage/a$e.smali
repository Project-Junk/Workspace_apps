.class final Lcom/coloros/settings/feature/storage/apps/usage/a$e;
.super Ljava/lang/Object;
.source "AppStorageUsageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/storage/apps/usage/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/storage/apps/usage/a;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/storage/apps/usage/a;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .line 280
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$e;->a:Lcom/coloros/settings/feature/storage/apps/usage/a;

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    iput-object p2, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$e;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1291
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$e;->a:Lcom/coloros/settings/feature/storage/apps/usage/a;

    invoke-static {v0}, Lcom/coloros/settings/feature/storage/apps/usage/a;->a(Lcom/coloros/settings/feature/storage/apps/usage/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "storage"

    .line 1292
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    const-string v1, "private"

    .line 1293
    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v0

    .line 1294
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 1295
    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1297
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1300
    :cond_0
    new-instance v2, Lcom/android/settingslib/applications/f;

    iget-object v3, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$e;->a:Lcom/coloros/settings/feature/storage/apps/usage/a;

    invoke-static {v3}, Lcom/coloros/settings/feature/storage/apps/usage/a;->a(Lcom/coloros/settings/feature/storage/apps/usage/a;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settingslib/applications/f;-><init>(Landroid/content/Context;)V

    .line 1303
    iget-object v3, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$e;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 1304
    iget-object v5, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$e;->a:Lcom/coloros/settings/feature/storage/apps/usage/a;

    invoke-static {v5}, Lcom/coloros/settings/feature/storage/apps/usage/a;->h(Lcom/coloros/settings/feature/storage/apps/usage/a;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1307
    iget-object v5, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$e;->a:Lcom/coloros/settings/feature/storage/apps/usage/a;

    invoke-static {v5}, Lcom/coloros/settings/feature/storage/apps/usage/a;->e(Lcom/coloros/settings/feature/storage/apps/usage/a;)Ljava/util/Map;

    move-result-object v5

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coloros/settings/feature/storage/apps/usage/b;

    if-eqz v5, :cond_1

    .line 1313
    :try_start_0
    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0, v6, v1}, Lcom/android/settingslib/applications/f;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/settingslib/applications/f$a;

    move-result-object v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1319
    invoke-interface {v6}, Lcom/android/settingslib/applications/f$a;->b()J

    move-result-wide v7

    .line 1320
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v0, v4}, Lcom/android/settingslib/applications/f;->a(Ljava/lang/String;I)J

    move-result-wide v9

    .line 1321
    invoke-interface {v6}, Lcom/android/settingslib/applications/f$a;->c()J

    move-result-wide v11

    cmp-long v4, v9, v11

    if-gez v4, :cond_2

    sub-long/2addr v7, v11

    add-long/2addr v7, v9

    .line 1337
    :cond_2
    iget-wide v9, v5, Lcom/coloros/settings/feature/storage/apps/usage/b;->i:J

    invoke-interface {v6}, Lcom/android/settingslib/applications/f$a;->a()J

    move-result-wide v11

    add-long/2addr v9, v11

    iput-wide v9, v5, Lcom/coloros/settings/feature/storage/apps/usage/b;->i:J

    .line 1338
    iget-wide v9, v5, Lcom/coloros/settings/feature/storage/apps/usage/b;->j:J

    add-long/2addr v9, v7

    iput-wide v9, v5, Lcom/coloros/settings/feature/storage/apps/usage/b;->j:J

    .line 1339
    iget-object v4, p0, Lcom/coloros/settings/feature/storage/apps/usage/a$e;->a:Lcom/coloros/settings/feature/storage/apps/usage/a;

    invoke-static {v4, v5}, Lcom/coloros/settings/feature/storage/apps/usage/a;->a(Lcom/coloros/settings/feature/storage/apps/usage/a;Lcom/coloros/settings/feature/storage/apps/usage/b;)V

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_1

    :catch_1
    move-exception v4

    :goto_1
    const-string v5, "AppStorageUsageManager"

    const-string v6, "App unexpectedly not found"

    .line 1316
    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    return-void
.end method
