.class public Lcom/oppo/camera/m/f;
.super Lcom/oppo/camera/d/m;
.source "SlowVideoMode.java"


# instance fields
.field private af:Z

.field private ag:Ljava/lang/Integer;

.field private ah:Z

.field private ai:Z

.field private aj:Lcom/oppo/camera/m/a;

.field private final ak:Lcom/oppo/camera/m/a$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oppo/camera/d/b;Lcom/oppo/camera/ui/c;Lcom/oppo/camera/ui/preview/a/i;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oppo/camera/d/m;-><init>(Landroid/app/Activity;Lcom/oppo/camera/d/b;Lcom/oppo/camera/ui/c;Lcom/oppo/camera/ui/preview/a/i;)V

    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lcom/oppo/camera/m/f;->af:Z

    const/4 p2, 0x0

    .line 52
    iput-object p2, p0, Lcom/oppo/camera/m/f;->ag:Ljava/lang/Integer;

    .line 53
    iput-boolean p1, p0, Lcom/oppo/camera/m/f;->ah:Z

    .line 54
    iput-boolean p1, p0, Lcom/oppo/camera/m/f;->ai:Z

    .line 578
    new-instance p1, Lcom/oppo/camera/m/f$2;

    invoke-direct {p1, p0}, Lcom/oppo/camera/m/f$2;-><init>(Lcom/oppo/camera/m/f;)V

    iput-object p1, p0, Lcom/oppo/camera/m/f;->ak:Lcom/oppo/camera/m/a$a;

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/m/f;)Lcom/oppo/camera/ui/c;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/oppo/camera/m/f;->M:Lcom/oppo/camera/ui/c;

    return-object p0
.end method

.method static synthetic a(Lcom/oppo/camera/m/f;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/oppo/camera/m/f;->m(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/m/f;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/m/f;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/oppo/camera/m/f;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/oppo/camera/m/f;->ah:Z

    return p1
.end method

.method static synthetic b(Lcom/oppo/camera/m/f;)Lcom/oppo/camera/ui/c;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/oppo/camera/m/f;->M:Lcom/oppo/camera/ui/c;

    return-object p0
.end method

.method static synthetic b(Lcom/oppo/camera/m/f;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lcom/oppo/camera/m/f;->m(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/oppo/camera/m/f;)Ljava/lang/String;
    .locals 0

    .line 45
    invoke-virtual {p0}, Lcom/oppo/camera/m/f;->cP()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private cJ()Ljava/lang/String;
    .locals 4

    .line 63
    iget v0, p0, Lcom/oppo/camera/m/f;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    const-string v1, "pref_slow_video_frame_key"

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/oppo/camera/m/f;->O:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/oppo/camera/m/f;->N:Landroid/app/Activity;

    const v3, 0x7f0f016c

    .line 65
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/m/f;->O:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/oppo/camera/m/f;->N:Landroid/app/Activity;

    const v3, 0x7f0f016b

    .line 68
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private cK()Lcom/oppo/camera/m/a;
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/oppo/camera/m/f;->aj:Lcom/oppo/camera/m/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/m/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/oppo/camera/m/f;->cJ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/m/f;->cL()V

    .line 176
    invoke-direct {p0}, Lcom/oppo/camera/m/f;->cJ()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/m/f;->N:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oppo/camera/m/f;->M:Lcom/oppo/camera/ui/c;

    invoke-static {v0, v1, v2}, Lcom/oppo/camera/m/e;->a(Ljava/lang/String;Landroid/app/Activity;Lcom/oppo/camera/ui/c;)Lcom/oppo/camera/m/a;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/m/f;->aj:Lcom/oppo/camera/m/a;

    .line 179
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fpsModeInstanceWrap fpsMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/m/f;->aj:Lcom/oppo/camera/m/a;

    invoke-virtual {v1}, Lcom/oppo/camera/m/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SlowVideoMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/oppo/camera/m/f;->aj:Lcom/oppo/camera/m/a;

    return-object v0
.end method

.method private cL()V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/oppo/camera/m/f;->aj:Lcom/oppo/camera/m/a;

    if-eqz v0, :cond_1

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroyFpsMode mbCompilingVideo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/m/f;->ah:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SlowVideoMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-boolean v0, p0, Lcom/oppo/camera/m/f;->ah:Z

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/oppo/camera/m/f;->aj:Lcom/oppo/camera/m/a;

    invoke-virtual {v0}, Lcom/oppo/camera/m/a;->h()V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/m/f;->aj:Lcom/oppo/camera/m/a;

    invoke-virtual {v0}, Lcom/oppo/camera/m/a;->i()V

    const/4 v0, 0x0

    .line 193
    iput-object v0, p0, Lcom/oppo/camera/m/f;->aj:Lcom/oppo/camera/m/a;

    :cond_1
    return-void
.end method

.method private cX()V
    .locals 3

    .line 565
    iget-object v0, p0, Lcom/oppo/camera/m/f;->M:Lcom/oppo/camera/ui/c;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/oppo/camera/m/f;->M:Lcom/oppo/camera/ui/c;

    iget-object v1, p0, Lcom/oppo/camera/m/f;->aj:Lcom/oppo/camera/m/a;

    const/4 v2, 0x1

    .line 567
    invoke-virtual {v1, v2}, Lcom/oppo/camera/m/a;->a(I)Lcom/oppo/camera/ui/control/c;

    move-result-object v1

    .line 566
    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->a(Lcom/oppo/camera/ui/control/c;)V

    .line 568
    iget-object v0, p0, Lcom/oppo/camera/m/f;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v2}, Lcom/oppo/camera/ui/c;->c(Z)V

    .line 569
    iget-object v0, p0, Lcom/oppo/camera/m/f;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v2, v2}, Lcom/oppo/camera/ui/c;->a(ZZ)V

    .line 570
    iget-object v0, p0, Lcom/oppo/camera/m/f;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v2, v2}, Lcom/oppo/camera/ui/c;->c(ZZ)V

    .line 571
    iget-object v0, p0, Lcom/oppo/camera/m/f;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v2, v2}, Lcom/oppo/camera/ui/c;->e(ZZ)V

    .line 572
    iget-object v0, p0, Lcom/oppo/camera/m/f;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v2, v2}, Lcom/oppo/camera/ui/c;->b(ZZ)V

    const-string v0, "SlowVideoMode"

    const-string v1, "enableUIView now !"

    .line 574
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/oppo/camera/m/f;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/oppo/camera/m/f;->cX()V

    return-void
.end method

.method static synthetic e(Lcom/oppo/camera/m/f;)Ljava/lang/String;
    .locals 0

    .line 45
    invoke-virtual {p0}, Lcom/oppo/camera/m/f;->cP()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public E()I
    .locals 2

    .line 308
    invoke-virtual {p0}, Lcom/oppo/camera/m/f;->bY()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 309
    invoke-virtual {p0}, Lcom/oppo/camera/m/f;->bQ()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video_size_1080p"

    .line 311
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    sget-object v0, Lcom/oppo/camera/config/ConfigDataBase;->KEY_PREVIEW_FPS_HFR_1080P:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/oppo/camera/config/CameraConfig;->getConfigIntValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)I

    move-result v0

    if-lez v0, :cond_0

    mul-int/lit8 v0, v0, 0x5

    .line 315
    div-int/lit8 v0, v0, 0x1e

    return v0

    :cond_0
    const/16 v0, 0x28

    return v0

    .line 320
    :cond_1
    sget-object v0, Lcom/oppo/camera/config/ConfigDataBase;->KEY_PREVIEW_FPS_HFR_720P:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/oppo/camera/config/CameraConfig;->getConfigIntValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)I

    move-result v0

    if-lez v0, :cond_2

    mul-int/lit8 v0, v0, 0x5

    .line 323
    div-int/lit8 v0, v0, 0x1e

    return v0

    :cond_2
    const/16 v0, 0x50

    return v0

    :cond_3
    const/16 v0, 0xa

    return v0
.end method

.method public X()V
    .locals 2

    .line 233
    invoke-super {p0}, Lcom/oppo/camera/d/m;->X()V

    .line 235
    iget-boolean v0, p0, Lcom/oppo/camera/m/f;->af:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/m/f;->N:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/oppo/camera/m/f;->N:Landroid/app/Activity;

    new-instance v1, Lcom/oppo/camera/m/f$1;

    invoke-direct {v1, p0}, Lcom/oppo/camera/m/f$1;-><init>(Lcom/oppo/camera/m/f;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 246
    iput-boolean v0, p0, Lcom/oppo/camera/m/f;->af:Z

    :cond_0
    return-void
.end method

.method public Z()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "slowVideo"

    return-object v0
.end method

.method public a(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSharedPreferenceChanged, key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SlowVideoMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pref_slow_video_frame_key"

    .line 356
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    invoke-direct {p0}, Lcom/oppo/camera/m/f;->cK()Lcom/oppo/camera/m/a;

    goto :goto_0

    .line 359
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oppo/camera/d/m;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected a(Lcom/oppo/camera/d/n;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 540
    iget-object v0, p0, Lcom/oppo/camera/m/f;->aj:Lcom/oppo/camera/m/a;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/m/a;->a(Lcom/oppo/camera/d/n;)V

    :cond_0
    return-void
.end method

.method protected a(J)Z
    .locals 2

    .line 510
    iget-object v0, p0, Lcom/oppo/camera/m/f;->aj:Lcom/oppo/camera/m/a;

    invoke-virtual {v0}, Lcom/oppo/camera/m/a;->e()I

    move-result v0

    int-to-long v0, v0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/oppo/camera/m/f;->ai:Z

    .line 512
    iget-boolean p1, p0, Lcom/oppo/camera/m/f;->ai:Z

    return p1
.end method

.method public an()V
    .locals 3

    .line 434
    iget-object v0, p0, Lcom/oppo/camera/m/f;->aj:Lcom/oppo/camera/m/a;

    invoke-virtual {v0}, Lcom/oppo/camera/m/a;->e()I

    move-result v0

    if-lez v0, :cond_0

    const v1, 0x7fffffff

    if-eq v1, v0, :cond_0

    .line 437
    iget-object v1, p0, Lcom/oppo/camera/m/f;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v1, v0}, Lcom/oppo/camera/ui/c;->i(I)V

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/m/f;->M:Lcom/oppo/camera/ui/c;

    iget-object v1, p0, Lcom/oppo/camera/m/f;->aj:Lcom/oppo/camera/m/a;

    const/4 v2, 0x2

    .line 441
    invoke-virtual {v1, v2}, Lcom/oppo/camera/m/a;->a(I)Lcom/oppo/camera/ui/control/c;

    move-result-object v1

    .line 440
    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->a(Lcom/oppo/camera/ui/control/c;)V

    const/4 v0, 0x0

    .line 443
    iput-boolean v0, p0, Lcom/oppo/camera/m/f;->ai:Z

    .line 445
    invoke-super {p0}, Lcom/oppo/camera/d/m;->an()V

    return-void
.end method

.method public ao()V
    .locals 5

    .line 450
    iget-object v0, p0, Lcom/oppo/camera/m/f;->K:Lcom/oppo/camera/e/f;

    invoke-virtual {p0}, Lcom/oppo/camera/m/f;->E()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->d(I)V

    .line 452
    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/oppo/camera/m/f;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x1

    invoke-static {}, Lcom/oppo/camera/a;->a()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    .line 454
    invoke-static {}, Lcom/oppo/camera/a;->a()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v3

    const/4 v4, 0x0

    .line 453
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/oppo/camera/e/f;->a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/m/f;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    return-void
.end method

.method public ap()V
    .locals 6

    .line 462
    iget-object v0, p0, Lcom/oppo/camera/m/f;->aj:Lcom/oppo/camera/m/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/m/a;->a(I)Lcom/oppo/camera/ui/control/c;

    move-result-object v0

    .line 464
    iget-object v2, p0, Lcom/oppo/camera/m/f;->aj:Lcom/oppo/camera/m/a;

    invoke-virtual {v2}, Lcom/oppo/camera/m/a;->b()Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_1

    .line 465
    iget-boolean v2, p0, Lcom/oppo/camera/m/f;->ai:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oppo/camera/m/f;->aj:Lcom/oppo/camera/m/a;

    iget v4, p0, Lcom/oppo/camera/m/f;->ad:I

    invoke-virtual {p0}, Lcom/oppo/camera/m/f;->cP()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/oppo/camera/m/a;->a(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 466
    iput-boolean v1, p0, Lcom/oppo/camera/m/f;->ah:Z

    .line 467
    iget-object v0, p0, Lcom/oppo/camera/m/f;->aj:Lcom/oppo/camera/m/a;

    iget-object v2, p0, Lcom/oppo/camera/m/f;->ak:Lcom/oppo/camera/m/a$a;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/m/a;->a(Lcom/oppo/camera/m/a$a;)V

    .line 468
    iget-object v0, p0, Lcom/oppo/camera/m/f;->aj:Lcom/oppo/camera/m/a;

    invoke-virtual {v0, v3}, Lcom/oppo/camera/m/a;->a(I)Lcom/oppo/camera/ui/control/c;

    move-result-object v0

    goto :goto_0

    .line 470
    :cond_0
    iget-object v2, p0, Lcom/oppo/camera/m/f;->M:Lcom/oppo/camera/ui/c;

    const/4 v4, 0x0

    invoke-interface {v2, v1, v4}, Lcom/oppo/camera/ui/c;->d(ZZ)V

    .line 471
    invoke-virtual {p0}, Lcom/oppo/camera/m/f;->cP()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/camera/m/f;->m(Ljava/lang/String;)V

    .line 474
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "afterStopRecording, getVideoFileName: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/m/f;->cP()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mbAutoStopRecord: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oppo/camera/m/f;->ai:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mbCompilingVideo: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oppo/camera/m/f;->ah:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "SlowVideoMode"

    invoke-static {v4, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    :cond_1
    iget-object v2, p0, Lcom/oppo/camera/m/f;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v2, v0}, Lcom/oppo/camera/ui/c;->a(Lcom/oppo/camera/ui/control/c;)V

    .line 479
    iget-object v0, p0, Lcom/oppo/camera/m/f;->K:Lcom/oppo/camera/e/f;

    invoke-virtual {p0}, Lcom/oppo/camera/m/f;->E()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/oppo/camera/e/f;->d(I)V

    .line 480
    iget-object v0, p0, Lcom/oppo/camera/m/f;->K:Lcom/oppo/camera/e/f;

    invoke-static {}, Lcom/oppo/camera/a;->a()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    .line 481
    invoke-static {}, Lcom/oppo/camera/a;->a()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v4

    .line 480
    invoke-interface {v0, v3, v2, v4, v1}, Lcom/oppo/camera/e/f;->a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    .line 482
    iget-object v0, p0, Lcom/oppo/camera/m/f;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    .line 484
    invoke-super {p0}, Lcom/oppo/camera/d/m;->ap()V

    return-void
.end method

.method public at()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()I
    .locals 1

    .line 425
    iget v0, p0, Lcom/oppo/camera/m/f;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "key_support_fovc"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/m/f;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x830d

    goto :goto_0

    :cond_0
    const v0, 0x800d

    :goto_0
    return v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "pref_camera_videoflashmode_key"

    .line 406
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 407
    iget p1, p0, Lcom/oppo/camera/m/f;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_0
    const-string v0, "pref_slow_video_frame_key"

    .line 410
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 411
    iget p1, p0, Lcom/oppo/camera/m/f;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 412
    invoke-virtual {p0}, Lcom/oppo/camera/m/f;->cB()I

    move-result p1

    if-le p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 415
    :cond_2
    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_SUPPORT_SLOWVIDEO_1080P:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result p1

    return p1

    .line 418
    :cond_3
    invoke-super {p0, p1}, Lcom/oppo/camera/d/m;->b(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bD()V
    .locals 7

    .line 489
    invoke-virtual {p0}, Lcom/oppo/camera/m/f;->cM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    iget-object v1, p0, Lcom/oppo/camera/m/f;->M:Lcom/oppo/camera/ui/c;

    const/4 v2, -0x1

    const v3, 0x7f0703de

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    goto :goto_0

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/m/f;->M:Lcom/oppo/camera/ui/c;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, v2}, Lcom/oppo/camera/ui/c;->a(ZZZ)V

    :goto_0
    return-void
.end method

.method public bP()I
    .locals 1

    .line 375
    invoke-virtual {p0}, Lcom/oppo/camera/m/f;->cC()I

    move-result v0

    return v0
.end method

.method public bQ()Ljava/lang/String;
    .locals 1

    .line 365
    invoke-direct {p0}, Lcom/oppo/camera/m/f;->cJ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/camera/m/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bV()Z
    .locals 2

    .line 517
    invoke-super {p0}, Lcom/oppo/camera/d/m;->bV()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 520
    iget-object v1, p0, Lcom/oppo/camera/m/f;->aj:Lcom/oppo/camera/m/a;

    invoke-virtual {v1}, Lcom/oppo/camera/m/a;->f()V

    :cond_0
    return v0
.end method

.method public bW()Z
    .locals 2

    .line 528
    invoke-super {p0}, Lcom/oppo/camera/d/m;->bW()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    iget-object v1, p0, Lcom/oppo/camera/m/f;->aj:Lcom/oppo/camera/m/a;

    invoke-virtual {v1}, Lcom/oppo/camera/m/a;->g()V

    :cond_0
    return v0
.end method

.method public bu()Z
    .locals 1

    .line 505
    invoke-virtual {p0}, Lcom/oppo/camera/m/f;->cM()Z

    move-result v0

    return v0
.end method

.method public c(Lcom/oppo/camera/e/h;)Landroid/util/Size;
    .locals 2

    const-string v0, "SlowVideoMode"

    const-string v1, "getPreviewSize"

    .line 393
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-virtual {p0}, Lcom/oppo/camera/m/f;->bQ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/m/f;->l(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 401
    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/camera/d/m;->c(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method public c(ZZ)V
    .locals 1

    .line 498
    invoke-virtual {p0}, Lcom/oppo/camera/m/f;->cM()Z

    move-result p1

    if-nez p1, :cond_0

    .line 499
    iget-object p1, p0, Lcom/oppo/camera/m/f;->M:Lcom/oppo/camera/ui/c;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0, v0}, Lcom/oppo/camera/ui/c;->a(ZZZ)V

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .line 84
    sget-object v0, Lcom/oppo/camera/config/ConfigDataBase;->KEY_SUPPORT_FRONT_SLOW_VIDEO:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_face_detection_key"

    .line 120
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/m/f;->bY()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 124
    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/camera/d/m;->c(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public cB()I
    .locals 2

    .line 381
    sget-object v0, Lcom/oppo/camera/config/ConfigDataBase;->KEY_FRONT_SLOW_VIDEO_HFR_120FPS_VIDOETYPE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/oppo/camera/config/CameraConfig;->isSupportVendorTag(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 385
    :goto_0
    sget-object v1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_FRONT_SLOW_VIDEO_HFR_240FPS_VIDOETYPE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v1}, Lcom/oppo/camera/config/CameraConfig;->isSupportVendorTag(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method public cD()Ljava/lang/Integer;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/oppo/camera/m/f;->ag:Ljava/lang/Integer;

    return-object v0
.end method

.method public cG()Ljava/lang/String;
    .locals 2

    .line 370
    iget-object v0, p0, Lcom/oppo/camera/m/f;->N:Landroid/app/Activity;

    const v1, 0x7f0f016b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/camera/m/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cN()Ljava/lang/Float;
    .locals 1

    .line 267
    invoke-super {p0}, Lcom/oppo/camera/d/m;->cN()Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method protected cO()Ljava/lang/String;
    .locals 4

    .line 283
    invoke-virtual {p0}, Lcom/oppo/camera/m/f;->bQ()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video_size_1080p"

    .line 285
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, ":0,0,0,0"

    const-string v3, "slow_motion_hfr_"

    if-eqz v1, :cond_0

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_PREVIEW_FPS_HFR_1080P:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v1}, Lcom/oppo/camera/config/CameraConfig;->getConfigIntValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "video_size_720p"

    .line 288
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_PREVIEW_FPS_HFR_720P:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v1}, Lcom/oppo/camera/config/CameraConfig;->getConfigIntValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 293
    :cond_1
    invoke-super {p0}, Lcom/oppo/camera/d/m;->cO()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected cQ()I
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/oppo/camera/m/f;->X:Ljava/lang/String;

    const-string v1, "video_size_1080p"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x989680

    return v0

    :cond_0
    const v0, 0x7270e0

    return v0
.end method

.method protected cU()Z
    .locals 1

    .line 546
    iget-object v0, p0, Lcom/oppo/camera/m/f;->aj:Lcom/oppo/camera/m/a;

    invoke-virtual {v0}, Lcom/oppo/camera/m/a;->c()Z

    move-result v0

    return v0
.end method

.method protected cV()Z
    .locals 1

    .line 551
    iget-object v0, p0, Lcom/oppo/camera/m/f;->aj:Lcom/oppo/camera/m/a;

    invoke-virtual {v0}, Lcom/oppo/camera/m/a;->d()Z

    move-result v0

    return v0
.end method

.method public cW()Z
    .locals 3

    .line 272
    iget-object v0, p0, Lcom/oppo/camera/m/f;->O:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oppo/camera/m/f;->N:Landroid/app/Activity;

    const v2, 0x7f0f019b

    .line 273
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_video_codec_key"

    .line 272
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "H265"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public cb()Z
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/oppo/camera/m/f;->aj:Lcom/oppo/camera/m/a;

    invoke-virtual {v0}, Lcom/oppo/camera/m/a;->b()Z

    move-result v0

    return v0
.end method

.method public cc()Z
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/oppo/camera/m/f;->aj:Lcom/oppo/camera/m/a;

    invoke-virtual {v0}, Lcom/oppo/camera/m/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/m/f;->ah:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected cp()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d()Landroid/util/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 335
    invoke-virtual {p0}, Lcom/oppo/camera/m/f;->bQ()Ljava/lang/String;

    move-result-object v0

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHighSpeedVideoFpsRange videoSizeType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SlowVideoMode"

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "video_size_1080p"

    .line 339
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    sget-object v0, Lcom/oppo/camera/config/ConfigDataBase;->KEY_PREVIEW_FPS_HFR_1080P:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/oppo/camera/config/CameraConfig;->getConfigIntValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)I

    move-result v0

    .line 342
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "video_size_720p"

    .line 343
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 344
    sget-object v0, Lcom/oppo/camera/config/ConfigDataBase;->KEY_PREVIEW_FPS_HFR_720P:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/oppo/camera/config/CameraConfig;->getConfigIntValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)I

    move-result v0

    .line 346
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "pref_update_setting_background_bar_key"

    .line 129
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "func_request_fast_launch"

    .line 130
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "pref_face_detection_key"

    .line 131
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "pref_video_size_key"

    .line 132
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "pref_time_lapse_key"

    .line 133
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "pref_camera_tap_shutter_key"

    .line 134
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "pref_camera_assistant_line_key"

    .line 135
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "pref_camera_gesture_shutter_key"

    .line 136
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "pref_support_recording_capture"

    .line 137
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "pref_zoom_key"

    .line 138
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "pref_video_ratio_key"

    .line 139
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "pref_support_switch_camera"

    .line 143
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {p0}, Lcom/oppo/camera/m/f;->c()Z

    move-result p1

    return p1

    :cond_1
    const-string v0, "pref_slow_video_frame_key"

    .line 147
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const-string v0, "pref_camera_videoflashmode_key"

    .line 151
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 152
    iget p1, p0, Lcom/oppo/camera/m/f;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_3
    const-string v0, "pref_support_high_temperature_ultimate_limit"

    .line 155
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    .line 159
    :cond_4
    invoke-super {p0, p1}, Lcom/oppo/camera/d/m;->d(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_5
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public e()Z
    .locals 1

    .line 79
    invoke-static {}, Lcom/oppo/camera/debug/DebugUtil;->isVideoHighFrameRateEnabled()Z

    move-result v0

    return v0
.end method

.method public f(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_camera_videoflashmode_key"

    .line 97
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_slow_video_frame_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/camera/d/m;->f(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public g()Lcom/oppo/camera/ui/control/c;
    .locals 2

    .line 199
    invoke-super {p0}, Lcom/oppo/camera/d/m;->g()Lcom/oppo/camera/ui/control/c;

    move-result-object v0

    const-string v1, "button_shape_dial_still"

    .line 200
    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/control/c;->b(Ljava/lang/String;)V

    return-object v0
.end method

.method protected j()V
    .locals 1

    .line 89
    invoke-direct {p0}, Lcom/oppo/camera/m/f;->cL()V

    .line 90
    invoke-super {p0}, Lcom/oppo/camera/d/m;->j()V

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/oppo/camera/m/f;->af:Z

    return-void
.end method

.method protected k()V
    .locals 2

    const-string v0, "SlowVideoMode"

    const-string v1, "onInitCameraMode"

    .line 111
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-super {p0}, Lcom/oppo/camera/d/m;->k()V

    .line 114
    iget-object v0, p0, Lcom/oppo/camera/m/f;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->k()I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/m/f;->g:I

    const/4 v0, 0x0

    .line 115
    invoke-virtual {p0, v0}, Lcom/oppo/camera/m/f;->o(Z)V

    return-void
.end method

.method public k(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "type_preview"

    .line 298
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "type_video"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected l()V
    .locals 2

    const-string v0, "SlowVideoMode"

    const-string v1, "onDeInitCameraMode"

    .line 164
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-direct {p0}, Lcom/oppo/camera/m/f;->cL()V

    const/4 v0, 0x1

    .line 167
    invoke-virtual {p0, v0}, Lcom/oppo/camera/m/f;->o(Z)V

    .line 169
    invoke-super {p0}, Lcom/oppo/camera/d/m;->l()V

    return-void
.end method

.method protected m()V
    .locals 2

    const-string v0, "SlowVideoMode"

    const-string v1, "onBeforePreview"

    .line 207
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-direct {p0}, Lcom/oppo/camera/m/f;->cK()Lcom/oppo/camera/m/a;

    .line 211
    invoke-super {p0}, Lcom/oppo/camera/d/m;->m()V

    .line 213
    invoke-virtual {p0}, Lcom/oppo/camera/m/f;->bQ()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video_size_1080p"

    .line 215
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    sget-object v0, Lcom/oppo/camera/config/ConfigDataBase;->KEY_PREVIEW_FPS_HFR_1080P:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/oppo/camera/config/CameraConfig;->getConfigIntValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/m/f;->ag:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const-string v1, "video_size_720p"

    .line 217
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    sget-object v0, Lcom/oppo/camera/config/ConfigDataBase;->KEY_PREVIEW_FPS_HFR_720P:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/oppo/camera/config/CameraConfig;->getConfigIntValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/m/f;->ag:Ljava/lang/Integer;

    :cond_1
    :goto_0
    return-void
.end method

.method protected n()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
