.class public Lcom/coloros/settings/feature/homepage/TopLevelAppUsagePreferenceController;
.super Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;
.source "TopLevelAppUsagePreferenceController.java"


# static fields
.field private static final DIGITALWELLBEIN_PACKAGE_NAME:Ljava/lang/String; = "com.coloros.digitalwellbeing"


# instance fields
.field private mApprecoverInstalled:Ljava/lang/Boolean;

.field private mDigitalwellbeingEnbale:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 33
    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/TopLevelAppUsagePreferenceController;->mDigitalwellbeingEnbale:Ljava/lang/Boolean;

    .line 34
    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/TopLevelAppUsagePreferenceController;->mApprecoverInstalled:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 3

    .line 54
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    return v1

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/TopLevelAppUsagePreferenceController;->mDigitalwellbeingEnbale:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 2030
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v0

    const-string v2, "com.coloros.digitalwellbeing"

    .line 58
    invoke-static {v0, v2}, Lcom/coloros/settings/utils/ba;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/homepage/TopLevelAppUsagePreferenceController;->mDigitalwellbeingEnbale:Ljava/lang/Boolean;

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/TopLevelAppUsagePreferenceController;->mDigitalwellbeingEnbale:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    return v2

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/TopLevelAppUsagePreferenceController;->mApprecoverInstalled:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    .line 65
    invoke-static {}, Lcom/coloros/settings/utils/ba;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/homepage/TopLevelAppUsagePreferenceController;->mApprecoverInstalled:Ljava/lang/Boolean;

    .line 67
    :cond_3
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/TopLevelAppUsagePreferenceController;->mApprecoverInstalled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method public getTargetIntent()Landroid/content/Intent;
    .locals 4

    .line 1030
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.coloros.digitalwellbeing"

    .line 38
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ba;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const-string v2, "com.android.settings"

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Landroid/content/Intent;

    const-string v3, "coloros.intent.action.APP_USAGE_MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "start_from"

    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 46
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.coloros.apprecover.APPRECOVER_DISPLAY_LIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "fromPkg"

    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    return-object v0
.end method
