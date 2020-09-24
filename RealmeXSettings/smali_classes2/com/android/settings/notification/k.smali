.class public final Lcom/android/settings/notification/k;
.super Ljava/lang/Object;
.source "NotificationBackend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/k$a;,
        Lcom/android/settings/notification/k$c;,
        Lcom/android/settings/notification/k$b;
    }
.end annotation


# static fields
.field static a:Landroid/app/usage/IUsageStatsManager;

.field static b:Landroid/app/INotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "usagestats"

    .line 59
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 58
    invoke-static {v0}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/k;->a:Landroid/app/usage/IUsageStatsManager;

    const-string v0, "notification"

    .line 62
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 61
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/k;->b:Landroid/app/INotificationManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 3

    .line 317
    :try_start_0
    sget-object v0, Lcom/android/settings/notification/k;->b:Landroid/app/INotificationManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/app/INotificationManager;->getBlockedAppCount(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "NotificationBackend"

    const-string v2, "Error calling NoMan"

    .line 319
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static a(I)I
    .locals 2

    .line 308
    :try_start_0
    sget-object v0, Lcom/android/settings/notification/k;->b:Landroid/app/INotificationManager;

    invoke-interface {v0, p0}, Landroid/app/INotificationManager;->getAppsBypassingDndCount(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "NotificationBackend"

    const-string v1, "Error calling NoMan"

    .line 310
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannel;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 213
    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/settings/notification/k;->b:Landroid/app/INotificationManager;

    const/4 v2, 0x1

    invoke-interface {v1, p0, p1, p2, v2}, Landroid/app/INotificationManager;->getNotificationChannelForPackage(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 215
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/role/RoleManager;Landroid/content/pm/PackageInfo;)Lcom/android/settings/notification/k$a;
    .locals 1

    .line 93
    iget-object v0, p3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p0, p1, v0}, Lcom/android/settings/notification/k;->a(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/notification/k$a;

    move-result-object v0

    .line 94
    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/settings/notification/k;->a(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/role/RoleManager;Landroid/content/pm/PackageInfo;Lcom/android/settings/notification/k$a;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/notification/k$a;
    .locals 9

    .line 65
    new-instance v0, Lcom/android/settings/notification/k$a;

    invoke-direct {v0}, Lcom/android/settings/notification/k$a;-><init>()V

    .line 66
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/notification/k$a;->a:Ljava/lang/String;

    .line 67
    iget v1, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, v0, Lcom/android/settings/notification/k$a;->b:I

    .line 69
    :try_start_0
    invoke-virtual {p2, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/android/settings/notification/k$a;->d:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error loading application label for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/settings/notification/k$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotificationBackend"

    invoke-static {v2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    iget-object p1, v0, Lcom/android/settings/notification/k$a;->a:Ljava/lang/String;

    iput-object p1, v0, Lcom/android/settings/notification/k$a;->d:Ljava/lang/CharSequence;

    .line 74
    :goto_0
    invoke-static {p0}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, v0, Lcom/android/settings/notification/k$a;->c:Landroid/graphics/drawable/Drawable;

    .line 75
    iget-object p1, v0, Lcom/android/settings/notification/k$a;->a:Ljava/lang/String;

    iget p2, v0, Lcom/android/settings/notification/k$a;->b:I

    invoke-static {p1, p2}, Lcom/android/settings/notification/k;->a(Ljava/lang/String;I)Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/settings/notification/k$a;->f:Z

    .line 76
    iget-object p1, v0, Lcom/android/settings/notification/k$a;->a:Ljava/lang/String;

    iget p2, v0, Lcom/android/settings/notification/k$a;->b:I

    invoke-static {p1, p2}, Lcom/android/settings/notification/k;->g(Ljava/lang/String;I)Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/settings/notification/k$a;->i:Z

    .line 77
    iget-object p1, v0, Lcom/android/settings/notification/k$a;->a:Ljava/lang/String;

    iget p2, v0, Lcom/android/settings/notification/k$a;->b:I

    invoke-static {p1, p2}, Lcom/android/settings/notification/k;->h(Ljava/lang/String;I)Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/settings/notification/k$a;->j:Z

    .line 78
    iget p1, v0, Lcom/android/settings/notification/k$a;->b:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    iput p1, v0, Lcom/android/settings/notification/k$a;->k:I

    .line 79
    iget-object p1, v0, Lcom/android/settings/notification/k$a;->a:Ljava/lang/String;

    iget p2, v0, Lcom/android/settings/notification/k$a;->b:I

    invoke-static {p1, p2}, Lcom/android/settings/notification/k;->i(Ljava/lang/String;I)I

    move-result p1

    iput p1, v0, Lcom/android/settings/notification/k$a;->l:I

    .line 80
    iget-object p1, v0, Lcom/android/settings/notification/k$a;->a:Ljava/lang/String;

    iget p2, v0, Lcom/android/settings/notification/k$a;->b:I

    invoke-static {p1, p2}, Lcom/android/settings/notification/k;->f(Ljava/lang/String;I)I

    move-result p1

    iput p1, v0, Lcom/android/settings/notification/k$a;->m:I

    .line 1372
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 p1, 0x240c8400

    sub-long v2, v4, p1

    const/4 p1, 0x0

    .line 1376
    :try_start_1
    sget-object v1, Lcom/android/settings/notification/k;->a:Landroid/app/usage/IUsageStatsManager;

    iget v6, v0, Lcom/android/settings/notification/k$a;->k:I

    iget-object v7, v0, Lcom/android/settings/notification/k$a;->a:Ljava/lang/String;

    .line 1377
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 1376
    invoke-interface/range {v1 .. v8}, Landroid/app/usage/IUsageStatsManager;->queryEventsForPackageForUser(JJILjava/lang/String;Ljava/lang/String;)Landroid/app/usage/UsageEvents;

    move-result-object p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 1379
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1381
    :goto_1
    invoke-static {p1, v0}, Lcom/android/settings/notification/k;->a(Landroid/app/usage/UsageEvents;Lcom/android/settings/notification/k$a;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/android/settings/notification/k$b;)Ljava/lang/CharSequence;
    .locals 4

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 427
    :cond_0
    iget v0, p1, Lcom/android/settings/notification/k$b;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_1

    .line 428
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f100036

    iget v3, p1, Lcom/android/settings/notification/k$b;->a:I

    new-array v2, v2, [Ljava/lang/Object;

    iget p1, p1, Lcom/android/settings/notification/k$b;->a:I

    .line 429
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    .line 428
    invoke-virtual {p0, v0, v3, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 431
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f100037

    iget v3, p1, Lcom/android/settings/notification/k$b;->b:I

    new-array v2, v2, [Ljava/lang/Object;

    iget p1, p1, Lcom/android/settings/notification/k$b;->b:I

    .line 432
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    .line 431
    invoke-virtual {p0, v0, v3, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 355
    :try_start_0
    sget-object v0, Lcom/android/settings/notification/k;->b:Landroid/app/INotificationManager;

    invoke-interface {v0, p0}, Landroid/app/INotificationManager;->getAllowedAssistantAdjustments(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "NotificationBackend"

    const-string v1, "Error calling NoMan"

    .line 357
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 359
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method private static a(Landroid/app/usage/UsageEvents;Lcom/android/settings/notification/k$a;)V
    .locals 7

    .line 385
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p1, Lcom/android/settings/notification/k$a;->n:Ljava/util/Map;

    .line 386
    new-instance v0, Lcom/android/settings/notification/k$b;

    invoke-direct {v0}, Lcom/android/settings/notification/k$b;-><init>()V

    iput-object v0, p1, Lcom/android/settings/notification/k$a;->o:Lcom/android/settings/notification/k$b;

    if-eqz p0, :cond_4

    .line 388
    new-instance v0, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v0}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 389
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/usage/UsageEvents;->hasNextEvent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 390
    invoke-virtual {p0, v0}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    .line 392
    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 393
    iget-object v1, v0, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 395
    iget-object v2, p1, Lcom/android/settings/notification/k$a;->n:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/notification/k$b;

    if-nez v2, :cond_1

    .line 397
    new-instance v2, Lcom/android/settings/notification/k$b;

    invoke-direct {v2}, Lcom/android/settings/notification/k$b;-><init>()V

    .line 398
    iget-object v3, p1, Lcom/android/settings/notification/k$a;->n:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    :cond_1
    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v3

    iget-wide v5, v2, Lcom/android/settings/notification/k$b;->c:J

    cmp-long v1, v3, v5

    if-lez v1, :cond_2

    .line 401
    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/settings/notification/k$b;->c:J

    .line 402
    iget-object v1, p1, Lcom/android/settings/notification/k$a;->o:Lcom/android/settings/notification/k$b;

    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/settings/notification/k$b;->c:J

    .line 404
    :cond_2
    iget v1, v2, Lcom/android/settings/notification/k$b;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v2, Lcom/android/settings/notification/k$b;->d:I

    .line 405
    iget-object v1, p1, Lcom/android/settings/notification/k$a;->o:Lcom/android/settings/notification/k$b;

    iget v3, v1, Lcom/android/settings/notification/k$b;->d:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Lcom/android/settings/notification/k$b;->d:I

    .line 406
    invoke-static {v2}, Lcom/android/settings/notification/k;->a(Lcom/android/settings/notification/k$b;)V

    goto :goto_0

    .line 411
    :cond_3
    iget-object p0, p1, Lcom/android/settings/notification/k$a;->o:Lcom/android/settings/notification/k$b;

    invoke-static {p0}, Lcom/android/settings/notification/k;->a(Lcom/android/settings/notification/k$b;)V

    :cond_4
    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/role/RoleManager;Landroid/content/pm/PackageInfo;Lcom/android/settings/notification/k$a;)V
    .locals 1

    .line 100
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1, p3}, Lcom/android/settingslib/l;->a(Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result p1

    iput-boolean p1, p4, Lcom/android/settings/notification/k$a;->g:Z

    .line 101
    iget-object p1, p3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/app/role/RoleManager;->getHeldRolesFromController(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const-string p2, "android.app.role.DIALER"

    .line 102
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "android.app.role.EMERGENCY"

    .line 103
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 104
    iput-boolean p1, p4, Lcom/android/settings/notification/k$a;->g:Z

    .line 106
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string p1, "com.android.internal.R.array.config_nonBlockableNotificationPackages"

    .line 107
    invoke-static {p1}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 106
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 108
    iget-object p1, p3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, p4, p1}, Lcom/android/settings/notification/k;->a([Ljava/lang/String;Lcom/android/settings/notification/k$a;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Lcom/android/settings/notification/k$b;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 438
    iget v0, p0, Lcom/android/settings/notification/k$b;->d:I

    int-to-float v0, v0

    const/high16 v1, 0x40e00000    # 7.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/settings/notification/k$b;->a:I

    .line 439
    iget v0, p0, Lcom/android/settings/notification/k$b;->d:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_0

    .line 440
    iget v0, p0, Lcom/android/settings/notification/k$b;->d:I

    iput v0, p0, Lcom/android/settings/notification/k$b;->b:I

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;ILandroid/app/NotificationChannel;)V
    .locals 1

    .line 256
    :try_start_0
    sget-object v0, Lcom/android/settings/notification/k;->b:Landroid/app/INotificationManager;

    invoke-interface {v0, p0, p1, p2}, Landroid/app/INotificationManager;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 258
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static a(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;)V
    .locals 1

    .line 264
    :try_start_0
    sget-object v0, Lcom/android/settings/notification/k;->b:Landroid/app/INotificationManager;

    invoke-interface {v0, p0, p1, p2}, Landroid/app/INotificationManager;->updateNotificationChannelGroupForPackage(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 266
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 344
    :try_start_0
    sget-object p1, Lcom/android/settings/notification/k;->b:Landroid/app/INotificationManager;

    invoke-interface {p1, p0}, Landroid/app/INotificationManager;->allowAssistantAdjustment(Ljava/lang/String;)V

    return-void

    .line 346
    :cond_0
    sget-object p1, Lcom/android/settings/notification/k;->b:Landroid/app/INotificationManager;

    invoke-interface {p1, p0}, Landroid/app/INotificationManager;->disallowAssistantAdjustment(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string v0, "Error calling NoMan"

    .line 349
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static a(Z)V
    .locals 2

    .line 335
    :try_start_0
    sget-object v0, Lcom/android/settings/notification/k;->b:Landroid/app/INotificationManager;

    invoke-interface {v0, p0}, Landroid/app/INotificationManager;->setHideSilentStatusIcons(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "NotificationBackend"

    const-string v1, "Error calling NoMan"

    .line 337
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static a([Ljava/lang/String;Lcom/android/settings/notification/k$a;Ljava/lang/String;)V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-eqz p0, :cond_1

    .line 114
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 116
    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    const-string v3, ":"

    .line 119
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 122
    aget-object v2, p0, v1

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 123
    iput-boolean v2, p1, Lcom/android/settings/notification/k$a;->h:Z

    iput-boolean v2, p1, Lcom/android/settings/notification/k$a;->g:Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(Landroid/content/ComponentName;)Z
    .locals 3

    const/4 v0, 0x0

    .line 456
    :try_start_0
    sget-object v1, Lcom/android/settings/notification/k;->b:Landroid/app/INotificationManager;

    const/4 v2, 0x1

    invoke-interface {v1, p0, v2}, Landroid/app/INotificationManager;->setNotificationAssistantAccessGranted(Landroid/content/ComponentName;Z)V

    if-nez p0, :cond_1

    .line 458
    sget-object p0, Lcom/android/settings/notification/k;->b:Landroid/app/INotificationManager;

    invoke-interface {p0}, Landroid/app/INotificationManager;->getAllowedNotificationAssistant()Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_0

    return v2

    :cond_0
    return v0

    .line 460
    :cond_1
    sget-object v1, Lcom/android/settings/notification/k;->b:Landroid/app/INotificationManager;

    invoke-interface {v1}, Landroid/app/INotificationManager;->getAllowedNotificationAssistant()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v1, "NotificationBackend"

    const-string v2, "Error calling NoMan"

    .line 463
    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    .line 326
    :try_start_0
    sget-object v0, Lcom/android/settings/notification/k;->b:Landroid/app/INotificationManager;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/app/INotificationManager;->shouldHideSilentStatusIcons(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "NotificationBackend"

    const-string v1, "Error calling NoMan"

    .line 328
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static a(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z
    .locals 2

    .line 86
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0, v1}, Lcom/android/settings/notification/k;->a(Ljava/lang/String;I)Z

    move-result v0

    .line 87
    invoke-static {p0, p1}, Lcom/android/settings/notification/k;->b(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static a(Ljava/lang/String;I)Z
    .locals 2

    const/4 v0, 0x0

    .line 145
    :try_start_0
    sget-object v1, Lcom/android/settings/notification/k;->b:Landroid/app/INotificationManager;

    invoke-interface {v1, p0, p1}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string v1, "Error calling NoMan"

    .line 148
    invoke-static {p1, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static a(Ljava/lang/String;IZ)Z
    .locals 3

    const/4 v0, 0x0

    .line 155
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/settings/notification/k;->e(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "miscellaneous"

    .line 157
    invoke-static {p0, p1, v1}, Lcom/android/settings/notification/k;->a(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v1

    if-eqz p2, :cond_0

    const/16 v2, -0x3e8

    goto :goto_0

    :cond_0
    move v2, v0

    .line 158
    :goto_0
    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 159
    invoke-static {p0, p1, v1}, Lcom/android/settings/notification/k;->a(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    .line 161
    :cond_1
    sget-object v1, Lcom/android/settings/notification/k;->b:Landroid/app/INotificationManager;

    invoke-interface {v1, p0, p1, p2}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 164
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static b(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannelGroup;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 225
    :cond_0
    :try_start_0
    sget-object v1, Lcom/android/settings/notification/k;->b:Landroid/app/INotificationManager;

    invoke-interface {v1, p2, p0, p1}, Landroid/app/INotificationManager;->getNotificationChannelGroupForPackage(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 227
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public static b()Landroid/content/ComponentName;
    .locals 3

    .line 447
    :try_start_0
    sget-object v0, Lcom/android/settings/notification/k;->b:Landroid/app/INotificationManager;

    invoke-interface {v0}, Landroid/app/INotificationManager;->getAllowedNotificationAssistant()Landroid/content/ComponentName;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "NotificationBackend"

    const-string v2, "Error calling NoMan"

    .line 449
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static b(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/NotificationChannelGroup;",
            ">;"
        }
    .end annotation

    .line 234
    :try_start_0
    sget-object v0, Lcom/android/settings/notification/k;->b:Landroid/app/INotificationManager;

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1}, Landroid/app/INotificationManager;->getNotificationChannelGroupsForPackage(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string v0, "Error calling NoMan"

    .line 236
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Z
    .locals 3

    .line 131
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v1, 0x40

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 133
    const-class v0, Landroid/app/role/RoleManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/role/RoleManager;

    .line 134
    new-instance v1, Lcom/android/settings/notification/k$a;

    invoke-direct {v1}, Lcom/android/settings/notification/k$a;-><init>()V

    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {p0, v2, v0, p1, v1}, Lcom/android/settings/notification/k;->a(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/role/RoleManager;Landroid/content/pm/PackageInfo;Lcom/android/settings/notification/k$a;)V

    .line 136
    iget-boolean p0, v1, Lcom/android/settings/notification/k$a;->g:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 138
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 364
    :try_start_0
    sget-object v1, Lcom/android/settings/notification/k;->b:Landroid/app/INotificationManager;

    invoke-interface {v1, p0}, Landroid/app/INotificationManager;->shouldHideSilentStatusIcons(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0

    :catch_0
    move-exception p0

    const-string v1, "NotificationBackend"

    const-string v2, "Error calling NoMan"

    .line 366
    invoke-static {v1, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public static b(Ljava/lang/String;IZ)Z
    .locals 1

    .line 180
    :try_start_0
    sget-object v0, Lcom/android/settings/notification/k;->b:Landroid/app/INotificationManager;

    invoke-interface {v0, p0, p1, p2}, Landroid/app/INotificationManager;->setShowBadge(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 183
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static c(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/NotificationChannel;",
            ">;"
        }
    .end annotation

    .line 247
    :try_start_0
    sget-object v0, Lcom/android/settings/notification/k;->b:Landroid/app/INotificationManager;

    invoke-interface {v0, p0, p1}, Landroid/app/INotificationManager;->getNotificationChannelsBypassingDnd(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string v0, "Error calling NoMan"

    .line 249
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 250
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;IZ)Z
    .locals 1

    .line 199
    :try_start_0
    sget-object v0, Lcom/android/settings/notification/k;->b:Landroid/app/INotificationManager;

    invoke-interface {v0, p0, p1, p2}, Landroid/app/INotificationManager;->setBubblesAllowed(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string p2, "Error calling NoMan"

    .line 202
    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static d(Ljava/lang/String;I)I
    .locals 1

    .line 272
    :try_start_0
    sget-object v0, Lcom/android/settings/notification/k;->b:Landroid/app/INotificationManager;

    invoke-interface {v0, p0, p1}, Landroid/app/INotificationManager;->getDeletedChannelCount(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string v0, "Error calling NoMan"

    .line 274
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static e(Ljava/lang/String;I)Z
    .locals 1

    .line 290
    :try_start_0
    sget-object v0, Lcom/android/settings/notification/k;->b:Landroid/app/INotificationManager;

    invoke-interface {v0, p0, p1}, Landroid/app/INotificationManager;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string v0, "Error calling NoMan"

    .line 292
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static f(Ljava/lang/String;I)I
    .locals 2

    const/4 v0, 0x0

    .line 299
    :try_start_0
    sget-object v1, Lcom/android/settings/notification/k;->b:Landroid/app/INotificationManager;

    invoke-interface {v1, p0, p1, v0}, Landroid/app/INotificationManager;->getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string v1, "Error calling NoMan"

    .line 301
    invoke-static {p1, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method private static g(Ljava/lang/String;I)Z
    .locals 1

    .line 171
    :try_start_0
    sget-object v0, Lcom/android/settings/notification/k;->b:Landroid/app/INotificationManager;

    invoke-interface {v0, p0, p1}, Landroid/app/INotificationManager;->canShowBadge(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string v0, "Error calling NoMan"

    .line 173
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method private static h(Ljava/lang/String;I)Z
    .locals 1

    .line 190
    :try_start_0
    sget-object v0, Lcom/android/settings/notification/k;->b:Landroid/app/INotificationManager;

    invoke-interface {v0, p0, p1}, Landroid/app/INotificationManager;->areBubblesAllowedForPackage(Ljava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string v0, "Error calling NoMan"

    .line 192
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method private static i(Ljava/lang/String;I)I
    .locals 1

    .line 281
    :try_start_0
    sget-object v0, Lcom/android/settings/notification/k;->b:Landroid/app/INotificationManager;

    invoke-interface {v0, p0, p1}, Landroid/app/INotificationManager;->getBlockedChannelCount(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationBackend"

    const-string v0, "Error calling NoMan"

    .line 283
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method
