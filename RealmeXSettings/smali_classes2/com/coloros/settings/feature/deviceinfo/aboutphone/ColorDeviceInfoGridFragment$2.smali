.class final Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoGridFragment$2;
.super Lcom/android/settings/search/a;
.source "ColorDeviceInfoGridFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoGridFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 256
    invoke-direct {p0}, Lcom/android/settings/search/a;-><init>()V

    return-void
.end method

.method private static synthetic a(Ljava/util/List;)V
    .locals 1

    const-string v0, "coloros_version"

    .line 323
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static synthetic a(Landroid/content/Context;)Z
    .locals 1

    .line 324
    invoke-static {}, Lcom/coloros/settings/utils/al;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/coloros/settings/utils/al;->ad(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static synthetic b(Ljava/util/List;)V
    .locals 1

    const-string v0, "realmeui_version"

    .line 322
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic lambda$ngc092gN_6VgQhtZ_5rczdTbZQE(Ljava/util/List;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoGridFragment$2;->b(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$qAUh92cacWY0Vonc12rciu2hFTM(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoGridFragment$2;->a(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$tJQKm3yhylHPWdGQuo-Igr3aidY(Ljava/util/List;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoGridFragment$2;->a(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 286
    invoke-super {p0, p1}, Lcom/android/settings/search/a;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    const-string v1, "version_info"

    .line 287
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "legal_container"

    .line 289
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "status_info"

    .line 290
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "authentication_info"

    .line 291
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "firmware_version"

    .line 292
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "device_feedback"

    .line 294
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "camera_info"

    .line 297
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    invoke-static {p1}, Lcom/coloros/settings/feature/deviceinfo/ELabelActivity;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "e_label"

    .line 301
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_0
    sget-boolean v2, Lcom/coloros/settings/a;->a:Z

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/coloros/settings/feature/deviceinfo/ColorRegulatoryActivity;->a(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const-string v2, "regulatory_info_above_coloros_six"

    .line 306
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    :cond_2
    sget-boolean v2, Lcom/coloros/settings/a;->a:Z

    if-eqz v2, :cond_3

    invoke-static {p1}, Lcom/coloros/settings/feature/deviceinfo/d;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    const-string v2, "network_access_license"

    .line 309
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v2, "regulatory_info"

    .line 311
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "safety_info"

    .line 312
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2051
    invoke-static {}, Lcom/coloros/settings/e/a;->a()Z

    move-result v2

    if-nez v2, :cond_5

    .line 313
    invoke-static {p1}, Lcom/android/settingslib/l;->q(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    const-string v2, "sim_status"

    .line 314
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    :cond_6
    invoke-static {p1}, Lcom/android/settingslib/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 317
    invoke-static {}, Lcom/coloros/settings/utils/ax;->a()Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x0

    goto :goto_1

    :cond_8
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_9

    .line 319
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3037
    :cond_9
    new-instance v1, Lcom/coloros/settings/utils/bg;

    invoke-direct {v1}, Lcom/coloros/settings/utils/bg;-><init>()V

    const/16 v2, 0x7f

    .line 321
    new-instance v3, Lcom/coloros/settings/feature/deviceinfo/aboutphone/-$$Lambda$ColorDeviceInfoGridFragment$2$ngc092gN_6VgQhtZ_5rczdTbZQE;

    invoke-direct {v3, v0}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/-$$Lambda$ColorDeviceInfoGridFragment$2$ngc092gN_6VgQhtZ_5rczdTbZQE;-><init>(Ljava/util/List;)V

    .line 322
    invoke-virtual {v1, v2, v3}, Lcom/coloros/settings/utils/bg;->a(ILcom/coloros/settings/utils/bg$a;)Lcom/coloros/settings/utils/bg;

    move-result-object v1

    const/16 v2, 0xff

    new-instance v3, Lcom/coloros/settings/feature/deviceinfo/aboutphone/-$$Lambda$ColorDeviceInfoGridFragment$2$tJQKm3yhylHPWdGQuo-Igr3aidY;

    invoke-direct {v3, v0}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/-$$Lambda$ColorDeviceInfoGridFragment$2$tJQKm3yhylHPWdGQuo-Igr3aidY;-><init>(Ljava/util/List;)V

    .line 323
    invoke-virtual {v1, v2, v3}, Lcom/coloros/settings/utils/bg;->a(ILcom/coloros/settings/utils/bg$a;)Lcom/coloros/settings/utils/bg;

    move-result-object v1

    new-instance v2, Lcom/coloros/settings/feature/deviceinfo/aboutphone/-$$Lambda$ColorDeviceInfoGridFragment$2$qAUh92cacWY0Vonc12rciu2hFTM;

    invoke-direct {v2, p1}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/-$$Lambda$ColorDeviceInfoGridFragment$2$qAUh92cacWY0Vonc12rciu2hFTM;-><init>(Landroid/content/Context;)V

    .line 3046
    iput-object v2, v1, Lcom/coloros/settings/utils/bg;->b:Lcom/coloros/settings/utils/bg$c;

    .line 325
    invoke-virtual {v1}, Lcom/coloros/settings/utils/bg;->a()V

    return-object v0
.end method

.method public final getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/settings/search/e;",
            ">;"
        }
    .end annotation

    .line 269
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 270
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-nez v0, :cond_0

    const-string v0, "ro.product.authentication"

    .line 1431
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    new-instance v0, Lcom/android/settings/search/e;

    invoke-direct {v0, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const-string v1, "authentication_info_key"

    .line 272
    iput-object v1, v0, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    const v1, 0x7f080986

    .line 273
    iput v1, v0, Lcom/android/settings/search/e;->iconResId:I

    const v1, 0x7f120f36

    .line 274
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    const/4 v1, 0x2

    .line 275
    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {p1, v1}, Lcom/android/settings/search/a;->formatTitleString(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 277
    const-class p1, Lcom/coloros/settings/feature/deviceinfo/ColorAuthenticationInfoFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/settings/search/e;->className:Ljava/lang/String;

    .line 278
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p2

    :array_0
    .array-data 4
        0x7f120043
        0x7f120f36
    .end array-data
.end method

.method public final getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .line 261
    new-instance p2, Landroid/provider/SearchIndexableResource;

    invoke-direct {p2, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    const p1, 0x7f15004d

    .line 262
    iput p1, p2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    const p1, 0x7f080986

    .line 263
    iput p1, p2, Landroid/provider/SearchIndexableResource;->iconResId:I

    const/4 p1, 0x1

    .line 264
    new-array p1, p1, [Landroid/provider/SearchIndexableResource;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
