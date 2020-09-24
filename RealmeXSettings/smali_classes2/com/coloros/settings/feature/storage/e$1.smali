.class final Lcom/coloros/settings/feature/storage/e$1;
.super Ljava/lang/Object;
.source "VolumeMeasurement.java"

# interfaces
.implements Lcom/coloros/settings/feature/deviceinfo/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/storage/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/storage/e;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/storage/e;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/e$1;->a:Lcom/coloros/settings/feature/storage/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Bundle;)V
    .locals 13

    .line 92
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/e$1;->a:Lcom/coloros/settings/feature/storage/e;

    .line 1036
    iget-object v0, v0, Lcom/coloros/settings/feature/storage/e;->f:Lcom/coloros/settings/feature/storage/a/b;

    const-wide/16 v1, 0x0

    .line 2031
    iput-wide v1, v0, Lcom/coloros/settings/feature/storage/a/b;->a:J

    .line 2032
    iput-wide v1, v0, Lcom/coloros/settings/feature/storage/a/b;->b:J

    .line 2033
    iput-wide v1, v0, Lcom/coloros/settings/feature/storage/a/b;->c:J

    .line 2034
    iput-wide v1, v0, Lcom/coloros/settings/feature/storage/a/b;->d:J

    .line 2035
    iput-wide v1, v0, Lcom/coloros/settings/feature/storage/a/b;->e:J

    .line 2036
    iput-wide v1, v0, Lcom/coloros/settings/feature/storage/a/b;->f:J

    .line 2037
    iput-wide v1, v0, Lcom/coloros/settings/feature/storage/a/b;->g:J

    .line 2038
    iput-wide v1, v0, Lcom/coloros/settings/feature/storage/a/b;->h:J

    .line 2039
    iput-wide v1, v0, Lcom/coloros/settings/feature/storage/a/b;->i:J

    .line 2040
    iput-wide v1, v0, Lcom/coloros/settings/feature/storage/a/b;->k:J

    .line 2041
    iput-wide v1, v0, Lcom/coloros/settings/feature/storage/a/b;->l:J

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "ColorStorageDashboardActivity.updateExact mStorageVolume:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/coloros/settings/feature/storage/e$1;->a:Lcom/coloros/settings/feature/storage/e;

    .line 3036
    iget-object v3, v3, Lcom/coloros/settings/feature/storage/e;->b:Landroid/os/storage/StorageVolume;

    .line 94
    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "VolumeMeasurement"

    .line 93
    invoke-static {v3, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/e$1;->a:Lcom/coloros/settings/feature/storage/e;

    .line 4106
    iget-object v4, v0, Lcom/coloros/settings/feature/storage/e;->f:Lcom/coloros/settings/feature/storage/a/b;

    const-string v5, "total_size"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/coloros/settings/feature/storage/a/b;->d:J

    .line 4107
    iget-object v4, v0, Lcom/coloros/settings/feature/storage/e;->b:Landroid/os/storage/StorageVolume;

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4108
    iget-object v4, v0, Lcom/coloros/settings/feature/storage/e;->f:Lcom/coloros/settings/feature/storage/a/b;

    iget-object v6, v0, Lcom/coloros/settings/feature/storage/e;->f:Lcom/coloros/settings/feature/storage/a/b;

    iget-wide v6, v6, Lcom/coloros/settings/feature/storage/a/b;->d:J

    invoke-static {v6, v7}, Lcom/coloros/settings/utils/al;->a(J)D

    move-result-wide v6

    double-to-long v6, v6

    iput-wide v6, v4, Lcom/coloros/settings/feature/storage/a/b;->d:J

    .line 4110
    :cond_0
    iget-object v4, v0, Lcom/coloros/settings/feature/storage/e;->f:Lcom/coloros/settings/feature/storage/a/b;

    iget-object v6, v0, Lcom/coloros/settings/feature/storage/e;->f:Lcom/coloros/settings/feature/storage/a/b;

    iget-wide v6, v6, Lcom/coloros/settings/feature/storage/a/b;->d:J

    const-string v8, "avail_size"

    .line 4111
    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    iput-wide v6, v4, Lcom/coloros/settings/feature/storage/a/b;->g:J

    .line 4112
    iget-object v4, v0, Lcom/coloros/settings/feature/storage/e;->f:Lcom/coloros/settings/feature/storage/a/b;

    const-string v6, "apps_used"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/coloros/settings/feature/storage/a/b;->i:J

    .line 4113
    iget-object v4, v0, Lcom/coloros/settings/feature/storage/e;->f:Lcom/coloros/settings/feature/storage/a/b;

    const-string v6, "misc_size"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/coloros/settings/feature/storage/a/b;->k:J

    .line 4119
    iget-object v4, v0, Lcom/coloros/settings/feature/storage/e;->f:Lcom/coloros/settings/feature/storage/a/b;

    const-string v6, "media_sizes"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v6

    iput-object v6, v4, Lcom/coloros/settings/feature/storage/a/b;->j:[J

    .line 4120
    iget-object v4, v0, Lcom/coloros/settings/feature/storage/e;->f:Lcom/coloros/settings/feature/storage/a/b;

    const-string v6, "system_size"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/coloros/settings/feature/storage/a/b;->a:J

    .line 4121
    iget-object v4, v0, Lcom/coloros/settings/feature/storage/e;->f:Lcom/coloros/settings/feature/storage/a/b;

    iget-wide v6, v4, Lcom/coloros/settings/feature/storage/a/b;->a:J

    iget-object v8, v0, Lcom/coloros/settings/feature/storage/e;->f:Lcom/coloros/settings/feature/storage/a/b;

    iget-wide v8, v8, Lcom/coloros/settings/feature/storage/a/b;->d:J

    .line 4122
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, v4, Lcom/coloros/settings/feature/storage/a/b;->a:J

    .line 4123
    iget-object v4, v0, Lcom/coloros/settings/feature/storage/e;->f:Lcom/coloros/settings/feature/storage/a/b;

    iget-object v5, v0, Lcom/coloros/settings/feature/storage/e;->f:Lcom/coloros/settings/feature/storage/a/b;

    iget-wide v5, v5, Lcom/coloros/settings/feature/storage/a/b;->a:J

    const-string v7, "system_avail"

    .line 4124
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    iput-wide v5, v4, Lcom/coloros/settings/feature/storage/a/b;->e:J

    .line 4125
    iget-object v4, v0, Lcom/coloros/settings/feature/storage/e;->f:Lcom/coloros/settings/feature/storage/a/b;

    const-string v5, "data_size"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/coloros/settings/feature/storage/a/b;->b:J

    .line 4126
    iget-object v4, v0, Lcom/coloros/settings/feature/storage/e;->f:Lcom/coloros/settings/feature/storage/a/b;

    iget-wide v4, v4, Lcom/coloros/settings/feature/storage/a/b;->b:J

    cmp-long v4, v4, v1

    if-lez v4, :cond_1

    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4129
    :cond_1
    iget-object v4, v0, Lcom/coloros/settings/feature/storage/e;->f:Lcom/coloros/settings/feature/storage/a/b;

    iput-wide v1, v4, Lcom/coloros/settings/feature/storage/a/b;->b:J

    .line 4131
    :cond_2
    iget-object v4, v0, Lcom/coloros/settings/feature/storage/e;->f:Lcom/coloros/settings/feature/storage/a/b;

    iget-object v5, v0, Lcom/coloros/settings/feature/storage/e;->f:Lcom/coloros/settings/feature/storage/a/b;

    iget-wide v5, v5, Lcom/coloros/settings/feature/storage/a/b;->b:J

    const-string v7, "data_avail"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    sub-long/2addr v5, v7

    iput-wide v5, v4, Lcom/coloros/settings/feature/storage/a/b;->f:J

    .line 4132
    iget-object v4, v0, Lcom/coloros/settings/feature/storage/e;->f:Lcom/coloros/settings/feature/storage/a/b;

    const-string v5, "storage_size"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/coloros/settings/feature/storage/a/b;->l:J

    .line 4137
    iget-object p1, v0, Lcom/coloros/settings/feature/storage/e;->b:Landroid/os/storage/StorageVolume;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result p1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_4

    .line 4142
    :try_start_0
    new-instance p1, Landroid/os/Environment$UserEnvironment;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-direct {p1, v6}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 4143
    invoke-virtual {p1}, Landroid/os/Environment$UserEnvironment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p1

    .line 4144
    new-instance v6, Landroid/os/StatFs;

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v6, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 4145
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 4146
    :try_start_1
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v9
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4147
    :try_start_2
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v11
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move-wide v9, v1

    goto :goto_0

    :catch_2
    move-exception p1

    move-wide v7, v1

    move-wide v9, v7

    .line 4149
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, "Error occur, e = "

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v11, v1

    :goto_1
    mul-long/2addr v9, v7

    mul-long/2addr v11, v7

    .line 4153
    iget-object p1, v0, Lcom/coloros/settings/feature/storage/e;->f:Lcom/coloros/settings/feature/storage/a/b;

    iput-wide v11, p1, Lcom/coloros/settings/feature/storage/a/b;->h:J

    .line 4155
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 4156
    iget-object p1, v0, Lcom/coloros/settings/feature/storage/e;->f:Lcom/coloros/settings/feature/storage/a/b;

    iget-object v6, v0, Lcom/coloros/settings/feature/storage/e;->f:Lcom/coloros/settings/feature/storage/a/b;

    iget-wide v6, v6, Lcom/coloros/settings/feature/storage/a/b;->d:J

    sub-long/2addr v6, v9

    iput-wide v6, p1, Lcom/coloros/settings/feature/storage/a/b;->a:J

    goto :goto_2

    .line 4158
    :cond_3
    iget-object p1, v0, Lcom/coloros/settings/feature/storage/e;->f:Lcom/coloros/settings/feature/storage/a/b;

    iget-object v6, v0, Lcom/coloros/settings/feature/storage/e;->f:Lcom/coloros/settings/feature/storage/a/b;

    iget-wide v6, v6, Lcom/coloros/settings/feature/storage/a/b;->d:J

    sub-long/2addr v6, v9

    iget-object v8, v0, Lcom/coloros/settings/feature/storage/e;->f:Lcom/coloros/settings/feature/storage/a/b;

    iget-wide v8, v8, Lcom/coloros/settings/feature/storage/a/b;->b:J

    sub-long/2addr v6, v8

    iput-wide v6, p1, Lcom/coloros/settings/feature/storage/a/b;->a:J

    :goto_2
    move p1, v4

    goto :goto_3

    :cond_4
    move p1, v5

    .line 4161
    :goto_3
    iget-object v6, v0, Lcom/coloros/settings/feature/storage/e;->f:Lcom/coloros/settings/feature/storage/a/b;

    iget-object v7, v0, Lcom/coloros/settings/feature/storage/e;->f:Lcom/coloros/settings/feature/storage/a/b;

    iget-wide v7, v7, Lcom/coloros/settings/feature/storage/a/b;->g:J

    iget-object v9, v0, Lcom/coloros/settings/feature/storage/e;->f:Lcom/coloros/settings/feature/storage/a/b;

    iget-wide v9, v9, Lcom/coloros/settings/feature/storage/a/b;->e:J

    sub-long/2addr v7, v9

    iput-wide v7, v6, Lcom/coloros/settings/feature/storage/a/b;->c:J

    .line 4162
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v6

    if-nez v6, :cond_5

    .line 4163
    iget-object v6, v0, Lcom/coloros/settings/feature/storage/e;->f:Lcom/coloros/settings/feature/storage/a/b;

    iget-object v7, v0, Lcom/coloros/settings/feature/storage/e;->f:Lcom/coloros/settings/feature/storage/a/b;

    iget-wide v7, v7, Lcom/coloros/settings/feature/storage/a/b;->g:J

    iget-object v9, v0, Lcom/coloros/settings/feature/storage/e;->f:Lcom/coloros/settings/feature/storage/a/b;

    iget-wide v9, v9, Lcom/coloros/settings/feature/storage/a/b;->e:J

    sub-long/2addr v7, v9

    iget-object v9, v0, Lcom/coloros/settings/feature/storage/e;->f:Lcom/coloros/settings/feature/storage/a/b;

    iget-wide v9, v9, Lcom/coloros/settings/feature/storage/a/b;->f:J

    sub-long/2addr v7, v9

    iput-wide v7, v6, Lcom/coloros/settings/feature/storage/a/b;->c:J

    :cond_5
    if-nez p1, :cond_6

    .line 4165
    iget-object p1, v0, Lcom/coloros/settings/feature/storage/e;->f:Lcom/coloros/settings/feature/storage/a/b;

    iget-wide v6, p1, Lcom/coloros/settings/feature/storage/a/b;->h:J

    cmp-long p1, v6, v1

    if-nez p1, :cond_6

    .line 4166
    iget-object p1, v0, Lcom/coloros/settings/feature/storage/e;->f:Lcom/coloros/settings/feature/storage/a/b;

    iget-object v1, v0, Lcom/coloros/settings/feature/storage/e;->f:Lcom/coloros/settings/feature/storage/a/b;

    iget-wide v1, v1, Lcom/coloros/settings/feature/storage/a/b;->d:J

    iget-object v6, v0, Lcom/coloros/settings/feature/storage/e;->f:Lcom/coloros/settings/feature/storage/a/b;

    iget-wide v6, v6, Lcom/coloros/settings/feature/storage/a/b;->c:J

    sub-long/2addr v1, v6

    iget-object v6, v0, Lcom/coloros/settings/feature/storage/e;->f:Lcom/coloros/settings/feature/storage/a/b;

    iget-wide v6, v6, Lcom/coloros/settings/feature/storage/a/b;->a:J

    sub-long/2addr v1, v6

    iget-object v6, v0, Lcom/coloros/settings/feature/storage/e;->f:Lcom/coloros/settings/feature/storage/a/b;

    iget-wide v6, v6, Lcom/coloros/settings/feature/storage/a/b;->b:J

    sub-long/2addr v1, v6

    iput-wide v1, p1, Lcom/coloros/settings/feature/storage/a/b;->h:J

    .line 4169
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, " mSizes.mTotalSize"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/coloros/settings/feature/storage/e;->f:Lcom/coloros/settings/feature/storage/a/b;

    iget-wide v1, v1, Lcom/coloros/settings/feature/storage/a/b;->d:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mSizes.mSystemSize="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/coloros/settings/feature/storage/e;->f:Lcom/coloros/settings/feature/storage/a/b;

    iget-wide v1, v1, Lcom/coloros/settings/feature/storage/a/b;->a:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mSizes.mDataSize="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/coloros/settings/feature/storage/e;->f:Lcom/coloros/settings/feature/storage/a/b;

    iget-wide v1, v1, Lcom/coloros/settings/feature/storage/a/b;->b:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4171
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, " mSizes.mMediaSizes[0]"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/coloros/settings/feature/storage/e;->f:Lcom/coloros/settings/feature/storage/a/b;

    iget-object v1, v1, Lcom/coloros/settings/feature/storage/a/b;->j:[J

    aget-wide v5, v1, v5

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mSizes.mMediaSizes[1]="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/coloros/settings/feature/storage/e;->f:Lcom/coloros/settings/feature/storage/a/b;

    iget-object v1, v1, Lcom/coloros/settings/feature/storage/a/b;->j:[J

    aget-wide v4, v1, v4

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mSizes.mMediaSizes[2]="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/coloros/settings/feature/storage/e;->f:Lcom/coloros/settings/feature/storage/a/b;

    iget-object v1, v1, Lcom/coloros/settings/feature/storage/a/b;->j:[J

    const/4 v2, 0x2

    aget-wide v4, v1, v2

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4175
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, " mSizes.mMediaSizes[3]"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/coloros/settings/feature/storage/e;->f:Lcom/coloros/settings/feature/storage/a/b;

    iget-object v1, v1, Lcom/coloros/settings/feature/storage/a/b;->j:[J

    const/4 v2, 0x3

    aget-wide v4, v1, v2

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mSizes.mAppsSize="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/coloros/settings/feature/storage/e;->f:Lcom/coloros/settings/feature/storage/a/b;

    iget-wide v1, v1, Lcom/coloros/settings/feature/storage/a/b;->i:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mSizes.mTotalAvail="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/coloros/settings/feature/storage/e;->f:Lcom/coloros/settings/feature/storage/a/b;

    iget-wide v1, v1, Lcom/coloros/settings/feature/storage/a/b;->h:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4179
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "mSize="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/coloros/settings/feature/storage/e;->f:Lcom/coloros/settings/feature/storage/a/b;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/e$1;->a:Lcom/coloros/settings/feature/storage/e;

    .line 5036
    iget-object p1, p1, Lcom/coloros/settings/feature/storage/e;->c:Landroid/os/Handler;

    .line 96
    new-instance v0, Lcom/coloros/settings/feature/storage/e$1$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/storage/e$1$1;-><init>(Lcom/coloros/settings/feature/storage/e$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
