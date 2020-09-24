.class public Lcom/coloros/settings/feature/deviceinfo/controller/ContributorInfoPreferenceController;
.super Lcom/android/settings/core/a;
.source "ContributorInfoPreferenceController.java"


# static fields
.field private static final OTAUI_ACTIVITY:Ljava/lang/String; = "com.oppo.otaui.activity.ContributorsListActivity"

.field private static final OTAUI_PACKAGE:Ljava/lang/String; = "com.oppo.otaui"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 3

    .line 37
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.oppo.otaui"

    const-string v2, "com.oppo.otaui.activity.ContributorsListActivity"

    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    sget-boolean v1, Lcom/coloros/settings/a;->a:Z

    if-nez v1, :cond_1

    invoke-static {}, Lcom/coloros/settings/utils/al;->k()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ContributorInfoPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x3

    return v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 47
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/controller/ContributorInfoPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ContributorInfoPreferenceController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "20120"

    const-string v3, "click_global_contributor"

    invoke-static {v0, v2, v3, v1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 51
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
