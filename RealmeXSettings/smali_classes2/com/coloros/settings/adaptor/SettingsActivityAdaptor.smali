.class public Lcom/coloros/settings/adaptor/SettingsActivityAdaptor;
.super Lcom/color/injector/adaptor/ClassAdaptor;
.source "SettingsActivityAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/color/injector/adaptor/ClassAdaptor<",
        "Lcom/android/settings/SettingsActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private mHomepageFeature:Lcom/coloros/settings/feature/homepage/HomepageFeature;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/color/injector/adaptor/ClassAdaptor;-><init>()V

    .line 30
    const-class v0, Lcom/coloros/settings/feature/homepage/HomepageFeature;

    invoke-static {v0}, Lcom/color/injector/adaptor/b;->a(Ljava/lang/Class;)Lcom/color/injector/adaptor/g;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/homepage/HomepageFeature;

    iput-object v0, p0, Lcom/coloros/settings/adaptor/SettingsActivityAdaptor;->mHomepageFeature:Lcom/coloros/settings/feature/homepage/HomepageFeature;

    return-void
.end method


# virtual methods
.method public getSubSettingsTheme(I)I
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/SettingsActivityAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/SettingsActivityAdaptor;->mHomepageFeature:Lcom/coloros/settings/feature/homepage/HomepageFeature;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/homepage/HomepageFeature;->getSubSettingsTheme(I)I

    move-result p1

    return p1
.end method

.method public getSwitchDefaultFragment(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/SettingsActivityAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/SettingsActivityAdaptor;->mHomepageFeature:Lcom/coloros/settings/feature/homepage/HomepageFeature;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/homepage/HomepageFeature;->getSwitchDefaultFragment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isCheckBluetoothSettingsActivityTile()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCheckConnectedDeviceDashboardActivityTile()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCheckSimSettingsActivityTile()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCheckWifiDisplaySettingsActivityTile()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/coloros/settings/adaptor/SettingsActivityAdaptor;->mHomepageFeature:Lcom/coloros/settings/feature/homepage/HomepageFeature;

    if-nez v0, :cond_1

    .line 35
    const-class v0, Lcom/coloros/settings/feature/homepage/HomepageFeature;

    const-string v1, "homepage_tile"

    invoke-static {v1, v0}, Lcom/color/injector/adaptor/c;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 36
    const-class v0, Lcom/coloros/settings/feature/homepage/HomepageFeature;

    invoke-static {v0}, Lcom/color/injector/adaptor/b;->a(Ljava/lang/Class;)Lcom/color/injector/adaptor/g;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/homepage/HomepageFeature;

    iput-object v0, p0, Lcom/coloros/settings/adaptor/SettingsActivityAdaptor;->mHomepageFeature:Lcom/coloros/settings/feature/homepage/HomepageFeature;

    .line 37
    iget-object v0, p0, Lcom/coloros/settings/adaptor/SettingsActivityAdaptor;->mHomepageFeature:Lcom/coloros/settings/feature/homepage/HomepageFeature;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 39
    :cond_1
    invoke-super {p0}, Lcom/color/injector/adaptor/ClassAdaptor;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isValidFragment(Ljava/lang/String;Z)Z
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/SettingsActivityAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p2

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/SettingsActivityAdaptor;->mHomepageFeature:Lcom/coloros/settings/feature/homepage/HomepageFeature;

    invoke-virtual {v0, p1, p2}, Lcom/coloros/settings/feature/homepage/HomepageFeature;->isValidFragment(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public onCreate(Z)V
    .locals 2

    .line 67
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/SettingsActivityAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/SettingsActivityAdaptor;->mHomepageFeature:Lcom/coloros/settings/feature/homepage/HomepageFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/SettingsActivityAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0, v1, p1}, Lcom/coloros/settings/feature/homepage/HomepageFeature;->setSettingsActivity(Lcom/android/settings/SettingsActivity;Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 97
    const-class v0, Lcom/coloros/settings/feature/homepage/HomepageFeature;

    invoke-static {v0}, Lcom/color/injector/adaptor/ClassAdaptor;->releaseFeature(Ljava/lang/Class;)V

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/coloros/settings/adaptor/SettingsActivityAdaptor;->mHomepageFeature:Lcom/coloros/settings/feature/homepage/HomepageFeature;

    return-void
.end method

.method public processTargetFragment(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 86
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/settings/privacy/PrivacyDashboardFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const-class p1, Lcom/coloros/settings/privacy/ColorPrivacyDashboardFragment;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public setSubActivityTheme(ZLjava/lang/String;)V
    .locals 2

    .line 62
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/SettingsActivityAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/SettingsActivityAdaptor;->mHomepageFeature:Lcom/coloros/settings/feature/homepage/HomepageFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/SettingsActivityAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0, v1, p1, p2}, Lcom/coloros/settings/feature/homepage/HomepageFeature;->setSubActivityTheme(Lcom/android/settings/SettingsActivity;ZLjava/lang/String;)V

    return-void
.end method
