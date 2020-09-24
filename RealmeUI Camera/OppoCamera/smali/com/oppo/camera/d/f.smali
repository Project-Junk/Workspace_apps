.class public Lcom/oppo/camera/d/f;
.super Lcom/oppo/camera/d/m;
.source "CommonVideoMode.java"


# static fields
.field private static final af:Z


# instance fields
.field private ag:Z

.field private ah:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private ai:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private aj:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "0"

    const-string v1, "oppo.camera.disable.videoeis"

    .line 43
    invoke-static {v1, v0}, Lcom/oppo/camera/debug/DebugUtil;->getDebugProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/oppo/camera/d/f;->af:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/oppo/camera/d/b;Lcom/oppo/camera/ui/c;Lcom/oppo/camera/ui/preview/a/i;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oppo/camera/d/m;-><init>(Landroid/app/Activity;Lcom/oppo/camera/d/b;Lcom/oppo/camera/ui/c;Lcom/oppo/camera/ui/preview/a/i;)V

    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lcom/oppo/camera/d/f;->ag:Z

    const/16 p2, 0x3c

    .line 50
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2, p2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p2

    iput-object p2, p0, Lcom/oppo/camera/d/f;->ah:Landroid/util/Range;

    const/16 p2, 0x1e

    .line 51
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p2, p2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p2

    iput-object p2, p0, Lcom/oppo/camera/d/f;->ai:Landroid/util/Range;

    .line 52
    iput-boolean p1, p0, Lcom/oppo/camera/d/f;->aj:Z

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/d/f;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/oppo/camera/d/f;->cL()V

    return-void
.end method

.method static synthetic b(Lcom/oppo/camera/d/f;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/oppo/camera/d/f;->cX()V

    return-void
.end method

.method private cJ()Z
    .locals 6

    .line 194
    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->bc()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 197
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->aW()I

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 199
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkSpecialEffectSwitch, isFilterSwitchOn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isFaceBeatySwitchOn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CommonVideoMode"

    invoke-static {v5, v4}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_3

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :cond_3
    :goto_2
    return v1
.end method

.method private cK()Z
    .locals 4

    .line 206
    iget-object v0, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    const-string v1, ""

    const-string v2, "pref_lasted_video_fps"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    iget-object v2, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    const-string v3, "pref_lasted_video_size"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 209
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private cL()V
    .locals 6

    .line 322
    invoke-direct {p0}, Lcom/oppo/camera/d/f;->cY()Ljava/lang/String;

    move-result-object v0

    .line 323
    invoke-direct {p0}, Lcom/oppo/camera/d/f;->cZ()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x3c

    if-ne v4, v1, :cond_0

    iget v1, p0, Lcom/oppo/camera/d/f;->j:I

    invoke-static {v1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 324
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->aW()I

    move-result v4

    const-string v5, "video_size_4kuhd"

    .line 326
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "video_size_1080p"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v1, :cond_1

    goto :goto_1

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->bL()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {p0, v3}, Lcom/oppo/camera/d/f;->h(I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    const v1, -0x186a0

    if-eq v0, v1, :cond_2

    const/16 v0, 0x66

    move v3, v0

    :cond_2
    if-eq v4, v3, :cond_5

    .line 347
    iget-object v0, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 348
    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->aX()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 349
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 351
    iget-object v0, p0, Lcom/oppo/camera/d/f;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v3}, Lcom/oppo/camera/ui/c;->k(I)V

    goto :goto_2

    .line 327
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/oppo/camera/d/f;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/c;->w()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 328
    iget-object v0, p0, Lcom/oppo/camera/d/f;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v3, v2, v3}, Lcom/oppo/camera/ui/c;->b(ZZZ)V

    :cond_4
    if-eqz v4, :cond_5

    .line 332
    iget-object v0, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 333
    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->aX()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 334
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 336
    iget-object v0, p0, Lcom/oppo/camera/d/f;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v3}, Lcom/oppo/camera/ui/c;->k(I)V

    goto :goto_2

    :cond_5
    move v3, v4

    .line 355
    :goto_2
    invoke-virtual {p0, v3}, Lcom/oppo/camera/d/f;->j(I)V

    .line 356
    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->bO()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/f;->a([I)V

    .line 358
    iget-object v0, p0, Lcom/oppo/camera/d/f;->P:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v0, :cond_6

    .line 359
    iget-object v0, p0, Lcom/oppo/camera/d/f;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {v0, v3}, Lcom/oppo/camera/ui/preview/a/i;->g(I)V

    :cond_6
    return-void
.end method

.method private cX()V
    .locals 5

    .line 364
    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->bc()I

    move-result v0

    .line 365
    invoke-direct {p0}, Lcom/oppo/camera/d/f;->cY()Ljava/lang/String;

    move-result-object v1

    .line 366
    invoke-direct {p0}, Lcom/oppo/camera/d/f;->cZ()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x3c

    if-ne v4, v2, :cond_0

    iget v2, p0, Lcom/oppo/camera/d/f;->j:I

    invoke-static {v2}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const-string v4, "video_size_4kuhd"

    .line 368
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 372
    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->be()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 373
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 375
    iget-object v0, p0, Lcom/oppo/camera/d/f;->M:Lcom/oppo/camera/ui/c;

    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->aR()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/oppo/camera/ui/c;->a(Ljava/lang/String;I)V

    .line 376
    invoke-virtual {p0, v3}, Lcom/oppo/camera/d/f;->n(I)V

    :cond_2
    return-void
.end method

.method private cY()Ljava/lang/String;
    .locals 3

    .line 564
    iget-object v0, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->cG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_video_size_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private cZ()I
    .locals 3

    .line 568
    iget-object v0, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oppo/camera/d/f;->N:Landroid/app/Activity;

    const v2, 0x7f0f01a2

    .line 569
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_video_fps_key"

    .line 568
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 570
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private da()Z
    .locals 4

    .line 843
    iget v0, p0, Lcom/oppo/camera/d/f;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x1e

    .line 847
    invoke-direct {p0}, Lcom/oppo/camera/d/f;->cZ()I

    move-result v2

    const-string v3, "CommonVideoMode"

    if-ne v0, v2, :cond_1

    const-string v0, "isHighFps false, videoFps: 30"

    .line 848
    invoke-static {v3, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 852
    :cond_1
    iget-boolean v0, p0, Lcom/oppo/camera/d/f;->aj:Z

    if-eqz v0, :cond_2

    const-string v0, "isHighFps, force30fps"

    .line 853
    invoke-static {v3, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 858
    :cond_2
    invoke-direct {p0}, Lcom/oppo/camera/d/f;->cY()Ljava/lang/String;

    move-result-object v0

    const-string v2, "video_size_720p"

    .line 860
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/oppo/camera/config/ConfigDataBase;->KEY_SUPPORT_VIDEO_720_60_FPS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 861
    invoke-static {v2}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_3
    const-string v2, "video_size_1080p"

    .line 862
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/oppo/camera/config/ConfigDataBase;->KEY_SUPPORT_VIDEO_1080_60_FPS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 863
    invoke-static {v2}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    const-string v2, "video_size_4kuhd"

    .line 864
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/oppo/camera/config/ConfigDataBase;->KEY_SUPPORT_VIDEO_4K_60_FPS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 865
    invoke-static {v0}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_5
    const/16 v0, 0x3c

    .line 866
    invoke-direct {p0}, Lcom/oppo/camera/d/f;->cZ()I

    move-result v2

    if-ne v0, v2, :cond_6

    const/4 v1, 0x1

    .line 868
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isHighFps, isHighFps: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return v1
.end method

.method private db()V
    .locals 7

    const-string v0, "CommonVideoMode"

    const-string v1, "onHighFpsStateChange"

    .line 877
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_support_video_high_fps"

    .line 879
    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/f;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "onHighFpsStateChange, not support high fps, so return"

    .line 880
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 885
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/f;->M:Lcom/oppo/camera/ui/c;

    if-eqz v0, :cond_1

    .line 886
    invoke-direct {p0}, Lcom/oppo/camera/d/f;->da()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/d/f;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/c;->x()Z

    move-result v0

    if-nez v0, :cond_1

    .line 887
    iget-object v1, p0, Lcom/oppo/camera/d/f;->M:Lcom/oppo/camera/ui/c;

    const v2, 0x7f0f01a7

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    .line 891
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/f;->K:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_2

    .line 892
    iget-object v0, p0, Lcom/oppo/camera/d/f;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    :cond_2
    return-void
.end method

.method private dc()V
    .locals 6

    .line 937
    iget-object v0, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oppo/camera/d/f;->N:Landroid/app/Activity;

    const v2, 0x7f0f01a2

    .line 938
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "pref_video_fps_key"

    .line 937
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 939
    iget-object v1, p0, Lcom/oppo/camera/d/f;->N:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 941
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setFpsToDefault, nowVideoFPS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CommonVideoMode"

    invoke-static {v5, v4}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 944
    iget-object v0, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 945
    iget-object v1, p0, Lcom/oppo/camera/d/f;->N:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 946
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private e(ZZ)V
    .locals 11

    .line 129
    invoke-direct {p0}, Lcom/oppo/camera/d/f;->cJ()Z

    move-result v0

    .line 130
    iget-object v1, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    const-string v2, "pref_lasted_video_save_status"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 132
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoreSpecialEffectStatus, afterStatus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", beforeStatus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isClickFaceBeauty: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CommonVideoMode"

    invoke-static {v5, v4}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v4, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v6, "pref_video_fps_key"

    const-string v7, "pref_video_size_key"

    const-string v8, "pref_lasted_video_size"

    const-string v9, "pref_lasted_video_fps"

    const/4 v10, 0x1

    if-nez v0, :cond_0

    if-eqz p2, :cond_5

    :cond_0
    if-nez v1, :cond_5

    .line 138
    invoke-interface {v4, v2, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 139
    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->bP()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v4, v9, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 140
    invoke-direct {p0}, Lcom/oppo/camera/d/f;->cY()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v4, v8, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 141
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 143
    iget-object p1, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    const/4 p2, 0x0

    invoke-interface {p1, v7, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    move p1, v10

    goto :goto_0

    :cond_1
    move p1, v3

    .line 144
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    invoke-interface {v0, v6, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    move p2, v10

    goto :goto_1

    :cond_2
    move p2, v3

    :goto_1
    if-eqz p1, :cond_3

    const-string p1, "set video size pref value"

    .line 147
    invoke-static {v5, p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object p1, p0, Lcom/oppo/camera/d/f;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1, v10}, Lcom/oppo/camera/d/b;->b(Z)V

    .line 150
    iget-object p1, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-direct {p0}, Lcom/oppo/camera/d/f;->cY()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v7, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 151
    iget-object p1, p0, Lcom/oppo/camera/d/f;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1, v3}, Lcom/oppo/camera/d/b;->b(Z)V

    :cond_3
    if-eqz p2, :cond_4

    const-string p1, "set fps pref value"

    .line 155
    invoke-static {v5, p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object p1, p0, Lcom/oppo/camera/d/f;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1, v10}, Lcom/oppo/camera/d/b;->b(Z)V

    .line 158
    iget-object p1, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->bP()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v6, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 159
    iget-object p1, p0, Lcom/oppo/camera/d/f;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1, v3}, Lcom/oppo/camera/d/b;->b(Z)V

    :cond_4
    const-string p1, "restoreSpecialEffectStatus, save status"

    .line 162
    invoke-static {v5, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    if-nez v0, :cond_8

    if-eqz v1, :cond_8

    .line 164
    iget-object p2, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 166
    invoke-direct {p0}, Lcom/oppo/camera/d/f;->cK()Z

    move-result p2

    if-eqz p2, :cond_8

    if-eqz p1, :cond_6

    .line 168
    iget-object p2, p0, Lcom/oppo/camera/d/f;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p2, v10}, Lcom/oppo/camera/d/b;->b(Z)V

    :cond_6
    const-string p2, "restoreSpecialEffectStatus, read status"

    .line 171
    invoke-static {v5, p2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object p2, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/oppo/camera/d/f;->N:Landroid/app/Activity;

    const v1, 0x7f0f01a2

    .line 175
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-interface {p2, v9, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 173
    invoke-interface {v4, v6, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 176
    iget-object p2, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    .line 177
    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->cG()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v8, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 176
    invoke-interface {v4, v7, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p2, ""

    .line 178
    invoke-interface {v4, v9, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 179
    invoke-interface {v4, v8, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 180
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz p1, :cond_7

    .line 183
    iget-object p1, p0, Lcom/oppo/camera/d/f;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1, v3}, Lcom/oppo/camera/d/b;->b(Z)V

    .line 186
    :cond_7
    invoke-direct {p0}, Lcom/oppo/camera/d/f;->db()V

    :cond_8
    :goto_2
    return-void
.end method

.method private n(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_video_filter_menu"

    .line 121
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_filter_menu"

    .line 122
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_video_facebeauty_level_menu"

    .line 123
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "key_filter_index"

    .line 124
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "key_video_filter_index"

    .line 125
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


# virtual methods
.method public I()V
    .locals 2

    .line 220
    invoke-super {p0}, Lcom/oppo/camera/d/m;->I()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 222
    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/d/f;->e(ZZ)V

    return-void
.end method

.method public X()V
    .locals 2

    .line 420
    invoke-super {p0}, Lcom/oppo/camera/d/m;->X()V

    .line 422
    iget-boolean v0, p0, Lcom/oppo/camera/d/f;->ag:Z

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/oppo/camera/d/f;->M:Lcom/oppo/camera/ui/c;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->n(Z)V

    const/4 v0, 0x0

    .line 424
    iput-boolean v0, p0, Lcom/oppo/camera/d/f;->ag:Z

    :cond_0
    return-void
.end method

.method public Z()Z
    .locals 1

    .line 740
    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->bY()Z

    move-result v0

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "commonVideo"

    return-object v0
.end method

.method public a(IIZ)V
    .locals 0

    .line 831
    invoke-super {p0, p1, p2, p3}, Lcom/oppo/camera/d/m;->a(IIZ)V

    .line 833
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onFaceBeautyItemValueChange, mbForce30fps: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/oppo/camera/d/f;->aj:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CommonVideoMode"

    invoke-static {p2, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->aW()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 836
    iput-boolean p1, p0, Lcom/oppo/camera/d/f;->aj:Z

    .line 839
    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/d/f;->db()V

    return-void
.end method

.method public a(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .line 113
    invoke-super {p0, p1, p2}, Lcom/oppo/camera/d/m;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 115
    invoke-direct {p0, p2}, Lcom/oppo/camera/d/f;->n(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 116
    invoke-direct {p0, p1, p1}, Lcom/oppo/camera/d/f;->e(ZZ)V

    :cond_0
    return-void
.end method

.method protected a(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/oppo/camera/d/f;->aj:Z

    .line 100
    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->cB()V

    .line 102
    invoke-super {p0, p1}, Lcom/oppo/camera/d/m;->a(Z)V

    return-void
.end method

.method public a(ZZZZ)V
    .locals 8

    .line 243
    invoke-direct {p0}, Lcom/oppo/camera/d/f;->cY()Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-direct {p0}, Lcom/oppo/camera/d/f;->cZ()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x3c

    if-ne v4, v1, :cond_0

    iget v1, p0, Lcom/oppo/camera/d/f;->j:I

    .line 245
    invoke-static {v1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p3, :cond_0

    move p3, v3

    goto :goto_0

    :cond_0
    move p3, v2

    .line 248
    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/oppo/camera/d/f;->N:Landroid/app/Activity;

    const v5, 0x7f0f024b

    .line 249
    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_none_sat_ultra_wide_angle_key"

    .line 248
    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "on"

    .line 250
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 252
    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->bc()I

    move-result v4

    .line 254
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkForceChangeTo1080P, isHighfps: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", filterIndex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", isNoneSatUltraWideAngleMenuOpen: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CommonVideoMode"

    invoke-static {v6, v5}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v5, p0, Lcom/oppo/camera/d/f;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v5}, Lcom/oppo/camera/d/b;->g()Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "video_size_4kuhd"

    .line 258
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    if-eqz p3, :cond_8

    :cond_1
    if-nez v4, :cond_2

    if-eqz v1, :cond_8

    :cond_2
    if-eqz p1, :cond_3

    .line 261
    iget-object p3, p0, Lcom/oppo/camera/d/f;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p3, v3}, Lcom/oppo/camera/d/b;->b(Z)V

    .line 264
    :cond_3
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const-string v0, "pref_video_size_key"

    if-eqz p3, :cond_4

    .line 265
    iget-object p3, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    check-cast p3, Lcom/oppo/camera/i$a;

    const-string v1, "video_size_1080p"

    .line 266
    invoke-virtual {p3, v0, v1, p4}, Lcom/oppo/camera/i$a;->a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 267
    invoke-virtual {p3}, Lcom/oppo/camera/i$a;->apply()V

    .line 270
    :cond_4
    invoke-direct {p0}, Lcom/oppo/camera/d/f;->dc()V

    if-eqz p1, :cond_5

    .line 273
    iget-object p3, p0, Lcom/oppo/camera/d/f;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p3, v2}, Lcom/oppo/camera/d/b;->b(Z)V

    :cond_5
    if-eqz p2, :cond_6

    .line 277
    iget-object p2, p0, Lcom/oppo/camera/d/f;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p2, v0}, Lcom/oppo/camera/ui/c;->d(Ljava/lang/String;)V

    :cond_6
    if-nez p1, :cond_7

    .line 281
    iput-boolean v3, p0, Lcom/oppo/camera/d/f;->aj:Z

    .line 284
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "checkForceChangeTo720P, mbForce30fps: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/oppo/camera/d/f;->aj:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public aU()Z
    .locals 7

    .line 684
    invoke-direct {p0}, Lcom/oppo/camera/d/f;->cY()Ljava/lang/String;

    move-result-object v0

    .line 685
    invoke-direct {p0}, Lcom/oppo/camera/d/f;->cZ()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x3c

    if-ne v4, v1, :cond_0

    iget v1, p0, Lcom/oppo/camera/d/f;->j:I

    invoke-static {v1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 687
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onFaceBeautyMenuClick, videoSizeType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " isHighfps: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CommonVideoMode"

    invoke-static {v5, v4}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "video_size_4kuhd"

    .line 689
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "video_size_1080p"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    return v2

    .line 690
    :cond_2
    :goto_1
    iput-boolean v2, p0, Lcom/oppo/camera/d/f;->ag:Z

    .line 691
    invoke-direct {p0, v3, v2}, Lcom/oppo/camera/d/f;->e(ZZ)V

    if-eqz v1, :cond_3

    .line 694
    iput-boolean v2, p0, Lcom/oppo/camera/d/f;->aj:Z

    .line 695
    invoke-direct {p0}, Lcom/oppo/camera/d/f;->db()V

    .line 696
    iget-object v0, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 697
    iget-object v1, p0, Lcom/oppo/camera/d/f;->N:Landroid/app/Activity;

    const v4, 0x7f0f01a2

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "pref_video_fps_key"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 698
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 701
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_video_size_key"

    const-string v4, "video_size_720p"

    .line 702
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 703
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 705
    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->aW()I

    move-result v0

    .line 707
    iget-object v4, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->bL()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {p0, v3}, Lcom/oppo/camera/d/f;->h(I)I

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    const v5, -0x186a0

    if-eq v4, v5, :cond_4

    const/16 v4, 0x66

    goto :goto_2

    :cond_4
    move v4, v3

    :goto_2
    if-eq v0, v4, :cond_5

    .line 714
    iget-object v0, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 715
    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->aX()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 716
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 718
    iget-object v0, p0, Lcom/oppo/camera/d/f;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v4}, Lcom/oppo/camera/ui/c;->k(I)V

    .line 721
    :cond_5
    iget-object v0, p0, Lcom/oppo/camera/d/f;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->d(Ljava/lang/String;)V

    .line 722
    iget-object v0, p0, Lcom/oppo/camera/d/f;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v3, v3}, Lcom/oppo/camera/ui/c;->a(ZZ)V

    .line 723
    iget-object v0, p0, Lcom/oppo/camera/d/f;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v3}, Lcom/oppo/camera/ui/c;->b(Z)V

    .line 724
    iget-object v0, p0, Lcom/oppo/camera/d/f;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v3}, Lcom/oppo/camera/ui/c;->o(Z)V

    .line 725
    iput-boolean v2, p0, Lcom/oppo/camera/d/f;->aj:Z

    return v3
.end method

.method protected aX()Ljava/lang/String;
    .locals 1

    const-string v0, "pref_video_facebeauty_level_menu"

    return-object v0
.end method

.method public an()V
    .locals 5

    .line 745
    new-instance v0, Lcom/oppo/camera/ui/control/c;

    const/4 v1, 0x1

    const/4 v2, 0x5

    const-string v3, "button_color_inside_red"

    const-string v4, "button_shape_ring_none"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/oppo/camera/ui/control/c;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 749
    iget-object v2, p0, Lcom/oppo/camera/d/f;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v2, v0}, Lcom/oppo/camera/ui/c;->a(Lcom/oppo/camera/ui/control/c;)V

    .line 750
    invoke-super {p0}, Lcom/oppo/camera/d/m;->an()V

    .line 752
    iget-object v0, p0, Lcom/oppo/camera/d/f;->K:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_1

    .line 753
    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/oppo/camera/d/f;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->n(I)V

    goto :goto_0

    .line 756
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/f;->K:Lcom/oppo/camera/e/f;

    iget v1, p0, Lcom/oppo/camera/d/f;->j:I

    iget-object v2, p0, Lcom/oppo/camera/d/f;->L:Lcom/oppo/camera/d/b;

    .line 757
    invoke-interface {v2}, Lcom/oppo/camera/d/b;->k()I

    move-result v2

    invoke-static {v1, v2}, Lcom/oppo/camera/e/a;->b(II)I

    move-result v1

    .line 756
    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->a(I)V

    .line 760
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/d/f;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    :cond_1
    return-void
.end method

.method public ap()V
    .locals 5

    .line 776
    new-instance v0, Lcom/oppo/camera/ui/control/c;

    const/4 v1, 0x6

    const-string v2, "button_color_inside_red"

    const-string v3, "button_shape_ring_none"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oppo/camera/ui/control/c;-><init>(ILjava/lang/String;Ljava/lang/String;I)V

    .line 779
    iget-object v1, p0, Lcom/oppo/camera/d/f;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v1, v0}, Lcom/oppo/camera/ui/c;->a(Lcom/oppo/camera/ui/control/c;)V

    .line 780
    invoke-super {p0}, Lcom/oppo/camera/d/m;->ap()V

    return-void
.end method

.method public b()I
    .locals 3

    .line 73
    iget v0, p0, Lcom/oppo/camera/d/f;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "key_support_fovc"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/f;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x830b

    const-string v1, "key_support_video_high_fps"

    .line 76
    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/f;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x3c

    invoke-direct {p0}, Lcom/oppo/camera/d/f;->cZ()I

    move-result v2

    if-ne v1, v2, :cond_1

    const v0, 0x8021

    goto :goto_0

    :cond_0
    const v0, 0x800b

    :cond_1
    :goto_0
    return v0
.end method

.method public b(I)V
    .locals 0

    .line 227
    invoke-super {p0, p1}, Lcom/oppo/camera/d/m;->b(I)V

    return-void
.end method

.method public bD()V
    .locals 7

    .line 785
    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->cM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 786
    iget-object v1, p0, Lcom/oppo/camera/d/f;->M:Lcom/oppo/camera/ui/c;

    const/4 v2, -0x1

    const v3, 0x7f0703de

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    goto :goto_0

    .line 788
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/f;->M:Lcom/oppo/camera/ui/c;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, v2}, Lcom/oppo/camera/ui/c;->a(ZZZ)V

    :goto_0
    return-void
.end method

.method public bH()V
    .locals 2

    .line 232
    invoke-super {p0}, Lcom/oppo/camera/d/m;->bH()V

    .line 234
    iget-object v0, p0, Lcom/oppo/camera/d/f;->M:Lcom/oppo/camera/ui/c;

    const-string v1, "pref_video_size_key"

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->d(Ljava/lang/String;)V

    return-void
.end method

.method protected bO()[I
    .locals 6

    .line 898
    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->bL()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "CommonVideoMode"

    const-string v1, "getCustomBeautyValues, customBeautyKeys null"

    .line 901
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 906
    :cond_0
    array-length v1, v0

    new-array v1, v1, [I

    const-string v2, "func_face_beauty_custom"

    .line 908
    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/f;->d(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 909
    :goto_0
    array-length v2, v0

    if-ge v3, v2, :cond_6

    .line 910
    iget-object v2, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_1

    .line 911
    iget-object v2, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    aget-object v4, v0, v3

    sget-object v5, Lcom/oppo/camera/d/f;->f:[I

    aget v5, v5, v3

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v3

    goto :goto_1

    .line 913
    :cond_1
    sget-object v2, Lcom/oppo/camera/d/f;->f:[I

    aget v2, v2, v3

    aput v2, v1, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "func_face_beauty_common"

    .line 916
    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/f;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 917
    iget-object v2, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_4

    .line 918
    iget-object v2, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    aget-object v4, v0, v3

    iget v5, p0, Lcom/oppo/camera/d/f;->j:I

    .line 919
    invoke-static {v5}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v5, 0x28

    goto :goto_2

    :cond_3
    move v5, v3

    .line 918
    :goto_2
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v3

    goto :goto_3

    .line 921
    :cond_4
    aput v3, v1, v3

    :goto_3
    const/4 v2, 0x1

    .line 924
    :goto_4
    array-length v4, v0

    if-ge v2, v4, :cond_6

    .line 925
    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    move v2, v3

    .line 928
    :goto_5
    array-length v4, v0

    if-ge v2, v4, :cond_6

    .line 929
    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    return-object v1
.end method

.method public bP()I
    .locals 2

    const-string v0, "key_support_video_high_fps"

    .line 575
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/f;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    invoke-direct {p0}, Lcom/oppo/camera/d/f;->cZ()I

    move-result v0

    return v0

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/f;->N:Landroid/app/Activity;

    const v1, 0x7f0f01a2

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public bg()V
    .locals 2

    .line 613
    invoke-super {p0}, Lcom/oppo/camera/d/m;->bg()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 615
    invoke-virtual {p0, v1, v0, v0, v0}, Lcom/oppo/camera/d/f;->a(ZZZZ)V

    return-void
.end method

.method public bu()Z
    .locals 1

    .line 801
    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->cM()Z

    move-result v0

    return v0
.end method

.method public c(Lcom/oppo/camera/e/h;)Landroid/util/Size;
    .locals 1

    .line 86
    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->bQ()Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/f;->l(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 94
    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/camera/d/m;->c(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method public c(ZZ)V
    .locals 1

    .line 794
    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->cM()Z

    move-result p1

    if-nez p1, :cond_0

    .line 795
    iget-object p1, p0, Lcom/oppo/camera/d/f;->M:Lcom/oppo/camera/ui/c;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0, v0}, Lcom/oppo/camera/ui/c;->a(ZZZ)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_face_detection_key"

    .line 435
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->bY()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 439
    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/camera/d/m;->c(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected cA()V
    .locals 0

    .line 956
    invoke-super {p0}, Lcom/oppo/camera/d/m;->cA()V

    .line 958
    invoke-direct {p0}, Lcom/oppo/camera/d/f;->db()V

    return-void
.end method

.method public cB()V
    .locals 7

    .line 289
    iget-object v0, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oppo/camera/d/f;->N:Landroid/app/Activity;

    const v2, 0x7f0f024b

    .line 290
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_none_sat_ultra_wide_angle_key"

    .line 289
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    invoke-direct {p0}, Lcom/oppo/camera/d/f;->cZ()I

    move-result v1

    const/4 v3, 0x1

    const/16 v4, 0x3c

    if-lt v1, v4, :cond_0

    iget v1, p0, Lcom/oppo/camera/d/f;->j:I

    invoke-static {v1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 293
    :goto_0
    invoke-direct {p0}, Lcom/oppo/camera/d/f;->cY()Ljava/lang/String;

    move-result-object v4

    const-string v5, "video_size_4kuhd"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "on"

    .line 294
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 296
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkForceCloseNoneSatUltraWideAngle, isHighfps: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", is4K: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isNoneSatUltraWideAngleMenuOpen: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CommonVideoMode"

    invoke-static {v6, v5}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v5, p0, Lcom/oppo/camera/d/f;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v5}, Lcom/oppo/camera/d/b;->g()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v0, :cond_2

    if-nez v1, :cond_1

    if-eqz v4, :cond_2

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/f;->O:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/i$a;

    const-string v1, "off"

    .line 301
    invoke-virtual {v0, v2, v1, v3}, Lcom/oppo/camera/i$a;->a(Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 302
    invoke-virtual {v0}, Lcom/oppo/camera/i$a;->apply()V

    :cond_2
    return-void
.end method

.method protected cC()I
    .locals 1

    .line 410
    invoke-direct {p0}, Lcom/oppo/camera/d/f;->da()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3c

    goto :goto_0

    :cond_0
    const/16 v0, 0x1e

    :goto_0
    return v0
.end method

.method protected cD()Ljava/lang/Integer;
    .locals 1

    .line 415
    invoke-direct {p0}, Lcom/oppo/camera/d/f;->da()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x3c

    goto :goto_0

    :cond_0
    const/16 v0, 0x1e

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected cE()Z
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/oppo/camera/d/f;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->F()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->ba()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected cF()V
    .locals 3

    .line 620
    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->bY()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "pref_video_eis"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/f;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CommonVideoMode"

    const-string v1, "releaseEisFrame"

    .line 621
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    iget-object v0, p0, Lcom/oppo/camera/d/f;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->n(I)V

    .line 624
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 626
    iget-object v1, p0, Lcom/oppo/camera/d/f;->K:Lcom/oppo/camera/e/f;

    new-instance v2, Lcom/oppo/camera/d/f$2;

    invoke-direct {v2, p0, v0}, Lcom/oppo/camera/d/f$2;-><init>(Lcom/oppo/camera/d/f;Landroid/os/ConditionVariable;)V

    invoke-interface {v1, v2}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$d;)V

    const-wide/16 v1, 0x3e8

    .line 638
    invoke-virtual {v0, v1, v2}, Landroid/os/ConditionVariable;->block(J)Z

    :cond_0
    return-void
.end method

.method public cG()Ljava/lang/String;
    .locals 2

    .line 811
    iget v0, p0, Lcom/oppo/camera/d/f;->j:I

    const-string v1, "pref_video_size_key"

    invoke-static {v1, v0}, Lcom/oppo/camera/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cd()Z
    .locals 1

    .line 816
    invoke-direct {p0}, Lcom/oppo/camera/d/f;->da()Z

    move-result v0

    return v0
.end method

.method public cf()V
    .locals 2

    .line 821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEffectMenuPopDown, mbForce30fps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/d/f;->aj:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonVideoMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 823
    iput-boolean v0, p0, Lcom/oppo/camera/d/f;->aj:Z

    .line 824
    invoke-direct {p0}, Lcom/oppo/camera/d/f;->db()V

    .line 826
    invoke-direct {p0, v0, v0}, Lcom/oppo/camera/d/f;->e(ZZ)V

    return-void
.end method

.method protected cp()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public cu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public cy()V
    .locals 0

    return-void
.end method

.method public d()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "key_support_video_high_fps"

    .line 649
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/f;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 653
    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/d/f;->da()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 654
    iget-object v0, p0, Lcom/oppo/camera/d/f;->ah:Landroid/util/Range;

    return-object v0

    .line 656
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/f;->ai:Landroid/util/Range;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 9

    const-string v0, "key_fixed_focus_lens_support_metering"

    .line 444
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/f;->L:Lcom/oppo/camera/d/b;

    .line 445
    invoke-interface {v0}, Lcom/oppo/camera/d/b;->W()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "pref_video_size_key"

    .line 449
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 450
    iget-object p1, p0, Lcom/oppo/camera/d/f;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->g()Z

    move-result p1

    return p1

    :cond_1
    const-string v0, "func_mode_panel"

    .line 453
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const-string v0, "pref_camera_videoflashmode_key"

    .line 457
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 458
    iget p1, p0, Lcom/oppo/camera/d/f;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_3
    const-string v2, "pref_camera_tap_shutter_key"

    .line 461
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_21

    const-string v2, "pref_time_lapse_key"

    .line 462
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "pref_camera_assistant_line_key"

    .line 463
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v2, "pref_camera_gesture_shutter_key"

    .line 464
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_8

    :cond_4
    const-string v2, "pref_expand_popbar_key"

    .line 468
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 469
    iget-object p1, p0, Lcom/oppo/camera/d/f;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1}, Lcom/oppo/camera/ui/c;->m()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/oppo/camera/d/f;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1}, Lcom/oppo/camera/ui/c;->w()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_5
    move v1, v3

    :cond_6
    :goto_0
    return v1

    :cond_7
    const-string v2, "pref_filter_process_key"

    .line 472
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 473
    iget-object p1, p0, Lcom/oppo/camera/d/f;->L:Lcom/oppo/camera/d/b;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/oppo/camera/d/f;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->g()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_1

    :cond_8
    move v1, v3

    :goto_1
    return v1

    :cond_9
    const-string v2, "pref_support_high_temperature_ultimate_limit"

    .line 476
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "video_size_4kuhd"

    const-string v5, "video_size_720p"

    const-string v6, "video_size_1080p"

    if-eqz v2, :cond_c

    .line 477
    iget-object p1, p0, Lcom/oppo/camera/d/f;->X:Ljava/lang/String;

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_HIGH_TEMPERATURE_ULTIMATE_LIMIT_1080P_720P:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 478
    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget p1, p0, Lcom/oppo/camera/d/f;->j:I

    .line 479
    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/oppo/camera/d/f;->X:Ljava/lang/String;

    .line 480
    invoke-static {p1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/oppo/camera/d/f;->X:Ljava/lang/String;

    .line 481
    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a

    goto :goto_2

    :cond_a
    move v1, v3

    :cond_b
    :goto_2
    return v1

    .line 484
    :cond_c
    sget-object v2, Lcom/oppo/camera/config/ConfigDataBase;->KEY_VIDEO_EIS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v7, "CommonVideoMode"

    if-eqz v2, :cond_d

    .line 485
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSupportFunction, KEY_VIDEO_EIS: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/oppo/camera/config/ConfigDataBase;->KEY_VIDEO_EIS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 486
    invoke-static {v8}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 485
    invoke-static {v7, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    const-string v2, "func_face_beauty_process"

    .line 489
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 490
    iget-object p1, p0, Lcom/oppo/camera/d/f;->L:Lcom/oppo/camera/d/b;

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/oppo/camera/d/f;->L:Lcom/oppo/camera/d/b;

    .line 491
    invoke-interface {p1}, Lcom/oppo/camera/d/b;->g()Z

    move-result p1

    if-eqz p1, :cond_e

    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_SUPPORT_VIDEO_FACE_BEAUTY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 492
    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_3

    :cond_e
    move v1, v3

    :goto_3
    return v1

    :cond_f
    const-string v8, "func_face_slender_process"

    .line 495
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 496
    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/f;->d(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_10
    const-string v8, "func_face_beauty_common"

    .line 499
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 500
    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/f;->d(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 503
    :cond_11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 504
    iget p1, p0, Lcom/oppo/camera/d/f;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_12
    const-string v0, "key_support_no_face_forbid_beauty"

    .line 507
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 508
    iget p1, p0, Lcom/oppo/camera/d/f;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_13
    const-string v0, "pref_video_eis"

    .line 511
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 512
    iget v0, p0, Lcom/oppo/camera/d/f;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-nez v0, :cond_15

    sget-object v0, Lcom/oppo/camera/config/ConfigDataBase;->KEY_VIDEO_EIS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 513
    invoke-static {v0}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-boolean v0, Lcom/oppo/camera/d/f;->af:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/oppo/camera/d/f;->X:Ljava/lang/String;

    .line 515
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/oppo/camera/d/f;->X:Ljava/lang/String;

    .line 516
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_14
    return v1

    :cond_15
    const-string v0, "key_support_video_high_fps"

    .line 521
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 522
    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->bQ()Ljava/lang/String;

    move-result-object p1

    .line 526
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 527
    sget-object v0, Lcom/oppo/camera/config/ConfigDataBase;->KEY_SUPPORT_VIDEO_720_60_FPS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result v0

    goto :goto_4

    .line 528
    :cond_16
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 529
    sget-object v0, Lcom/oppo/camera/config/ConfigDataBase;->KEY_SUPPORT_VIDEO_1080_60_FPS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result v0

    goto :goto_4

    .line 530
    :cond_17
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 531
    sget-object v0, Lcom/oppo/camera/config/ConfigDataBase;->KEY_SUPPORT_VIDEO_4K_60_FPS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result v0

    goto :goto_4

    :cond_18
    move v0, v3

    .line 534
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSupportFunction, sizeType: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", isSupportHps: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iget-object p1, p0, Lcom/oppo/camera/d/f;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->g()Z

    move-result p1

    if-eqz p1, :cond_19

    iget p1, p0, Lcom/oppo/camera/d/f;->j:I

    .line 537
    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-nez p1, :cond_19

    if-eqz v0, :cond_19

    goto :goto_5

    :cond_19
    move v1, v3

    :goto_5
    return v1

    :cond_1a
    const-string v0, "pref_support_ipa_process"

    .line 541
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 542
    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result p1

    return p1

    :cond_1b
    const-string v0, "pref_camera_torch_mode_key"

    .line 545
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "func_torch_soft_light"

    if-eqz v0, :cond_1c

    .line 546
    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/f;->d(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 549
    :cond_1c
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 550
    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_TORCH_SOFT_LIGHT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result p1

    if-eqz p1, :cond_1d

    iget p1, p0, Lcom/oppo/camera/d/f;->j:I

    .line 551
    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_6

    :cond_1d
    move v1, v3

    :goto_6
    return v1

    :cond_1e
    const-string v0, "pref_none_sat_ultra_wide_angle_key"

    .line 554
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 555
    iget p1, p0, Lcom/oppo/camera/d/f;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-nez p1, :cond_1f

    .line 556
    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->bs()Z

    move-result p1

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lcom/oppo/camera/d/f;->L:Lcom/oppo/camera/d/b;

    .line 557
    invoke-interface {p1}, Lcom/oppo/camera/d/b;->g()Z

    move-result p1

    if-eqz p1, :cond_1f

    goto :goto_7

    :cond_1f
    move v1, v3

    :goto_7
    return v1

    .line 560
    :cond_20
    invoke-super {p0, p1}, Lcom/oppo/camera/d/m;->d(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_21
    :goto_8
    return v3
.end method

.method public e(Z)V
    .locals 0

    .line 214
    invoke-super {p0, p1}, Lcom/oppo/camera/d/m;->e(Z)V

    const/4 p1, 0x1

    .line 215
    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/f;->o(Z)V

    return-void
.end method

.method protected h()V
    .locals 1

    .line 107
    invoke-super {p0}, Lcom/oppo/camera/d/m;->h()V

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lcom/oppo/camera/d/f;->ag:Z

    return-void
.end method

.method public i(I)V
    .locals 2

    .line 667
    iget-boolean v0, p0, Lcom/oppo/camera/d/f;->s:Z

    if-eqz v0, :cond_0

    return-void

    .line 671
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->aW()I

    move-result v0

    if-eq v0, p1, :cond_2

    .line 673
    iget-object v0, p0, Lcom/oppo/camera/d/f;->L:Lcom/oppo/camera/d/b;

    .line 674
    invoke-interface {v0}, Lcom/oppo/camera/d/b;->e()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 675
    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->bY()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 679
    :cond_1
    invoke-super {p0, p1}, Lcom/oppo/camera/d/m;->i(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected l()V
    .locals 2

    .line 308
    invoke-super {p0}, Lcom/oppo/camera/d/m;->l()V

    .line 310
    iget-object v0, p0, Lcom/oppo/camera/d/f;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oppo/camera/config/ConfigDataBase;->KEY_VIDEO_EIS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/f;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/oppo/camera/d/f;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->n(I)V

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/f;->M:Lcom/oppo/camera/ui/c;

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/oppo/camera/d/f;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/c;->s()V

    .line 318
    :cond_1
    iput-boolean v1, p0, Lcom/oppo/camera/d/f;->aj:Z

    return-void
.end method

.method public l(I)V
    .locals 4

    .line 584
    iget-object v0, p0, Lcom/oppo/camera/d/f;->P:Lcom/oppo/camera/ui/preview/a/i;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 585
    iget-object v0, p0, Lcom/oppo/camera/d/f;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/f;->o(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/oppo/camera/ui/preview/a/i;->a(Ljava/lang/String;)V

    const-string v0, "func_filter_vignette"

    .line 587
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/f;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 588
    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/f;->o(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "oppo_video_filter_olympus"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/oppo/camera/d/f;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/preview/a/i;->b(Z)V

    goto :goto_0

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/f;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {v0, v2}, Lcom/oppo/camera/ui/preview/a/i;->b(Z)V

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 596
    iput-boolean v2, p0, Lcom/oppo/camera/d/f;->aj:Z

    .line 599
    :cond_2
    invoke-super {p0, p1}, Lcom/oppo/camera/d/m;->l(I)V

    .line 600
    invoke-virtual {p0, v2, v1, v2, v2}, Lcom/oppo/camera/d/f;->a(ZZZZ)V

    .line 602
    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->bc()I

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "CommonVideoMode"

    const-string v0, "onFilterItemChange"

    .line 603
    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    iput-boolean v1, p0, Lcom/oppo/camera/d/f;->aj:Z

    .line 606
    invoke-direct {p0}, Lcom/oppo/camera/d/f;->db()V

    .line 607
    invoke-direct {p0}, Lcom/oppo/camera/d/f;->dc()V

    :cond_3
    return-void
.end method

.method protected m()V
    .locals 2

    .line 382
    invoke-super {p0}, Lcom/oppo/camera/d/m;->m()V

    .line 384
    iget-object v0, p0, Lcom/oppo/camera/d/f;->K:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_1

    .line 385
    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/oppo/camera/d/f;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->n(I)V

    goto :goto_0

    .line 388
    :cond_0
    sget-object v0, Lcom/oppo/camera/config/ConfigDataBase;->KEY_VIDEO_EIS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCharacteristics$Key;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/f;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/oppo/camera/d/f;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->n(I)V

    .line 390
    iget-object v0, p0, Lcom/oppo/camera/d/f;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    .line 395
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/d/f;->W:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 396
    iget-object v0, p0, Lcom/oppo/camera/d/f;->W:Landroid/os/Handler;

    new-instance v1, Lcom/oppo/camera/d/f$1;

    invoke-direct {v1, p0}, Lcom/oppo/camera/d/f$1;-><init>(Lcom/oppo/camera/d/f;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method protected n(Z)V
    .locals 2

    .line 766
    iget-object v0, p0, Lcom/oppo/camera/d/f;->K:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/oppo/camera/d/f;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->n(I)V

    .line 768
    iget-object v0, p0, Lcom/oppo/camera/d/f;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    .line 771
    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/camera/d/m;->n(Z)V

    return-void
.end method

.method protected n()Z
    .locals 1

    .line 735
    invoke-virtual {p0}, Lcom/oppo/camera/d/f;->bY()Z

    move-result v0

    return v0
.end method

.method protected o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
