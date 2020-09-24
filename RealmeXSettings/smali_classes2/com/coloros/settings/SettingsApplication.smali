.class public Lcom/coloros/settings/SettingsApplication;
.super Landroid/app/Application;
.source "SettingsApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/SettingsApplication$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static final b:[Ljava/lang/String;

.field private static c:Landroid/app/Application;

.field private static d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static f:I

.field private static g:Z


# instance fields
.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private j:Lcom/coloros/settings/SettingsApplication$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/coloros/settings/SettingsApplication;->a:Ljava/lang/Object;

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    const-string v1, "android.intent.action.TIME_SET"

    .line 70
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/SettingsApplication;->b:[Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/coloros/settings/SettingsApplication;->d:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/coloros/settings/SettingsApplication;->e:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 81
    sput v0, Lcom/coloros/settings/SettingsApplication;->f:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/SettingsApplication;->h:Ljava/util/List;

    return-void
.end method

.method public static a()Landroid/content/Context;
    .locals 1

    .line 197
    sget-object v0, Lcom/coloros/settings/SettingsApplication;->c:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;)V
    .locals 7

    const-string v0, "SettingsApplication"

    if-eqz p0, :cond_6

    .line 321
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "device_provisioned"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_6

    .line 322
    invoke-static {}, Lcom/coloros/settings/adaptor/FallbackHomeAdaptor;->isFullbackHomeActive()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const-string v1, "activity"

    .line 326
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/16 v1, 0x15

    const/4 v3, 0x1

    .line 329
    invoke-virtual {p0, v1, v3}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-nez p0, :cond_1

    const-string p0, "===========taskList is null, killProcess============"

    .line 333
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    return-void

    .line 341
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_3

    .line 343
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 344
    iget-object v5, v5, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    .line 345
    sget v6, Lcom/coloros/settings/SettingsApplication;->f:I

    if-gtz v6, :cond_4

    const-string v6, "com.coloros.bootreg"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "com.oppo.bootreg"

    .line 346
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    move v2, v3

    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    const-string p0, "===========killProcess============"

    .line 353
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    return-void

    :cond_5
    const-string p0, "===========Don not killProcess============"

    .line 356
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    :goto_2
    const-string p0, "device provisioning, return"

    .line 323
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-class v0, Lcom/coloros/settings/SettingsApplication;

    monitor-enter v0

    .line 293
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 294
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 295
    sget-object p1, Lcom/coloros/settings/SettingsApplication;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "SettingsApplication"

    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "=====finishBootCompleteProcess["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]=====Remove : "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "android.intent.action.TIME_SET"

    .line 298
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 299
    sget-object p1, Lcom/coloros/settings/SettingsApplication;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "SettingsApplication"

    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "=====finishBootCompleteProcess["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]=====Remove : "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4317
    :cond_1
    :goto_0
    sget-object p0, Lcom/coloros/settings/SettingsApplication;->d:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    sget-object p0, Lcom/coloros/settings/SettingsApplication;->e:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->e()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p0, 0x1

    :goto_2
    if-eqz p0, :cond_4

    .line 4308
    sget-object p0, Lcom/coloros/settings/SettingsApplication;->c:Landroid/app/Application;

    if-eqz p0, :cond_4

    sget p0, Lcom/coloros/settings/SettingsApplication;->f:I

    if-nez p0, :cond_4

    .line 4309
    sget-object p0, Lcom/coloros/settings/SettingsApplication;->c:Landroid/app/Application;

    invoke-static {p0}, Lcom/coloros/settings/SettingsApplication;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_4
    :try_start_1
    const-string p0, "SettingsApplication"

    .line 4311
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "=====can not kill, sBootCompleteReceivers left :"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/coloros/settings/SettingsApplication;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "SettingsApplication"

    .line 4312
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "=====can not kill, sTimeChangedReceivers left :"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/coloros/settings/SettingsApplication;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 305
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static a(Z)V
    .locals 1

    .line 89
    sget-object v0, Lcom/coloros/settings/SettingsApplication;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_0
    sput-boolean p0, Lcom/coloros/settings/SettingsApplication;->g:Z

    .line 91
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static b()Landroid/app/Application;
    .locals 1

    .line 401
    sget-object v0, Lcom/coloros/settings/SettingsApplication;->c:Landroid/app/Application;

    return-object v0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 12

    const-string v0, "SettingsApplication"

    const-string v1, "=====initBootReceiversSet====="

    .line 361
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    sget-object v1, Lcom/coloros/settings/SettingsApplication;->b:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, v1, v4

    .line 4373
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 4374
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "com.android.settings"

    .line 4375
    invoke-virtual {v7, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4376
    invoke-virtual {v6, v7, v3}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    const-string v7, "android.intent.action.BOOT_COMPLETED"

    .line 4379
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "/"

    if-eqz v7, :cond_1

    .line 4380
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 4381
    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 4382
    sget-object v9, Lcom/coloros/settings/SettingsApplication;->d:Ljava/util/ArrayList;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 4384
    sget-object v9, Lcom/coloros/settings/SettingsApplication;->d:Ljava/util/ArrayList;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4385
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v7, "android.intent.action.TIME_SET"

    .line 4388
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 4389
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 4390
    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 4391
    sget-object v9, Lcom/coloros/settings/SettingsApplication;->e:Ljava/util/ArrayList;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 4393
    sget-object v9, Lcom/coloros/settings/SettingsApplication;->e:Ljava/util/ArrayList;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 366
    :cond_4
    invoke-static {v3}, Lcom/coloros/settings/SettingsApplication;->a(Z)V

    .line 368
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "sBootReceivers  : "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/coloros/settings/SettingsApplication;->d:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sTimeChangedReceivers: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/coloros/settings/SettingsApplication;->e:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic c()I
    .locals 2

    .line 61
    sget v0, Lcom/coloros/settings/SettingsApplication;->f:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/coloros/settings/SettingsApplication;->f:I

    return v0
.end method

.method static synthetic d()I
    .locals 2

    .line 61
    sget v0, Lcom/coloros/settings/SettingsApplication;->f:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/coloros/settings/SettingsApplication;->f:I

    return v0
.end method

.method private static e()Z
    .locals 2

    .line 95
    sget-object v0, Lcom/coloros/settings/SettingsApplication;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 96
    :try_start_0
    sget-boolean v1, Lcom/coloros/settings/SettingsApplication;->g:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 97
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic f()V
    .locals 1

    .line 188
    sget-object v0, Lcom/coloros/settings/SettingsApplication;->c:Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 189
    invoke-static {p0}, Lcom/color/injector/adaptor/a;->initAdaptor(Landroid/app/Application;)Z

    .line 191
    sget-object v0, Lcom/coloros/settings/SettingsApplication;->c:Landroid/app/Application;

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->readFingerTypeAndSave(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$P-OPGxVpSwuPauW0b0LhlJyEZsI(Lcom/coloros/settings/SettingsApplication;)V
    .locals 0

    invoke-direct {p0}, Lcom/coloros/settings/SettingsApplication;->f()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 3

    .line 102
    invoke-super {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 1152
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    const-string v0, "activity"

    .line 1153
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_1

    .line 1155
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1156
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, p1, :cond_0

    .line 1157
    iget-object p1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 103
    :goto_0
    iput-object p1, p0, Lcom/coloros/settings/SettingsApplication;->i:Ljava/lang/String;

    .line 104
    sput-object p0, Lcom/coloros/settings/SettingsApplication;->c:Landroid/app/Application;

    .line 105
    invoke-virtual {p0}, Lcom/coloros/settings/SettingsApplication;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/settings/SettingsApplication;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 106
    invoke-static {}, Lcom/coloros/settings/feature/homepage/b;->b()V

    :cond_2
    return-void
.end method

.method public onCreate()V
    .locals 7

    .line 112
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 114
    iget-object v0, p0, Lcom/coloros/settings/SettingsApplication;->i:Ljava/lang/String;

    const-string v1, "com.android.settings:background"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "SettingsApplication"

    if-eqz v0, :cond_0

    const-string v0, "com.android.settings:background process application onCreate"

    .line 115
    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 119
    :cond_0
    invoke-static {}, Lcom/color/injector/adaptor/j;->a()V

    .line 121
    invoke-static {p0}, Lcom/coloros/settings/a;->a(Landroid/content/Context;)V

    .line 1187
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/coloros/settings/-$$Lambda$SettingsApplication$P-OPGxVpSwuPauW0b0LhlJyEZsI;

    invoke-direct {v2, p0}, Lcom/coloros/settings/-$$Lambda$SettingsApplication$P-OPGxVpSwuPauW0b0LhlJyEZsI;-><init>(Lcom/coloros/settings/SettingsApplication;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1193
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 123
    invoke-virtual {p0}, Lcom/coloros/settings/SettingsApplication;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/coloros/settings/SettingsApplication;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v0, :cond_5

    .line 2167
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->t(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2168
    new-instance v0, Landroid/content/ComponentName;

    const-class v4, Lcom/coloros/partners/dolby/activity/DolbyMainActivity;

    invoke-direct {v0, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2169
    new-instance v4, Landroid/content/ComponentName;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/coloros/settings/SettingsApplication;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".DolbyMainActivity"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2170
    invoke-virtual {p0}, Lcom/coloros/settings/SettingsApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v0, v3, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 2171
    invoke-virtual {p0}, Lcom/coloros/settings/SettingsApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v4, v3, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 2174
    :cond_1
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->u(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/coloros/settings/utils/al;->s(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2175
    :cond_2
    new-instance v0, Landroid/content/ComponentName;

    const-class v4, Lcom/coloros/partners/dirac/activity/DiracMainActivity;

    invoke-direct {v0, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2176
    new-instance v4, Landroid/content/ComponentName;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/coloros/settings/SettingsApplication;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".DiracMainActivity"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2177
    invoke-virtual {p0}, Lcom/coloros/settings/SettingsApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v0, v3, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 2178
    invoke-virtual {p0}, Lcom/coloros/settings/SettingsApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v4, v3, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 2180
    :cond_3
    invoke-static {p0}, Lcom/coloros/partners/dirac/a;->a(Landroid/app/Application;)V

    .line 2181
    invoke-static {p0}, Lcom/coloros/partners/dolby/DolbyTileService;->a(Landroid/content/Context;)V

    .line 2182
    invoke-static {p0}, Lcom/coloros/settings/SettingsApplication;->b(Landroid/content/Context;)V

    .line 2201
    iget-object v0, p0, Lcom/coloros/settings/SettingsApplication;->j:Lcom/coloros/settings/SettingsApplication$a;

    if-nez v0, :cond_5

    sget-object v0, Lcom/coloros/settings/SettingsApplication;->c:Landroid/app/Application;

    if-eqz v0, :cond_5

    .line 2202
    new-instance v0, Lcom/coloros/settings/SettingsApplication$a;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/coloros/settings/SettingsApplication$a;-><init>(B)V

    iput-object v0, p0, Lcom/coloros/settings/SettingsApplication;->j:Lcom/coloros/settings/SettingsApplication$a;

    .line 2203
    iget-object v0, p0, Lcom/coloros/settings/SettingsApplication;->j:Lcom/coloros/settings/SettingsApplication$a;

    sget-object v4, Lcom/coloros/settings/SettingsApplication;->c:Landroid/app/Application;

    .line 2220
    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "oppo.intent.action.SKIN_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2222
    sget-boolean v6, Lcom/coloros/settings/a;->a:Z

    if-eqz v6, :cond_4

    const-string v6, "oppo.intent.action.OPPO_START_CUSTOMIZE"

    .line 2223
    invoke-virtual {v5, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2226
    :cond_4
    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 126
    :cond_5
    invoke-static {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/b;->a(Landroid/content/Context;)V

    .line 127
    invoke-static {p0}, Lcom/coloros/settings/custom/b;->a(Landroid/content/Context;)V

    const-string v0, "enableStrictMode, enable: false"

    .line 2405
    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3259
    new-instance v0, Lcom/coloros/settings/SettingsApplication$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/SettingsApplication$1;-><init>(Lcom/coloros/settings/SettingsApplication;)V

    invoke-virtual {p0, v0}, Lcom/coloros/settings/SettingsApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 4137
    invoke-virtual {p0}, Lcom/coloros/settings/SettingsApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 4138
    new-instance v1, Landroid/content/ComponentName;

    const-class v4, Lcom/coloros/settings/feature/display/video/OsieTileService;

    invoke-direct {v1, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4139
    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcom/coloros/settings/feature/display/video/Iris5TileService;

    invoke-direct {v4, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4140
    invoke-static {}, Lcom/coloros/settings/utils/ap;->a()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {p0}, Lcom/coloros/settings/utils/v;->a(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 4141
    :cond_6
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v5

    if-eq v5, v3, :cond_7

    .line 4142
    invoke-virtual {p0}, Lcom/coloros/settings/SettingsApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v1, v3, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 4145
    :cond_7
    invoke-static {p0}, Lcom/coloros/settings/utils/v;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 4146
    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    if-eq v0, v3, :cond_8

    .line 4147
    invoke-virtual {p0}, Lcom/coloros/settings/SettingsApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v4, v3, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 132
    :cond_8
    invoke-static {p0}, Lcom/coloros/settings/romupdate/e;->a(Landroid/content/Context;)V

    return-void
.end method

.method public onTerminate()V
    .locals 2

    .line 4208
    iget-object v0, p0, Lcom/coloros/settings/SettingsApplication;->j:Lcom/coloros/settings/SettingsApplication$a;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/coloros/settings/SettingsApplication;->c:Landroid/app/Application;

    if-eqz v1, :cond_0

    .line 4209
    invoke-virtual {v1, v0}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 4210
    iput-object v0, p0, Lcom/coloros/settings/SettingsApplication;->j:Lcom/coloros/settings/SettingsApplication$a;

    .line 255
    :cond_0
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method
