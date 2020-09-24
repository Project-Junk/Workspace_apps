.class public Lcom/oppo/camera/d/e;
.super Lcom/oppo/camera/d/a;
.source "CommonCapMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/d/e$a;
    }
.end annotation


# instance fields
.field protected W:I

.field protected X:Z

.field protected Y:Z

.field protected Z:I

.field private aa:I

.field private ab:Lcom/oppo/camera/d/e$a;

.field private ac:Landroid/os/Handler;

.field private ad:I

.field private ae:I

.field private af:I

.field private ag:I

.field private ah:J

.field private ai:Z

.field private aj:J

.field private ak:J

.field private al:J

.field private am:J

.field private an:J

.field private ao:J

.field private ap:I

.field private aq:Lcom/oppo/camera/c/b;

.field private ar:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oppo/camera/d/b;Lcom/oppo/camera/ui/c;Lcom/oppo/camera/ui/preview/a/i;)V
    .locals 4

    .line 120
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oppo/camera/d/a;-><init>(Landroid/app/Activity;Lcom/oppo/camera/d/b;Lcom/oppo/camera/ui/c;Lcom/oppo/camera/ui/preview/a/i;)V

    const/4 p1, 0x0

    .line 66
    iput p1, p0, Lcom/oppo/camera/d/e;->W:I

    .line 67
    iput-boolean p1, p0, Lcom/oppo/camera/d/e;->X:Z

    .line 68
    iput-boolean p1, p0, Lcom/oppo/camera/d/e;->Y:Z

    .line 93
    iput p1, p0, Lcom/oppo/camera/d/e;->aa:I

    .line 94
    new-instance p2, Lcom/oppo/camera/d/e$a;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/oppo/camera/d/e$a;-><init>(Lcom/oppo/camera/d/e;Lcom/oppo/camera/d/e$1;)V

    iput-object p2, p0, Lcom/oppo/camera/d/e;->ab:Lcom/oppo/camera/d/e$a;

    .line 95
    iput-object p3, p0, Lcom/oppo/camera/d/e;->ac:Landroid/os/Handler;

    .line 96
    iput p1, p0, Lcom/oppo/camera/d/e;->ad:I

    .line 97
    iput p1, p0, Lcom/oppo/camera/d/e;->ae:I

    .line 98
    iput p1, p0, Lcom/oppo/camera/d/e;->af:I

    .line 99
    iput p1, p0, Lcom/oppo/camera/d/e;->ag:I

    const-wide/16 v0, 0x0

    .line 100
    iput-wide v0, p0, Lcom/oppo/camera/d/e;->ah:J

    .line 101
    iput-boolean p1, p0, Lcom/oppo/camera/d/e;->ai:Z

    .line 104
    iput-wide v0, p0, Lcom/oppo/camera/d/e;->aj:J

    const-wide/16 v2, 0xc8

    .line 105
    iput-wide v2, p0, Lcom/oppo/camera/d/e;->ak:J

    .line 106
    iput-wide v0, p0, Lcom/oppo/camera/d/e;->al:J

    .line 107
    iput-wide v0, p0, Lcom/oppo/camera/d/e;->am:J

    .line 108
    iput-wide v0, p0, Lcom/oppo/camera/d/e;->an:J

    .line 109
    iput-wide v0, p0, Lcom/oppo/camera/d/e;->ao:J

    .line 110
    iput p1, p0, Lcom/oppo/camera/d/e;->ap:I

    const/16 p1, 0x8

    .line 111
    iput p1, p0, Lcom/oppo/camera/d/e;->Z:I

    .line 113
    iput-object p3, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    const-string p1, "ALGO_BLURLESS"

    .line 116
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/d/e;->ar:[Ljava/lang/String;

    .line 121
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->bc()I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/d/e;->ad:I

    .line 122
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->aW()I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/d/e;->ae:I

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/d/e;J)J
    .locals 0

    .line 65
    iput-wide p1, p0, Lcom/oppo/camera/d/e;->ah:J

    return-wide p1
.end method

.method static synthetic a(Lcom/oppo/camera/d/e;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/oppo/camera/d/e;->cF()V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/d/e;Z)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/oppo/camera/d/e;->o(Z)V

    return-void
.end method

.method static synthetic b(Lcom/oppo/camera/d/e;)J
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/oppo/camera/d/e;->ah:J

    return-wide v0
.end method

.method static synthetic b(Lcom/oppo/camera/d/e;J)J
    .locals 0

    .line 65
    iput-wide p1, p0, Lcom/oppo/camera/d/e;->al:J

    return-wide p1
.end method

.method static synthetic c(Lcom/oppo/camera/d/e;J)J
    .locals 0

    .line 65
    iput-wide p1, p0, Lcom/oppo/camera/d/e;->am:J

    return-wide p1
.end method

.method static synthetic c(Lcom/oppo/camera/d/e;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/oppo/camera/d/e;->cE()V

    return-void
.end method

.method private cE()V
    .locals 3

    const-string v0, "key_beauty3d"

    .line 244
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    if-eqz v0, :cond_1

    return-void

    .line 252
    :cond_1
    new-instance v0, Lcom/oppo/camera/c/b;

    iget-object v1, p0, Lcom/oppo/camera/d/e;->N:Landroid/app/Activity;

    new-instance v2, Lcom/oppo/camera/d/e$2;

    invoke-direct {v2, p0}, Lcom/oppo/camera/d/e$2;-><init>(Lcom/oppo/camera/d/e;)V

    invoke-direct {v0, v1, v2}, Lcom/oppo/camera/c/b;-><init>(Landroid/app/Activity;Lcom/oppo/camera/c/d;)V

    iput-object v0, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    .line 365
    iget-object v0, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    invoke-virtual {v0}, Lcom/oppo/camera/c/b;->a()V

    return-void
.end method

.method private cF()V
    .locals 10

    .line 379
    iget-boolean v0, p0, Lcom/oppo/camera/d/e;->q:Z

    if-nez v0, :cond_0

    return-void

    .line 383
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 384
    iget-wide v2, p0, Lcom/oppo/camera/d/e;->al:J

    sub-long v2, v0, v2

    .line 385
    iget-wide v4, p0, Lcom/oppo/camera/d/e;->an:J

    sub-long/2addr v4, v2

    iput-wide v4, p0, Lcom/oppo/camera/d/e;->an:J

    .line 386
    iget-wide v4, p0, Lcom/oppo/camera/d/e;->am:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/oppo/camera/d/e;->am:J

    .line 387
    iput-wide v0, p0, Lcom/oppo/camera/d/e;->al:J

    .line 389
    iget-wide v0, p0, Lcom/oppo/camera/d/e;->an:J

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-gez v6, :cond_1

    move-wide v0, v4

    .line 395
    :cond_1
    iget-wide v6, p0, Lcom/oppo/camera/d/e;->am:J

    const-wide/16 v8, 0x3e8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_2

    .line 396
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateNightCountdownTime, currentTime: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", delta: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mCountDownTemp: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/oppo/camera/d/e;->am:J

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CommonCapMode"

    invoke-static {v3, v2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-wide v2, p0, Lcom/oppo/camera/d/e;->am:J

    sub-long/2addr v2, v8

    .line 400
    iget-wide v6, p0, Lcom/oppo/camera/d/e;->an:J

    add-long/2addr v6, v2

    iput-wide v6, p0, Lcom/oppo/camera/d/e;->an:J

    .line 401
    iput-wide v4, p0, Lcom/oppo/camera/d/e;->am:J

    .line 402
    iget-object v6, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    add-long/2addr v2, v0

    const/4 v7, 0x0

    invoke-interface {v6, v2, v3, v7}, Lcom/oppo/camera/ui/c;->b(JZ)V

    :cond_2
    cmp-long v0, v0, v4

    if-lez v0, :cond_3

    .line 406
    iget-object v0, p0, Lcom/oppo/camera/d/e;->ac:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 408
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/d/e;->ac:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method private cG()V
    .locals 4

    const-string v0, "pref_camera_pi_mode_key"

    .line 722
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 726
    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/d/e;->cK()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 729
    iget-object v2, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    const-string v3, "on"

    invoke-interface {v2, v0, v3}, Lcom/oppo/camera/ui/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 732
    invoke-virtual {p0, v2, v1, v2, v0}, Lcom/oppo/camera/d/e;->a(ZZZZ)V

    return-void
.end method

.method private cH()V
    .locals 5

    .line 997
    invoke-direct {p0}, Lcom/oppo/camera/d/e;->cK()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 998
    iget-object v0, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1, v1}, Lcom/oppo/camera/ui/c;->a(ZZZ)V

    .line 999
    iget-object v0, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    const-string v3, "pref_camera_pi_mode_key"

    const-string v4, "off"

    invoke-interface {v0, v3, v4}, Lcom/oppo/camera/ui/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    iget-boolean v0, p0, Lcom/oppo/camera/d/e;->p:Z

    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/oppo/camera/d/e;->a(ZZZZ)V

    :cond_0
    return-void
.end method

.method private cI()V
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 1502
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->p()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1503
    iget-wide v3, p0, Lcom/oppo/camera/d/e;->aj:J

    long-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    int-to-float v7, v2

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v3, v5

    const-wide v5, 0x412e848000000000L    # 1000000.0

    div-double/2addr v3, v5

    double-to-long v3, v3

    .line 1504
    iget-wide v5, p0, Lcom/oppo/camera/d/e;->ak:J

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    move-wide v3, v5

    :cond_0
    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1508
    :cond_1
    iget v2, p0, Lcom/oppo/camera/d/e;->W:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const-wide/16 v2, 0xdac

    goto :goto_1

    :cond_2
    const-wide/16 v2, 0x640

    .line 1511
    :goto_1
    iput-wide v0, p0, Lcom/oppo/camera/d/e;->ao:J

    add-long/2addr v0, v2

    long-to-float v2, v0

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    .line 1512
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/oppo/camera/d/e;->an:J

    .line 1514
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFirstCaptureArrived, mNightProcessTotalTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/oppo/camera/d/e;->an:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", realTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", mNightCaptureTotalTime: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/oppo/camera/d/e;->ao:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonCapMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1517
    iget-object v0, p0, Lcom/oppo/camera/d/e;->N:Landroid/app/Activity;

    if-eqz v0, :cond_3

    .line 1518
    iget-object v0, p0, Lcom/oppo/camera/d/e;->N:Landroid/app/Activity;

    new-instance v1, Lcom/oppo/camera/d/e$7;

    invoke-direct {v1, p0}, Lcom/oppo/camera/d/e$7;-><init>(Lcom/oppo/camera/d/e;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method

.method private cJ()Z
    .locals 2

    .line 1918
    invoke-static {}, Lcom/oppo/camera/v;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private cK()Z
    .locals 4

    const-string v0, "pref_camera_pi_mode_key"

    .line 2263
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 2267
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/d/e;->O:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/d/e;->O:Landroid/content/SharedPreferences;

    const-string v3, "off"

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private cL()V
    .locals 3

    const-string v0, "pref_camera_pi_mode_key"

    .line 2279
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2283
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/d/e;->O:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    .line 2284
    iget-object v1, p0, Lcom/oppo/camera/d/e;->O:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "off"

    .line 2285
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2286
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2287
    iget-object v1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v1, v0}, Lcom/oppo/camera/ui/c;->d(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/oppo/camera/d/e;)Lcom/oppo/camera/c/b;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    return-object p0
.end method

.method static synthetic e(Lcom/oppo/camera/d/e;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/oppo/camera/d/e;->cH()V

    return-void
.end method

.method static synthetic f(Lcom/oppo/camera/d/e;)J
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/oppo/camera/d/e;->an:J

    return-wide v0
.end method

.method private n(Z)V
    .locals 4

    .line 2207
    iget-boolean v0, p0, Lcom/oppo/camera/d/e;->s:Z

    const-string v1, "CommonCapMode"

    if-eqz v0, :cond_0

    const-string p1, "handleBeauty3DGuideView, pause, so return"

    .line 2208
    invoke-static {v1, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2213
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    if-nez v0, :cond_1

    const-string p1, "handleBeauty3DGuideView, mBeauty3DManager null"

    .line 2214
    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p1, :cond_3

    .line 2220
    invoke-virtual {v0}, Lcom/oppo/camera/c/b;->i()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2221
    iget-object p1, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    invoke-virtual {p1}, Lcom/oppo/camera/c/b;->m()V

    :cond_2
    return-void

    :cond_3
    const-string v0, "key_beauty3d"

    .line 2227
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string p1, "handleBeauty3DGuideView, not support return"

    .line 2228
    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2233
    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/d/e;->N:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/a/f;->a(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_5

    const-string p1, "handleBeauty3DGuideView, files exist, return"

    .line 2234
    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2239
    :cond_5
    iget-object v0, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/oppo/camera/d/e;->O:Landroid/content/SharedPreferences;

    const-string v3, "key_front_camera_first_switch"

    .line 2241
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, "handleBeauty3DGuideView, start showBeauty3DGuide"

    .line 2242
    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2244
    iget-object p1, p0, Lcom/oppo/camera/d/e;->O:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 v0, 0x0

    .line 2245
    invoke-interface {p1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2246
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2248
    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1}, Lcom/oppo/camera/ui/c;->p()V

    .line 2249
    iget-object p1, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    iget-object v0, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->c(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/c/b;->c(Landroid/util/Size;)V

    goto :goto_0

    .line 2250
    :cond_6
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->bJ()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    .line 2251
    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1}, Lcom/oppo/camera/ui/c;->p()V

    .line 2252
    iget-object p1, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    iget-object v0, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->c(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/c/b;->d(Landroid/util/Size;)V

    :cond_7
    :goto_0
    return-void
.end method

.method private o(Z)V
    .locals 1

    .line 2257
    iget-object v0, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    if-eqz v0, :cond_0

    .line 2258
    iget-object v0, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0, p1}, Lcom/oppo/camera/d/b;->e(Z)V

    :cond_0
    return-void
.end method

.method private x(I)I
    .locals 1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 1735
    iget-object p1, p0, Lcom/oppo/camera/d/e;->N:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0600bf

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private y(I)I
    .locals 1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    .line 1743
    iget-object p1, p0, Lcom/oppo/camera/d/e;->N:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0600c0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public A()Z
    .locals 2

    const-string v0, "key_beauty3d"

    .line 980
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 981
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cq()I

    move-result v0

    if-lez v0, :cond_0

    .line 982
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cq()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public P()Z
    .locals 1

    .line 1129
    invoke-super {p0}, Lcom/oppo/camera/d/a;->P()Z

    const-string v0, "key_beauty3d"

    .line 1131
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    if-eqz v0, :cond_0

    .line 1132
    invoke-virtual {v0}, Lcom/oppo/camera/c/b;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public X()V
    .locals 2

    .line 1342
    iget-object v0, p0, Lcom/oppo/camera/d/e;->N:Landroid/app/Activity;

    new-instance v1, Lcom/oppo/camera/d/e$5;

    invoke-direct {v1, p0}, Lcom/oppo/camera/d/e$5;-><init>(Lcom/oppo/camera/d/e;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1361
    invoke-super {p0}, Lcom/oppo/camera/d/a;->X()V

    return-void
.end method

.method public Z()Z
    .locals 2

    const-string v0, "CommonCapMode"

    const-string v1, "onAfterSnapping()"

    .line 1366
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method protected a(Lcom/oppo/camera/e/d;)Lcom/oppo/camera/e/d;
    .locals 1

    .line 2293
    iget-object v0, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->U()I

    move-result v0

    iput v0, p1, Lcom/oppo/camera/e/d;->B:I

    .line 2295
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->a(Lcom/oppo/camera/e/d;)Lcom/oppo/camera/e/d;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "common"

    return-object v0
.end method

.method public a(IZ)V
    .locals 4

    .line 1751
    invoke-super {p0, p1, p2}, Lcom/oppo/camera/d/a;->a(IZ)V

    const/4 v0, 0x5

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_0

    .line 1754
    iput-boolean v1, p0, Lcom/oppo/camera/d/e;->A:Z

    :cond_0
    const/4 v2, 0x0

    if-eq p1, v1, :cond_7

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 1820
    :pswitch_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cC()V

    goto/16 :goto_1

    .line 1813
    :pswitch_1
    iget-object p1, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    if-eqz p1, :cond_8

    .line 1814
    invoke-virtual {p1}, Lcom/oppo/camera/c/b;->j()V

    goto/16 :goto_1

    .line 1809
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/oppo/camera/d/e;->n(Z)V

    goto/16 :goto_1

    .line 1759
    :pswitch_3
    iget-object p1, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    if-eqz p1, :cond_8

    if-eqz p2, :cond_1

    .line 1760
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cD()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1761
    iget-object p1, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    invoke-virtual {p1, v1}, Lcom/oppo/camera/c/b;->e(Z)V

    .line 1762
    iget-object p1, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    invoke-virtual {p1}, Lcom/oppo/camera/c/b;->p()V

    goto/16 :goto_1

    .line 1764
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    invoke-virtual {p1}, Lcom/oppo/camera/c/b;->q()V

    goto/16 :goto_1

    .line 1802
    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    if-eqz p1, :cond_8

    .line 1803
    invoke-virtual {p1}, Lcom/oppo/camera/c/b;->q()V

    goto :goto_1

    :cond_3
    const-string p1, "key_bubble_type_add_beuty3d"

    .line 1771
    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/e;->i(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "key_beauty3d"

    .line 1772
    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x6

    if-eqz p1, :cond_4

    .line 1773
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->A()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    .line 1774
    invoke-interface {p1}, Lcom/oppo/camera/ui/c;->m()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1775
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->aO()Ljava/lang/String;

    move-result-object p1

    const-string v0, "beauty"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oppo/camera/d/e;->N:Landroid/app/Activity;

    .line 1776
    invoke-static {p1}, Lcom/oppo/camera/ui/preview/a/f;->a(Landroid/content/Context;)I

    move-result p1

    if-nez p1, :cond_4

    .line 1778
    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    const/4 v0, 0x0

    invoke-direct {p0, p2}, Lcom/oppo/camera/d/e;->x(I)I

    move-result v2

    invoke-direct {p0, p2}, Lcom/oppo/camera/d/e;->y(I)I

    move-result v3

    invoke-interface {p1, v0, p2, v2, v3}, Lcom/oppo/camera/ui/c;->a(Landroid/view/View;III)V

    goto :goto_0

    .line 1780
    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, p2, v2}, Lcom/oppo/camera/ui/c;->c(IZ)V

    .line 1784
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    if-eqz p1, :cond_8

    .line 1785
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cD()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1786
    iget-object p1, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    invoke-virtual {p1, v1}, Lcom/oppo/camera/c/b;->e(Z)V

    .line 1787
    iget-object p1, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    invoke-virtual {p1}, Lcom/oppo/camera/c/b;->p()V

    goto :goto_1

    .line 1789
    :cond_6
    iget-object p1, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    invoke-virtual {p1}, Lcom/oppo/camera/c/b;->q()V

    goto :goto_1

    .line 1796
    :cond_7
    invoke-direct {p0, v2}, Lcom/oppo/camera/d/e;->n(Z)V

    :cond_8
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    const-string v0, "pref_camera_pi_mode_key"

    .line 987
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p2, "off"

    .line 988
    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 989
    iget-boolean p2, p0, Lcom/oppo/camera/d/e;->p:Z

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p1, v0, v0}, Lcom/oppo/camera/d/e;->a(ZZZZ)V

    return-void

    .line 993
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oppo/camera/d/a;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/hardware/camera2/CaptureRequest;)V
    .locals 0

    .line 1463
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->a(Landroid/hardware/camera2/CaptureRequest;)V

    return-void
.end method

.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 5

    .line 2161
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cB()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2162
    iget-object v0, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/c/b;->b(Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void

    .line 2166
    :cond_0
    iget-boolean v0, p0, Lcom/oppo/camera/d/e;->q:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 2167
    iget-object v0, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    const-string v3, "com.qti.stats_control.is_lls_needed"

    invoke-interface {v0, v3, p1}, Lcom/oppo/camera/e/f;->a(Ljava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;)[I

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2169
    array-length v3, v0

    if-lez v3, :cond_2

    .line 2170
    aget v0, v0, v2

    if-ne v0, v1, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/oppo/camera/d/e;->X:Z

    goto :goto_1

    .line 2172
    :cond_2
    iput-boolean v2, p0, Lcom/oppo/camera/d/e;->X:Z

    .line 2176
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/oppo/camera/d/e;->q:Z

    if-nez v0, :cond_7

    .line 2177
    iget-object v0, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    const-string v3, "com.oppo.supernight.state"

    invoke-interface {v0, v3, p1}, Lcom/oppo/camera/e/f;->a(Ljava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;)[I

    move-result-object v0

    if-nez v0, :cond_4

    move v3, v2

    goto :goto_2

    .line 2178
    :cond_4
    array-length v3, v0

    :goto_2
    const/4 v4, 0x3

    if-ne v4, v3, :cond_5

    .line 2181
    aget v1, v0, v2

    iput v1, p0, Lcom/oppo/camera/d/e;->W:I

    .line 2182
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->p()I

    move-result v1

    iput v1, p0, Lcom/oppo/camera/d/e;->Z:I

    const/4 v1, 0x2

    .line 2183
    aget v0, v0, v1

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/oppo/camera/d/e;->ak:J

    goto :goto_4

    :cond_5
    if-ge v3, v4, :cond_7

    if-lez v3, :cond_7

    .line 2185
    aget v0, v0, v2

    iput v0, p0, Lcom/oppo/camera/d/e;->W:I

    .line 2186
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->p()I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/d/e;->Z:I

    .line 2187
    iget v0, p0, Lcom/oppo/camera/d/e;->W:I

    if-ne v1, v0, :cond_6

    const-wide/16 v0, 0x1388

    goto :goto_3

    :cond_6
    const-wide/16 v0, 0xc8

    :goto_3
    iput-wide v0, p0, Lcom/oppo/camera/d/e;->ak:J

    .line 2190
    iget v0, p0, Lcom/oppo/camera/d/e;->W:I

    if-lez v0, :cond_7

    const-string v0, "CommonCapMode"

    const-string v1, "onPreviewCaptureResult, com.oppo.supernight.state not correct, set default value"

    .line 2191
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2196
    :cond_7
    :goto_4
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->a(Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method public a(Landroid/hardware/camera2/TotalCaptureResult;Landroid/hardware/camera2/CaptureRequest;)V
    .locals 5

    .line 1468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCaptureCompleted, result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mReceivedRawResultNum: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/d/e;->ap:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mbPaused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/d/e;->s:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonCapMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->bE()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oppo/camera/d/e;->s:Z

    if-nez v0, :cond_2

    .line 1472
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/e/d;

    invoke-virtual {v0}, Lcom/oppo/camera/e/d;->a()Lcom/oppo/camera/e/d$a;

    move-result-object v0

    .line 1474
    sget-object v2, Lcom/oppo/camera/e/d$a;->CAPTURE_RAW:Lcom/oppo/camera/e/d$a;

    if-ne v2, v0, :cond_1

    .line 1475
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->hashCode()I

    move-result v2

    iget v3, p0, Lcom/oppo/camera/d/e;->k:I

    if-ne v2, v3, :cond_0

    .line 1476
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/oppo/camera/d/e;->aj:J

    .line 1478
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCaptureCompleted, mFirstExposureTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/oppo/camera/d/e;->aj:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1480
    invoke-direct {p0}, Lcom/oppo/camera/d/e;->cI()V

    .line 1483
    :cond_0
    iget v1, p0, Lcom/oppo/camera/d/e;->ap:I

    iget v2, p0, Lcom/oppo/camera/d/e;->Z:I

    if-ge v1, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 1484
    iput v1, p0, Lcom/oppo/camera/d/e;->ap:I

    .line 1488
    :cond_1
    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/oppo/camera/e/d$a;->CAPTURE_REPROCESS:Lcom/oppo/camera/e/d$a;

    if-ne v1, v0, :cond_2

    iget v0, p0, Lcom/oppo/camera/d/e;->ap:I

    if-lez v0, :cond_2

    .line 1491
    iget-object v0, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->q(I)V

    .line 1492
    iget-object v0, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    .line 1496
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/oppo/camera/d/a;->a(Landroid/hardware/camera2/TotalCaptureResult;Landroid/hardware/camera2/CaptureRequest;)V

    return-void
.end method

.method public a(Lcom/oppo/camera/e/d;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oppo/camera/e/d;",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/Surface;",
            ">;)V"
        }
    .end annotation

    .line 1963
    invoke-virtual {p1}, Lcom/oppo/camera/e/d;->a()Lcom/oppo/camera/e/d$a;

    move-result-object v0

    .line 1965
    sget-object v1, Lcom/oppo/camera/e/d$a;->CAPTURE:Lcom/oppo/camera/e/d$a;

    const-string v2, "need_preview_stream"

    const-string v3, "type_preview"

    if-ne v1, v0, :cond_1

    .line 1966
    invoke-virtual {p3, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1967
    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1968
    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1969
    invoke-virtual {p3, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_0

    .line 1971
    :cond_0
    invoke-virtual {p3, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    .line 1975
    :cond_1
    :goto_0
    sget-object v1, Lcom/oppo/camera/e/d$a;->PREVIEW:Lcom/oppo/camera/e/d$a;

    if-ne v1, v0, :cond_2

    .line 1976
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->bC()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "type_preview_frame"

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1977
    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1981
    :cond_2
    sget-object v1, Lcom/oppo/camera/e/d$a;->CAPTURE_RAW:Lcom/oppo/camera/e/d$a;

    if-ne v1, v0, :cond_3

    .line 1982
    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1983
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, v1, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1987
    :cond_3
    sget-object v1, Lcom/oppo/camera/e/d$a;->CAPTURE_REPROCESS:Lcom/oppo/camera/e/d$a;

    if-ne v1, v0, :cond_5

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->bE()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1988
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-wide v4, p0, Lcom/oppo/camera/d/e;->ao:J

    const-wide/32 v6, 0xf4240

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p2, v1, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1990
    invoke-virtual {p3, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1991
    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1992
    invoke-virtual {p3, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_1

    .line 1994
    :cond_4
    invoke-virtual {p3, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    invoke-virtual {p2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    .line 1999
    :cond_5
    :goto_1
    sget-object v1, Lcom/oppo/camera/e/d$a;->CAPTURE:Lcom/oppo/camera/e/d$a;

    if-ne v1, v0, :cond_8

    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2000
    iget-object v0, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/e/h;->i()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 2004
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 2005
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.mediatek.control.capture.remosaicenable"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v1, v2

    goto :goto_2

    :cond_7
    if-eqz v1, :cond_8

    const/4 v0, 0x1

    .line 2011
    new-array v2, v0, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    invoke-virtual {p2, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2016
    :cond_8
    invoke-super {p0, p1, p2, p3}, Lcom/oppo/camera/d/a;->a(Lcom/oppo/camera/e/d;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/HashMap;)V

    return-void
.end method

.method protected a(Z)V
    .locals 3

    const-string p1, "CommonCapMode"

    const-string v0, "onResume"

    .line 635
    invoke-static {p1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "key_beauty3d"

    .line 637
    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    if-eqz p1, :cond_0

    .line 639
    invoke-virtual {p1}, Lcom/oppo/camera/c/b;->f()I

    move-result p1

    if-eqz p1, :cond_0

    .line 640
    iget-object p1, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x5a0

    const/16 v2, 0x990

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {p1, v0}, Lcom/oppo/camera/c/b;->a(Landroid/util/Size;)V

    :cond_0
    return-void
.end method

.method protected a(ZZ)V
    .locals 0

    .line 1415
    invoke-super {p0, p1, p2}, Lcom/oppo/camera/d/a;->a(ZZ)V

    if-eqz p2, :cond_2

    if-nez p1, :cond_2

    .line 1419
    invoke-direct {p0}, Lcom/oppo/camera/d/e;->cK()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "CommonCapMode"

    const-string p2, "onShutterCallback, PIOpen"

    .line 1420
    invoke-static {p1, p2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    iget-object p1, p0, Lcom/oppo/camera/d/e;->ac:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 1423
    new-instance p2, Lcom/oppo/camera/d/e$6;

    invoke-direct {p2, p0}, Lcom/oppo/camera/d/e$6;-><init>(Lcom/oppo/camera/d/e;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1447
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/oppo/camera/d/b;->a(I)V

    .line 1448
    iget-object p1, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->f()V

    .line 1450
    iget-object p1, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    if-eqz p1, :cond_2

    .line 1451
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cD()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1452
    iget-object p1, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    invoke-virtual {p1}, Lcom/oppo/camera/c/b;->p()V

    goto :goto_0

    .line 1454
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    invoke-virtual {p1}, Lcom/oppo/camera/c/b;->q()V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(ZZZZ)V
    .locals 8

    .line 1005
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPIChanged, isOpen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isBurstShot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isShowHint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isUpdateParam: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonCapMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_4

    if-eqz p2, :cond_3

    if-eqz p3, :cond_0

    .line 1011
    iget-object v2, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    const v3, 0x7f0f011c

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    :cond_0
    const/4 p1, 0x0

    .line 1014
    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/e;->l(I)V

    .line 1016
    iget-object p3, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p3}, Lcom/oppo/camera/ui/c;->m()Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->aO()Ljava/lang/String;

    move-result-object p3

    const-string v1, "filter"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 1017
    iget-object p3, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p3, v0}, Lcom/oppo/camera/ui/c;->l(Z)V

    .line 1018
    iget-object p3, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p3}, Lcom/oppo/camera/d/b;->w()V

    .line 1019
    iget-object p3, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p3, v0}, Lcom/oppo/camera/d/b;->c(Z)V

    goto :goto_0

    .line 1021
    :cond_1
    iget-object p3, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    const-string v1, "pref_filter_menu"

    invoke-interface {p3, v1}, Lcom/oppo/camera/ui/c;->f(Ljava/lang/String;)V

    .line 1024
    :goto_0
    iget-object p3, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p3}, Lcom/oppo/camera/ui/c;->w()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 1025
    iget-object p3, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p3, v0, v0, v0, p1}, Lcom/oppo/camera/ui/c;->a(ZZZZ)V

    .line 1028
    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v0}, Lcom/oppo/camera/ui/c;->k(Z)V

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_4

    .line 1031
    iget-object v1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    const v2, 0x7f0f0119

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    .line 1036
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    if-eqz p1, :cond_5

    if-eqz p4, :cond_5

    .line 1037
    iget-object p1, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {p1, p2}, Lcom/oppo/camera/e/f;->d(Z)V

    .line 1038
    iget-object p1, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    :cond_5
    return-void
.end method

.method protected a([BZ)V
    .locals 5

    .line 1582
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAfterPictureTaken, mReceivedSnapNum: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oppo/camera/d/e;->aa:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isBurstShot: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CommonCapMode"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 1585
    invoke-static {}, Lcom/oppo/camera/o/d;->s()I

    move-result p1

    iget p2, p0, Lcom/oppo/camera/d/e;->aa:I

    if-eq p1, p2, :cond_0

    .line 1586
    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result p1

    if-nez p1, :cond_f

    iget-object p1, p0, Lcom/oppo/camera/d/e;->ab:Lcom/oppo/camera/d/e$a;

    invoke-virtual {p1}, Lcom/oppo/camera/d/e$a;->b()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 1587
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->aI()V

    goto/16 :goto_2

    .line 1590
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->g()Z

    move-result p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 1592
    iget-object p1, p0, Lcom/oppo/camera/d/e;->J:Lcom/oppo/camera/a/a;

    if-eqz p1, :cond_3

    .line 1593
    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1}, Lcom/oppo/camera/ui/c;->x()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1594
    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v1, v2}, Lcom/oppo/camera/ui/c;->d(ZZ)V

    goto :goto_0

    .line 1596
    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v2, v1}, Lcom/oppo/camera/ui/c;->d(ZZ)V

    .line 1601
    :cond_3
    :goto_0
    iget-boolean p1, p0, Lcom/oppo/camera/d/e;->Y:Z

    if-eqz p1, :cond_4

    const-string p1, "onAfterPictureTaken, hide scene night tips"

    .line 1602
    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    const v0, 0x7f0f0134

    invoke-interface {p1, v0}, Lcom/oppo/camera/ui/c;->b(I)V

    .line 1605
    iput-boolean v2, p0, Lcom/oppo/camera/d/e;->Y:Z

    .line 1608
    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1}, Lcom/oppo/camera/ui/c;->h()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_5

    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    .line 1609
    invoke-interface {p1}, Lcom/oppo/camera/ui/c;->h()I

    move-result p1

    const/4 v3, 0x3

    if-ne p1, v3, :cond_d

    :cond_5
    const-string p1, "pref_camera_hdr_mode_key"

    .line 1610
    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "pref_auto_night_scence_key"

    .line 1611
    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "pref_camera_pi_mode_key"

    .line 1612
    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 1613
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->bE()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 1614
    :cond_6
    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->g()Lcom/oppo/camera/ui/control/c;

    move-result-object v3

    const-string v4, "pref_burst_shot_key"

    .line 1615
    invoke-virtual {p0, v4}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v4

    .line 1614
    invoke-interface {p1, v3, v4}, Lcom/oppo/camera/ui/c;->a(Lcom/oppo/camera/ui/control/c;Z)V

    .line 1617
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->aR()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1}, Lcom/oppo/camera/ui/c;->m()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1618
    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->aR()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/oppo/camera/ui/c;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 1620
    :cond_7
    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v2}, Lcom/oppo/camera/ui/c;->i(Z)V

    .line 1622
    invoke-direct {p0}, Lcom/oppo/camera/d/e;->cK()Z

    move-result p1

    if-eqz p1, :cond_8

    if-nez p2, :cond_8

    .line 1623
    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1}, Lcom/oppo/camera/ui/c;->w()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1624
    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v2}, Lcom/oppo/camera/ui/c;->m(Z)V

    .line 1629
    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->bE()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 1630
    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v1}, Lcom/oppo/camera/ui/c;->f(Z)V

    .line 1632
    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v1}, Lcom/oppo/camera/ui/c;->k(Z)V

    .line 1633
    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v2}, Lcom/oppo/camera/ui/c;->h(I)V

    const-string p1, "func_face_beauty_process"

    .line 1635
    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9

    const-string p1, "func_face_slender_process"

    .line 1636
    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1637
    :cond_9
    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v1}, Lcom/oppo/camera/ui/c;->m(Z)V

    :cond_a
    const-string p1, "pref_support_switch_camera"

    .line 1640
    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1641
    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v2}, Lcom/oppo/camera/ui/c;->e(I)V

    .line 1644
    :cond_b
    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v2}, Lcom/oppo/camera/ui/c;->f(I)V

    .line 1645
    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v2}, Lcom/oppo/camera/ui/c;->a(I)V

    .line 1646
    iget-object p1, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->w()V

    .line 1648
    iget p1, p0, Lcom/oppo/camera/d/e;->W:I

    if-ne p1, v1, :cond_c

    .line 1649
    iget-object p1, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {p1, v2}, Lcom/oppo/camera/e/f;->s(I)V

    .line 1652
    :cond_c
    iput v2, p0, Lcom/oppo/camera/d/e;->W:I

    .line 1653
    iget-object p1, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    iget p2, p0, Lcom/oppo/camera/d/e;->W:I

    invoke-interface {p1, p2}, Lcom/oppo/camera/e/f;->q(I)V

    .line 1655
    iget-object p1, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    .line 1656
    invoke-static {}, Lcom/oppo/camera/a;->a()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p2

    invoke-static {}, Lcom/oppo/camera/a;->a()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v3

    .line 1655
    invoke-interface {p1, v0, p2, v3, v2}, Lcom/oppo/camera/e/f;->a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    .line 1657
    iget-object p1, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {p1, v2}, Lcom/oppo/camera/e/f;->f(Z)V

    .line 1658
    iget-object p1, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    .line 1660
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->bc()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/e;->n(I)V

    .line 1661
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->aH()V

    .line 1662
    invoke-direct {p0}, Lcom/oppo/camera/d/e;->cG()V

    .line 1663
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->bD()V

    .line 1667
    :cond_d
    iget-object p1, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    if-eqz p1, :cond_f

    .line 1668
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cD()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 1669
    iget-object p1, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    invoke-virtual {p1, v1}, Lcom/oppo/camera/c/b;->e(Z)V

    .line 1670
    iget-object p1, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    invoke-virtual {p1}, Lcom/oppo/camera/c/b;->p()V

    goto :goto_2

    .line 1672
    :cond_e
    iget-object p1, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    invoke-virtual {p1}, Lcom/oppo/camera/c/b;->q()V

    :cond_f
    :goto_2
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_camera_high_resolution_key"

    .line 971
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "key_high_picture_size"

    .line 972
    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 975
    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected aD()V
    .locals 5

    const-string v0, "CommonCapMode"

    const-string v1, "onDisableBurstShot"

    .line 1680
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1682
    iget-boolean v1, p0, Lcom/oppo/camera/d/e;->p:Z

    if-nez v1, :cond_0

    return-void

    .line 1686
    :cond_0
    iget v1, p0, Lcom/oppo/camera/d/e;->aa:I

    if-lez v1, :cond_1

    .line 1687
    iget-object v1, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/oppo/camera/d/b;->a(I)V

    :cond_1
    const/4 v1, 0x0

    .line 1690
    iput-boolean v1, p0, Lcom/oppo/camera/d/e;->p:Z

    .line 1691
    iput-boolean v1, p0, Lcom/oppo/camera/d/e;->q:Z

    const/4 v2, 0x1

    .line 1692
    iput-boolean v2, p0, Lcom/oppo/camera/d/e;->B:Z

    .line 1693
    iget-object v3, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v3, v1}, Lcom/oppo/camera/d/b;->a(Z)V

    .line 1694
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->bm()V

    const-string v3, "onDisableBurstShot, CameraTest Continuous Shot End"

    .line 1696
    invoke-static {v0, v3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1698
    iget-object v0, p0, Lcom/oppo/camera/d/e;->ac:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1700
    iget v0, p0, Lcom/oppo/camera/d/e;->aa:I

    if-lez v0, :cond_2

    .line 1701
    iget-object v0, p0, Lcom/oppo/camera/d/e;->ac:Landroid/os/Handler;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1702
    iget-object v0, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->r()V

    goto :goto_0

    .line 1704
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->d(Z)V

    const-string v0, "pref_expand_popbar_key"

    .line 1706
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1707
    iget-object v0, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->w()V

    :cond_3
    const-string v0, "pref_filter_menu"

    .line 1710
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1711
    iget-object v0, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v2}, Lcom/oppo/camera/ui/c;->b(Z)V

    :cond_4
    const-string v0, "func_face_beauty_process"

    .line 1714
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1715
    iget-object v0, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v2}, Lcom/oppo/camera/ui/c;->b(Z)V

    .line 1718
    :cond_5
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->bD()V

    .line 1721
    :goto_0
    invoke-direct {p0}, Lcom/oppo/camera/d/e;->cG()V

    .line 1723
    iget-object v0, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/c;->x()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1724
    iget-object v0, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v2, v1}, Lcom/oppo/camera/ui/c;->a(ZZ)V

    .line 1725
    iget-object v0, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v2, v1}, Lcom/oppo/camera/ui/c;->b(ZZ)V

    .line 1726
    iget-object v0, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v2, v1}, Lcom/oppo/camera/ui/c;->c(ZZ)V

    .line 1727
    iget-object v0, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v2, v1}, Lcom/oppo/camera/ui/c;->e(ZZ)V

    .line 1730
    :cond_6
    iput-boolean v2, p0, Lcom/oppo/camera/d/e;->A:Z

    return-void
.end method

.method protected aX()Ljava/lang/String;
    .locals 1

    const-string v0, "pref_common_facebeauty_level_menu"

    return-object v0
.end method

.method public a_(Z)V
    .locals 4

    .line 1316
    new-instance v0, Lcom/oppo/camera/ui/control/c;

    const/16 v1, 0xb

    const-string v2, "button_color_inside_none"

    invoke-direct {v0, v1, v2}, Lcom/oppo/camera/ui/control/c;-><init>(ILjava/lang/String;)V

    .line 1319
    iget-boolean v3, p0, Lcom/oppo/camera/d/e;->X:Z

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/d/e;->cK()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    iget v3, p0, Lcom/oppo/camera/d/e;->j:I

    .line 1320
    invoke-static {v3}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    .line 1322
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/c;->a(I)V

    .line 1323
    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/control/c;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1325
    :cond_1
    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/control/c;->a(I)V

    .line 1326
    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/control/c;->a(Ljava/lang/String;)V

    .line 1330
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v0}, Lcom/oppo/camera/ui/c;->a(Lcom/oppo/camera/ui/control/c;)V

    return-void
.end method

.method public ac()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public ad()I
    .locals 1

    .line 565
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->bE()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    return v0

    :cond_0
    const/16 v0, 0x23

    return v0
.end method

.method protected ag()V
    .locals 3

    .line 688
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->bc()I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/d/e;->ad:I

    .line 689
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->aW()I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/d/e;->ae:I

    const/4 v0, 0x0

    .line 690
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->l(I)V

    .line 691
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->i(I)V

    .line 692
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->aP()V

    .line 693
    iget-object v1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    const-string v2, "pref_filter_menu"

    invoke-interface {v1, v2}, Lcom/oppo/camera/ui/c;->f(Ljava/lang/String;)V

    .line 694
    iget-object v1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v1, v0}, Lcom/oppo/camera/ui/c;->k(I)V

    return-void
.end method

.method protected ah()V
    .locals 2

    .line 714
    iget v0, p0, Lcom/oppo/camera/d/e;->ad:I

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->l(I)V

    .line 715
    iget v0, p0, Lcom/oppo/camera/d/e;->ae:I

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->i(I)V

    .line 716
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->aP()V

    .line 717
    iget-object v0, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    const-string v1, "pref_filter_menu"

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->f(Ljava/lang/String;)V

    .line 718
    iget-object v0, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    iget v1, p0, Lcom/oppo/camera/d/e;->ae:I

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->k(I)V

    return-void
.end method

.method protected ai()Z
    .locals 4

    const-string v0, "CommonCapMode"

    const-string v1, "onBurstShotCapture"

    .line 1387
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    iget-object v0, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1390
    iget-object v0, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->e(I)V

    .line 1393
    :cond_0
    iput v1, p0, Lcom/oppo/camera/d/e;->aa:I

    .line 1394
    iget-object v0, p0, Lcom/oppo/camera/d/e;->ac:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1395
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->R()V

    .line 1396
    iget-object v0, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0, v2}, Lcom/oppo/camera/d/b;->a(Z)V

    .line 1397
    invoke-direct {p0}, Lcom/oppo/camera/d/e;->cH()V

    .line 1399
    iget-object v0, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_1

    .line 1400
    iget-object v0, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0, v2}, Lcom/oppo/camera/e/f;->g(Z)V

    .line 1401
    iget-object v0, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    .line 1404
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->al()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1405
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->aI()V

    return v1

    :cond_2
    return v2
.end method

.method public am()V
    .locals 2

    const-string v0, "CommonCapMode"

    const-string v1, "onCancelTakePicture, reset mbShutterCallback"

    .line 1335
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1337
    iput-boolean v0, p0, Lcom/oppo/camera/d/e;->A:Z

    return-void
.end method

.method public at()Z
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->g()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 579
    :cond_0
    invoke-super {p0}, Lcom/oppo/camera/d/a;->at()Z

    move-result v0

    return v0
.end method

.method public b()I
    .locals 4

    .line 137
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cq()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    .line 138
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cq()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cq()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    .line 141
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cq()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_4

    .line 142
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cq()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    .line 143
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cq()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "key_3hdr"

    .line 149
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v0

    const v1, 0x8001

    if-eqz v0, :cond_3

    .line 150
    iget-object v0, p0, Lcom/oppo/camera/d/e;->O:Landroid/content/SharedPreferences;

    iget v2, p0, Lcom/oppo/camera/d/e;->j:I

    const-string v3, "pref_camera_hdr_mode_key"

    .line 151
    invoke-static {v3, v2}, Lcom/oppo/camera/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "on"

    .line 153
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v1, 0x8101

    goto :goto_0

    :cond_2
    const-string v2, "auto"

    .line 156
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v1, 0x8201

    :cond_3
    :goto_0
    return v1

    :cond_4
    :goto_1
    const v0, 0x8014

    return v0

    :cond_5
    :goto_2
    const v0, 0x8013

    return v0
.end method

.method public b(Lcom/oppo/camera/e/h;)Landroid/util/Size;
    .locals 2

    .line 512
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cq()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    .line 513
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cq()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 515
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cq()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    .line 516
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cq()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    .line 517
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cq()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    .line 518
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cq()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 522
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->g()Z

    move-result v0

    if-nez v0, :cond_2

    .line 523
    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/e;->a(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    .line 530
    :cond_2
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->b(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object p1

    return-object p1

    .line 519
    :cond_3
    :goto_0
    new-instance p1, Landroid/util/Size;

    const/16 v0, 0x5a0

    const/16 v1, 0x438

    invoke-direct {p1, v0, v1}, Landroid/util/Size;-><init>(II)V

    return-object p1

    .line 514
    :cond_4
    :goto_1
    new-instance p1, Landroid/util/Size;

    const/16 v0, 0xcc0

    const/16 v1, 0x990

    invoke-direct {p1, v0, v1}, Landroid/util/Size;-><init>(II)V

    return-object p1
.end method

.method public b(Lcom/oppo/camera/statistics/model/DcsMsgData;)Lcom/oppo/camera/statistics/model/DcsMsgData;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 669
    instance-of v1, p1, Lcom/oppo/camera/statistics/model/CaptureMsgData;

    if-eqz v1, :cond_0

    .line 670
    move-object v1, p1

    check-cast v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    return-object v0

    :cond_1
    const-string v0, "pref_support_night_process"

    .line 677
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 678
    iget v0, p0, Lcom/oppo/camera/d/e;->W:I

    iput v0, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mNightState:I

    .line 681
    :cond_2
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->b(Lcom/oppo/camera/statistics/model/DcsMsgData;)Lcom/oppo/camera/statistics/model/DcsMsgData;

    return-object p1
.end method

.method public b(I)V
    .locals 2

    const-string v0, "CommonCapMode"

    const-string v1, "onCameraIdChanged"

    .line 1044
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1046
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->b(I)V

    const/4 p1, 0x1

    .line 1047
    iput-boolean p1, p0, Lcom/oppo/camera/d/e;->A:Z

    const/4 p1, 0x0

    .line 1048
    iput-boolean p1, p0, Lcom/oppo/camera/d/e;->ai:Z

    .line 1050
    iput p1, p0, Lcom/oppo/camera/d/e;->W:I

    .line 1051
    iput p1, p0, Lcom/oppo/camera/d/e;->af:I

    .line 1052
    iput p1, p0, Lcom/oppo/camera/d/e;->ap:I

    .line 1054
    iget-object p1, p0, Lcom/oppo/camera/d/e;->N:Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 1055
    iget-object p1, p0, Lcom/oppo/camera/d/e;->N:Landroid/app/Activity;

    new-instance v0, Lcom/oppo/camera/d/e$3;

    invoke-direct {v0, p0}, Lcom/oppo/camera/d/e$3;-><init>(Lcom/oppo/camera/d/e;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected b(Landroid/media/Image;)V
    .locals 0

    .line 952
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->b(Landroid/media/Image;)V

    return-void
.end method

.method protected b([BZ)V
    .locals 1

    .line 1566
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onBeforePictureTaken, mReceivedSnapNum: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oppo/camera/d/e;->aa:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", isBurstShot: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CommonCapMode"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1568
    iget-boolean p1, p0, Lcom/oppo/camera/d/e;->s:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 1572
    iget p1, p0, Lcom/oppo/camera/d/e;->aa:I

    invoke-static {}, Lcom/oppo/camera/o/d;->s()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 1573
    iget p1, p0, Lcom/oppo/camera/d/e;->aa:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/oppo/camera/d/e;->aa:I

    .line 1574
    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    iget p2, p0, Lcom/oppo/camera/d/e;->aa:I

    invoke-interface {p1, p2}, Lcom/oppo/camera/ui/c;->g(I)V

    .line 1575
    iget-object p1, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Lcom/oppo/camera/d/b;->a(I)V

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_camera_flashmode_key"

    .line 957
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_hdr_mode_key"

    .line 958
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_vivid_effect_key"

    .line 959
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_pi_mode_key"

    .line 960
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_filter_menu"

    .line 961
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_none_sat_ultra_wide_angle_key"

    .line 962
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 966
    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->b(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 963
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected bE()Z
    .locals 2

    const-string v0, "pref_support_night_process"

    .line 2272
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oppo/camera/d/e;->W:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oppo/camera/d/e;->af:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/d/e;->ai:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bF()Z
    .locals 1

    .line 1835
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->bE()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 1839
    :cond_0
    invoke-super {p0}, Lcom/oppo/camera/d/a;->bF()Z

    move-result v0

    return v0
.end method

.method public bG()I
    .locals 1

    .line 1382
    iget v0, p0, Lcom/oppo/camera/d/e;->aa:I

    return v0
.end method

.method public bJ()Z
    .locals 1

    const-string v0, "key_beauty3d"

    .line 424
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    if-eqz v0, :cond_0

    .line 425
    invoke-virtual {v0}, Lcom/oppo/camera/c/b;->i()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected bL()[Ljava/lang/String;
    .locals 1

    .line 375
    sget-object v0, Lcom/oppo/camera/ui/c;->b:[Ljava/lang/String;

    return-object v0
.end method

.method public bc()I
    .locals 2

    .line 1142
    invoke-direct {p0}, Lcom/oppo/camera/d/e;->cK()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1148
    :cond_0
    invoke-super {p0}, Lcom/oppo/camera/d/a;->bc()I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const-string v0, "CommonCapMode"

    const-string v1, "getCurrFilterIndex, no filter"

    .line 1143
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public bh()Z
    .locals 1

    .line 1844
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->bw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bp()V
    .locals 4

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 653
    iget v1, p0, Lcom/oppo/camera/d/e;->ag:I

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 655
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "close_night_num"

    .line 654
    invoke-static {v3, v1}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 656
    iput v2, p0, Lcom/oppo/camera/d/e;->ag:I

    .line 657
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 661
    iget-object v1, p0, Lcom/oppo/camera/d/e;->N:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "menuClick"

    invoke-static {v1, v3, v0, v2}, Lcom/oppo/camera/statistics/CameraStatisticsUtil;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public bq()Z
    .locals 8

    .line 1849
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->F()Z

    move-result v0

    const-string v1, "CommonCapMode"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/d/e;->A:Z

    const-string v3, "false"

    const-string v4, "ro.config.oppo.low_ram"

    if-eqz v0, :cond_0

    .line 1851
    invoke-static {v4, v3}, Lcom/oppo/camera/debug/DebugUtil;->debugPropertyEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1852
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isCanFastCapture, mbPicToDoneCallbacked: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/oppo/camera/d/e;->A:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", ro.config.oppo.low_ram: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1854
    invoke-static {v4, v3}, Lcom/oppo/camera/debug/DebugUtil;->debugPropertyEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1852
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 1859
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->bE()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "isCanFastCapture, in nightProcess, so not support it"

    .line 1860
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 1865
    :cond_2
    invoke-direct {p0}, Lcom/oppo/camera/d/e;->cJ()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "isCanFastCapture, sdcard storage is too slow, so not support it"

    .line 1866
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 1871
    :cond_3
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->bk()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "isCanFastCapture, vivid effect open, so not support it"

    .line 1872
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 1877
    :cond_4
    invoke-direct {p0}, Lcom/oppo/camera/d/e;->cK()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "isCanFastCapture, PIMode effect open, so not support it"

    .line 1878
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 1883
    :cond_5
    iget-boolean v0, p0, Lcom/oppo/camera/d/e;->w:Z

    if-eqz v0, :cond_6

    const-string v0, "isCanFastCapture, mbAutoBinning is true, so not support it"

    .line 1884
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 1889
    :cond_6
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->at()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->g()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1890
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->av()Ljava/lang/String;

    move-result-object v0

    .line 1891
    iget-object v3, p0, Lcom/oppo/camera/d/e;->O:Landroid/content/SharedPreferences;

    iget v4, p0, Lcom/oppo/camera/d/e;->j:I

    const-string v5, "pref_camera_hdr_mode_key"

    .line 1892
    invoke-static {v5, v4}, Lcom/oppo/camera/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 1891
    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "on"

    .line 1894
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-boolean v3, p0, Lcom/oppo/camera/d/e;->v:Z

    if-eqz v3, :cond_7

    goto :goto_0

    :cond_7
    move v3, v2

    goto :goto_1

    :cond_8
    :goto_0
    const/4 v3, 0x1

    .line 1895
    :goto_1
    iget-object v5, p0, Lcom/oppo/camera/d/e;->O:Landroid/content/SharedPreferences;

    iget-object v6, p0, Lcom/oppo/camera/d/e;->N:Landroid/app/Activity;

    const v7, 0x7f0f0114

    .line 1896
    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "pref_camera_photo_ratio_key"

    .line 1895
    invoke-interface {v5, v7, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1898
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/oppo/camera/d/e;->x:Z

    if-nez v0, :cond_b

    if-eqz v3, :cond_9

    .line 1900
    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v0

    if-nez v0, :cond_b

    :cond_9
    iget-boolean v0, p0, Lcom/oppo/camera/d/e;->y:Z

    if-nez v0, :cond_b

    const-string v0, "super"

    .line 1902
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_2

    .line 1909
    :cond_a
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cv()Z

    move-result v0

    return v0

    .line 1903
    :cond_b
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCanFastCapture, flash: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/d/e;->x:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", hdr: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/d/e;->v:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", night: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/d/e;->y:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_c
    const-string v0, "isCanFastCapture, param is null or from third app"

    .line 1911
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public c(Lcom/oppo/camera/e/h;)Landroid/util/Size;
    .locals 2

    .line 549
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cq()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 552
    new-instance p1, Landroid/util/Size;

    const/16 v0, 0x5a0

    const/16 v1, 0x438

    invoke-direct {p1, v0, v1}, Landroid/util/Size;-><init>(II)V

    return-object p1

    .line 554
    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->c(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method public cB()Z
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {v0}, Lcom/oppo/camera/c/b;->g()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public cC()V
    .locals 5

    .line 457
    iget-object v0, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    if-nez v0, :cond_0

    return-void

    .line 461
    :cond_0
    invoke-virtual {v0}, Lcom/oppo/camera/c/b;->f()I

    move-result v0

    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateBeauty3DView, type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CommonCapMode"

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/16 v2, 0xa

    const/16 v3, 0x438

    const/16 v4, 0x5a0

    if-eq v0, v2, :cond_2

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 479
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v4, v3}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/c/b;->a(ILandroid/util/Size;)V

    goto :goto_0

    .line 472
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    const/4 v1, 0x2

    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v4, v3}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/c/b;->a(ILandroid/util/Size;)V

    goto :goto_0

    .line 466
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    invoke-virtual {v0}, Lcom/oppo/camera/c/b;->h()V

    :goto_0
    return-void
.end method

.method public cD()Z
    .locals 3

    .line 2147
    iget-object v0, p0, Lcom/oppo/camera/d/e;->N:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/a/f;->a(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "key_beauty3d"

    .line 2148
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2149
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->aW()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    .line 2150
    invoke-interface {v0}, Lcom/oppo/camera/ui/c;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2151
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cq()I

    move-result v0

    if-nez v0, :cond_0

    .line 2152
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->aO()Ljava/lang/String;

    move-result-object v0

    const-string v2, "beauty"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ce()V
    .locals 6

    const-string v0, "key_bubble_type_custom_beuty3d"

    .line 2065
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->i(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2066
    iget-object v0, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    const/4 v2, 0x5

    invoke-interface {v0, v2, v1}, Lcom/oppo/camera/ui/c;->c(IZ)V

    :cond_0
    const-string v0, "key_bubble_type_add_beuty3d"

    .line 2069
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/d/e;->N:Landroid/app/Activity;

    .line 2070
    invoke-static {v0}, Lcom/oppo/camera/ui/preview/a/f;->a(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1

    .line 2071
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->A()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "key_beauty3d"

    .line 2072
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2073
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->aO()Ljava/lang/String;

    move-result-object v0

    const-string v2, "beauty"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    .line 2075
    iget-object v2, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    const/4 v3, 0x0

    invoke-direct {p0, v0}, Lcom/oppo/camera/d/e;->x(I)I

    move-result v4

    invoke-direct {p0, v0}, Lcom/oppo/camera/d/e;->y(I)I

    move-result v5

    invoke-interface {v2, v3, v0, v4, v5}, Lcom/oppo/camera/ui/c;->a(Landroid/view/View;III)V

    .line 2078
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    if-eqz v0, :cond_3

    .line 2079
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cD()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2080
    iget-object v0, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/c/b;->e(Z)V

    .line 2081
    iget-object v0, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    invoke-virtual {v0}, Lcom/oppo/camera/c/b;->p()V

    goto :goto_0

    .line 2083
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    invoke-virtual {v0}, Lcom/oppo/camera/c/b;->q()V

    :cond_3
    :goto_0
    return-void
.end method

.method public cf()V
    .locals 3

    const-string v0, "key_bubble_type_add_beuty3d"

    .line 2124
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->i(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2125
    iget-object v0, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    const/4 v2, 0x6

    invoke-interface {v0, v2, v1}, Lcom/oppo/camera/ui/c;->c(IZ)V

    :cond_0
    const-string v0, "key_bubble_type_custom_beuty3d"

    .line 2128
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->i(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2129
    iget-object v0, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    const/4 v2, 0x5

    invoke-interface {v0, v2, v1}, Lcom/oppo/camera/ui/c;->c(IZ)V

    .line 2132
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    if-eqz v0, :cond_2

    .line 2133
    invoke-virtual {v0}, Lcom/oppo/camera/c/b;->q()V

    :cond_2
    return-void
.end method

.method public cg()Z
    .locals 1

    .line 1830
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->bE()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/d/e;->q:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public cm()Z
    .locals 1

    const-string v0, "pref_support_night_process"

    .line 2090
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_support_raw_post_process"

    .line 2091
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public cn()V
    .locals 2

    .line 699
    iget-object v0, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    if-eqz v0, :cond_0

    .line 700
    iget-object v1, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/c/b;->a(Lcom/oppo/camera/e/f;)V

    :cond_0
    const-string v0, "key_3hdr"

    .line 703
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 704
    iget-object v0, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/e/h;->G()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 705
    iget-object v0, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->n(Z)V

    .line 709
    :cond_1
    invoke-super {p0}, Lcom/oppo/camera/d/a;->cn()V

    return-void
.end method

.method protected co()Z
    .locals 1

    .line 1932
    iget-object v0, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->g()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/d/e;->cK()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->bw()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected cq()I
    .locals 1

    .line 2139
    iget-object v0, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    if-eqz v0, :cond_0

    .line 2140
    invoke-virtual {v0}, Lcom/oppo/camera/c/b;->f()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected cs()V
    .locals 0

    return-void
.end method

.method public cu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected cx()I
    .locals 1

    .line 2300
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->br()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0f024d

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public cy()V
    .locals 2

    .line 2309
    iget-object v0, p0, Lcom/oppo/camera/d/e;->N:Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/oppo/camera/debug/DebugUtil;->isEnableHighPictureSizeSetting()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "CommonCapMode"

    const-string v1, "displayFixedUpModeHint"

    .line 2313
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2315
    iget-object v0, p0, Lcom/oppo/camera/d/e;->N:Landroid/app/Activity;

    new-instance v1, Lcom/oppo/camera/d/e$8;

    invoke-direct {v1, p0}, Lcom/oppo/camera/d/e$8;-><init>(Lcom/oppo/camera/d/e;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d(Lcom/oppo/camera/e/h;)Landroid/util/Size;
    .locals 3

    const/16 v0, 0x20

    .line 535
    invoke-virtual {p1, v0}, Lcom/oppo/camera/e/h;->a(I)Ljava/util/List;

    move-result-object v0

    const-wide v1, 0x3ff5555555555555L    # 1.3333333333333333

    .line 536
    invoke-static {v0, v1, v2}, Lcom/oppo/camera/o/d;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 539
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRawSize, optimalSize: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CommonCapMode"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 544
    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->d(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method public d(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1217
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->A()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public d(Ljava/lang/String;)Z
    .locals 7

    const-string v0, "key_fixed_focus_lens_support_tap_shutter"

    .line 737
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v0, "key_fixed_focus_lens_support_metering"

    .line 738
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    .line 739
    invoke-interface {v0}, Lcom/oppo/camera/d/b;->W()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "func_mode_panel"

    .line 743
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const-string v0, "pref_filter_process_key"

    .line 747
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 748
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->ax()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_HIGH_PICTURE_FILTER_SUPPORT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v3

    :cond_4
    :goto_0
    return v1

    :cond_5
    const-string v2, "pref_save_jpg_after_pause_key"

    .line 751
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 752
    iget-object p1, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->g()Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_SAVE_JPG_AFTER_PAUSE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 753
    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 754
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->bt()Z

    move-result p1

    if-nez p1, :cond_6

    .line 755
    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    move v1, v3

    :goto_1
    return v1

    :cond_7
    const-string v2, "func_face_slender_process"

    .line 758
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "func_face_beauty_process"

    if-eqz v2, :cond_9

    .line 759
    invoke-virtual {p0, v4}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget p1, p0, Lcom/oppo/camera/d/e;->j:I

    .line 760
    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 761
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->A()Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_2

    :cond_8
    move v1, v3

    :goto_2
    return v1

    :cond_9
    const-string v2, "pref_camera_vivid_effect_key"

    .line 764
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 765
    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_SUPPORT_VIVID_EFFECT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 766
    invoke-static {}, Lcom/oppo/camera/o/d;->y()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 767
    invoke-direct {p0}, Lcom/oppo/camera/d/e;->cK()Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_3

    :cond_a
    move v1, v3

    :goto_3
    return v1

    :cond_b
    const-string v2, "pref_burst_shot_key"

    .line 770
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 771
    iget-object p1, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->g()Z

    move-result p1

    if-eqz p1, :cond_d

    iget p1, p0, Lcom/oppo/camera/d/e;->j:I

    .line 772
    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-nez p1, :cond_d

    .line 773
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->ax()Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_4

    :cond_c
    return v1

    :cond_d
    :goto_4
    return v3

    :cond_e
    const-string v2, "pref_support_post_view"

    .line 780
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    return v3

    :cond_f
    const-string v2, "pref_support_fast_capture"

    .line 784
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 785
    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result p1

    if-eqz p1, :cond_10

    return v1

    .line 788
    :cond_10
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cv()Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->ax()Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_5

    :cond_11
    move v1, v3

    :goto_5
    return v1

    :cond_12
    const-string v2, "pref_support_capture_preview"

    .line 792
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 793
    iget-object p1, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    .line 794
    invoke-interface {p1}, Lcom/oppo/camera/d/b;->g()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 795
    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result p1

    if-eqz p1, :cond_13

    return v1

    :cond_13
    return v3

    :cond_14
    const-string v2, "pref_support_ipa_process"

    .line 802
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 803
    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result p1

    return p1

    :cond_15
    const-string v2, "pref_auto_night_scence_key"

    .line 806
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 807
    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_COMMON_AUTO_NIGHT_SCENCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result p1

    return p1

    :cond_16
    const-string v2, "pref_camera_torch_mode_key"

    .line 810
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 811
    iget p1, p0, Lcom/oppo/camera/d/e;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    return p1

    :cond_17
    const-string v2, "func_torch_soft_light"

    .line 814
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 815
    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_TORCH_SOFT_LIGHT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result p1

    if-eqz p1, :cond_18

    iget p1, p0, Lcom/oppo/camera/d/e;->j:I

    .line 816
    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_18

    goto :goto_6

    :cond_18
    move v1, v3

    :goto_6
    return v1

    :cond_19
    const-string v2, "pref_camera_flashmode_key"

    .line 819
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 820
    iget p1, p0, Lcom/oppo/camera/d/e;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_1a
    const-string v2, "pref_camera_hdr_mode_key"

    .line 823
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 824
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->ax()Z

    move-result p1

    if-eqz p1, :cond_1c

    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_HIGH_PICTURE_HDR_SUPPORT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result p1

    if-eqz p1, :cond_1b

    goto :goto_7

    :cond_1b
    move v1, v3

    :cond_1c
    :goto_7
    return v1

    .line 827
    :cond_1d
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 828
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->ax()Z

    move-result p1

    if-eqz p1, :cond_1f

    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_HIGH_PICTURE_BEAUTY_SUPPORT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result p1

    if-eqz p1, :cond_1e

    goto :goto_8

    :cond_1e
    move v1, v3

    :cond_1f
    :goto_8
    return v1

    :cond_20
    const-string v5, "pref_expand_popbar_key"

    .line 831
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 832
    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1}, Lcom/oppo/camera/ui/c;->m()Z

    move-result p1

    if-nez p1, :cond_22

    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1}, Lcom/oppo/camera/ui/c;->w()Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_9

    :cond_21
    move v1, v3

    :cond_22
    :goto_9
    return v1

    :cond_23
    const-string v5, "key_beauty3d"

    .line 835
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 836
    invoke-virtual {p0, v4}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_24

    .line 837
    invoke-static {}, Lcom/oppo/camera/e/a;->f()Z

    move-result p1

    if-eqz p1, :cond_24

    iget p1, p0, Lcom/oppo/camera/d/e;->j:I

    .line 838
    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_24

    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_BEAUTY3D:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 839
    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result p1

    if-eqz p1, :cond_24

    goto :goto_a

    :cond_24
    move v1, v3

    :goto_a
    return v1

    :cond_25
    const-string v6, "func_face_beauty_custom"

    .line 842
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_27

    .line 843
    invoke-virtual {p0, v4}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_26

    iget p1, p0, Lcom/oppo/camera/d/e;->j:I

    .line 844
    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_26

    goto :goto_b

    :cond_26
    move v1, v3

    :goto_b
    return v1

    :cond_27
    const-string v6, "func_face_beauty_common"

    .line 847
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 848
    invoke-virtual {p0, v4}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_28

    iget p1, p0, Lcom/oppo/camera/d/e;->j:I

    .line 849
    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-nez p1, :cond_28

    goto :goto_c

    :cond_28
    move v1, v3

    :goto_c
    return v1

    :cond_29
    const-string v4, "pref_ai_scene_key"

    .line 852
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 853
    iget p1, p0, Lcom/oppo/camera/d/e;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-nez p1, :cond_2a

    .line 854
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->ax()Z

    move-result p1

    if-eqz p1, :cond_2b

    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_HIGH_PICTURE_ASD_SUPPORT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result p1

    if-eqz p1, :cond_2a

    goto :goto_d

    :cond_2a
    move v1, v3

    :cond_2b
    :goto_d
    return v1

    :cond_2c
    const-string v4, "key_remosaic"

    .line 857
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 858
    iget p1, p0, Lcom/oppo/camera/d/e;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-nez p1, :cond_2e

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->ax()Z

    move-result p1

    if-eqz p1, :cond_2d

    goto :goto_e

    :cond_2d
    move v1, v3

    :cond_2e
    :goto_e
    return v1

    :cond_2f
    const-string v4, "key_3hdr"

    .line 861
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 862
    iget p1, p0, Lcom/oppo/camera/d/e;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 863
    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_30

    iget p1, p0, Lcom/oppo/camera/d/e;->j:I

    .line 864
    invoke-static {p1}, Lcom/oppo/camera/e/a;->a(I)Lcom/oppo/camera/e/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/e/h;->H()Z

    move-result p1

    if-nez p1, :cond_31

    iget p1, p0, Lcom/oppo/camera/d/e;->j:I

    .line 865
    invoke-static {p1}, Lcom/oppo/camera/e/a;->a(I)Lcom/oppo/camera/e/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/e/h;->G()Z

    move-result p1

    if-eqz p1, :cond_30

    goto :goto_f

    :cond_30
    move v1, v3

    :cond_31
    :goto_f
    return v1

    :cond_32
    const-string v2, "pref_switch_front_dual_camera_key"

    .line 868
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 869
    invoke-virtual {p0, v5}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_33

    .line 870
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cq()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_34

    .line 871
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cq()I

    move-result p1

    if-ne p1, v1, :cond_33

    goto :goto_10

    :cond_33
    move v1, v3

    :cond_34
    :goto_10
    return v1

    :cond_35
    const-string v2, "key_beauty3d_main_face_detect"

    .line 874
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 875
    invoke-virtual {p0, v5}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_36

    .line 876
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->aW()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_36

    goto :goto_11

    :cond_36
    move v1, v3

    :goto_11
    return v1

    :cond_37
    const-string v2, "pref_face_detection_key"

    .line 879
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 880
    invoke-virtual {p0, v5}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_39

    .line 881
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cq()I

    move-result p1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_38

    .line 882
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cq()I

    move-result p1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_38

    .line 883
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cq()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_38

    .line 884
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cq()I

    move-result p1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_38

    .line 885
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cq()I

    move-result p1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_39

    :cond_38
    return v3

    :cond_39
    return v1

    :cond_3a
    const-string v2, "pref_camera_assistant_line_key"

    .line 892
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 893
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->A()Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_3b
    const-string v2, "pref_camera_pi_mode_key"

    .line 896
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 897
    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_PI:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result p1

    if-eqz p1, :cond_3c

    iget p1, p0, Lcom/oppo/camera/d/e;->j:I

    .line 898
    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-nez p1, :cond_3c

    .line 899
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->ax()Z

    move-result p1

    if-eqz p1, :cond_3d

    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_HIGH_PICTURE_PI_SUPPORT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result p1

    if-eqz p1, :cond_3c

    goto :goto_12

    :cond_3c
    move v1, v3

    :cond_3d
    :goto_12
    return v1

    :cond_3e
    const-string v2, "pref_support_raw_post_process"

    .line 902
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "key_raw_hdr"

    if-eqz v2, :cond_41

    const-string p1, "pref_support_night_process"

    .line 903
    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_40

    .line 904
    invoke-virtual {p0, v4}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3f

    goto :goto_13

    :cond_3f
    move v1, v3

    :cond_40
    :goto_13
    return v1

    :cond_41
    const-string v2, "pref_camera_gradienter_key"

    .line 907
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_42

    return v3

    :cond_42
    const-string v2, "pref_filter_menu"

    .line 911
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 912
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 916
    :cond_43
    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 917
    iget p1, p0, Lcom/oppo/camera/d/e;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-nez p1, :cond_45

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->ax()Z

    move-result p1

    if-eqz p1, :cond_44

    goto :goto_14

    :cond_44
    return v1

    :cond_45
    :goto_14
    return v3

    :cond_46
    const-string v0, "key_high_picture_size"

    .line 924
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-static {}, Lcom/oppo/camera/debug/DebugUtil;->isEnableHighPictureSizeSetting()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 925
    iget p1, p0, Lcom/oppo/camera/d/e;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-nez p1, :cond_47

    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_HIGH_PICTURE_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 926
    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getSizeConfigValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Landroid/util/Size;

    move-result-object p1

    if-eqz p1, :cond_47

    iget-object p1, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    .line 927
    invoke-interface {p1}, Lcom/oppo/camera/d/b;->g()Z

    move-result p1

    if-eqz p1, :cond_47

    goto :goto_15

    :cond_47
    move v1, v3

    :goto_15
    return v1

    :cond_48
    const-string v0, "func_sat_camera"

    .line 930
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 931
    iget p1, p0, Lcom/oppo/camera/d/e;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-nez p1, :cond_49

    .line 932
    invoke-static {}, Lcom/oppo/camera/e/a;->g()Z

    move-result p1

    if-eqz p1, :cond_49

    .line 933
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->ax()Z

    move-result p1

    if-nez p1, :cond_49

    iget-object p1, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    .line 934
    invoke-interface {p1}, Lcom/oppo/camera/d/b;->g()Z

    move-result p1

    if-eqz p1, :cond_49

    goto :goto_16

    :cond_49
    move v1, v3

    :goto_16
    return v1

    :cond_4a
    const-string v0, "key_support_no_face_forbid_beauty"

    .line 937
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 938
    iget p1, p0, Lcom/oppo/camera/d/e;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_4b
    const-string v0, "pref_none_sat_ultra_wide_angle_key"

    .line 941
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 942
    iget p1, p0, Lcom/oppo/camera/d/e;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-nez p1, :cond_4c

    .line 943
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->br()Z

    move-result p1

    if-eqz p1, :cond_4c

    iget-object p1, p0, Lcom/oppo/camera/d/e;->L:Lcom/oppo/camera/d/b;

    .line 944
    invoke-interface {p1}, Lcom/oppo/camera/d/b;->g()Z

    move-result p1

    if-eqz p1, :cond_4c

    goto :goto_17

    :cond_4c
    move v1, v3

    :goto_17
    return v1

    .line 947
    :cond_4d
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected h()V
    .locals 4

    .line 1066
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause, mbBurstShot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/d/e;->p:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonCapMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    iget-object v0, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->i(Z)V

    .line 1070
    iget-boolean v0, p0, Lcom/oppo/camera/d/e;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/e;->ac:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1071
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->aI()V

    .line 1072
    iput-boolean v1, p0, Lcom/oppo/camera/d/e;->p:Z

    .line 1075
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->bE()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1076
    iget-object v0, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->h(I)V

    .line 1079
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/e;->ac:Landroid/os/Handler;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    .line 1080
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1083
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->d(Z)V

    .line 1084
    iget-object v0, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->f(Z)V

    const/4 v0, 0x1

    .line 1085
    iput-boolean v0, p0, Lcom/oppo/camera/d/e;->A:Z

    .line 1086
    iput v1, p0, Lcom/oppo/camera/d/e;->W:I

    .line 1087
    iput v1, p0, Lcom/oppo/camera/d/e;->af:I

    .line 1088
    iput-boolean v1, p0, Lcom/oppo/camera/d/e;->ai:Z

    .line 1089
    iput v1, p0, Lcom/oppo/camera/d/e;->ap:I

    const-string v1, "key_beauty3d"

    .line 1091
    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    if-eqz v2, :cond_3

    .line 1092
    invoke-virtual {v2}, Lcom/oppo/camera/c/b;->b()V

    .line 1095
    :cond_3
    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "key_bubble_type_add_beuty3d"

    .line 1096
    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/e;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    .line 1097
    invoke-interface {v2}, Lcom/oppo/camera/ui/c;->m()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1098
    iget-object v2, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    const/4 v3, 0x6

    invoke-interface {v2, v3, v0}, Lcom/oppo/camera/ui/c;->c(IZ)V

    .line 1101
    :cond_4
    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "key_bubble_type_custom_beuty3d"

    .line 1102
    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/e;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1103
    iget-object v1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    const/4 v2, 0x5

    invoke-interface {v1, v2, v0}, Lcom/oppo/camera/ui/c;->c(IZ)V

    :cond_5
    return-void
.end method

.method protected i()V
    .locals 2

    const-string v0, "CommonCapMode"

    const-string v1, "OnStop"

    .line 646
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected j()V
    .locals 4

    const-string v0, "CommonCapMode"

    const-string v1, "onDestroy"

    .line 1109
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1111
    iput-object v0, p0, Lcom/oppo/camera/d/e;->ab:Lcom/oppo/camera/d/e$a;

    const-string v1, "key_bubble_type_add_beuty3d"

    .line 1113
    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/e;->i(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1114
    iget-object v1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    const/4 v3, 0x6

    invoke-interface {v1, v3, v2}, Lcom/oppo/camera/ui/c;->c(IZ)V

    :cond_0
    const-string v1, "key_bubble_type_custom_beuty3d"

    .line 1117
    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/e;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1118
    iget-object v1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    const/4 v3, 0x5

    invoke-interface {v1, v3, v2}, Lcom/oppo/camera/ui/c;->c(IZ)V

    .line 1121
    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    if-eqz v1, :cond_2

    .line 1122
    invoke-virtual {v1}, Lcom/oppo/camera/c/b;->r()V

    .line 1123
    iput-object v0, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    :cond_2
    return-void
.end method

.method protected k()V
    .locals 3

    const-string v0, "CommonCapMode"

    const-string v1, "onInitCameraMode"

    .line 170
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/oppo/camera/d/e;->ab:Lcom/oppo/camera/d/e$a;

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Lcom/oppo/camera/d/e$a;->a()V

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/e;->ac:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 177
    new-instance v0, Lcom/oppo/camera/d/e$1;

    invoke-direct {v0, p0}, Lcom/oppo/camera/d/e$1;-><init>(Lcom/oppo/camera/d/e;)V

    iput-object v0, p0, Lcom/oppo/camera/d/e;->ac:Landroid/os/Handler;

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    iget-object v1, p0, Lcom/oppo/camera/d/e;->N:Landroid/app/Activity;

    const v2, 0x7f0f0094

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->a(Ljava/lang/String;)V

    .line 238
    invoke-direct {p0}, Lcom/oppo/camera/d/e;->cE()V

    .line 240
    iget-object v0, p0, Lcom/oppo/camera/d/e;->V:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/d/e;->ar:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public k(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "type_preview_frame"

    .line 2096
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const-string p1, "pref_camera_gesture_shutter_key"

    .line 2097
    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2098
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cq()I

    move-result p1

    if-eqz p1, :cond_1

    .line 2099
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->cq()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    const-string v0, "type_still_capture_raw"

    .line 2102
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "pref_support_raw_post_process"

    .line 2103
    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_3
    const-string v0, "type_still_capture_yuv_main"

    .line 2106
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2107
    iget-object p1, p0, Lcom/oppo/camera/d/e;->J:Lcom/oppo/camera/a/a;

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    return v1

    :cond_5
    const-string v0, "type_still_capture_yuv_sub"

    .line 2110
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "type_still_capture_yuv_third"

    .line 2111
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    .line 2115
    :cond_6
    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "type_still_capture"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v2

    .line 2119
    :cond_7
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->k(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 2112
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/oppo/camera/d/e;->J:Lcom/oppo/camera/a/a;

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->ax()Z

    move-result p1

    if-nez p1, :cond_9

    const-string p1, "func_sat_camera"

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_3

    :cond_9
    move v1, v2

    :goto_3
    return v1
.end method

.method protected l()V
    .locals 3

    const-string v0, "CommonCapMode"

    const-string v1, "onDeInitCameraMode"

    .line 584
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->i(Z)V

    .line 587
    iget-object v0, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->p(Z)V

    .line 588
    iput-boolean v1, p0, Lcom/oppo/camera/d/e;->A:Z

    const/4 v0, 0x0

    .line 589
    iput-boolean v0, p0, Lcom/oppo/camera/d/e;->ai:Z

    .line 591
    iput v0, p0, Lcom/oppo/camera/d/e;->W:I

    .line 592
    iput v0, p0, Lcom/oppo/camera/d/e;->af:I

    .line 593
    iput v0, p0, Lcom/oppo/camera/d/e;->ap:I

    .line 595
    iget-object v1, p0, Lcom/oppo/camera/d/e;->ac:Landroid/os/Handler;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 596
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 599
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    if-eqz v1, :cond_1

    .line 600
    iget-object v1, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v1, v0}, Lcom/oppo/camera/e/f;->k(I)V

    .line 602
    sget-object v1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_PI:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 603
    iget-object v1, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v1, v0}, Lcom/oppo/camera/e/f;->d(Z)V

    .line 607
    :cond_1
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->j(I)V

    .line 609
    iget-object v1, p0, Lcom/oppo/camera/d/e;->P:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v1, :cond_2

    .line 610
    iget-object v1, p0, Lcom/oppo/camera/d/e;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {v1, v0}, Lcom/oppo/camera/ui/preview/a/i;->g(I)V

    .line 613
    :cond_2
    iget-object v1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v1, v0}, Lcom/oppo/camera/ui/c;->d(Z)V

    const-string v1, "key_bubble_type_add_beuty3d"

    .line 615
    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/e;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "key_beauty3d"

    .line 616
    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 617
    iget-object v1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    const/4 v2, 0x6

    invoke-interface {v1, v2, v0}, Lcom/oppo/camera/ui/c;->c(IZ)V

    :cond_3
    const-string v1, "key_bubble_type_custom_beuty3d"

    .line 620
    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/e;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 621
    iget-object v1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    const/4 v2, 0x5

    invoke-interface {v1, v2, v0}, Lcom/oppo/camera/ui/c;->c(IZ)V

    .line 624
    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    if-eqz v0, :cond_5

    .line 625
    invoke-virtual {v0}, Lcom/oppo/camera/c/b;->c()V

    .line 628
    :cond_5
    iget-object v0, p0, Lcom/oppo/camera/d/e;->J:Lcom/oppo/camera/a/a;

    if-eqz v0, :cond_6

    .line 629
    iget-object v0, p0, Lcom/oppo/camera/d/e;->J:Lcom/oppo/camera/a/a;

    invoke-virtual {v0}, Lcom/oppo/camera/a/a;->d()V

    :cond_6
    return-void
.end method

.method public l(I)V
    .locals 2

    .line 1153
    invoke-direct {p0}, Lcom/oppo/camera/d/e;->cK()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1154
    invoke-direct {p0}, Lcom/oppo/camera/d/e;->cL()V

    .line 1157
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/e;->P:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v0, :cond_1

    .line 1158
    iget-object v0, p0, Lcom/oppo/camera/d/e;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/e;->o(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/preview/a/i;->a(Ljava/lang/String;)V

    .line 1159
    iget-object v0, p0, Lcom/oppo/camera/d/e;->P:Lcom/oppo/camera/ui/preview/a/i;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/preview/a/i;->b(Z)V

    .line 1162
    :cond_1
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->l(I)V

    return-void
.end method

.method protected m()V
    .locals 4

    const-string v0, "CommonCapMode"

    const-string v1, "onBeforePreview"

    .line 1188
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->bK()V

    .line 1192
    iget-object v0, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/c/b;->f()I

    move-result v0

    if-lez v0, :cond_0

    .line 1193
    iget-object v0, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    iget-object v1, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/c/b;->b(Lcom/oppo/camera/e/f;)V

    .line 1196
    :cond_0
    sget-object v0, Lcom/oppo/camera/config/ConfigDataBase;->KEY_PI:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1197
    iget-object v0, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    invoke-direct {p0}, Lcom/oppo/camera/d/e;->cK()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->d(Z)V

    :cond_1
    const-string v0, "pref_burst_shot_key"

    .line 1200
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 1203
    iget-object v1, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v1}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1204
    iget-object v0, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/oppo/camera/e/h;->a(I)Ljava/util/List;

    move-result-object v0

    :cond_2
    const-wide v1, 0x3ff5555555555555L    # 1.3333333333333333

    .line 1207
    invoke-static {v0, v1, v2}, Lcom/oppo/camera/o/d;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1209
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    mul-int/2addr v1, v0

    int-to-long v0, v1

    const-wide/32 v2, 0xd59f80

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    const/16 v0, 0xa

    .line 1210
    invoke-static {v0}, Lcom/oppo/camera/o/d;->b(I)V

    :cond_3
    return-void
.end method

.method public m(I)V
    .locals 1

    .line 1167
    iget-boolean v0, p0, Lcom/oppo/camera/d/e;->q:Z

    if-nez v0, :cond_0

    .line 1168
    iput p1, p0, Lcom/oppo/camera/d/e;->af:I

    :cond_0
    return-void
.end method

.method public n(I)V
    .locals 1

    .line 1179
    invoke-direct {p0}, Lcom/oppo/camera/d/e;->cK()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1180
    invoke-direct {p0}, Lcom/oppo/camera/d/e;->cL()V

    .line 1183
    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->n(I)V

    return-void
.end method

.method protected n()Z
    .locals 5

    const-string v0, "CommonCapMode"

    const-string v1, "onBeforeSnapping"

    .line 1226
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    iget-object v0, p0, Lcom/oppo/camera/d/e;->N:Landroid/app/Activity;

    new-instance v1, Lcom/oppo/camera/d/e$4;

    invoke-direct {v1, p0}, Lcom/oppo/camera/d/e$4;-><init>(Lcom/oppo/camera/d/e;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1289
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->bE()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/d/e;->p:Z

    if-nez v0, :cond_1

    .line 1290
    iget v0, p0, Lcom/oppo/camera/d/e;->W:I

    if-ne v0, v2, :cond_0

    .line 1291
    iget-object v0, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    const/16 v3, 0x960

    invoke-interface {v0, v3}, Lcom/oppo/camera/e/f;->s(I)V

    .line 1294
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    iget v3, p0, Lcom/oppo/camera/d/e;->W:I

    invoke-interface {v0, v3}, Lcom/oppo/camera/e/f;->q(I)V

    .line 1295
    iget-object v0, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    invoke-static {}, Lcom/oppo/camera/a;->a()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v3

    .line 1296
    invoke-static {}, Lcom/oppo/camera/a;->a()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v4

    .line 1295
    invoke-interface {v0, v2, v3, v4, v1}, Lcom/oppo/camera/e/f;->a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    .line 1297
    iget-object v0, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0, v2}, Lcom/oppo/camera/e/f;->f(Z)V

    .line 1299
    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/e;->n(I)V

    .line 1300
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->aE()V

    .line 1303
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->ax()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1304
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->ba()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->F()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/oppo/camera/d/e;->cK()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1307
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0, v2}, Lcom/oppo/camera/e/f;->r(I)V

    goto :goto_1

    .line 1305
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->r(I)V

    :cond_4
    :goto_1
    return v2
.end method

.method protected o()Z
    .locals 1

    .line 1373
    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/d/e;->A:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public q(I)I
    .locals 5

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBeauty3DScanIconType, effectIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonCapMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lcom/oppo/camera/d/e;->N:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oppo/camera/ui/preview/a/f;->a(Landroid/content/Context;)I

    move-result v0

    const-string v1, "key_beauty3d"

    const-string v2, "beauty"

    const/4 v3, 0x1

    if-nez p1, :cond_0

    .line 495
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->aO()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 496
    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v0, :cond_0

    .line 498
    iget-object p1, p0, Lcom/oppo/camera/d/e;->M:Lcom/oppo/camera/ui/c;

    const/4 v0, 0x6

    invoke-interface {p1, v0, v3}, Lcom/oppo/camera/ui/c;->c(IZ)V

    return v3

    :cond_0
    if-nez p1, :cond_1

    .line 501
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->aO()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 502
    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-ne v0, v3, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public r(I)Z
    .locals 1

    .line 414
    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/e;->q(I)I

    move-result p1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    if-eqz p1, :cond_0

    .line 415
    invoke-virtual {p1}, Lcom/oppo/camera/c/b;->k()V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public s()I
    .locals 2

    const-string v0, "func_sat_camera"

    .line 1923
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1924
    invoke-super {p0}, Lcom/oppo/camera/d/a;->s()I

    move-result v0

    iget v1, p0, Lcom/oppo/camera/d/e;->m:I

    mul-int/2addr v0, v1

    return v0

    .line 1927
    :cond_0
    invoke-super {p0}, Lcom/oppo/camera/d/a;->s()I

    move-result v0

    return v0
.end method

.method public s(I)V
    .locals 2

    const/16 v0, 0xc

    if-ne p1, v0, :cond_1

    .line 434
    iget-boolean p1, p0, Lcom/oppo/camera/d/e;->ai:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 435
    iput-boolean p1, p0, Lcom/oppo/camera/d/e;->ai:Z

    const/4 v0, 0x0

    .line 436
    iput v0, p0, Lcom/oppo/camera/d/e;->W:I

    .line 438
    iget-object v0, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    iget v1, p0, Lcom/oppo/camera/d/e;->W:I

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->q(I)V

    .line 440
    iget-object v0, p0, Lcom/oppo/camera/d/e;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    .line 443
    :cond_0
    iget v0, p0, Lcom/oppo/camera/d/e;->ag:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/oppo/camera/d/e;->ag:I

    :cond_1
    return-void
.end method

.method public t()Lcom/oppo/camera/e/d;
    .locals 3

    .line 1937
    iget-boolean v0, p0, Lcom/oppo/camera/d/e;->p:Z

    if-nez v0, :cond_2

    .line 1938
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->bE()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->r()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1939
    :cond_0
    new-instance v0, Lcom/oppo/camera/e/d;

    invoke-direct {v0}, Lcom/oppo/camera/e/d;-><init>()V

    .line 1940
    sget-object v1, Lcom/oppo/camera/e/d$a;->CAPTURE_RAW:Lcom/oppo/camera/e/d$a;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/e/d;->a(Lcom/oppo/camera/e/d$a;)V

    .line 1941
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->s()I

    move-result v1

    iput v1, v0, Lcom/oppo/camera/e/d;->h:I

    .line 1942
    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->ad()I

    move-result v1

    iput v1, v0, Lcom/oppo/camera/e/d;->i:I

    .line 1943
    iget v1, p0, Lcom/oppo/camera/d/e;->j:I

    invoke-static {v1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/d/e;->az()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/oppo/camera/d/e;->a_:Ljava/lang/String;

    :goto_0
    const-string v2, "on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/oppo/camera/e/d;->A:Z

    .line 1944
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/e;->a(Lcom/oppo/camera/e/d;)Lcom/oppo/camera/e/d;

    return-object v0

    .line 1949
    :cond_2
    invoke-super {p0}, Lcom/oppo/camera/d/a;->t()Lcom/oppo/camera/e/d;

    move-result-object v0

    return-object v0
.end method

.method protected v(I)V
    .locals 1

    .line 2201
    iget-object v0, p0, Lcom/oppo/camera/d/e;->aq:Lcom/oppo/camera/c/b;

    if-eqz v0, :cond_0

    .line 2202
    invoke-virtual {v0, p1}, Lcom/oppo/camera/c/b;->a(I)V

    :cond_0
    return-void
.end method

.method protected x()Lcom/oppo/camera/e/f$a;
    .locals 1

    const/4 v0, 0x0

    .line 1954
    iput v0, p0, Lcom/oppo/camera/d/e;->ap:I

    .line 1957
    invoke-super {p0}, Lcom/oppo/camera/d/a;->x()Lcom/oppo/camera/e/f$a;

    move-result-object v0

    return-object v0
.end method
