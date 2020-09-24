.class public Lcom/coloros/settings/feature/network/ColorWiMaxController;
.super Lcom/android/settings/core/a;
.source "ColorWiMaxController.java"


# instance fields
.field private mDependenceKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lcom/coloros/settings/feature/network/ColorWiMaxController;->mDependenceKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 62
    iget-object v0, p0, Lcom/coloros/settings/feature/network/ColorWiMaxController;->mDependenceKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/coloros/settings/feature/network/ColorWiMaxController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/settings/feature/network/ColorWiMaxController;->mDependenceKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setDependency(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 7

    .line 38
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/coloros/settings/feature/network/ColorWiMaxController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v3, p0, Lcom/coloros/settings/feature/network/ColorWiMaxController;->mContext:Landroid/content/Context;

    .line 43
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "android_config_wimaxEnabled"

    const-string v5, "bool"

    const-string v6, "oppo"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 40
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 44
    :goto_1
    iget-object v0, p0, Lcom/coloros/settings/feature/network/ColorWiMaxController;->mContext:Landroid/content/Context;

    const-string v3, "user"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 45
    iget-object v3, p0, Lcom/coloros/settings/feature/network/ColorWiMaxController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_toggleable_radios"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_5

    const-string v1, "no_config_mobile_networks"

    .line 48
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v3, :cond_3

    const-string v0, "wimax"

    .line 51
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const-string v0, "toggle_airplane"

    .line 53
    iput-object v0, p0, Lcom/coloros/settings/feature/network/ColorWiMaxController;->mDependenceKey:Ljava/lang/String;

    :cond_4
    return v2

    :cond_5
    :goto_2
    const/4 v0, 0x3

    return v0
.end method
