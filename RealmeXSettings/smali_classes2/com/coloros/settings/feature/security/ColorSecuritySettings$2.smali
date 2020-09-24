.class final Lcom/coloros/settings/feature/security/ColorSecuritySettings$2;
.super Lcom/android/settings/search/a;
.source "ColorSecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/security/ColorSecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 333
    invoke-direct {p0}, Lcom/android/settings/search/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 454
    invoke-static {p1}, Lcom/coloros/settings/feature/security/ColorSecuritySettings;->e(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 2
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

    .line 414
    invoke-super {p0, p1}, Lcom/android/settings/search/a;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    const-string v1, "install_applications_unknown_source"

    .line 415
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "install_authentication"

    .line 416
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "recommend_safety_applications"

    .line 417
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "trusted_credentials"

    .line 418
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "location"

    .line 419
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "screen_pinning_settings"

    .line 420
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "security_category"

    .line 421
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "unlock_set_or_change"

    .line 422
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "lock_settings_title"

    .line 423
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "lockscreen_preferences"

    .line 424
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "fingerprint_settings"

    .line 425
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "security_category_profile"

    .line 426
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "unification"

    .line 427
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "unlock_set_or_change_profile"

    .line 428
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "visiblepattern_profile"

    .line 429
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "fingerprint_settings_profile"

    .line 430
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "oppo_feedback_log_switch"

    .line 433
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    invoke-static {}, Lcom/coloros/settings/e/a;->a()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/coloros/settings/feature/security/ColorSecuritySettings;->c(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/coloros/settings/feature/security/ColorSecuritySettings;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "sim_lock_settings"

    .line 436
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    :cond_1
    invoke-static {p1}, Lcom/android/settings/enterprise/EnterprisePrivacySettings;->b(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "enterprise_privacy"

    .line 440
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    :cond_2
    invoke-static {}, Lcom/coloros/settings/e/a;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "security_cell_broadcast_settings"

    .line 446
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
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

    .line 354
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 357
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-eqz v0, :cond_0

    const v0, 0x7f1213f4

    .line 358
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 360
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f120fe1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f120fbb

    .line 361
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 364
    :goto_0
    sget-boolean v1, Lcom/coloros/settings/a;->a:Z

    if-eqz v1, :cond_1

    const v1, 0x7f0809d3

    goto :goto_1

    :cond_1
    const v1, 0x7f0809a1

    .line 366
    :goto_1
    sget-boolean v2, Lcom/coloros/settings/a;->a:Z

    if-eqz v2, :cond_2

    .line 367
    new-instance v2, Lcom/android/settings/search/e;

    invoke-direct {v2, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const-string v3, "trust_agent"

    .line 368
    iput-object v3, v2, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    .line 369
    iput v1, v2, Lcom/android/settings/search/e;->iconResId:I

    .line 371
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/overlay/b;->getSecurityFeatureProvider()Lcom/android/settings/security/f;

    move-result-object v3

    .line 372
    invoke-interface {v3, p1}, Lcom/android/settings/security/f;->a(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v4

    .line 373
    invoke-interface {v3}, Lcom/android/settings/security/f;->a()Lcom/android/settings/security/trustagent/b;

    .line 374
    invoke-static {p1, v4}, Lcom/android/settings/security/trustagent/b;->b(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)Ljava/util/List;

    move-result-object v3

    .line 375
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v4, 0x0

    .line 376
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/security/trustagent/b$a;

    .line 377
    iget-object v4, v3, Lcom/android/settings/security/trustagent/b$a;->b:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 378
    iget-object v3, v3, Lcom/android/settings/security/trustagent/b$a;->c:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/settings/search/e;->b:Ljava/lang/String;

    .line 379
    const-class v3, Lcom/coloros/settings/feature/homepage/ColorTopSecuritySettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/search/e;->className:Ljava/lang/String;

    .line 380
    iput-object v0, v2, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 381
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    :cond_2
    new-instance v2, Lcom/android/settings/search/e;

    invoke-direct {v2, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const-string v3, "manage_device_admin_key"

    .line 386
    iput-object v3, v2, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    .line 387
    iput v1, v2, Lcom/android/settings/search/e;->iconResId:I

    const v3, 0x7f120582

    .line 388
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 389
    const-class v3, Lcom/coloros/settings/feature/security/ColorDeviceAdminSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/search/e;->className:Ljava/lang/String;

    .line 390
    iget-object v3, v2, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    invoke-static {p1, v0, v3}, Lcom/android/settings/search/a;->formatTitleString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 391
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    new-instance v2, Lcom/android/settings/search/e;

    invoke-direct {v2, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const-string v3, "trusted_key"

    .line 394
    iput-object v3, v2, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    .line 395
    iput v1, v2, Lcom/android/settings/search/e;->iconResId:I

    const v3, 0x7f1205c0

    .line 396
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 397
    const-class v3, Lcom/coloros/settings/feature/security/ColorTrustedCredentialsSettings;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/search/e;->className:Ljava/lang/String;

    .line 398
    iget-object v3, v2, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    invoke-static {p1, v0, v3}, Lcom/android/settings/search/a;->formatTitleString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 399
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    new-instance v2, Lcom/android/settings/search/e;

    invoke-direct {v2, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    const-string v3, "installApps"

    .line 402
    iput-object v3, v2, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    .line 403
    iput v1, v2, Lcom/android/settings/search/e;->iconResId:I

    const v1, 0x7f120b2a

    .line 404
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    const-string v1, "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

    .line 405
    iput-object v1, v2, Lcom/android/settings/search/e;->intentAction:Ljava/lang/String;

    .line 406
    iget-object v1, v2, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/android/settings/search/a;->formatTitleString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 407
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    .line 338
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 340
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 341
    sget-boolean p1, Lcom/coloros/settings/a;->a:Z

    if-eqz p1, :cond_0

    const p1, 0x7f150064

    goto :goto_0

    :cond_0
    const p1, 0x7f150063

    :goto_0
    iput p1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 342
    sget-boolean p1, Lcom/coloros/settings/a;->a:Z

    if-eqz p1, :cond_1

    const p1, 0x7f0809d3

    goto :goto_1

    :cond_1
    const p1, 0x7f0809a1

    :goto_1
    iput p1, v0, Landroid/provider/SearchIndexableResource;->iconResId:I

    .line 343
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method public final ignoreXmlNonIndexableKeys()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
