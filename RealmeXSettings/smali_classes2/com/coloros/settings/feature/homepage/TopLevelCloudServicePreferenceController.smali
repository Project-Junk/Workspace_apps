.class public Lcom/coloros/settings/feature/homepage/TopLevelCloudServicePreferenceController;
.super Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;
.source "TopLevelCloudServicePreferenceController.java"


# static fields
.field public static final CLOUD_ACTION:Ljava/lang/String; = "com.heytap.intent.action.CLOUD_MAIN"

.field private static final CLOUD_PACKAGE:Ljava/lang/String; = "com.heytap.cloud"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static isPreferenceAvailable()Z
    .locals 1

    .line 55
    invoke-static {}, Lcom/coloros/settings/feature/homepage/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/coloros/settings/utils/bh;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 51
    invoke-static {}, Lcom/coloros/settings/feature/homepage/TopLevelCloudServicePreferenceController;->isPreferenceAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public handleClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 39
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.heytap.intent.action.CLOUD_MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.heytap.cloud"

    .line 40
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 41
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 42
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/TopLevelCloudServicePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/al;->b(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 43
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/TopLevelCloudServicePreferenceController;->mContext:Landroid/content/Context;

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 44
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/TopLevelCloudServicePreferenceController;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    const v0, 0x7f010067

    const v1, 0x7f010068

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
