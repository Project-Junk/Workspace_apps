.class public Lcom/coloros/settings/scenemode/SceneTileService;
.super Landroid/service/quicksettings/TileService;
.source "SceneTileService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/scenemode/SceneTileService$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/ContentResolver;

.field private b:Lcom/coloros/settings/scenemode/SceneTileService$a;

.field private c:I

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/settings/scenemode/b;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/concurrent/Future;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    .line 54
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/scenemode/SceneTileService;->d:Ljava/util/List;

    return-void
.end method

.method private a()V
    .locals 4

    .line 179
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/settings/scenemode/SceneTileService;->i:J

    .line 180
    invoke-direct {p0}, Lcom/coloros/settings/scenemode/SceneTileService;->b()V

    .line 182
    iget-object v0, p0, Lcom/coloros/settings/scenemode/SceneTileService;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "SceneTileService"

    if-eqz v0, :cond_2

    .line 183
    iget-boolean v2, p0, Lcom/coloros/settings/scenemode/SceneTileService;->f:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SceneModeActivity.startActivity"

    .line 187
    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/coloros/settings/scenemode/SceneTileService;->d:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, v0}, Lcom/coloros/settings/scenemode/SceneModeActivity;->a(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {p0, v0}, Lcom/coloros/settings/scenemode/SceneTileService;->startActivityAndCollapse(Landroid/content/Intent;)V

    :cond_1
    const/4 v0, 0x0

    const-string v1, "SceneMode"

    const-string v2, "event_click_scene_mode"

    .line 192
    invoke-static {p0, v1, v2, v0}, Lcom/oppo/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 184
    :cond_2
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onClick return :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/coloros/settings/scenemode/SceneTileService;->f:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    .line 146
    :try_start_0
    invoke-virtual {p0}, Lcom/coloros/settings/scenemode/SceneTileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0, p1}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    .line 149
    invoke-virtual {v0, p2}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 150
    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 153
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Error occur, e = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SceneTileService"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/scenemode/SceneTileService;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/coloros/settings/scenemode/SceneTileService;->g:Z

    return p0
.end method

.method private b()V
    .locals 4

    .line 196
    invoke-virtual {p0}, Lcom/coloros/settings/scenemode/SceneTileService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "focusmode_switch"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/coloros/settings/scenemode/SceneTileService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/scenemode/SceneTileService;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/coloros/settings/scenemode/SceneTileService;->a()V

    return-void
.end method

.method private c()V
    .locals 2

    .line 217
    iget-boolean v0, p0, Lcom/coloros/settings/scenemode/SceneTileService;->f:Z

    const-string v1, "SceneTileService"

    if-eqz v0, :cond_0

    const-string v0, "mIsScanning : return"

    .line 218
    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 221
    iput-boolean v0, p0, Lcom/coloros/settings/scenemode/SceneTileService;->f:Z

    const-string v0, "scanSceneModeInfo start"

    .line 222
    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    new-instance v0, Lcom/coloros/settings/scenemode/-$$Lambda$SceneTileService$ygysxBsur0RL0iisQUv4dWsF3oc;

    invoke-direct {v0, p0}, Lcom/coloros/settings/scenemode/-$$Lambda$SceneTileService$ygysxBsur0RL0iisQUv4dWsF3oc;-><init>(Lcom/coloros/settings/scenemode/SceneTileService;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/d;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/scenemode/SceneTileService;->e:Ljava/util/concurrent/Future;

    return-void
.end method

.method static synthetic c(Lcom/coloros/settings/scenemode/SceneTileService;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/coloros/settings/scenemode/SceneTileService;->c()V

    return-void
.end method

.method private d()Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 301
    :try_start_0
    invoke-virtual {p0}, Lcom/coloros/settings/scenemode/SceneTileService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/coloros/settings/scenemode/a;->a:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 303
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "smart_drive_switch"

    .line 304
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 305
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v0, v3

    :cond_0
    if-eqz v1, :cond_1

    .line 311
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "SceneTileService"

    .line 308
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error occur, e = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v0

    :goto_2
    if-eqz v1, :cond_2

    .line 311
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 313
    :cond_2
    throw v0
.end method

.method private e()Z
    .locals 3

    :try_start_0
    const-string v0, "activity"

    .line 320
    invoke-virtual {p0, v0}, Lcom/coloros/settings/scenemode/SceneTileService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 321
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 322
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 323
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 324
    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v2, "com.coloros.focusmode"

    .line 325
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error occur, e = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SceneTileService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic f()V
    .locals 9

    .line 224
    invoke-virtual {p0}, Lcom/coloros/settings/scenemode/SceneTileService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "scene_mode_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/scenemode/SceneTileService;->c:I

    .line 226
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.coloros.scenemode.scan.service"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 227
    iget-object v3, p0, Lcom/coloros/settings/scenemode/SceneTileService;->d:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 228
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    invoke-virtual {p0}, Lcom/coloros/settings/scenemode/SceneTileService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    if-eqz v4, :cond_5

    const/16 v5, 0x80

    .line 232
    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 234
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 235
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v7, "oppo.permission.OPPO_COMPONENT_SAFE"

    .line 1283
    invoke-virtual {v4, v7, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x1

    if-nez v6, :cond_1

    move v6, v7

    goto :goto_1

    :cond_1
    move v6, v2

    :goto_1
    if-eqz v6, :cond_0

    .line 236
    new-instance v6, Lcom/coloros/settings/scenemode/b;

    invoke-direct {v6}, Lcom/coloros/settings/scenemode/b;-><init>()V

    .line 237
    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 2051
    iput-object v8, v6, Lcom/coloros/settings/scenemode/b;->a:Ljava/lang/String;

    .line 238
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 2055
    iput-object v5, v6, Lcom/coloros/settings/scenemode/b;->b:Landroid/os/Bundle;

    .line 2056
    invoke-virtual {v6}, Lcom/coloros/settings/scenemode/b;->a()I

    .line 2057
    invoke-virtual {v6, p0}, Lcom/coloros/settings/scenemode/b;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 2058
    invoke-virtual {v6}, Lcom/coloros/settings/scenemode/b;->b()Ljava/lang/String;

    .line 2059
    invoke-virtual {v6}, Lcom/coloros/settings/scenemode/b;->c()Ljava/lang/String;

    .line 2060
    invoke-virtual {v6}, Lcom/coloros/settings/scenemode/b;->d()I

    .line 2061
    invoke-virtual {v6}, Lcom/coloros/settings/scenemode/b;->e()I

    .line 2062
    invoke-virtual {v6}, Lcom/coloros/settings/scenemode/b;->f()I

    .line 239
    iget v5, p0, Lcom/coloros/settings/scenemode/SceneTileService;->c:I

    if-eqz v5, :cond_2

    invoke-virtual {v6}, Lcom/coloros/settings/scenemode/b;->a()I

    move-result v8

    if-ne v5, v8, :cond_2

    goto :goto_2

    :cond_2
    move v7, v2

    .line 2184
    :goto_2
    iput-boolean v7, v6, Lcom/coloros/settings/scenemode/b;->c:Z

    .line 240
    invoke-virtual {v6}, Lcom/coloros/settings/scenemode/b;->a()I

    move-result v5

    if-eqz v5, :cond_0

    .line 243
    invoke-virtual {v6}, Lcom/coloros/settings/scenemode/b;->a()I

    move-result v5

    const/16 v7, 0x3e9

    if-ne v5, v7, :cond_3

    .line 244
    invoke-virtual {p0}, Lcom/coloros/settings/scenemode/SceneTileService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v7, "oppo.smartdrive.disable.smartdrive"

    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3180
    iget-boolean v5, v6, Lcom/coloros/settings/scenemode/b;->c:Z

    if-eqz v5, :cond_4

    .line 247
    invoke-direct {p0}, Lcom/coloros/settings/scenemode/SceneTileService;->d()Z

    move-result v5

    if-nez v5, :cond_4

    .line 3184
    iput-boolean v2, v6, Lcom/coloros/settings/scenemode/b;->c:Z

    .line 249
    iput v2, p0, Lcom/coloros/settings/scenemode/SceneTileService;->c:I

    .line 250
    invoke-virtual {p0}, Lcom/coloros/settings/scenemode/SceneTileService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget v7, p0, Lcom/coloros/settings/scenemode/SceneTileService;->c:I

    invoke-static {v5, v1, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 252
    :cond_3
    invoke-virtual {v6}, Lcom/coloros/settings/scenemode/b;->a()I

    move-result v5

    const/16 v7, 0x3e8

    if-ne v5, v7, :cond_4

    .line 4180
    iget-boolean v5, v6, Lcom/coloros/settings/scenemode/b;->c:Z

    if-eqz v5, :cond_4

    .line 253
    invoke-direct {p0}, Lcom/coloros/settings/scenemode/SceneTileService;->e()Z

    move-result v5

    if-nez v5, :cond_4

    .line 4184
    iput-boolean v2, v6, Lcom/coloros/settings/scenemode/b;->c:Z

    .line 255
    iput v2, p0, Lcom/coloros/settings/scenemode/SceneTileService;->c:I

    .line 256
    invoke-virtual {p0}, Lcom/coloros/settings/scenemode/SceneTileService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget v7, p0, Lcom/coloros/settings/scenemode/SceneTileService;->c:I

    invoke-static {v5, v1, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 257
    invoke-direct {p0}, Lcom/coloros/settings/scenemode/SceneTileService;->b()V

    .line 260
    :cond_4
    :goto_3
    iget-object v5, p0, Lcom/coloros/settings/scenemode/SceneTileService;->d:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5047
    iget-object v5, v6, Lcom/coloros/settings/scenemode/b;->a:Ljava/lang/String;

    .line 261
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 267
    :cond_5
    iget-object v0, p0, Lcom/coloros/settings/scenemode/SceneTileService;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 268
    iget-object v0, p0, Lcom/coloros/settings/scenemode/SceneTileService;->d:Ljava/util/List;

    invoke-static {v0}, Lcom/coloros/settings/scenemode/c;->a(Ljava/util/List;)V

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "scanSceneModeInfos : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SceneTileService"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    new-instance v0, Lcom/coloros/settings/scenemode/-$$Lambda$SceneTileService$0Dg9Rg3xT1Pc4qIZ8k8An1FzwFk;

    invoke-direct {v0, p0}, Lcom/coloros/settings/scenemode/-$$Lambda$SceneTileService$0Dg9Rg3xT1Pc4qIZ8k8An1FzwFk;-><init>(Lcom/coloros/settings/scenemode/SceneTileService;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/d;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic g()V
    .locals 6

    const/4 v0, 0x0

    .line 272
    iput-boolean v0, p0, Lcom/coloros/settings/scenemode/SceneTileService;->f:Z

    .line 273
    iget-boolean v1, p0, Lcom/coloros/settings/scenemode/SceneTileService;->g:Z

    if-nez v1, :cond_5

    .line 5125
    iget-object v1, p0, Lcom/coloros/settings/scenemode/SceneTileService;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const v2, 0x7f1212d3

    if-gtz v1, :cond_0

    .line 5126
    invoke-virtual {p0, v2}, Lcom/coloros/settings/scenemode/SceneTileService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/coloros/settings/scenemode/SceneTileService;->a(Ljava/lang/String;I)V

    goto :goto_1

    .line 5128
    :cond_0
    iget v1, p0, Lcom/coloros/settings/scenemode/SceneTileService;->c:I

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 5129
    invoke-virtual {p0, v2}, Lcom/coloros/settings/scenemode/SceneTileService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/coloros/settings/scenemode/SceneTileService;->a(Ljava/lang/String;I)V

    goto :goto_1

    .line 5287
    :cond_1
    iget-object v1, p0, Lcom/coloros/settings/scenemode/SceneTileService;->d:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 5288
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/coloros/settings/scenemode/b;

    .line 6180
    iget-boolean v5, v4, Lcom/coloros/settings/scenemode/b;->c:Z

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_4

    .line 5133
    invoke-virtual {v4, p0}, Lcom/coloros/settings/scenemode/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/coloros/settings/scenemode/SceneTileService;->a(Ljava/lang/String;I)V

    goto :goto_1

    .line 5135
    :cond_4
    iput v0, p0, Lcom/coloros/settings/scenemode/SceneTileService;->c:I

    .line 5136
    invoke-virtual {p0}, Lcom/coloros/settings/scenemode/SceneTileService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/coloros/settings/scenemode/SceneTileService;->c:I

    const-string v4, "scene_mode_type"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5137
    invoke-virtual {p0, v2}, Lcom/coloros/settings/scenemode/SceneTileService;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/coloros/settings/scenemode/SceneTileService;->a(Ljava/lang/String;I)V

    .line 5141
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateTile mSceneModeType : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/coloros/settings/scenemode/SceneTileService;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SceneTileService"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "scanSceneModeInfo finish"

    .line 275
    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public static synthetic lambda$0Dg9Rg3xT1Pc4qIZ8k8An1FzwFk(Lcom/coloros/settings/scenemode/SceneTileService;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/scenemode/SceneTileService;->g()V

    return-void
.end method

.method public static synthetic lambda$ygysxBsur0RL0iisQUv4dWsF3oc(Lcom/coloros/settings/scenemode/SceneTileService;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/scenemode/SceneTileService;->f()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    const-string v0, "SceneTileService"

    const-string v1, "onBind"

    .line 73
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    :try_start_0
    invoke-super {p0, p1}, Landroid/service/quicksettings/TileService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error occur, e = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public onClick()V
    .locals 4

    .line 159
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onClick()V

    .line 160
    iget-boolean v0, p0, Lcom/coloros/settings/scenemode/SceneTileService;->h:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/coloros/settings/scenemode/SceneTileService;->g:Z

    if-nez v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/coloros/settings/scenemode/SceneTileService;->i:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/scenemode/SceneTileService;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    new-instance v0, Lcom/coloros/settings/scenemode/SceneTileService$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/scenemode/SceneTileService$1;-><init>(Lcom/coloros/settings/scenemode/SceneTileService;)V

    invoke-virtual {p0, v0}, Lcom/coloros/settings/scenemode/SceneTileService;->unlockAndRun(Ljava/lang/Runnable;)V

    return-void

    .line 174
    :cond_1
    invoke-direct {p0}, Lcom/coloros/settings/scenemode/SceneTileService;->a()V

    return-void

    .line 161
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onClick return :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/coloros/settings/scenemode/SceneTileService;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/settings/scenemode/SceneTileService;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SceneTileService"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreate()V
    .locals 2

    const v0, 0x7f130043

    .line 64
    invoke-virtual {p0, v0}, Lcom/coloros/settings/scenemode/SceneTileService;->setTheme(I)V

    .line 65
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onCreate()V

    const-string v0, "SceneTileService"

    const-string v1, "onCreate"

    .line 66
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/coloros/settings/scenemode/SceneTileService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/scenemode/SceneTileService;->a:Landroid/content/ContentResolver;

    .line 68
    new-instance v0, Lcom/coloros/settings/scenemode/SceneTileService$a;

    invoke-direct {v0, p0}, Lcom/coloros/settings/scenemode/SceneTileService$a;-><init>(Lcom/coloros/settings/scenemode/SceneTileService;)V

    iput-object v0, p0, Lcom/coloros/settings/scenemode/SceneTileService;->b:Lcom/coloros/settings/scenemode/SceneTileService$a;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 116
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onDestroy()V

    const-string v0, "SceneTileService"

    const-string v1, "onDestroy"

    .line 117
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/coloros/settings/scenemode/SceneTileService;->a:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    .line 119
    iget-object v1, p0, Lcom/coloros/settings/scenemode/SceneTileService;->b:Lcom/coloros/settings/scenemode/SceneTileService$a;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    const/4 v0, 0x1

    .line 121
    iput-boolean v0, p0, Lcom/coloros/settings/scenemode/SceneTileService;->g:Z

    return-void
.end method

.method public onStartListening()V
    .locals 4

    .line 85
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    const-string v0, "SceneTileService"

    const-string v1, "onStartListening"

    .line 86
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/coloros/settings/scenemode/SceneTileService;->h:Z

    .line 89
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.coloros.scenemode.action.FINISH_ACTIVITY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 92
    invoke-direct {p0}, Lcom/coloros/settings/scenemode/SceneTileService;->c()V

    .line 94
    iget-object v1, p0, Lcom/coloros/settings/scenemode/SceneTileService;->a:Landroid/content/ContentResolver;

    if-eqz v1, :cond_0

    const-string v2, "scene_mode_type"

    .line 95
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/settings/scenemode/SceneTileService;->b:Lcom/coloros/settings/scenemode/SceneTileService$a;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onStopListening()V
    .locals 4

    .line 101
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStopListening()V

    const-string v0, "SceneTileService"

    const-string v1, "onStopListening"

    .line 102
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/coloros/settings/scenemode/SceneTileService;->a:Landroid/content/ContentResolver;

    if-eqz v1, :cond_0

    .line 104
    iget-object v2, p0, Lcom/coloros/settings/scenemode/SceneTileService;->b:Lcom/coloros/settings/scenemode/SceneTileService$a;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/coloros/settings/scenemode/SceneTileService;->e:Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 107
    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v1

    .line 108
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v3, "onScan cancel : "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lcom/coloros/settings/scenemode/SceneTileService;->f:Z

    .line 111
    iput-boolean v2, p0, Lcom/coloros/settings/scenemode/SceneTileService;->h:Z

    return-void
.end method
