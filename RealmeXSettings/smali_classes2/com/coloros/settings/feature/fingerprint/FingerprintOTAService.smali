.class public Lcom/coloros/settings/feature/fingerprint/FingerprintOTAService;
.super Landroid/app/IntentService;
.source "FingerprintOTAService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FingerprintOTAService"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "FingerprintOTAService"

    .line 35
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    const-string p1, "FingerprintOTAService"

    const-string v0, "onHandleIntent"

    .line 40
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintOTAService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 42
    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->initSettingsValues(Landroid/content/Context;)V

    .line 43
    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerStatistics;->initStatisticsValues(Landroid/content/Context;)V

    .line 44
    invoke-static {p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->getFingerFaceSwitchValue(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 46
    invoke-static {p1, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->initStatusCombination(Landroid/content/Context;Z)V

    .line 48
    :cond_0
    invoke-static {p1}, Lcom/coloros/settings/feature/language/localepicker/RegionPickerFragment;->a(Landroid/content/Context;)V

    return-void
.end method
