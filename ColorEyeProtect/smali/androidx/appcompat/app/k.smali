.class Landroidx/appcompat/app/k;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/k$a;
    }
.end annotation


# static fields
.field private static a:Landroidx/appcompat/app/k;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/location/LocationManager;

.field private final d:Landroidx/appcompat/app/k$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/location/LocationManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/appcompat/app/k$a;

    invoke-direct {v0}, Landroidx/appcompat/app/k$a;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/k;->d:Landroidx/appcompat/app/k$a;

    iput-object p1, p0, Landroidx/appcompat/app/k;->b:Landroid/content/Context;

    iput-object p2, p0, Landroidx/appcompat/app/k;->c:Landroid/location/LocationManager;

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/location/Location;
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/app/k;->c:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/app/k;->c:Landroid/location/LocationManager;

    invoke-virtual {p0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "TwilightManager"

    const-string v0, "Failed to get last known location"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static a(Landroid/content/Context;)Landroidx/appcompat/app/k;
    .locals 2

    sget-object v0, Landroidx/appcompat/app/k;->a:Landroidx/appcompat/app/k;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Landroidx/appcompat/app/k;

    const-string v1, "location"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/app/k;-><init>(Landroid/content/Context;Landroid/location/LocationManager;)V

    sput-object v0, Landroidx/appcompat/app/k;->a:Landroidx/appcompat/app/k;

    :cond_0
    sget-object p0, Landroidx/appcompat/app/k;->a:Landroidx/appcompat/app/k;

    return-object p0
.end method

.method private a(Landroid/location/Location;)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroidx/appcompat/app/k;->d:Landroidx/appcompat/app/k$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {}, Landroidx/appcompat/app/j;->a()Landroidx/appcompat/app/j;

    move-result-object v10

    const-wide/32 v11, 0x5265c00

    sub-long v2, v8, v11

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    move-object v1, v10

    invoke-virtual/range {v1 .. v7}, Landroidx/appcompat/app/j;->a(JDD)V

    iget-wide v13, v10, Landroidx/appcompat/app/j;->a:J

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    move-wide v2, v8

    invoke-virtual/range {v1 .. v7}, Landroidx/appcompat/app/j;->a(JDD)V

    iget v1, v10, Landroidx/appcompat/app/j;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    :goto_0
    move v15, v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    iget-wide v6, v10, Landroidx/appcompat/app/j;->b:J

    iget-wide v4, v10, Landroidx/appcompat/app/j;->a:J

    add-long v2, v8, v11

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v11

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v16

    move-object v1, v10

    move-wide/from16 v18, v13

    move-wide v13, v4

    move-wide v4, v11

    move-wide v11, v6

    move-wide/from16 v6, v16

    invoke-virtual/range {v1 .. v7}, Landroidx/appcompat/app/j;->a(JDD)V

    iget-wide v1, v10, Landroidx/appcompat/app/j;->b:J

    const-wide/16 v3, 0x0

    const-wide/16 v5, -0x1

    cmp-long v7, v11, v5

    if-eqz v7, :cond_4

    cmp-long v5, v13, v5

    if-nez v5, :cond_1

    goto :goto_3

    :cond_1
    cmp-long v5, v8, v13

    if-lez v5, :cond_2

    add-long/2addr v3, v1

    goto :goto_2

    :cond_2
    cmp-long v5, v8, v11

    if-lez v5, :cond_3

    add-long/2addr v3, v13

    goto :goto_2

    :cond_3
    add-long/2addr v3, v11

    :goto_2
    const-wide/32 v5, 0xea60

    add-long/2addr v3, v5

    goto :goto_4

    :cond_4
    :goto_3
    const-wide/32 v3, 0x2932e00

    add-long/2addr v3, v8

    :goto_4
    iput-boolean v15, v0, Landroidx/appcompat/app/k$a;->a:Z

    move-wide/from16 v5, v18

    iput-wide v5, v0, Landroidx/appcompat/app/k$a;->b:J

    iput-wide v11, v0, Landroidx/appcompat/app/k$a;->c:J

    iput-wide v13, v0, Landroidx/appcompat/app/k$a;->d:J

    iput-wide v1, v0, Landroidx/appcompat/app/k$a;->e:J

    iput-wide v3, v0, Landroidx/appcompat/app/k$a;->f:J

    return-void
.end method

.method private b()Landroid/location/Location;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    iget-object v0, p0, Landroidx/appcompat/app/k;->b:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Landroidx/core/content/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "network"

    invoke-direct {p0, v0}, Landroidx/appcompat/app/k;->a(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Landroidx/appcompat/app/k;->b:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v2, v3}, Landroidx/core/content/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    const-string v1, "gps"

    invoke-direct {p0, v1}, Landroidx/appcompat/app/k;->a(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    cmp-long p0, v2, v4

    if-lez p0, :cond_2

    move-object v0, v1

    :cond_2
    return-object v0

    :cond_3
    if-eqz v1, :cond_4

    move-object v0, v1

    :cond_4
    return-object v0
.end method

.method private c()Z
    .locals 4

    iget-object p0, p0, Landroidx/appcompat/app/k;->d:Landroidx/appcompat/app/k$a;

    iget-wide v0, p0, Landroidx/appcompat/app/k$a;->f:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method a()Z
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/app/k;->d:Landroidx/appcompat/app/k$a;

    invoke-direct {p0}, Landroidx/appcompat/app/k;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean p0, v0, Landroidx/appcompat/app/k$a;->a:Z

    return p0

    :cond_0
    invoke-direct {p0}, Landroidx/appcompat/app/k;->b()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Landroidx/appcompat/app/k;->a(Landroid/location/Location;)V

    iget-boolean p0, v0, Landroidx/appcompat/app/k$a;->a:Z

    return p0

    :cond_1
    const-string p0, "TwilightManager"

    const-string v0, "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    const/4 v0, 0x6

    if-lt p0, v0, :cond_3

    const/16 v0, 0x16

    if-lt p0, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
