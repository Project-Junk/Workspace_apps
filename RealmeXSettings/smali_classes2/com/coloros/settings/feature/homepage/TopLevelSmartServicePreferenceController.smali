.class public Lcom/coloros/settings/feature/homepage/TopLevelSmartServicePreferenceController;
.super Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;
.source "TopLevelSmartServicePreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private getSmartServiceIntent()Landroid/content/Intent;
    .locals 2

    .line 55
    new-instance v0, Landroid/content/Intent;

    const-string v1, "coloros.intent.action.BREENO_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.coloros.sceneservice"

    .line 56
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    .line 38
    invoke-direct {p0}, Lcom/coloros/settings/feature/homepage/TopLevelSmartServicePreferenceController;->getSmartServiceIntent()Landroid/content/Intent;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/TopLevelSmartServicePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    return v0

    .line 44
    :cond_0
    invoke-super {p0}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;->getAvailabilityStatus()I

    move-result v0

    return v0
.end method

.method public getTargetIntent()Landroid/content/Intent;
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/coloros/settings/feature/homepage/TopLevelSmartServicePreferenceController;->getSmartServiceIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .line 62
    invoke-static {}, Lcom/coloros/settings/utils/bh;->a()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 2030
    :cond_1
    :goto_0
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v0

    .line 1034
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1214f2

    .line 63
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
