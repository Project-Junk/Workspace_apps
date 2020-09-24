.class public Lcom/coloros/settings/feature/homepage/TopLevelSecurityPreferenceController;
.super Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;
.source "TopLevelSecurityPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    .line 39
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    return v1

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/TopLevelSecurityPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->aE(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getTargetIntent()Landroid/content/Intent;
    .locals 2

    .line 32
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.coloros.safecenter.systemsettings"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.coloros.safecenter"

    .line 33
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method
