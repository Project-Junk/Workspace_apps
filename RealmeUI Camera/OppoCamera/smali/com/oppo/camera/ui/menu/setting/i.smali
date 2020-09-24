.class public Lcom/oppo/camera/ui/menu/setting/i;
.super Ljava/lang/Object;
.source "CameraSettingUI.java"

# interfaces
.implements Lcom/oppo/camera/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/ui/menu/setting/i$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/oppo/camera/i;

.field private g:Lcom/oppo/camera/ui/menu/setting/i$a;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Lcom/oppo/camera/ui/d;

.field private l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

.field private m:I

.field private n:I

.field private o:I

.field private p:Landroid/animation/ValueAnimator;

.field private q:Lcom/oppo/camera/ui/menu/g;

.field private r:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oppo/camera/i;Lcom/oppo/camera/ui/d;Z)V
    .locals 3

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->a:Landroid/app/Activity;

    .line 47
    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->b:Lcom/oppo/camera/i;

    .line 48
    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->g:Lcom/oppo/camera/ui/menu/setting/i$a;

    const/4 v1, 0x0

    .line 50
    iput-boolean v1, p0, Lcom/oppo/camera/ui/menu/setting/i;->h:Z

    .line 51
    iput-boolean v1, p0, Lcom/oppo/camera/ui/menu/setting/i;->i:Z

    .line 52
    iput-boolean v1, p0, Lcom/oppo/camera/ui/menu/setting/i;->j:Z

    .line 54
    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->k:Lcom/oppo/camera/ui/d;

    .line 55
    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    const/4 v2, 0x1

    .line 57
    iput v2, p0, Lcom/oppo/camera/ui/menu/setting/i;->m:I

    .line 58
    iput v1, p0, Lcom/oppo/camera/ui/menu/setting/i;->n:I

    .line 59
    iput v1, p0, Lcom/oppo/camera/ui/menu/setting/i;->o:I

    .line 60
    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->p:Landroid/animation/ValueAnimator;

    .line 62
    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->q:Lcom/oppo/camera/ui/menu/g;

    .line 64
    new-instance v0, Lcom/oppo/camera/ui/menu/setting/i$1;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/menu/setting/i$1;-><init>(Lcom/oppo/camera/ui/menu/setting/i;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->r:Landroid/os/Handler;

    .line 82
    iput-object p1, p0, Lcom/oppo/camera/ui/menu/setting/i;->a:Landroid/app/Activity;

    .line 83
    iput-object p2, p0, Lcom/oppo/camera/ui/menu/setting/i;->b:Lcom/oppo/camera/i;

    .line 84
    iput-object p3, p0, Lcom/oppo/camera/ui/menu/setting/i;->k:Lcom/oppo/camera/ui/d;

    .line 85
    iput-boolean p4, p0, Lcom/oppo/camera/ui/menu/setting/i;->j:Z

    return-void
.end method

.method private a(IZ)V
    .locals 3

    const-string v0, "CameraSettingUI"

    const-string v1, "updateSupportedOptionItems"

    .line 475
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/i;->k:Lcom/oppo/camera/ui/d;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/oppo/camera/ui/menu/setting/i;->i:Z

    if-eqz v1, :cond_2

    .line 478
    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->f()V

    .line 480
    iget v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->m:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 481
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    const-string v1, "pref_video_size_key"

    .line 482
    invoke-static {v1, p1}, Lcom/oppo/camera/config/CameraConfig;->getSupportedList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 481
    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 484
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    const-string v1, "pref_slow_video_frame_key"

    .line 485
    invoke-static {v1, p1}, Lcom/oppo/camera/config/CameraConfig;->getSupportedList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 484
    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->a(Ljava/lang/String;Ljava/util/List;)V

    const-string v0, "pref_camera_timer_shutter_key"

    .line 487
    invoke-static {v0, p1}, Lcom/oppo/camera/config/CameraConfig;->getSupportedList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 491
    iget-object v2, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    invoke-virtual {v2, v0, v1}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    const-string v1, "pref_camera_torch_mode_key"

    .line 497
    invoke-static {v1, p1}, Lcom/oppo/camera/config/CameraConfig;->getSupportedList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    .line 496
    invoke-virtual {v0, v1, p1}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->a(Ljava/lang/String;Ljava/util/List;)V

    if-eqz p2, :cond_1

    .line 499
    iget-boolean p1, p0, Lcom/oppo/camera/ui/menu/setting/i;->j:Z

    if-nez p1, :cond_1

    .line 500
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->setVisibility(I)V

    .line 503
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    iget p2, p0, Lcom/oppo/camera/ui/menu/setting/i;->n:I

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->setOrientation(I)V

    .line 504
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/i;->k:Lcom/oppo/camera/ui/d;

    invoke-interface {p1}, Lcom/oppo/camera/ui/d;->k()V

    :cond_2
    return-void
.end method

.method private a(Landroid/view/View;II)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x2

    .line 104
    new-array v1, v1, [I

    .line 105
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 106
    aget v2, v1, v0

    const/4 v3, 0x1

    .line 107
    aget v1, v1, v3

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v2

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr p1, v1

    if-lt p3, v1, :cond_1

    if-gt p3, p1, :cond_1

    if-lt p2, v2, :cond_1

    if-gt p2, v4, :cond_1

    return v3

    :cond_1
    return v0
.end method

.method static synthetic a(Lcom/oppo/camera/ui/menu/setting/i;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/oppo/camera/ui/menu/setting/i;->h:Z

    return p0
.end method

.method static synthetic b(Lcom/oppo/camera/ui/menu/setting/i;)Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    return-object p0
.end method

.method static synthetic c(Lcom/oppo/camera/ui/menu/setting/i;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/setting/i;->m()V

    return-void
.end method

.method static synthetic d(Lcom/oppo/camera/ui/menu/setting/i;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/setting/i;->n()V

    return-void
.end method

.method static synthetic e(Lcom/oppo/camera/ui/menu/setting/i;)Landroid/os/Handler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/oppo/camera/ui/menu/setting/i;->r:Landroid/os/Handler;

    return-object p0
.end method

.method private m()V
    .locals 7

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initializeCameraSettingMenu, mPreferenceOptionGroup: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/i;->q:Lcom/oppo/camera/ui/menu/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraSettingUI"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->q:Lcom/oppo/camera/ui/menu/g;

    if-eqz v0, :cond_1

    .line 464
    iget-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->j:Z

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->a:Landroid/app/Activity;

    const v1, 0x7f080151

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    .line 466
    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    iget-object v2, p0, Lcom/oppo/camera/ui/menu/setting/i;->b:Lcom/oppo/camera/i;

    iget-object v3, p0, Lcom/oppo/camera/ui/menu/setting/i;->k:Lcom/oppo/camera/ui/d;

    iget-object v4, p0, Lcom/oppo/camera/ui/menu/setting/i;->q:Lcom/oppo/camera/ui/menu/g;

    iget v5, p0, Lcom/oppo/camera/ui/menu/setting/i;->o:I

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->a(Lcom/oppo/camera/i;Lcom/oppo/camera/ui/d;Lcom/oppo/camera/ui/menu/g;IZ)V

    goto :goto_0

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->a:Landroid/app/Activity;

    const v1, 0x7f080150

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    .line 469
    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    iget-object v2, p0, Lcom/oppo/camera/ui/menu/setting/i;->b:Lcom/oppo/camera/i;

    iget-object v3, p0, Lcom/oppo/camera/ui/menu/setting/i;->k:Lcom/oppo/camera/ui/d;

    iget-object v4, p0, Lcom/oppo/camera/ui/menu/setting/i;->q:Lcom/oppo/camera/ui/menu/g;

    iget v5, p0, Lcom/oppo/camera/ui/menu/setting/i;->o:I

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->a(Lcom/oppo/camera/i;Lcom/oppo/camera/ui/d;Lcom/oppo/camera/ui/menu/g;IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private n()V
    .locals 6

    .line 509
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 511
    iget-boolean v2, p0, Lcom/oppo/camera/ui/menu/setting/i;->j:Z

    if-eqz v2, :cond_0

    .line 512
    new-instance v2, Lcom/oppo/camera/ui/menu/g;

    iget-object v3, p0, Lcom/oppo/camera/ui/menu/setting/i;->a:Landroid/app/Activity;

    const v4, 0x7f120003

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/oppo/camera/ui/menu/g;-><init>(Landroid/content/Context;IZ)V

    iput-object v2, p0, Lcom/oppo/camera/ui/menu/setting/i;->q:Lcom/oppo/camera/ui/menu/g;

    goto :goto_0

    .line 514
    :cond_0
    new-instance v2, Lcom/oppo/camera/ui/menu/g;

    iget-object v3, p0, Lcom/oppo/camera/ui/menu/setting/i;->a:Landroid/app/Activity;

    const/high16 v4, 0x7f120000

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/oppo/camera/ui/menu/g;-><init>(Landroid/content/Context;IZ)V

    iput-object v2, p0, Lcom/oppo/camera/ui/menu/setting/i;->q:Lcom/oppo/camera/ui/menu/g;

    .line 517
    :goto_0
    sget-object v2, Lcom/oppo/camera/config/ConfigDataBase;->KEY_TORCH_SOFT_LIGHT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v2}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 518
    iget-object v2, p0, Lcom/oppo/camera/ui/menu/setting/i;->q:Lcom/oppo/camera/ui/menu/g;

    const-string v3, "pref_camera_torch_mode_key"

    invoke-virtual {v2, v3}, Lcom/oppo/camera/ui/menu/g;->a(Ljava/lang/String;)Lcom/oppo/camera/ui/menu/a;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 521
    invoke-virtual {v2}, Lcom/oppo/camera/ui/menu/a;->getOptionItems()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 524
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/camera/ui/menu/d;

    .line 525
    invoke-virtual {v3}, Lcom/oppo/camera/ui/menu/d;->d()Ljava/lang/String;

    move-result-object v4

    const-string v5, "on"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 526
    iget-object v4, p0, Lcom/oppo/camera/ui/menu/setting/i;->a:Landroid/app/Activity;

    const v5, 0x7f0f00ca

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oppo/camera/ui/menu/d;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 533
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseCameraMenuConfig, use time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraSettingUI"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 119
    new-instance v0, Lcom/oppo/camera/ui/menu/setting/i$a;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/menu/setting/i$a;-><init>(Lcom/oppo/camera/ui/menu/setting/i;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->g:Lcom/oppo/camera/ui/menu/setting/i$a;

    .line 120
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->g:Lcom/oppo/camera/ui/menu/setting/i$a;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/i$a;->start()V

    return-void
.end method

.method public a(F)V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    .line 195
    iput p1, p0, Lcom/oppo/camera/ui/menu/setting/i;->o:I

    .line 197
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz p1, :cond_0

    .line 198
    iget v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->o:I

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->setSizeRatioType(I)V

    :cond_0
    return-void
.end method

.method public a(IZZ)V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->g:Lcom/oppo/camera/ui/menu/setting/i$a;

    if-eqz v0, :cond_0

    .line 212
    :try_start_0
    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/i$a;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 214
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 218
    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->i:Z

    .line 220
    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-nez v1, :cond_1

    .line 221
    invoke-direct {p0}, Lcom/oppo/camera/ui/menu/setting/i;->m()V

    .line 224
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/oppo/camera/ui/menu/setting/i;->a(IZ)V

    .line 225
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/i;->h()V

    if-eqz p2, :cond_3

    .line 230
    iget p1, p0, Lcom/oppo/camera/ui/menu/setting/i;->o:I

    if-eqz p1, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/i;->k:Lcom/oppo/camera/ui/d;

    .line 232
    invoke-interface {p1}, Lcom/oppo/camera/ui/d;->l()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/oppo/camera/o/d;->O()Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    iget p1, p0, Lcom/oppo/camera/ui/menu/setting/i;->o:I

    if-ne p1, v0, :cond_3

    .line 233
    invoke-static {}, Lcom/oppo/camera/o/d;->O()Z

    move-result p1

    :cond_3
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz v0, :cond_0

    .line 430
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->a(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz v0, :cond_0

    .line 406
    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz v0, :cond_0

    .line 538
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->a(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->d(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public varargs a(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->a(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->setCameraMenuLayout(Z)V

    :cond_0
    return-void
.end method

.method public a(ZZ)V
    .locals 2

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableCameraSettingMenu(), enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ashed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraSettingUI"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->a(ZZ)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    .line 90
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    .line 89
    invoke-direct {p0, v0, v1, p1}, Lcom/oppo/camera/ui/menu/setting/i;->a(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "CameraSettingUI"

    const-string v0, "needTouchEvent, mCameraSettingMenu is show and dispatchTouchEvent"

    .line 91
    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 2

    const-string v0, "CameraSettingUI"

    const-string v1, "onResumeMessage"

    .line 124
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->h:Z

    .line 128
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->a()V

    :cond_0
    return-void
.end method

.method public b(F)V
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->a(F)V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public b(IZZ)V
    .locals 0

    .line 323
    invoke-virtual {p0, p1, p2, p3}, Lcom/oppo/camera/ui/menu/setting/i;->a(IZZ)V

    const/4 p1, 0x1

    .line 324
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/menu/setting/i;->d(Z)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 435
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 436
    invoke-virtual {v0, p1, v1}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->c(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 2

    .line 590
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 591
    invoke-virtual {v0, p1, p2, v1}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->a(Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method

.method public varargs b(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->b(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 3

    .line 241
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz v0, :cond_2

    .line 242
    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->d()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "pref_camera_videoflashmode_key"

    .line 245
    invoke-virtual {p0, p1, v0}, Lcom/oppo/camera/ui/menu/setting/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 246
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/i;->k:Lcom/oppo/camera/ui/d;

    if-eqz p1, :cond_1

    const-string v1, "pref_camera_torch_mode_key"

    .line 247
    invoke-interface {p1, v1}, Lcom/oppo/camera/ui/d;->g(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 248
    invoke-virtual {p0, v1, v0}, Lcom/oppo/camera/ui/menu/setting/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_1
    :goto_0
    invoke-static {}, Lcom/oppo/camera/o/d;->I()I

    move-result p1

    if-nez p1, :cond_2

    .line 252
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/i;->a:Landroid/app/Activity;

    const/4 v2, 0x3

    .line 253
    invoke-static {v1, v2}, Lcom/oppo/camera/ui/b;->a(Landroid/content/Context;I)I

    move-result v1

    const/16 v2, 0x12c

    .line 252
    invoke-static {p1, v1, v2, v0, v0}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;IILandroid/view/animation/BaseInterpolator;Landroid/animation/Animator$AnimatorListener;)V

    :cond_2
    return-void
.end method

.method public b(ZZ)V
    .locals 2

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetMenuState, resetVisibility:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", resetLayout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraSettingUI"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz v0, :cond_0

    .line 450
    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->b(ZZ)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    const-string v0, "CameraSettingUI"

    const-string v1, "onPause"

    .line 134
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->i:Z

    const/4 v1, 0x1

    .line 137
    iput-boolean v1, p0, Lcom/oppo/camera/ui/menu/setting/i;->h:Z

    .line 138
    iget-object v2, p0, Lcom/oppo/camera/ui/menu/setting/i;->r:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 139
    invoke-virtual {p0, v0}, Lcom/oppo/camera/ui/menu/setting/i;->a(Z)V

    .line 141
    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz v1, :cond_0

    .line 142
    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->b()V

    .line 143
    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->clearAnimation()V

    .line 144
    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->setAlpha(F)V

    .line 145
    iget-object v1, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->setInitState(Z)V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->b:Lcom/oppo/camera/i;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/oppo/camera/ui/menu/setting/i;->j:Z

    if-eqz v1, :cond_1

    .line 149
    invoke-virtual {v0}, Lcom/oppo/camera/i;->a()Lcom/oppo/camera/i$a;

    move-result-object v0

    const-string v1, "pref_subsetting_key"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/i$a;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 150
    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/menu/setting/i;->c(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 153
    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->setVisibility(I)V

    .line 157
    :cond_1
    invoke-static {}, Lcom/oppo/camera/ui/menu/f;->d()V

    return-void
.end method

.method public c(I)V
    .locals 4

    .line 283
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    const/4 v1, 0x0

    const-wide/16 v2, 0x12c

    invoke-static {v0, p1, v1, v2, v3}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz v0, :cond_0

    .line 442
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 2

    .line 261
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz p1, :cond_1

    .line 262
    iget v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->m:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 263
    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->e()V

    .line 266
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    iget v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->n:I

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->setOrientation(I)V

    :cond_1
    return-void
.end method

.method public c(ZZ)V
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz v0, :cond_0

    .line 456
    invoke-virtual {v0, p1, p2}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->c(ZZ)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    const-string v0, "CameraSettingUI"

    const-string v1, "onDestroy"

    .line 161
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->g:Lcom/oppo/camera/ui/menu/setting/i$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 165
    :try_start_0
    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/i$a;->a()V

    .line 166
    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/i;->g:Lcom/oppo/camera/ui/menu/setting/i$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz v0, :cond_1

    .line 173
    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->g()V

    .line 174
    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->q:Lcom/oppo/camera/ui/menu/g;

    if-eqz v0, :cond_2

    .line 178
    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/g;->a()V

    .line 179
    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/i;->q:Lcom/oppo/camera/ui/menu/g;

    .line 182
    :cond_2
    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/i;->a:Landroid/app/Activity;

    .line 183
    iput-object v1, p0, Lcom/oppo/camera/ui/menu/setting/i;->k:Lcom/oppo/camera/ui/d;

    return-void
.end method

.method public d(I)V
    .locals 0

    .line 303
    iput p1, p0, Lcom/oppo/camera/ui/menu/setting/i;->m:I

    return-void
.end method

.method public d(Z)V
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->setInitState(Z)V

    :cond_0
    return-void
.end method

.method public d(ZZ)V
    .locals 4

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSettingBarBg, halfOpaque: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", needAnimation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraSettingUI"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/oppo/camera/ui/menu/setting/i;->i:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    const v2, 0x7f05001d

    if-eqz p2, :cond_2

    const/16 p2, 0xc8

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 551
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/i;->a:Landroid/app/Activity;

    .line 552
    invoke-static {p1, v1}, Lcom/oppo/camera/ui/b;->a(Landroid/content/Context;I)I

    move-result p1

    .line 551
    invoke-static {v0, p1, p2, v3, v3}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;IILandroid/view/animation/BaseInterpolator;Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 556
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/i;->a:Landroid/app/Activity;

    .line 557
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 556
    invoke-static {v0, p1, p2, v3, v3}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;IILandroid/view/animation/BaseInterpolator;Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 562
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/i;->a:Landroid/app/Activity;

    invoke-static {p1, v1}, Lcom/oppo/camera/ui/b;->a(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->setBackgroundColor(I)V

    goto :goto_0

    .line 565
    :cond_3
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/i;->a:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->setBackgroundColor(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public e(I)V
    .locals 1

    .line 307
    iput p1, p0, Lcom/oppo/camera/ui/menu/setting/i;->n:I

    .line 309
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->setOrientation(I)V

    :cond_0
    return-void
.end method

.method public e(Z)V
    .locals 3

    .line 571
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-nez v0, :cond_0

    return-void

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->a:Landroid/app/Activity;

    const v1, 0x7f050023

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result v0

    if-eqz p1, :cond_1

    .line 578
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    const/16 v1, 0xc8

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2, v2}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;IILandroid/view/animation/BaseInterpolator;Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 581
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method public e()Z
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->c()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .locals 3

    .line 299
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->b:Lcom/oppo/camera/i;

    const-string v1, "pref_subsetting_key"

    const-string v2, "off"

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/i;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public g()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;",
            ">;"
        }
    .end annotation

    .line 334
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz v0, :cond_0

    .line 335
    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->getMenuList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public h()V
    .locals 5

    .line 342
    invoke-virtual {p0}, Lcom/oppo/camera/ui/menu/setting/i;->g()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSettingMenu, mbCameraOpened: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oppo/camera/ui/menu/setting/i;->i:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CameraSettingUI"

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    .line 346
    iget-boolean v1, p0, Lcom/oppo/camera/ui/menu/setting/i;->i:Z

    if-eqz v1, :cond_3

    .line 347
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;

    .line 348
    iget-boolean v2, p0, Lcom/oppo/camera/ui/menu/setting/i;->j:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 349
    iget-object v2, p0, Lcom/oppo/camera/ui/menu/setting/i;->k:Lcom/oppo/camera/ui/d;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/oppo/camera/ui/d;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 350
    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/camera/ui/menu/setting/i;->a(Ljava/lang/String;)V

    .line 351
    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/oppo/camera/ui/menu/setting/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 353
    :cond_0
    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/menu/setting/i;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 356
    :cond_1
    iget-object v2, p0, Lcom/oppo/camera/ui/menu/setting/i;->k:Lcom/oppo/camera/ui/d;

    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/oppo/camera/ui/d;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 357
    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/camera/ui/menu/setting/i;->a(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lcom/oppo/camera/ui/menu/setting/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 360
    :cond_2
    invoke-virtual {v1}, Lcom/oppo/camera/ui/menu/setting/CameraMenuOption;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/camera/ui/menu/setting/i;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public i()Z
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {v0}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->getMenuPanelEnable()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public j()V
    .locals 2

    .line 391
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 392
    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->setVisibility(I)V

    .line 393
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 2

    .line 398
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/oppo/camera/ui/menu/setting/i;->j:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 399
    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->setVisibility(I)V

    .line 400
    iget-object v0, p0, Lcom/oppo/camera/ui/menu/setting/i;->l:Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/setting/CameraSettingMenuPanel;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method public l()I
    .locals 1

    .line 586
    invoke-static {}, Lcom/oppo/camera/o/d;->D()I

    move-result v0

    return v0
.end method
