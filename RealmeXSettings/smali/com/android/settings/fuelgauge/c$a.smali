.class final Lcom/android/settings/fuelgauge/c$a;
.super Ljava/lang/Thread;
.source "BatteryEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "BatteryUsage Icon Loader"

    .line 66
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/c$a;->a:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 77
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/settings/fuelgauge/c;->b:Ljava/util/ArrayList;

    monitor-enter v0

    .line 78
    :try_start_0
    sget-object v1, Lcom/android/settings/fuelgauge/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/c$a;->a:Z

    if-eqz v1, :cond_1

    goto/16 :goto_8

    .line 85
    :cond_1
    sget-object v1, Lcom/android/settings/fuelgauge/c;->b:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/c;

    .line 86
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1279
    iget-object v0, v1, Lcom/android/settings/fuelgauge/c;->f:Lcom/android/internal/os/BatterySipper;

    iget-object v0, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v0, :cond_0

    .line 1283
    iget-object v0, v1, Lcom/android/settings/fuelgauge/c;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1284
    iget-object v3, v1, Lcom/android/settings/fuelgauge/c;->f:Lcom/android/internal/os/BatterySipper;

    iget-object v3, v3, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    .line 1285
    iget-object v4, v1, Lcom/android/settings/fuelgauge/c;->f:Lcom/android/internal/os/BatterySipper;

    iget-object v4, v4, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    if-nez v4, :cond_2

    .line 1286
    iget-object v4, v1, Lcom/android/settings/fuelgauge/c;->f:Lcom/android/internal/os/BatterySipper;

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    .line 1289
    :cond_2
    iget-object v4, v1, Lcom/android/settings/fuelgauge/c;->f:Lcom/android/internal/os/BatterySipper;

    .line 1374
    invoke-virtual {v4}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v5

    const/16 v6, 0x3e8

    if-ne v5, v6, :cond_3

    const-string v4, "android"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    iget-object v4, v4, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    :goto_1
    const/4 v5, 0x1

    if-eqz v4, :cond_b

    .line 1291
    array-length v6, v4

    new-array v6, v6, [Ljava/lang/String;

    .line 1292
    array-length v7, v4

    invoke-static {v4, v2, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1295
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    .line 1296
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    move v9, v2

    .line 1297
    :goto_2
    array-length v10, v6

    if-ge v9, v10, :cond_7

    .line 1299
    :try_start_1
    aget-object v10, v6, v9

    invoke-interface {v7, v10, v2, v8}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    if-nez v10, :cond_4

    const-string v10, "BatteryEntry"

    .line 1302
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Retrieving null app info for package "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v12, v6, v9

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", user "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1306
    :cond_4
    invoke-virtual {v10, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 1308
    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v9

    .line 1310
    :cond_5
    iget v11, v10, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v11, :cond_6

    .line 1311
    aget-object v11, v4, v9

    iput-object v11, v1, Lcom/android/settings/fuelgauge/c;->j:Ljava/lang/String;

    .line 1312
    invoke-virtual {v10, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, v1, Lcom/android/settings/fuelgauge/c;->h:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v10

    .line 1316
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Error while retrieving app info for package "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v12, v6, v9

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", user "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "BatteryEntry"

    invoke-static {v12, v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1321
    :cond_7
    :goto_4
    array-length v9, v6

    if-ne v9, v5, :cond_8

    .line 1322
    aget-object v2, v6, v2

    iput-object v2, v1, Lcom/android/settings/fuelgauge/c;->g:Ljava/lang/String;

    goto :goto_7

    .line 1325
    :cond_8
    array-length v6, v4

    move v9, v2

    :goto_5
    if-ge v9, v6, :cond_b

    aget-object v10, v4, v9

    .line 1327
    :try_start_2
    invoke-interface {v7, v10, v2, v8}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v11

    if-nez v11, :cond_9

    const-string v11, "BatteryEntry"

    .line 1329
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Retrieving null package info for package "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", user "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1333
    :cond_9
    iget v12, v11, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    if-eqz v12, :cond_a

    .line 1334
    iget v12, v11, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    iget-object v13, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v10, v12, v13}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v12

    if-eqz v12, :cond_a

    .line 1337
    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v1, Lcom/android/settings/fuelgauge/c;->g:Ljava/lang/String;

    .line 1338
    iget-object v12, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v12, :cond_b

    .line 1339
    iput-object v10, v1, Lcom/android/settings/fuelgauge/c;->j:Ljava/lang/String;

    .line 1340
    iget-object v11, v11, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v11, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    iput-object v11, v1, Lcom/android/settings/fuelgauge/c;->h:Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    :catch_1
    move-exception v11

    .line 1346
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Error while retrieving package info for package "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", user "

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v12, "BatteryEntry"

    invoke-static {v12, v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 1353
    :cond_b
    :goto_7
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 1354
    iget-object v3, v1, Lcom/android/settings/fuelgauge/c;->g:Ljava/lang/String;

    if-nez v3, :cond_c

    .line 1355
    iput-object v2, v1, Lcom/android/settings/fuelgauge/c;->g:Ljava/lang/String;

    .line 1358
    :cond_c
    iget-object v3, v1, Lcom/android/settings/fuelgauge/c;->h:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_d

    .line 1359
    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/c;->h:Landroid/graphics/drawable/Drawable;

    .line 1362
    :cond_d
    new-instance v0, Lcom/android/settings/fuelgauge/c$b;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/c$b;-><init>()V

    .line 1363
    iget-object v3, v1, Lcom/android/settings/fuelgauge/c;->g:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/settings/fuelgauge/c$b;->a:Ljava/lang/String;

    .line 1364
    iget-object v3, v1, Lcom/android/settings/fuelgauge/c;->h:Landroid/graphics/drawable/Drawable;

    iput-object v3, v0, Lcom/android/settings/fuelgauge/c$b;->c:Landroid/graphics/drawable/Drawable;

    .line 1365
    iget-object v3, v1, Lcom/android/settings/fuelgauge/c;->j:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/settings/fuelgauge/c$b;->b:Ljava/lang/String;

    .line 1366
    sget-object v3, Lcom/android/settings/fuelgauge/c;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1367
    sget-object v0, Lcom/android/settings/fuelgauge/c;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1368
    sget-object v0, Lcom/android/settings/fuelgauge/c;->c:Landroid/os/Handler;

    invoke-virtual {v0, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 79
    :cond_e
    :goto_8
    :try_start_3
    sget-object v1, Lcom/android/settings/fuelgauge/c;->c:Landroid/os/Handler;

    if-eqz v1, :cond_f

    .line 80
    sget-object v1, Lcom/android/settings/fuelgauge/c;->c:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 82
    :cond_f
    sget-object v1, Lcom/android/settings/fuelgauge/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 83
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 86
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
