.class final Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings$1;
.super Lcom/android/settings/search/a;
.source "ZenModeNotificationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 299
    invoke-direct {p0}, Lcom/android/settings/search/a;-><init>()V

    return-void
.end method

.method private static synthetic a(Ljava/util/List;)V
    .locals 1

    const-string v0, "realme_screen_display_label"

    .line 365
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static synthetic b(Ljava/util/List;)V
    .locals 1

    const-string v0, "curved_screen_display_label"

    .line 364
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic lambda$QtGTtCR9OM1n1_fxLTmb1x7wL4g(Ljava/util/List;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings$1;->b(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$hnMXPpmZ8GU3f7sOB_snu7mhwHY(Ljava/util/List;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings$1;->a(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 3
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

    .line 348
    invoke-super {p0, p1}, Lcom/android/settings/search/a;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    .line 349
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 350
    invoke-static {p1}, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->c(Landroid/content/Context;)Z

    move-result p1

    const-string v1, "curved_screen_display_label"

    if-nez p1, :cond_0

    .line 351
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "realme_screen_display_label"

    .line 352
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    :cond_0
    invoke-static {}, Lcom/coloros/settings/feature/zenmode/b;->a()Lcom/coloros/settings/feature/zenmode/b;

    move-result-object p1

    const/16 v2, 0x100

    invoke-virtual {p1, v2}, Lcom/coloros/settings/feature/zenmode/b;->a(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "zen_mode_statusbar"

    .line 355
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "zen_mode_banner"

    .line 356
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "zen_mode_keyguard_notification"

    .line 357
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    :cond_1
    invoke-static {}, Lcom/coloros/settings/utils/bg$d;->b()Lcom/coloros/settings/utils/bg$d;

    move-result-object p1

    new-instance v1, Lcom/coloros/settings/feature/zenmode/-$$Lambda$ZenModeNotificationSettings$1$QtGTtCR9OM1n1_fxLTmb1x7wL4g;

    invoke-direct {v1, v0}, Lcom/coloros/settings/feature/zenmode/-$$Lambda$ZenModeNotificationSettings$1$QtGTtCR9OM1n1_fxLTmb1x7wL4g;-><init>(Ljava/util/List;)V

    .line 364
    invoke-virtual {p1, v1}, Lcom/coloros/settings/utils/bg$d;->a(Lcom/coloros/settings/utils/bg$a;)Lcom/coloros/settings/utils/bg$d;

    move-result-object p1

    new-instance v1, Lcom/coloros/settings/feature/zenmode/-$$Lambda$ZenModeNotificationSettings$1$hnMXPpmZ8GU3f7sOB_snu7mhwHY;

    invoke-direct {v1, v0}, Lcom/coloros/settings/feature/zenmode/-$$Lambda$ZenModeNotificationSettings$1$hnMXPpmZ8GU3f7sOB_snu7mhwHY;-><init>(Ljava/util/List;)V

    .line 365
    invoke-virtual {p1, v1}, Lcom/coloros/settings/utils/bg$d;->b(Lcom/coloros/settings/utils/bg$a;)Lcom/coloros/settings/utils/bg$d;

    move-result-object p1

    .line 366
    invoke-virtual {p1}, Lcom/coloros/settings/utils/bg$d;->a()V

    return-object v0
.end method

.method public final getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 5
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

    .line 320
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const v0, 0x7f121ad9

    .line 321
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 322
    new-instance v2, Lcom/android/settings/search/e;

    invoke-direct {v2, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0809be

    .line 323
    iput v3, v2, Lcom/android/settings/search/e;->iconResId:I

    const-string v4, "zen_mode_notification_settings"

    .line 324
    iput-object v4, v2, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    .line 325
    iput-object v1, v2, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 326
    const-class v4, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/settings/search/e;->className:Ljava/lang/String;

    const-string v4, "ccom.coloros.settings.feature.zenmode.ZenModeNotificationSettings"

    .line 327
    iput-object v4, v2, Lcom/android/settings/search/e;->intentAction:Ljava/lang/String;

    .line 328
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    new-instance v2, Lcom/android/settings/search/e;

    invoke-direct {v2, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const-string v4, "zen_mode_notification"

    .line 331
    iput-object v4, v2, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    .line 332
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 333
    iput v3, v2, Lcom/android/settings/search/e;->iconResId:I

    .line 334
    iput-object v1, v2, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 335
    invoke-static {p1}, Lcom/coloros/settings/feature/zenmode/ZenModeNotificationSettings;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f121b2b

    .line 336
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/settings/search/e;->c:Ljava/lang/String;

    .line 337
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/android/settings/search/e;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const v0, 0x7f121b2c

    .line 339
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/settings/search/e;->c:Ljava/lang/String;

    .line 340
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/android/settings/search/e;->b:Ljava/lang/String;

    .line 342
    :goto_0
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p2
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

    .line 309
    new-instance p2, Landroid/provider/SearchIndexableResource;

    invoke-direct {p2, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    const p1, 0x7f150156

    .line 310
    iput p1, p2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    const p1, 0x7f0809be

    .line 313
    iput p1, p2, Landroid/provider/SearchIndexableResource;->iconResId:I

    const/4 p1, 0x1

    .line 315
    new-array p1, p1, [Landroid/provider/SearchIndexableResource;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
