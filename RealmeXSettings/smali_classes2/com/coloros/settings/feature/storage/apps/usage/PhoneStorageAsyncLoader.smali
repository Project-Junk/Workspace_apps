.class public Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;
.super Lcom/android/settingslib/utils/AsyncLoaderCompat;
.source "PhoneStorageAsyncLoader.java"

# interfaces
.implements Landroidx/loader/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;,
        Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;,
        Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$c;,
        Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/utils/AsyncLoaderCompat<",
        "Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;",
        ">;",
        "Landroidx/loader/app/LoaderManager$LoaderCallbacks<",
        "Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$c;

.field public b:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;

.field private final c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Landroid/os/Handler;

.field private f:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/storage/VolumeInfo;)V
    .locals 1

    .line 93
    invoke-direct {p0, p1}, Lcom/android/settingslib/utils/AsyncLoaderCompat;-><init>(Landroid/content/Context;)V

    .line 89
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->f:Landroid/util/ArraySet;

    .line 91
    new-instance v0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;

    invoke-direct {v0}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->b:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;

    .line 94
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->c:Landroid/content/Context;

    .line 95
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->e:Landroid/os/Handler;

    .line 96
    iget-object p1, p2, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->d:Ljava/lang/String;

    .line 97
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->d:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 98
    sget-object p1, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->d:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private static synthetic a(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)I
    .locals 0

    .line 166
    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method private synthetic a(ILandroid/content/pm/PackageInfo;)J
    .locals 0

    .line 213
    invoke-direct {p0, p2, p1}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->a(Landroid/content/pm/PackageInfo;I)J

    move-result-wide p1

    return-wide p1
.end method

.method private a(Landroid/content/pm/PackageInfo;I)J
    .locals 9

    .line 224
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    .line 226
    new-instance v0, Lcom/android/settingslib/applications/f;

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settingslib/applications/f;-><init>(Landroid/content/Context;)V

    .line 228
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->d:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/settingslib/applications/f;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/settingslib/applications/f$a;

    move-result-object p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    invoke-interface {p2}, Lcom/android/settingslib/applications/f$a;->b()J

    move-result-wide v1

    .line 235
    invoke-interface {p2}, Lcom/android/settingslib/applications/f$a;->a()J

    move-result-wide v3

    .line 236
    iget-object v5, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->d:Ljava/lang/String;

    iget-object v6, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v5, v6}, Lcom/android/settingslib/applications/f;->a(Ljava/lang/String;I)J

    move-result-wide v5

    .line 237
    invoke-interface {p2}, Lcom/android/settingslib/applications/f$a;->c()J

    move-result-wide v7

    cmp-long p2, v5, v7

    if-gez p2, :cond_0

    sub-long/2addr v1, v7

    add-long/2addr v1, v5

    .line 242
    :cond_0
    iget-object p2, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->f:Landroid/util/ArraySet;

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    add-long/2addr v1, v3

    .line 244
    iget-object p2, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->f:Landroid/util/ArraySet;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    return-wide v1

    :catch_0
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method private a(Lcom/android/settingslib/applications/f;I)J
    .locals 2

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->d:Ljava/lang/String;

    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Lcom/android/settingslib/applications/f;->a(Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/settingslib/applications/f$c;

    move-result-object p1

    .line 199
    iget-wide v0, p1, Lcom/android/settingslib/applications/f$c;->a:J

    iget-wide p1, p1, Lcom/android/settingslib/applications/f$c;->e:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    sub-long/2addr v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 201
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 202
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "get external Storage cause exception : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PhoneStorageAsyncLoader"

    invoke-static {p2, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method private a(IDD)Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar$a;
    .locals 0

    div-double/2addr p4, p2

    .line 319
    invoke-static {p1}, Lcom/coloros/settings/feature/storage/c;->a(I)I

    move-result p1

    .line 320
    new-instance p2, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar$a;

    iget-object p3, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->c:Landroid/content/Context;

    invoke-virtual {p3, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-direct {p2, p1, p4, p5}, Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar$a;-><init>(ID)V

    return-object p2
.end method

.method private synthetic a(Ljava/util/concurrent/atomic/AtomicLong;Landroid/content/pm/PackageManager;Ljava/util/concurrent/atomic/AtomicLong;Lcom/android/settingslib/applications/f;Landroid/content/pm/UserInfo;)V
    .locals 3

    const-string v0, "PhoneStorageAsyncLoader"

    .line 171
    :try_start_0
    iget v1, p5, Landroid/content/pm/UserInfo;->id:I

    const/4 v2, 0x0

    .line 14208
    invoke-virtual {p2, v2, v1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    .line 14212
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v2, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$XRP8O0ZzKuuSf-u_VqqqMHiEH6s;

    invoke-direct {v2, p0, v1}, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$XRP8O0ZzKuuSf-u_VqqqMHiEH6s;-><init>(Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;I)V

    .line 14213
    invoke-interface {p2, v2}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object p2

    .line 14214
    invoke-interface {p2}, Ljava/util/stream/LongStream;->sum()J

    move-result-wide v1

    .line 171
    :goto_0
    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 172
    iget p2, p5, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, p4, p2}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->a(Lcom/android/settingslib/applications/f;I)J

    move-result-wide v1

    invoke-virtual {p3, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 174
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v1, "get Apps storage for user cause exception : "

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "get apps storage for user["

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p4, p5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "] sum: appSize:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p4

    invoke-virtual {p2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " externalSize:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Z
    .locals 3

    .line 14669
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 14673
    :cond_0
    invoke-static {p0}, Lcom/oppo/media/MediaFile;->getFileType(Ljava/lang/String;)Lcom/oppo/media/MediaFile$MediaFileType;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    .line 14677
    :cond_1
    iget v0, p0, Lcom/oppo/media/MediaFile$MediaFileType;->fileType:I

    invoke-static {v0}, Lcom/oppo/media/MediaFile;->isAudioFileType(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    goto :goto_0

    .line 14679
    :cond_2
    iget v0, p0, Lcom/oppo/media/MediaFile$MediaFileType;->fileType:I

    invoke-static {v0}, Lcom/oppo/media/MediaFile;->isImageFileType(I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 14681
    :cond_3
    iget v0, p0, Lcom/oppo/media/MediaFile$MediaFileType;->fileType:I

    invoke-static {v0}, Lcom/oppo/media/MediaFile;->isVideoFileType(I)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 14683
    :cond_4
    iget v0, p0, Lcom/oppo/media/MediaFile$MediaFileType;->fileType:I

    invoke-static {v0}, Lcom/oppo/media/MediaFile;->isDocFileType(I)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    .line 14685
    :cond_5
    iget p0, p0, Lcom/oppo/media/MediaFile$MediaFileType;->fileType:I

    invoke-static {p0}, Lcom/oppo/media/MediaFile;->isApkFileType(I)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_0

    :cond_6
    move v2, v1

    :goto_0
    return v2
.end method

.method private c()Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;
    .locals 18
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v7, p0

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-string v10, "PhoneStorageAsyncLoader"

    const-string v0, "start load the storage"

    .line 140
    invoke-static {v10, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, v7, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->f:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 142
    iget-object v0, v7, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->g:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    .line 1793
    iput-wide v1, v0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;->a:J

    .line 1794
    iput-wide v1, v0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;->d:J

    .line 1795
    iput-wide v1, v0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;->b:J

    .line 1796
    iput-wide v1, v0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;->c:J

    .line 1797
    iput-wide v1, v0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;->e:J

    .line 145
    :cond_0
    new-instance v0, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$NAL7ULIqpgI3eHUQz0w8vnylQN0;

    invoke-direct {v0, v7}, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$NAL7ULIqpgI3eHUQz0w8vnylQN0;-><init>(Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;)V

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    .line 2250
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 2251
    iget-object v3, v7, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->b:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;

    iget-object v4, v7, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->c:Landroid/content/Context;

    const/4 v11, 0x1

    invoke-static {v4, v11}, Lcom/coloros/settings/feature/deviceinfo/f;->a(Landroid/content/Context;I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->e:J

    .line 2252
    iget-object v3, v7, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->b:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;

    iget-object v4, v7, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->c:Landroid/content/Context;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/coloros/settings/feature/deviceinfo/f;->a(Landroid/content/Context;I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->f:J

    .line 2253
    iget-object v3, v7, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->b:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;

    iget-object v4, v7, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->c:Landroid/content/Context;

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lcom/coloros/settings/feature/deviceinfo/f;->a(Landroid/content/Context;I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->g:J

    .line 2254
    iget-object v3, v7, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->b:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;

    iget-object v4, v7, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->c:Landroid/content/Context;

    const/4 v5, 0x3

    invoke-static {v4, v5}, Lcom/coloros/settings/feature/deviceinfo/f;->a(Landroid/content/Context;I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->h:J

    .line 2257
    iget-object v3, v7, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->b:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;

    iget-object v4, v7, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->c:Landroid/content/Context;

    const/16 v5, 0x10

    invoke-static {v4, v5}, Lcom/coloros/settings/feature/deviceinfo/f;->a(Landroid/content/Context;I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->i:J

    .line 2258
    iget-object v3, v7, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->b:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;

    iput-boolean v11, v3, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->q:Z

    .line 2259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 2260
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "media Size finished cost : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v3, v1

    const-wide/16 v12, 0x3e8

    div-long/2addr v3, v12

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " mediaBytes:"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->b:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;

    .line 2261
    invoke-virtual {v1}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->c()J

    move-result-wide v1

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2260
    invoke-static {v10, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2262
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->b()V

    .line 3160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 3161
    iget-object v1, v7, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->c:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 3162
    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v6

    .line 3163
    iget-object v1, v7, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 3164
    new-instance v5, Lcom/android/settingslib/applications/f;

    iget-object v1, v7, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->c:Landroid/content/Context;

    invoke-direct {v5, v1}, Lcom/android/settingslib/applications/f;-><init>(Landroid/content/Context;)V

    .line 3165
    sget-object v1, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$e54udCsBsXTQ_PGWziR7fcvRFws;->INSTANCE:Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$e54udCsBsXTQ_PGWziR7fcvRFws;

    invoke-static {v6, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3167
    new-instance v16, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct/range {v16 .. v16}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 3168
    new-instance v17, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 3169
    new-instance v3, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$4RlTqn7Hh5B3D1eyDQnckWQ9VY4;

    move-object v1, v3

    move-object/from16 v2, p0

    move-object v12, v3

    move-object/from16 v3, v16

    move-object v13, v5

    move-object/from16 v5, v17

    move-object v11, v6

    move-object v6, v13

    invoke-direct/range {v1 .. v6}, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$4RlTqn7Hh5B3D1eyDQnckWQ9VY4;-><init>(Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;Ljava/util/concurrent/atomic/AtomicLong;Landroid/content/pm/PackageManager;Ljava/util/concurrent/atomic/AtomicLong;Lcom/android/settingslib/applications/f;)V

    invoke-interface {v11, v12}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 3178
    iget-object v1, v7, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->b:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 3697
    iput-wide v2, v1, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->c:J

    .line 3179
    iget-object v1, v7, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->b:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 4697
    iput-wide v2, v1, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->d:J

    .line 3180
    iget-object v1, v7, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->b:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->o:Z

    .line 3181
    iput-boolean v2, v1, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->p:Z

    .line 3182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 3183
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "apps storage for user finished cost : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v1, v14

    const-wide/16 v4, 0x3e8

    div-long/2addr v1, v4

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " appBytes:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->b:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;

    .line 5697
    iget-wide v1, v1, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->c:J

    .line 3184
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " externalBytes:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->b:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;

    .line 6697
    iget-wide v1, v1, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->d:J

    .line 3185
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3183
    invoke-static {v10, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3186
    invoke-virtual/range {p0 .. p0}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->b()V

    .line 149
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "load storage cause exception"

    .line 151
    invoke-static {v10, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 154
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "end load the storage cost : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v0, v8

    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v0, v7, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->b:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;

    return-object v0
.end method

.method private d()V
    .locals 6

    .line 266
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 267
    new-instance v2, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;

    iget-object v3, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->c:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$b;->a()Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;

    move-result-object v2

    iput-object v2, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->g:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;

    .line 268
    iget-object v2, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->b:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;

    iget-object v3, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->g:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;

    iget-wide v3, v3, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;->d:J

    .line 7697
    iput-wide v3, v2, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->m:J

    .line 269
    iget-object v2, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->b:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;

    iget-object v3, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->g:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;

    iget-wide v3, v3, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;->c:J

    .line 8697
    iput-wide v3, v2, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->k:J

    .line 270
    iget-object v2, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->b:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;

    iget-object v3, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->g:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;

    iget-wide v3, v3, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;->e:J

    .line 9697
    iput-wide v3, v2, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->j:J

    .line 271
    iget-object v2, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->b:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;

    iget-object v3, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->g:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;

    iget-wide v3, v3, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;->a:J

    .line 10697
    iput-wide v3, v2, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->l:J

    .line 272
    iget-object v2, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->b:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->r:Z

    .line 273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 274
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "emulated files finished cost : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr v2, v0

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhoneStorageAsyncLoader"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->b()V

    return-void
.end method

.method private synthetic e()V
    .locals 4

    .line 310
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->a:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$c;

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->b:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;

    invoke-virtual {v1}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->b()J

    move-result-wide v1

    const/16 v3, 0x11

    invoke-interface {v0, v3, v1, v2}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$c;->a(IJ)V

    .line 311
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->a:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$c;

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->b:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;

    .line 13747
    iget-wide v1, v1, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->m:J

    const/16 v3, 0x12

    .line 311
    invoke-interface {v0, v3, v1, v2}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$c;->a(IJ)V

    .line 312
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->a:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$c;

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->g:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;

    invoke-virtual {v1}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$a;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$c;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method private synthetic f()V
    .locals 4

    .line 304
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->a:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$c;

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->b:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;

    invoke-virtual {v1}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->a()J

    move-result-wide v1

    const/16 v3, 0x13

    invoke-interface {v0, v3, v1, v2}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$c;->a(IJ)V

    return-void
.end method

.method private synthetic g()V
    .locals 4

    .line 294
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->a:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$c;

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->b:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;

    iget-wide v1, v1, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->e:J

    const/4 v3, 0x1

    invoke-interface {v0, v3, v1, v2}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$c;->a(IJ)V

    .line 295
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->a:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$c;

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->b:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;

    iget-wide v1, v1, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->f:J

    const/4 v3, 0x2

    invoke-interface {v0, v3, v1, v2}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$c;->a(IJ)V

    .line 296
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->a:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$c;

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->b:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;

    iget-wide v1, v1, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->g:J

    const/4 v3, 0x4

    invoke-interface {v0, v3, v1, v2}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$c;->a(IJ)V

    .line 297
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->a:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$c;

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->b:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;

    iget-wide v1, v1, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->h:J

    const/4 v3, 0x3

    invoke-interface {v0, v3, v1, v2}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$c;->a(IJ)V

    .line 298
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->a:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$c;

    iget-object v1, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->b:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;

    iget-wide v1, v1, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->i:J

    const/16 v3, 0x10

    invoke-interface {v0, v3, v1, v2}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$c;->a(IJ)V

    return-void
.end method

.method public static synthetic lambda$4RlTqn7Hh5B3D1eyDQnckWQ9VY4(Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;Ljava/util/concurrent/atomic/AtomicLong;Landroid/content/pm/PackageManager;Ljava/util/concurrent/atomic/AtomicLong;Lcom/android/settingslib/applications/f;Landroid/content/pm/UserInfo;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->a(Ljava/util/concurrent/atomic/AtomicLong;Landroid/content/pm/PackageManager;Ljava/util/concurrent/atomic/AtomicLong;Lcom/android/settingslib/applications/f;Landroid/content/pm/UserInfo;)V

    return-void
.end method

.method public static synthetic lambda$5bPcX2YD2B6Z6XTr4CajyVHzNB4(Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->f()V

    return-void
.end method

.method public static synthetic lambda$JUbkIkX1wIS85dhEfQYOt9RD6nk(Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->g()V

    return-void
.end method

.method public static synthetic lambda$MQi5EtweAzscfDnbqYNI6dO7ZNU(Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->e()V

    return-void
.end method

.method public static synthetic lambda$NAL7ULIqpgI3eHUQz0w8vnylQN0(Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->d()V

    return-void
.end method

.method public static synthetic lambda$XRP8O0ZzKuuSf-u_VqqqMHiEH6s(Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;ILandroid/content/pm/PackageInfo;)J
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->a(ILandroid/content/pm/PackageInfo;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic lambda$e54udCsBsXTQ_PGWziR7fcvRFws(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->a(Landroid/content/pm/UserInfo;Landroid/content/pm/UserInfo;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final synthetic a()V
    .locals 2

    const-string v0, "PhoneStorageAsyncLoader"

    const-string v1, "onDiscardResult"

    .line 11133
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->a:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$c;

    if-nez v0, :cond_0

    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->b:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;

    iget-boolean v0, v0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->q:Z

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->e:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$JUbkIkX1wIS85dhEfQYOt9RD6nk;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$JUbkIkX1wIS85dhEfQYOt9RD6nk;-><init>(Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->b:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;

    iget-boolean v0, v0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->n:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->b:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;

    iget-boolean v0, v0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->o:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->b:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;

    iget-boolean v0, v0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->p:Z

    if-eqz v0, :cond_2

    .line 303
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->e:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$5bPcX2YD2B6Z6XTr4CajyVHzNB4;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$5bPcX2YD2B6Z6XTr4CajyVHzNB4;-><init>(Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 308
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->b:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;

    iget-boolean v0, v0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->r:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->b:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;

    iget-boolean v0, v0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->o:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->b:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;

    iget-boolean v0, v0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->p:Z

    if-eqz v0, :cond_3

    .line 309
    iget-object v0, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->e:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$MQi5EtweAzscfDnbqYNI6dO7ZNU;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/storage/apps/usage/-$$Lambda$PhoneStorageAsyncLoader$MQi5EtweAzscfDnbqYNI6dO7ZNU;-><init>(Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 81
    invoke-direct {p0}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->c()Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;

    move-result-object v0

    return-object v0
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroidx/loader/content/Loader;
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroidx/loader/content/Loader<",
            "Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;",
            ">;"
        }
    .end annotation

    const-string p1, "PhoneStorageAsyncLoader"

    const-string p2, "onCreateLoader"

    .line 105
    invoke-static {p1, p2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public synthetic onLoadFinished(Landroidx/loader/content/Loader;Ljava/lang/Object;)V
    .locals 8
    .param p1    # Landroidx/loader/content/Loader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 81
    check-cast p2, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;

    const-string p1, "PhoneStorageAsyncLoader"

    const-string v0, "onLoadFinished"

    .line 12111
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12697
    iget-wide v0, p2, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->a:J

    .line 12113
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    long-to-double v0, v0

    .line 12114
    iget-wide v2, p2, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->e:J

    long-to-double v6, v2

    const/4 v3, 0x1

    move-object v2, p0

    move-wide v4, v0

    invoke-direct/range {v2 .. v7}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->a(IDD)Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar$a;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12115
    iget-wide v2, p2, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->g:J

    long-to-double v6, v2

    const/4 v3, 0x4

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->a(IDD)Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar$a;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12116
    iget-wide v2, p2, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->f:J

    long-to-double v6, v2

    const/4 v3, 0x2

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->a(IDD)Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar$a;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12117
    iget-wide v2, p2, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->h:J

    long-to-double v6, v2

    const/4 v3, 0x3

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->a(IDD)Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar$a;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12118
    iget-wide v2, p2, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->i:J

    long-to-double v6, v2

    const/16 v3, 0x10

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->a(IDD)Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar$a;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12119
    invoke-virtual {p2}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->b()J

    move-result-wide v2

    long-to-double v6, v2

    const/16 v3, 0x11

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->a(IDD)Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar$a;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12747
    iget-wide v2, p2, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->m:J

    long-to-double v6, v2

    const/16 v3, 0x12

    move-object v2, p0

    .line 12120
    invoke-direct/range {v2 .. v7}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->a(IDD)Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar$a;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12121
    invoke-virtual {p2}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->a()J

    move-result-wide v2

    long-to-double v6, v2

    const/16 v3, 0x13

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->a(IDD)Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar$a;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13697
    iget-wide v2, p2, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;->b:J

    long-to-double v6, v2

    const/16 v3, 0x15

    move-object v2, p0

    .line 12122
    invoke-direct/range {v2 .. v7}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->a(IDD)Lcom/coloros/settings/feature/storage/widgets/ColorfulRatioBar$a;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12123
    iget-object p2, p0, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader;->a:Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$c;

    invoke-interface {p2, p1}, Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$c;->a(Ljava/util/List;)V

    return-void
.end method

.method public onLoaderReset(Landroidx/loader/content/Loader;)V
    .locals 1
    .param p1    # Landroidx/loader/content/Loader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/loader/content/Loader<",
            "Lcom/coloros/settings/feature/storage/apps/usage/PhoneStorageAsyncLoader$d;",
            ">;)V"
        }
    .end annotation

    const-string p1, "PhoneStorageAsyncLoader"

    const-string v0, "onLoaderReset"

    .line 128
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
