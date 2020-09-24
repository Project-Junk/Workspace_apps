.class public final Lcom/coloros/settings/feature/deviceinfo/e;
.super Ljava/lang/Object;
.source "OppoStorageMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/deviceinfo/e$a;,
        Lcom/coloros/settings/feature/deviceinfo/e$b;
    }
.end annotation


# static fields
.field private static final c:Landroid/content/ComponentName;

.field private static final q:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/coloros/settings/feature/deviceinfo/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/coloros/settings/feature/deviceinfo/e$a;

.field public volatile b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/coloros/settings/feature/deviceinfo/e$b;",
            ">;"
        }
    .end annotation
.end field

.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:J

.field private j:J

.field private k:J

.field private l:J

.field private m:[J

.field private n:J

.field private o:[Landroid/os/storage/StorageVolume;

.field private p:Landroid/os/storage/StorageVolume;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 63
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.defcontainer"

    const-string v2, "com.android.defcontainer.DefaultContainerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/coloros/settings/feature/deviceinfo/e;->c:Landroid/content/ComponentName;

    const/16 v0, 0xa

    .line 89
    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const/16 v1, 0x9

    const-string v2, "Android"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/feature/deviceinfo/e;->q:Ljava/util/Set;

    .line 98
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/deviceinfo/e;->r:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V
    .locals 3

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 73
    iput-wide v0, p0, Lcom/coloros/settings/feature/deviceinfo/e;->f:J

    .line 78
    iput-wide v0, p0, Lcom/coloros/settings/feature/deviceinfo/e;->k:J

    .line 79
    iput-wide v0, p0, Lcom/coloros/settings/feature/deviceinfo/e;->l:J

    const/4 v2, 0x4

    .line 81
    new-array v2, v2, [J

    iput-object v2, p0, Lcom/coloros/settings/feature/deviceinfo/e;->m:[J

    .line 82
    iput-wide v0, p0, Lcom/coloros/settings/feature/deviceinfo/e;->n:J

    .line 110
    iput-object p2, p0, Lcom/coloros/settings/feature/deviceinfo/e;->p:Landroid/os/storage/StorageVolume;

    const/4 p2, 0x0

    .line 111
    iput-object p2, p0, Lcom/coloros/settings/feature/deviceinfo/e;->o:[Landroid/os/storage/StorageVolume;

    .line 113
    new-instance p2, Landroid/os/HandlerThread;

    const-string v0, "MemoryMeasurement"

    invoke-direct {p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 115
    new-instance v0, Lcom/coloros/settings/feature/deviceinfo/e$a;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {v0, p0, p1, p2}, Lcom/coloros/settings/feature/deviceinfo/e$a;-><init>(Lcom/coloros/settings/feature/deviceinfo/e;Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/e;->a:Lcom/coloros/settings/feature/deviceinfo/e$a;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/deviceinfo/e;J)J
    .locals 0

    .line 45
    iput-wide p1, p0, Lcom/coloros/settings/feature/deviceinfo/e;->k:J

    return-wide p1
.end method

.method static synthetic a()Landroid/content/ComponentName;
    .locals 1

    .line 45
    sget-object v0, Lcom/coloros/settings/feature/deviceinfo/e;->c:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic a(Lcom/coloros/settings/feature/deviceinfo/e;)Landroid/os/storage/StorageVolume;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/coloros/settings/feature/deviceinfo/e;->p:Landroid/os/storage/StorageVolume;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/coloros/settings/feature/deviceinfo/e;
    .locals 1

    .line 137
    new-instance v0, Lcom/coloros/settings/feature/deviceinfo/e;

    .line 138
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/coloros/settings/feature/deviceinfo/e;-><init>(Landroid/content/Context;Landroid/os/storage/StorageVolume;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)[J
    .locals 4

    .line 143
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x2

    .line 144
    new-array p0, p0, [J

    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v1

    const/4 v3, 0x0

    aput-wide v1, p0, v3

    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    const/4 v2, 0x1

    aput-wide v0, p0, v2

    return-object p0
.end method

.method static synthetic b(Lcom/coloros/settings/feature/deviceinfo/e;J)J
    .locals 0

    .line 45
    iput-wide p1, p0, Lcom/coloros/settings/feature/deviceinfo/e;->l:J

    return-wide p1
.end method

.method static synthetic b(Lcom/coloros/settings/feature/deviceinfo/e;)V
    .locals 12

    .line 1195
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendExactUpdate : (mReceiver != null) == "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/e;->b:Ljava/lang/ref/WeakReference;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageMeasurement"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/e;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/e;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/deviceinfo/e$b;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    const-string p0, "measurements dropped because receiver is null! wasted effort"

    .line 1198
    invoke-static {v1, p0}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1202
    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1203
    iget-wide v4, p0, Lcom/coloros/settings/feature/deviceinfo/e;->d:J

    const-string v6, "system_size"

    invoke-virtual {v1, v6, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1204
    iget-wide v4, p0, Lcom/coloros/settings/feature/deviceinfo/e;->e:J

    const-string v6, "system_avail"

    invoke-virtual {v1, v6, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1205
    iget-wide v4, p0, Lcom/coloros/settings/feature/deviceinfo/e;->f:J

    const-string v6, "data_size"

    invoke-virtual {v1, v6, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1206
    iget-wide v4, p0, Lcom/coloros/settings/feature/deviceinfo/e;->g:J

    const-string v6, "data_avail"

    invoke-virtual {v1, v6, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1207
    iget-wide v4, p0, Lcom/coloros/settings/feature/deviceinfo/e;->h:J

    const-string v6, "total_size"

    invoke-virtual {v1, v6, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1208
    iget-wide v4, p0, Lcom/coloros/settings/feature/deviceinfo/e;->i:J

    const-string v6, "avail_size"

    invoke-virtual {v1, v6, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1209
    iget-wide v4, p0, Lcom/coloros/settings/feature/deviceinfo/e;->j:J

    const-string v6, "apps_used"

    invoke-virtual {v1, v6, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1210
    iget-wide v4, p0, Lcom/coloros/settings/feature/deviceinfo/e;->k:J

    const-string v6, "storage_size"

    invoke-virtual {v1, v6, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1211
    iget-wide v4, p0, Lcom/coloros/settings/feature/deviceinfo/e;->l:J

    const-string v6, "storage_avail"

    invoke-virtual {v1, v6, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1213
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const-string v7, "misc_size"

    if-eqz v4, :cond_4

    .line 1214
    iget-object v4, p0, Lcom/coloros/settings/feature/deviceinfo/e;->p:Landroid/os/storage/StorageVolume;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1215
    iget-wide v8, p0, Lcom/coloros/settings/feature/deviceinfo/e;->h:J

    iget-wide v10, p0, Lcom/coloros/settings/feature/deviceinfo/e;->i:J

    sub-long/2addr v8, v10

    iget-wide v10, p0, Lcom/coloros/settings/feature/deviceinfo/e;->d:J

    sub-long/2addr v8, v10

    iget-object v4, p0, Lcom/coloros/settings/feature/deviceinfo/e;->m:[J

    aget-wide v10, v4, v3

    sub-long/2addr v8, v10

    aget-wide v2, v4, v2

    sub-long/2addr v8, v2

    aget-wide v2, v4, v6

    sub-long/2addr v8, v2

    aget-wide v2, v4, v5

    sub-long/2addr v8, v2

    invoke-virtual {v1, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_2

    .line 1218
    :cond_3
    iget-wide v8, p0, Lcom/coloros/settings/feature/deviceinfo/e;->h:J

    iget-wide v10, p0, Lcom/coloros/settings/feature/deviceinfo/e;->i:J

    sub-long/2addr v8, v10

    iget-wide v10, p0, Lcom/coloros/settings/feature/deviceinfo/e;->d:J

    sub-long/2addr v8, v10

    iget-wide v10, p0, Lcom/coloros/settings/feature/deviceinfo/e;->j:J

    sub-long/2addr v8, v10

    iget-object v4, p0, Lcom/coloros/settings/feature/deviceinfo/e;->m:[J

    aget-wide v10, v4, v3

    sub-long/2addr v8, v10

    aget-wide v2, v4, v2

    sub-long/2addr v8, v2

    aget-wide v2, v4, v6

    sub-long/2addr v8, v2

    aget-wide v2, v4, v5

    sub-long/2addr v8, v2

    invoke-virtual {v1, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_2

    .line 1222
    :cond_4
    iget-object v4, p0, Lcom/coloros/settings/feature/deviceinfo/e;->p:Landroid/os/storage/StorageVolume;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1223
    iget-wide v8, p0, Lcom/coloros/settings/feature/deviceinfo/e;->h:J

    iget-wide v10, p0, Lcom/coloros/settings/feature/deviceinfo/e;->i:J

    sub-long/2addr v8, v10

    iget-wide v10, p0, Lcom/coloros/settings/feature/deviceinfo/e;->d:J

    sub-long/2addr v8, v10

    iget-wide v10, p0, Lcom/coloros/settings/feature/deviceinfo/e;->f:J

    sub-long/2addr v8, v10

    iget-wide v10, p0, Lcom/coloros/settings/feature/deviceinfo/e;->g:J

    add-long/2addr v8, v10

    iget-object v4, p0, Lcom/coloros/settings/feature/deviceinfo/e;->m:[J

    aget-wide v10, v4, v3

    sub-long/2addr v8, v10

    aget-wide v2, v4, v2

    sub-long/2addr v8, v2

    aget-wide v2, v4, v6

    sub-long/2addr v8, v2

    aget-wide v2, v4, v5

    sub-long/2addr v8, v2

    invoke-virtual {v1, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_2

    .line 1227
    :cond_5
    iget-wide v8, p0, Lcom/coloros/settings/feature/deviceinfo/e;->h:J

    iget-wide v10, p0, Lcom/coloros/settings/feature/deviceinfo/e;->i:J

    sub-long/2addr v8, v10

    iget-wide v10, p0, Lcom/coloros/settings/feature/deviceinfo/e;->d:J

    sub-long/2addr v8, v10

    iget-wide v10, p0, Lcom/coloros/settings/feature/deviceinfo/e;->f:J

    sub-long/2addr v8, v10

    iget-wide v10, p0, Lcom/coloros/settings/feature/deviceinfo/e;->g:J

    add-long/2addr v8, v10

    iget-wide v10, p0, Lcom/coloros/settings/feature/deviceinfo/e;->j:J

    sub-long/2addr v8, v10

    iget-object v4, p0, Lcom/coloros/settings/feature/deviceinfo/e;->m:[J

    aget-wide v10, v4, v3

    sub-long/2addr v8, v10

    aget-wide v2, v4, v2

    sub-long/2addr v8, v2

    aget-wide v2, v4, v6

    sub-long/2addr v8, v2

    aget-wide v2, v4, v5

    sub-long/2addr v8, v2

    invoke-virtual {v1, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1232
    :goto_2
    iget-object v2, p0, Lcom/coloros/settings/feature/deviceinfo/e;->m:[J

    const-string v3, "media_sizes"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 1233
    iget-wide v2, p0, Lcom/coloros/settings/feature/deviceinfo/e;->n:J

    const-string p0, "document_size"

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1235
    invoke-interface {v0, v1}, Lcom/coloros/settings/feature/deviceinfo/e$b;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic c(Lcom/coloros/settings/feature/deviceinfo/e;)J
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/coloros/settings/feature/deviceinfo/e;->k:J

    return-wide v0
.end method

.method static synthetic c(Lcom/coloros/settings/feature/deviceinfo/e;J)J
    .locals 0

    .line 45
    iput-wide p1, p0, Lcom/coloros/settings/feature/deviceinfo/e;->h:J

    return-wide p1
.end method

.method static synthetic d(Lcom/coloros/settings/feature/deviceinfo/e;)J
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/coloros/settings/feature/deviceinfo/e;->l:J

    return-wide v0
.end method

.method static synthetic d(Lcom/coloros/settings/feature/deviceinfo/e;J)J
    .locals 0

    .line 45
    iput-wide p1, p0, Lcom/coloros/settings/feature/deviceinfo/e;->i:J

    return-wide p1
.end method

.method static synthetic e(Lcom/coloros/settings/feature/deviceinfo/e;)J
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/coloros/settings/feature/deviceinfo/e;->h:J

    return-wide v0
.end method

.method static synthetic e(Lcom/coloros/settings/feature/deviceinfo/e;J)J
    .locals 0

    .line 45
    iput-wide p1, p0, Lcom/coloros/settings/feature/deviceinfo/e;->d:J

    return-wide p1
.end method

.method static synthetic f(Lcom/coloros/settings/feature/deviceinfo/e;)J
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/coloros/settings/feature/deviceinfo/e;->i:J

    return-wide v0
.end method

.method static synthetic f(Lcom/coloros/settings/feature/deviceinfo/e;J)J
    .locals 0

    .line 45
    iput-wide p1, p0, Lcom/coloros/settings/feature/deviceinfo/e;->e:J

    return-wide p1
.end method

.method static synthetic g(Lcom/coloros/settings/feature/deviceinfo/e;)J
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/coloros/settings/feature/deviceinfo/e;->d:J

    return-wide v0
.end method

.method static synthetic g(Lcom/coloros/settings/feature/deviceinfo/e;J)J
    .locals 0

    .line 45
    iput-wide p1, p0, Lcom/coloros/settings/feature/deviceinfo/e;->f:J

    return-wide p1
.end method

.method static synthetic h(Lcom/coloros/settings/feature/deviceinfo/e;J)J
    .locals 0

    .line 45
    iput-wide p1, p0, Lcom/coloros/settings/feature/deviceinfo/e;->g:J

    return-wide p1
.end method

.method static synthetic h(Lcom/coloros/settings/feature/deviceinfo/e;)[Landroid/os/storage/StorageVolume;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/coloros/settings/feature/deviceinfo/e;->o:[Landroid/os/storage/StorageVolume;

    return-object p0
.end method

.method static synthetic i(Lcom/coloros/settings/feature/deviceinfo/e;J)J
    .locals 0

    .line 45
    iput-wide p1, p0, Lcom/coloros/settings/feature/deviceinfo/e;->j:J

    return-wide p1
.end method

.method static synthetic i(Lcom/coloros/settings/feature/deviceinfo/e;)[J
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/coloros/settings/feature/deviceinfo/e;->m:[J

    return-object p0
.end method

.method static synthetic j(Lcom/coloros/settings/feature/deviceinfo/e;J)J
    .locals 0

    .line 45
    iput-wide p1, p0, Lcom/coloros/settings/feature/deviceinfo/e;->n:J

    return-wide p1
.end method
