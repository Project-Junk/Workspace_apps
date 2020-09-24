.class public Lcom/oppo/camera/m;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Lcom/oppo/camera/n$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/m$d;,
        Lcom/oppo/camera/m$a;,
        Lcom/oppo/camera/m$c;,
        Lcom/oppo/camera/m$b;,
        Lcom/oppo/camera/m$e;
    }
.end annotation


# instance fields
.field private a:J

.field private b:Landroid/app/Activity;

.field private c:Landroid/location/LocationManager;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Lcom/oppo/camera/i;

.field private i:Landroid/content/ContentResolver;

.field private j:Lcom/oppo/camera/m$a;

.field private k:Landroid/os/Handler;

.field private l:Ljava/lang/Runnable;

.field private m:Ljava/lang/Runnable;

.field private n:I

.field private o:Lcom/oppo/camera/m$e;

.field private p:Landroid/os/HandlerThread;

.field private q:[Lcom/oppo/camera/m$d;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oppo/camera/i;)V
    .locals 5

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 48
    iput-wide v0, p0, Lcom/oppo/camera/m;->a:J

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/oppo/camera/m;->b:Landroid/app/Activity;

    .line 51
    iput-object v0, p0, Lcom/oppo/camera/m;->c:Landroid/location/LocationManager;

    const-string v1, "on"

    .line 52
    iput-object v1, p0, Lcom/oppo/camera/m;->d:Ljava/lang/String;

    const/4 v1, 0x0

    .line 53
    iput-boolean v1, p0, Lcom/oppo/camera/m;->e:Z

    .line 54
    iput-boolean v1, p0, Lcom/oppo/camera/m;->f:Z

    .line 55
    iput-object v0, p0, Lcom/oppo/camera/m;->g:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/oppo/camera/m;->h:Lcom/oppo/camera/i;

    .line 57
    iput-object v0, p0, Lcom/oppo/camera/m;->i:Landroid/content/ContentResolver;

    .line 58
    iput-object v0, p0, Lcom/oppo/camera/m;->j:Lcom/oppo/camera/m$a;

    .line 59
    iput-object v0, p0, Lcom/oppo/camera/m;->k:Landroid/os/Handler;

    .line 60
    iput-object v0, p0, Lcom/oppo/camera/m;->l:Ljava/lang/Runnable;

    .line 61
    iput-object v0, p0, Lcom/oppo/camera/m;->m:Ljava/lang/Runnable;

    const/4 v2, 0x1

    .line 62
    iput v2, p0, Lcom/oppo/camera/m;->n:I

    .line 63
    iput-object v0, p0, Lcom/oppo/camera/m;->o:Lcom/oppo/camera/m$e;

    const/4 v0, 0x2

    .line 66
    new-array v0, v0, [Lcom/oppo/camera/m$d;

    new-instance v3, Lcom/oppo/camera/m$d;

    const-string v4, "gps"

    invoke-direct {v3, p0, v4}, Lcom/oppo/camera/m$d;-><init>(Lcom/oppo/camera/m;Ljava/lang/String;)V

    aput-object v3, v0, v1

    new-instance v1, Lcom/oppo/camera/m$d;

    const-string v3, "network"

    invoke-direct {v1, p0, v3}, Lcom/oppo/camera/m$d;-><init>(Lcom/oppo/camera/m;Ljava/lang/String;)V

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/oppo/camera/m;->q:[Lcom/oppo/camera/m$d;

    .line 78
    iput-object p1, p0, Lcom/oppo/camera/m;->b:Landroid/app/Activity;

    .line 79
    iput-object p2, p0, Lcom/oppo/camera/m;->h:Lcom/oppo/camera/i;

    .line 80
    iget-object p1, p0, Lcom/oppo/camera/m;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/m;->i:Landroid/content/ContentResolver;

    .line 81
    new-instance p1, Lcom/oppo/camera/m$a;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, p2}, Lcom/oppo/camera/m$a;-><init>(Lcom/oppo/camera/m;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/oppo/camera/m;->j:Lcom/oppo/camera/m$a;

    .line 82
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "LocationManagerHandlerThread"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oppo/camera/m;->p:Landroid/os/HandlerThread;

    .line 83
    iget-object p1, p0, Lcom/oppo/camera/m;->p:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 85
    new-instance p1, Lcom/oppo/camera/m$1;

    iget-object p2, p0, Lcom/oppo/camera/m;->p:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/oppo/camera/m$1;-><init>(Lcom/oppo/camera/m;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oppo/camera/m;->k:Landroid/os/Handler;

    .line 92
    new-instance p1, Lcom/oppo/camera/m$b;

    invoke-direct {p1, p0}, Lcom/oppo/camera/m$b;-><init>(Lcom/oppo/camera/m;)V

    iput-object p1, p0, Lcom/oppo/camera/m;->l:Ljava/lang/Runnable;

    .line 93
    new-instance p1, Lcom/oppo/camera/m$c;

    invoke-direct {p1, p0}, Lcom/oppo/camera/m$c;-><init>(Lcom/oppo/camera/m;)V

    iput-object p1, p0, Lcom/oppo/camera/m;->m:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/m;J)J
    .locals 0

    .line 36
    iput-wide p1, p0, Lcom/oppo/camera/m;->a:J

    return-wide p1
.end method

.method static synthetic a(Lcom/oppo/camera/m;)[Lcom/oppo/camera/m$d;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/oppo/camera/m;->q:[Lcom/oppo/camera/m$d;

    return-object p0
.end method

.method static synthetic b(Lcom/oppo/camera/m;)Landroid/location/LocationManager;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/oppo/camera/m;->c:Landroid/location/LocationManager;

    return-object p0
.end method

.method static synthetic c(Lcom/oppo/camera/m;)Ljava/lang/Runnable;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/oppo/camera/m;->m:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic d(Lcom/oppo/camera/m;)Landroid/os/Handler;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/oppo/camera/m;->k:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic e(Lcom/oppo/camera/m;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/oppo/camera/m;->f:Z

    return p0
.end method

.method static synthetic f(Lcom/oppo/camera/m;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/oppo/camera/m;->i()V

    return-void
.end method

.method static synthetic g(Lcom/oppo/camera/m;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/oppo/camera/m;->k()V

    return-void
.end method

.method static synthetic h(Lcom/oppo/camera/m;)Lcom/oppo/camera/m$e;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/oppo/camera/m;->o:Lcom/oppo/camera/m$e;

    return-object p0
.end method

.method private h()V
    .locals 9

    .line 199
    iget-object v0, p0, Lcom/oppo/camera/m;->c:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/oppo/camera/m;->b:Landroid/app/Activity;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/oppo/camera/m;->c:Landroid/location/LocationManager;

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/m;->c:Landroid/location/LocationManager;

    if-eqz v0, :cond_2

    const-string v1, "network"

    .line 204
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startReceivingLocationUpdates, ntpEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LocationManager"

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 210
    :try_start_0
    iget-object v3, p0, Lcom/oppo/camera/m;->c:Landroid/location/LocationManager;

    const-string v4, "network"

    const-wide/16 v5, 0x3e8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/oppo/camera/m;->q:[Lcom/oppo/camera/m$d;

    const/4 v1, 0x1

    aget-object v8, v0, v1

    invoke-virtual/range {v3 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startReceivingLocationUpdates, provider does not exist"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "startReceivingLocationUpdates, fail to request location update"

    .line 213
    invoke-static {v2, v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/m;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oppo/camera/m;->l:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 220
    :cond_1
    invoke-direct {p0}, Lcom/oppo/camera/m;->i()V

    :cond_2
    :goto_1
    return-void
.end method

.method private i()V
    .locals 2

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startGpsReceivingLocationUpdates, mActivity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/m;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mbPaused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/m;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/oppo/camera/m;->b:Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/oppo/camera/m;->f:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 232
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/m;->c:Landroid/location/LocationManager;

    if-nez v1, :cond_1

    const-string v1, "location"

    .line 233
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/oppo/camera/m;->c:Landroid/location/LocationManager;

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/m;->k:Landroid/os/Handler;

    new-instance v1, Lcom/oppo/camera/m$2;

    invoke-direct {v1, p0}, Lcom/oppo/camera/m$2;-><init>(Lcom/oppo/camera/m;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private j()V
    .locals 4

    .line 258
    iget-object v0, p0, Lcom/oppo/camera/m;->c:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 259
    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/m;->q:[Lcom/oppo/camera/m$d;

    array-length v2, v1

    const-string v3, "LocationManager"

    if-ge v0, v2, :cond_0

    .line 261
    :try_start_0
    iget-object v2, p0, Lcom/oppo/camera/m;->c:Landroid/location/LocationManager;

    aget-object v1, v1, v0

    invoke-virtual {v2, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "stopReceivingLocationUpdates, fail to remove location listners"

    .line 263
    invoke-static {v3, v2, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "stopReceivingLocationUpdates"

    .line 267
    invoke-static {v3, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private k()V
    .locals 5

    const-string v0, "LocationManager"

    .line 410
    invoke-direct {p0}, Lcom/oppo/camera/m;->l()V

    .line 412
    iget-object v1, p0, Lcom/oppo/camera/m;->c:Landroid/location/LocationManager;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/oppo/camera/m;->q:[Lcom/oppo/camera/m$d;

    const/4 v3, 0x0

    aget-object v4, v2, v3

    if-nez v4, :cond_0

    goto :goto_1

    .line 417
    :cond_0
    :try_start_0
    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "stopGpsReceivingLocationUpdates, fail to remove location listeners"

    .line 419
    invoke-static {v0, v2, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const-string v1, "stopGpsReceivingLocationUpdates X"

    .line 422
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private l()V
    .locals 2

    .line 426
    iget-object v0, p0, Lcom/oppo/camera/m;->k:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 427
    iget-object v1, p0, Lcom/oppo/camera/m;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 428
    iget-object v0, p0, Lcom/oppo/camera/m;->k:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oppo/camera/m;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 273
    iget-object v0, p0, Lcom/oppo/camera/m;->h:Lcom/oppo/camera/i;

    invoke-virtual {v0}, Lcom/oppo/camera/i;->a()Lcom/oppo/camera/i$a;

    move-result-object v0

    const-string v1, "on"

    const-string v2, "pref_camera_recordlocation_key"

    .line 274
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 275
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 277
    iget-boolean v0, p0, Lcom/oppo/camera/m;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 278
    iput-boolean v0, p0, Lcom/oppo/camera/m;->e:Z

    .line 279
    iput-object v1, p0, Lcom/oppo/camera/m;->d:Ljava/lang/String;

    .line 280
    invoke-virtual {p0}, Lcom/oppo/camera/m;->g()V

    .line 282
    iget-object v1, p0, Lcom/oppo/camera/m;->i:Landroid/content/ContentResolver;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/oppo/camera/m;->j:Lcom/oppo/camera/m$a;

    if-eqz v2, :cond_1

    const-string v2, "location_providers_allowed"

    .line 284
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/m;->j:Lcom/oppo/camera/m$a;

    .line 283
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/m;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/m;->d:Ljava/lang/String;

    .line 288
    invoke-virtual {p0}, Lcom/oppo/camera/m;->g()V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 97
    iput p1, p0, Lcom/oppo/camera/m;->n:I

    return-void
.end method

.method public a(Lcom/oppo/camera/m$e;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/oppo/camera/m;->o:Lcom/oppo/camera/m$e;

    return-void
.end method

.method public b()V
    .locals 5

    .line 294
    iget-object v0, p0, Lcom/oppo/camera/m;->h:Lcom/oppo/camera/i;

    invoke-virtual {v0}, Lcom/oppo/camera/i;->a()Lcom/oppo/camera/i$a;

    move-result-object v0

    const-string v1, "pref_camera_recordlocation_key"

    const-string v2, "off"

    .line 295
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 296
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 298
    iget-boolean v0, p0, Lcom/oppo/camera/m;->e:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 299
    iput-boolean v0, p0, Lcom/oppo/camera/m;->e:Z

    .line 301
    iget-object v2, p0, Lcom/oppo/camera/m;->i:Landroid/content/ContentResolver;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/oppo/camera/m;->j:Lcom/oppo/camera/m$a;

    if-eqz v3, :cond_0

    const-string v3, "location_providers_allowed"

    .line 303
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/camera/m;->j:Lcom/oppo/camera/m$a;

    .line 302
    invoke-virtual {v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/m;->h:Lcom/oppo/camera/i;

    iget-object v2, p0, Lcom/oppo/camera/m;->b:Landroid/app/Activity;

    const v3, 0x7f0f00f0

    .line 307
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 306
    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/m;->d:Ljava/lang/String;

    .line 308
    invoke-virtual {p0}, Lcom/oppo/camera/m;->g()V

    :cond_1
    return-void
.end method

.method public c()Landroid/location/Location;
    .locals 4

    .line 105
    iget-object v0, p0, Lcom/oppo/camera/m;->d:Ljava/lang/String;

    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 110
    :goto_0
    iget-object v2, p0, Lcom/oppo/camera/m;->q:[Lcom/oppo/camera/m$d;

    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 111
    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/oppo/camera/m$d;->a()Landroid/location/Location;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "LocationManager"

    const-string v2, "getCurrentLocation, No location received yet."

    .line 118
    invoke-static {v0, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public d()V
    .locals 7

    const/4 v0, 0x0

    .line 124
    iput-boolean v0, p0, Lcom/oppo/camera/m;->f:Z

    .line 126
    iget v1, p0, Lcom/oppo/camera/m;->n:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    .line 127
    iget-object v1, p0, Lcom/oppo/camera/m;->h:Lcom/oppo/camera/i;

    const-string v2, "pref_net_location_checkbox_key"

    invoke-virtual {v1, v2, v0}, Lcom/oppo/camera/i;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 129
    iget-object v2, p0, Lcom/oppo/camera/m;->h:Lcom/oppo/camera/i;

    iget-object v3, p0, Lcom/oppo/camera/m;->b:Landroid/app/Activity;

    const v4, 0x7f0f00f0

    .line 130
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_recordlocation_key"

    .line 129
    invoke-virtual {v2, v4, v3}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/camera/m;->d:Ljava/lang/String;

    const/4 v2, 0x1

    .line 131
    iput-boolean v2, p0, Lcom/oppo/camera/m;->e:Z

    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume, mRecordLocationState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oppo/camera/m;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "LocationManager"

    invoke-static {v4, v3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v3, p0, Lcom/oppo/camera/m;->d:Ljava/lang/String;

    const-string v5, "on"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-ne v1, v2, :cond_3

    const-string v1, "onResume, location is invalid"

    .line 136
    invoke-static {v4, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/oppo/camera/m;->a:J

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x927c0

    cmp-long v1, v3, v5

    if-ltz v1, :cond_1

    .line 139
    iget-object v1, p0, Lcom/oppo/camera/m;->q:[Lcom/oppo/camera/m$d;

    aget-object v3, v1, v0

    if-eqz v3, :cond_0

    .line 140
    aget-object v1, v1, v0

    invoke-virtual {v1, v0}, Lcom/oppo/camera/m$d;->a(Z)V

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/m;->q:[Lcom/oppo/camera/m$d;

    aget-object v3, v1, v2

    if-eqz v3, :cond_1

    .line 144
    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/oppo/camera/m$d;->a(Z)V

    .line 148
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/m;->g()V

    goto :goto_0

    :cond_2
    const-string v0, "off"

    .line 151
    iput-object v0, p0, Lcom/oppo/camera/m;->d:Ljava/lang/String;

    :cond_3
    :goto_0
    return-void
.end method

.method public e()V
    .locals 2

    const/4 v0, 0x1

    .line 156
    iput-boolean v0, p0, Lcom/oppo/camera/m;->f:Z

    .line 157
    invoke-direct {p0}, Lcom/oppo/camera/m;->l()V

    .line 158
    invoke-direct {p0}, Lcom/oppo/camera/m;->j()V

    .line 160
    iget-object v0, p0, Lcom/oppo/camera/m;->i:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/m;->j:Lcom/oppo/camera/m$a;

    if-eqz v1, :cond_0

    .line 161
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    const/4 v0, 0x1

    .line 166
    iput-boolean v0, p0, Lcom/oppo/camera/m;->f:Z

    const/4 v0, 0x0

    .line 167
    iput-object v0, p0, Lcom/oppo/camera/m;->h:Lcom/oppo/camera/i;

    .line 168
    iput-object v0, p0, Lcom/oppo/camera/m;->q:[Lcom/oppo/camera/m$d;

    .line 169
    iput-object v0, p0, Lcom/oppo/camera/m;->c:Landroid/location/LocationManager;

    .line 170
    iput-object v0, p0, Lcom/oppo/camera/m;->b:Landroid/app/Activity;

    .line 171
    iput-object v0, p0, Lcom/oppo/camera/m;->j:Lcom/oppo/camera/m$a;

    .line 172
    iput-object v0, p0, Lcom/oppo/camera/m;->i:Landroid/content/ContentResolver;

    .line 173
    iput-object v0, p0, Lcom/oppo/camera/m;->k:Landroid/os/Handler;

    .line 174
    iput-object v0, p0, Lcom/oppo/camera/m;->l:Ljava/lang/Runnable;

    .line 175
    iput-object v0, p0, Lcom/oppo/camera/m;->m:Ljava/lang/Runnable;

    .line 177
    iget-object v1, p0, Lcom/oppo/camera/m;->p:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    .line 178
    invoke-virtual {v1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 179
    iput-object v0, p0, Lcom/oppo/camera/m;->p:Landroid/os/HandlerThread;

    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    .line 184
    invoke-static {}, Lcom/oppo/camera/o/d;->y()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/oppo/camera/m;->o:Lcom/oppo/camera/m$e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oppo/camera/m$e;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/m;->d:Ljava/lang/String;

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    invoke-direct {p0}, Lcom/oppo/camera/m;->h()V

    goto :goto_0

    .line 193
    :cond_2
    invoke-direct {p0}, Lcom/oppo/camera/m;->j()V

    .line 194
    invoke-direct {p0}, Lcom/oppo/camera/m;->l()V

    :goto_0
    return-void
.end method
