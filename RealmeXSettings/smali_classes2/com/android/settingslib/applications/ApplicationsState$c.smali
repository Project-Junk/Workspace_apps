.class final Lcom/android/settingslib/applications/ApplicationsState$c;
.super Landroid/os/Handler;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Z

.field final b:Landroid/content/pm/IPackageStatsObserver$Stub;

.field final synthetic c:Lcom/android/settingslib/applications/ApplicationsState;


# direct methods
.method constructor <init>(Lcom/android/settingslib/applications/ApplicationsState;Landroid/os/Looper;)V
    .locals 0

    .line 1058
    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    .line 1059
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1334
    new-instance p1, Lcom/android/settingslib/applications/ApplicationsState$c$1;

    invoke-direct {p1, p0}, Lcom/android/settingslib/applications/ApplicationsState$c$1;-><init>(Lcom/android/settingslib/applications/ApplicationsState$c;)V

    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState$c;->b:Landroid/content/pm/IPackageStatsObserver$Stub;

    return-void
.end method

.method private a(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/applications/ApplicationsState$Session;",
            ">;)I"
        }
    .end annotation

    .line 1325
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->p:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1327
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 1328
    invoke-static {v2}, Lcom/android/settingslib/applications/ApplicationsState$Session;->a(Lcom/android/settingslib/applications/ApplicationsState$Session;)I

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    .line 1330
    :cond_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    .line 1331
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private synthetic a()V
    .locals 4

    .line 1275
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->g:Landroid/app/usage/StorageStatsManager;

    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState;->t:Ljava/util/UUID;

    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->u:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget v3, v3, Lcom/android/settingslib/applications/ApplicationsState;->v:I

    .line 1279
    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 1276
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/usage/StorageStatsManager;->queryStatsForPackage(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;

    move-result-object v0

    .line 1281
    new-instance v1, Landroid/content/pm/PackageStats;

    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->u:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget v3, v3, Lcom/android/settingslib/applications/ApplicationsState;->v:I

    invoke-direct {v1, v2, v3}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;I)V

    .line 1284
    invoke-virtual {v0}, Landroid/app/usage/StorageStats;->getCodeBytes()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/content/pm/PackageStats;->codeSize:J

    .line 1285
    invoke-virtual {v0}, Landroid/app/usage/StorageStats;->getDataBytes()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/content/pm/PackageStats;->dataSize:J

    .line 1286
    invoke-virtual {v0}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide v2

    iput-wide v2, v1, Landroid/content/pm/PackageStats;->cacheSize:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1288
    :try_start_1
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$c;->b:Landroid/content/pm/IPackageStatsObserver$Stub;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageStatsObserver$Stub;->onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    return-void

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 1293
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to query stats: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApplicationsState"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    :try_start_2
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState$c;->b:Landroid/content/pm/IPackageStatsObserver$Stub;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/IPackageStatsObserver$Stub;->onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    :catch_3
    return-void
.end method

.method public static synthetic lambda$sG_Shyjcb5k2MnIrFvGWrptlLEA(Lcom/android/settingslib/applications/ApplicationsState$c;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settingslib/applications/ApplicationsState$c;->a()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1066
    iget-object v2, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->o:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1067
    :try_start_0
    iget-object v3, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState;->o:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    if-lez v3, :cond_0

    .line 1068
    new-instance v3, Ljava/util/ArrayList;

    iget-object v5, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState;->o:Ljava/util/ArrayList;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1069
    iget-object v5, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState;->o:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_0
    move-object v3, v4

    .line 1071
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    const/4 v2, 0x0

    if-eqz v3, :cond_1

    move v5, v2

    .line 1073
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 1074
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v6}, Lcom/android/settingslib/applications/ApplicationsState$Session;->a()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1078
    :cond_1
    iget-object v3, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState;->n:Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Lcom/android/settingslib/applications/ApplicationsState$c;->a(Ljava/util/List;)I

    move-result v3

    .line 1080
    iget v5, v0, Landroid/os/Message;->what:I

    const/high16 v6, 0x800000

    const/4 v7, 0x3

    const/4 v8, 0x7

    const/16 v9, 0x8

    const/4 v10, 0x5

    const/4 v11, 0x2

    const/4 v12, 0x4

    const/4 v13, 0x6

    const/4 v14, 0x1

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_11

    .line 1243
    :pswitch_0
    invoke-static {v3, v12}, Lcom/android/settingslib/applications/ApplicationsState;->a(II)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1244
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, v0, Lcom/android/settingslib/applications/ApplicationsState;->p:Landroid/util/SparseArray;

    monitor-enter v3

    .line 1246
    :try_start_1
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->u:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 1251
    monitor-exit v3

    return-void

    .line 1254
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move v0, v2

    .line 1255
    :goto_2
    iget-object v7, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState;->q:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_8

    .line 1256
    iget-object v7, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState;->q:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/applications/ApplicationsState$a;

    .line 1257
    iget-object v8, v7, Lcom/android/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v8, v6}, Lcom/android/settingslib/applications/ApplicationsState;->a(II)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-wide v8, v7, Lcom/android/settingslib/applications/ApplicationsState$a;->d:J

    const-wide/16 v11, -0x1

    cmp-long v8, v8, v11

    if-eqz v8, :cond_3

    iget-boolean v8, v7, Lcom/android/settingslib/applications/ApplicationsState$a;->p:Z

    if-eqz v8, :cond_7

    .line 1259
    :cond_3
    iget-wide v8, v7, Lcom/android/settingslib/applications/ApplicationsState$a;->q:J

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-eqz v0, :cond_4

    iget-wide v8, v7, Lcom/android/settingslib/applications/ApplicationsState$a;->q:J

    const-wide/16 v10, 0x4e20

    sub-long v10, v4, v10

    cmp-long v0, v8, v10

    if-gez v0, :cond_6

    .line 1261
    :cond_4
    iget-boolean v0, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->a:Z

    if-nez v0, :cond_5

    .line 1262
    iput-boolean v14, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->a:Z

    .line 1263
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->B:Lcom/android/settingslib/applications/ApplicationsState$d;

    .line 1264
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1263
    invoke-virtual {v0, v13, v2}, Lcom/android/settingslib/applications/ApplicationsState$d;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1265
    iget-object v2, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->B:Lcom/android/settingslib/applications/ApplicationsState$d;

    invoke-virtual {v2, v0}, Lcom/android/settingslib/applications/ApplicationsState$d;->sendMessage(Landroid/os/Message;)Z

    .line 1267
    :cond_5
    iput-wide v4, v7, Lcom/android/settingslib/applications/ApplicationsState$a;->q:J

    .line 1268
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, v7, Lcom/android/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    iput-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState;->t:Ljava/util/UUID;

    .line 1269
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, v7, Lcom/android/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState;->u:Ljava/lang/String;

    .line 1270
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, v7, Lcom/android/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    iput v2, v0, Lcom/android/settingslib/applications/ApplicationsState;->v:I

    .line 1273
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->A:Lcom/android/settingslib/applications/ApplicationsState$c;

    new-instance v2, Lcom/android/settingslib/applications/-$$Lambda$ApplicationsState$c$sG_Shyjcb5k2MnIrFvGWrptlLEA;

    invoke-direct {v2, v1}, Lcom/android/settingslib/applications/-$$Lambda$ApplicationsState$c$sG_Shyjcb5k2MnIrFvGWrptlLEA;-><init>(Lcom/android/settingslib/applications/ApplicationsState$c;)V

    invoke-virtual {v0, v2}, Lcom/android/settingslib/applications/ApplicationsState$c;->post(Ljava/lang/Runnable;)Z

    .line 1306
    :cond_6
    monitor-exit v3

    return-void

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    .line 1309
    :cond_8
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->B:Lcom/android/settingslib/applications/ApplicationsState$d;

    invoke-virtual {v0, v10}, Lcom/android/settingslib/applications/ApplicationsState$d;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1310
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->B:Lcom/android/settingslib/applications/ApplicationsState$d;

    invoke-virtual {v0, v10}, Lcom/android/settingslib/applications/ApplicationsState$d;->sendEmptyMessage(I)Z

    .line 1311
    iput-boolean v2, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->a:Z

    .line 1312
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->B:Lcom/android/settingslib/applications/ApplicationsState$d;

    .line 1313
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1312
    invoke-virtual {v0, v13, v2}, Lcom/android/settingslib/applications/ApplicationsState$d;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1314
    iget-object v2, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->B:Lcom/android/settingslib/applications/ApplicationsState$d;

    invoke-virtual {v2, v0}, Lcom/android/settingslib/applications/ApplicationsState$d;->sendMessage(Landroid/os/Message;)Z

    .line 1317
    :cond_9
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1208
    :pswitch_1
    invoke-static {v3, v11}, Lcom/android/settingslib/applications/ApplicationsState;->a(II)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1210
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, v0, Lcom/android/settingslib/applications/ApplicationsState;->p:Landroid/util/SparseArray;

    monitor-enter v3

    move v0, v2

    move v4, v0

    .line 1212
    :goto_3
    :try_start_2
    iget-object v5, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState;->q:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_11

    if-ge v4, v11, :cond_11

    .line 1213
    iget-object v5, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState;->q:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/applications/ApplicationsState$a;

    .line 1214
    iget-object v6, v5, Lcom/android/settingslib/applications/ApplicationsState$a;->l:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_a

    iget-boolean v6, v5, Lcom/android/settingslib/applications/ApplicationsState$a;->g:Z

    if-nez v6, :cond_10

    .line 1215
    :cond_a
    monitor-enter v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1216
    :try_start_3
    iget-object v6, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState;->b:Landroid/content/Context;

    iget-object v9, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v9, v9, Lcom/android/settingslib/applications/ApplicationsState;->d:Landroid/util/IconDrawableFactory;

    .line 2588
    iget-object v10, v5, Lcom/android/settingslib/applications/ApplicationsState$a;->l:Landroid/graphics/drawable/Drawable;

    if-nez v10, :cond_c

    .line 2589
    iget-object v10, v5, Lcom/android/settingslib/applications/ApplicationsState$a;->a:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 2590
    iget-object v6, v5, Lcom/android/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9, v6}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v5, Lcom/android/settingslib/applications/ApplicationsState$a;->l:Landroid/graphics/drawable/Drawable;

    :goto_4
    move v6, v14

    goto :goto_6

    .line 2593
    :cond_b
    iput-boolean v2, v5, Lcom/android/settingslib/applications/ApplicationsState$a;->g:Z

    const-string v9, "sym_app_on_sd_unavailable_icon"

    .line 2595
    invoke-static {v6, v9}, Lcom/android/settingslib/m/a/a;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v5, Lcom/android/settingslib/applications/ApplicationsState$a;->l:Landroid/graphics/drawable/Drawable;

    goto :goto_5

    .line 2598
    :cond_c
    iget-boolean v6, v5, Lcom/android/settingslib/applications/ApplicationsState$a;->g:Z

    if-nez v6, :cond_d

    .line 2601
    iget-object v6, v5, Lcom/android/settingslib/applications/ApplicationsState$a;->a:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 2602
    iput-boolean v14, v5, Lcom/android/settingslib/applications/ApplicationsState$a;->g:Z

    .line 2603
    iget-object v6, v5, Lcom/android/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9, v6}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v5, Lcom/android/settingslib/applications/ApplicationsState$a;->l:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    :cond_d
    :goto_5
    move v6, v2

    :goto_6
    if-eqz v6, :cond_f

    .line 1217
    iget-boolean v6, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->a:Z

    if-nez v6, :cond_e

    .line 1218
    iput-boolean v14, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->a:Z

    .line 1219
    iget-object v6, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState;->B:Lcom/android/settingslib/applications/ApplicationsState$d;

    .line 1220
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1219
    invoke-virtual {v6, v13, v9}, Lcom/android/settingslib/applications/ApplicationsState$d;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 1221
    iget-object v9, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v9, v9, Lcom/android/settingslib/applications/ApplicationsState;->B:Lcom/android/settingslib/applications/ApplicationsState$d;

    invoke-virtual {v9, v6}, Lcom/android/settingslib/applications/ApplicationsState$d;->sendMessage(Landroid/os/Message;)Z

    :cond_e
    add-int/lit8 v4, v4, 0x1

    .line 1225
    :cond_f
    monitor-exit v5

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    .line 1229
    :cond_11
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-lez v4, :cond_12

    .line 1231
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->B:Lcom/android/settingslib/applications/ApplicationsState$d;

    invoke-virtual {v0, v7}, Lcom/android/settingslib/applications/ApplicationsState$d;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_12

    .line 1232
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->B:Lcom/android/settingslib/applications/ApplicationsState$d;

    invoke-virtual {v0, v7}, Lcom/android/settingslib/applications/ApplicationsState$d;->sendEmptyMessage(I)Z

    :cond_12
    if-lt v4, v11, :cond_13

    .line 1236
    invoke-virtual {v1, v13}, Lcom/android/settingslib/applications/ApplicationsState$c;->sendEmptyMessage(I)Z

    return-void

    :catchall_2
    move-exception v0

    .line 1229
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 1240
    :cond_13
    invoke-virtual {v1, v8}, Lcom/android/settingslib/applications/ApplicationsState$c;->sendEmptyMessage(I)Z

    return-void

    .line 1153
    :pswitch_2
    iget v5, v0, Landroid/os/Message;->what:I

    if-ne v5, v12, :cond_14

    .line 1154
    invoke-static {v3, v9}, Lcom/android/settingslib/applications/ApplicationsState;->a(II)Z

    move-result v5

    if-nez v5, :cond_15

    :cond_14
    iget v5, v0, Landroid/os/Message;->what:I

    if-ne v5, v10, :cond_1a

    const/16 v5, 0x10

    .line 1156
    invoke-static {v3, v5}, Lcom/android/settingslib/applications/ApplicationsState;->a(II)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1158
    :cond_15
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v3, v5, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1159
    iget v4, v0, Landroid/os/Message;->what:I

    if-ne v4, v12, :cond_16

    const-string v4, "android.intent.category.LAUNCHER"

    goto :goto_7

    :cond_16
    const-string v4, "android.intent.category.LEANBACK_LAUNCHER"

    :goto_7
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move v4, v2

    .line 1161
    :goto_8
    iget-object v5, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState;->p:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_19

    .line 1162
    iget-object v5, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState;->p:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 1169
    iget-object v6, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState;->c:Landroid/content/pm/PackageManager;

    const v7, 0xc0200

    invoke-virtual {v6, v3, v7, v5}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v6

    .line 1176
    iget-object v7, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState;->p:Landroid/util/SparseArray;

    monitor-enter v7

    .line 1178
    :try_start_6
    iget-object v9, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v9, v9, Lcom/android/settingslib/applications/ApplicationsState;->p:Landroid/util/SparseArray;

    invoke-virtual {v9, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    .line 1179
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    move v15, v2

    :goto_9
    if-ge v15, v11, :cond_18

    .line 1181
    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 1182
    iget-object v13, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1183
    invoke-virtual {v9, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v10, v17

    check-cast v10, Lcom/android/settingslib/applications/ApplicationsState$a;

    if-eqz v10, :cond_17

    .line 1185
    iput-boolean v14, v10, Lcom/android/settingslib/applications/ApplicationsState$a;->h:Z

    .line 1186
    iget-boolean v13, v10, Lcom/android/settingslib/applications/ApplicationsState$a;->i:Z

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v2, v2, Landroid/content/pm/ActivityInfo;->enabled:Z

    or-int/2addr v2, v13

    iput-boolean v2, v10, Lcom/android/settingslib/applications/ApplicationsState$a;->i:Z

    goto :goto_a

    :cond_17
    const-string v2, "ApplicationsState"

    .line 1189
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v14, "Cannot find pkg: "

    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " on user "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    add-int/lit8 v15, v15, 0x1

    const/4 v2, 0x0

    const/4 v10, 0x5

    const/4 v13, 0x6

    const/4 v14, 0x1

    goto :goto_9

    .line 1194
    :cond_18
    monitor-exit v7

    add-int/lit8 v4, v4, 0x1

    const/4 v2, 0x0

    const/4 v10, 0x5

    const/4 v13, 0x6

    const/4 v14, 0x1

    goto :goto_8

    :catchall_3
    move-exception v0

    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    .line 1197
    :cond_19
    iget-object v2, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->B:Lcom/android/settingslib/applications/ApplicationsState$d;

    invoke-virtual {v2, v8}, Lcom/android/settingslib/applications/ApplicationsState$d;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 1198
    iget-object v2, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->B:Lcom/android/settingslib/applications/ApplicationsState$d;

    invoke-virtual {v2, v8}, Lcom/android/settingslib/applications/ApplicationsState$d;->sendEmptyMessage(I)Z

    .line 1201
    :cond_1a
    iget v0, v0, Landroid/os/Message;->what:I

    if-ne v0, v12, :cond_1b

    const/4 v0, 0x5

    .line 1202
    invoke-virtual {v1, v0}, Lcom/android/settingslib/applications/ApplicationsState$c;->sendEmptyMessage(I)Z

    return-void

    :cond_1b
    const/4 v0, 0x6

    .line 1204
    invoke-virtual {v1, v0}, Lcom/android/settingslib/applications/ApplicationsState$c;->sendEmptyMessage(I)Z

    return-void

    :pswitch_3
    move v0, v14

    .line 1129
    invoke-static {v3, v0}, Lcom/android/settingslib/applications/ApplicationsState;->a(II)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1131
    iget-object v2, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->c:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 1132
    iget-object v2, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState;->p:Landroid/util/SparseArray;

    monitor-enter v2

    .line 1133
    :try_start_7
    iget-object v3, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState;->p:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_b
    if-ge v4, v3, :cond_1e

    .line 1136
    iget-object v5, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState;->p:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    .line 1138
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1c
    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 1139
    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1140
    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/applications/ApplicationsState$a;

    if-eqz v7, :cond_1c

    const/4 v8, 0x1

    .line 1142
    iput-boolean v8, v7, Lcom/android/settingslib/applications/ApplicationsState$a;->j:Z

    goto :goto_c

    :cond_1d
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 1147
    :cond_1e
    monitor-exit v2

    goto :goto_d

    :catchall_4
    move-exception v0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v0

    .line 1149
    :cond_1f
    :goto_d
    invoke-virtual {v1, v12}, Lcom/android/settingslib/applications/ApplicationsState$c;->sendEmptyMessage(I)Z

    return-void

    .line 1085
    :pswitch_4
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState;->p:Landroid/util/SparseArray;

    monitor-enter v2

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 1087
    :goto_e
    :try_start_8
    iget-object v4, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState;->r:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_24

    const/4 v4, 0x6

    if-ge v3, v4, :cond_24

    .line 1088
    iget-boolean v4, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->a:Z

    if-nez v4, :cond_20

    const/4 v4, 0x1

    .line 1089
    iput-boolean v4, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->a:Z

    .line 1090
    iget-object v5, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState;->B:Lcom/android/settingslib/applications/ApplicationsState$d;

    .line 1091
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v10, 0x6

    .line 1090
    invoke-virtual {v5, v10, v8}, Lcom/android/settingslib/applications/ApplicationsState$d;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1092
    iget-object v8, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settingslib/applications/ApplicationsState;->B:Lcom/android/settingslib/applications/ApplicationsState$d;

    invoke-virtual {v8, v5}, Lcom/android/settingslib/applications/ApplicationsState$d;->sendMessage(Landroid/os/Message;)Z

    goto :goto_f

    :cond_20
    const/4 v4, 0x1

    .line 1094
    :goto_f
    iget-object v5, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState;->r:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 1095
    iget v8, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 1096
    iget-object v10, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/settingslib/applications/ApplicationsState;->p:Landroid/util/SparseArray;

    invoke-virtual {v10, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    iget-object v12, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_21

    add-int/lit8 v3, v3, 0x1

    .line 1098
    iget-object v10, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-static {v10, v5}, Lcom/android/settingslib/applications/ApplicationsState;->a(Lcom/android/settingslib/applications/ApplicationsState;Landroid/content/pm/ApplicationInfo;)Lcom/android/settingslib/applications/ApplicationsState$a;

    :cond_21
    if-eqz v8, :cond_23

    .line 1100
    iget-object v8, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settingslib/applications/ApplicationsState;->p:Landroid/util/SparseArray;

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v8

    if-ltz v8, :cond_22

    .line 1108
    iget-object v8, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v8, v8, Lcom/android/settingslib/applications/ApplicationsState;->p:Landroid/util/SparseArray;

    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    iget-object v10, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settingslib/applications/ApplicationsState$a;

    if-eqz v8, :cond_23

    .line 1109
    iget-object v10, v8, Lcom/android/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v10, v6}, Lcom/android/settingslib/applications/ApplicationsState;->a(II)Z

    move-result v10

    if-nez v10, :cond_23

    .line 1111
    iget-object v10, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/settingslib/applications/ApplicationsState;->p:Landroid/util/SparseArray;

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    iget-object v5, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState;->q:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_22
    move v12, v10

    goto :goto_10

    :cond_23
    const/4 v12, 0x0

    :goto_10
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_e

    .line 1117
    :cond_24
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    const/4 v0, 0x6

    if-lt v3, v0, :cond_25

    .line 1120
    invoke-virtual {v1, v11}, Lcom/android/settingslib/applications/ApplicationsState$c;->sendEmptyMessage(I)Z

    return-void

    .line 1122
    :cond_25
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->B:Lcom/android/settingslib/applications/ApplicationsState$d;

    invoke-virtual {v0, v9}, Lcom/android/settingslib/applications/ApplicationsState$d;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_26

    .line 1123
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$c;->c:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState;->B:Lcom/android/settingslib/applications/ApplicationsState$d;

    invoke-virtual {v0, v9}, Lcom/android/settingslib/applications/ApplicationsState$d;->sendEmptyMessage(I)Z

    .line 1125
    :cond_26
    invoke-virtual {v1, v7}, Lcom/android/settingslib/applications/ApplicationsState$c;->sendEmptyMessage(I)Z

    return-void

    :catchall_5
    move-exception v0

    .line 1117
    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw v0

    :cond_27
    :goto_11
    :pswitch_5
    return-void

    :catchall_6
    move-exception v0

    .line 1071
    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
