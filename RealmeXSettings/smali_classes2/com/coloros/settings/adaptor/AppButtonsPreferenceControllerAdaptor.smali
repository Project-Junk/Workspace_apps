.class public Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;
.super Lcom/color/injector/adaptor/ClassAdaptor;
.source "AppButtonsPreferenceControllerAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/color/injector/adaptor/ClassAdaptor<",
        "Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAppInfoFeature:Lcom/coloros/settings/feature/appmanager/AppInfoFeature;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/color/injector/adaptor/ClassAdaptor;-><init>()V

    .line 33
    const-class v0, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;

    invoke-static {v0}, Lcom/color/injector/adaptor/b;->a(Ljava/lang/Class;)Lcom/color/injector/adaptor/g;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;

    iput-object v0, p0, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->mAppInfoFeature:Lcom/coloros/settings/feature/appmanager/AppInfoFeature;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)Z
    .locals 2

    .line 43
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->mAppInfoFeature:Lcom/coloros/settings/feature/appmanager/AppInfoFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-virtual {v0, p1, v1}, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->displayPreference(Landroidx/preference/PreferenceScreen;Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Z

    move-result p1

    return p1
.end method

.method public getAvailabilityStatus(I)I
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->mAppInfoFeature:Lcom/coloros/settings/feature/appmanager/AppInfoFeature;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->getAvailabilityStatus(I)I

    move-result p1

    return p1
.end method

.method public getForceStopUserHandle(Landroid/os/UserHandle;)Landroid/os/UserHandle;
    .locals 2

    .line 57
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->mAppInfoFeature:Lcom/coloros/settings/feature/appmanager/AppInfoFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-virtual {v0, p1, v1}, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->getForceStopUserHandle(Landroid/os/UserHandle;Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Landroid/os/UserHandle;

    move-result-object p1

    return-object p1
.end method

.method public getPreferenceKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->mAppInfoFeature:Lcom/coloros/settings/feature/appmanager/AppInfoFeature;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->getPreferenceKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public handleDisableable(ZLcom/coloros/settingslib/applications/ApplicationsState$a;)Z
    .locals 1

    .line 78
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->mAppInfoFeature:Lcom/coloros/settings/feature/appmanager/AppInfoFeature;

    invoke-virtual {v0, p1, p2}, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->handleDisableable(ZLcom/coloros/settingslib/applications/ApplicationsState$a;)Z

    move-result p1

    return p1
.end method

.method public initUninstallButtonForUserApp(Z)Z
    .locals 2

    .line 99
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->mAppInfoFeature:Lcom/coloros/settings/feature/appmanager/AppInfoFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-virtual {v0, p1, v1}, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->initUninstallButtonForUserApp(ZLcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Z

    move-result p1

    return p1
.end method

.method public initUninstallButtonForUserApp1(Z)Z
    .locals 2

    .line 92
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->mAppInfoFeature:Lcom/coloros/settings/feature/appmanager/AppInfoFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-virtual {v0, p1, v1}, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->initUninstallButtonForUserApp1(ZLcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Z

    move-result p1

    return p1
.end method

.method public initUninstallButtons(Z)Z
    .locals 2

    .line 64
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->mAppInfoFeature:Lcom/coloros/settings/feature/appmanager/AppInfoFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-virtual {v0, p1, v1}, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->initUninstallButtons(ZLcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)Z

    move-result p1

    return p1
.end method

.method public isAppEncrypted(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 1

    .line 143
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->mAppInfoFeature:Lcom/coloros/settings/feature/appmanager/AppInfoFeature;

    invoke-virtual {v0, p1, p2, p3}, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->isAppEncrypted(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public isColorSpecifiedPackage(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Z
    .locals 1

    .line 134
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->mAppInfoFeature:Lcom/coloros/settings/feature/appmanager/AppInfoFeature;

    invoke-virtual {v0, p1, p2}, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->isColorSpecifiedPackage(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Z

    move-result p1

    return p1
.end method

.method public isForbidForceStop(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Z
    .locals 1

    .line 127
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->mAppInfoFeature:Lcom/coloros/settings/feature/appmanager/AppInfoFeature;

    invoke-virtual {v0, p1, p2}, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->isForbidForceStop(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public performOpenButton(Landroid/content/Intent;)Z
    .locals 1

    .line 113
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->mAppInfoFeature:Lcom/coloros/settings/feature/appmanager/AppInfoFeature;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->performOpenButton(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public refreshUi()V
    .locals 2

    .line 106
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->mAppInfoFeature:Lcom/coloros/settings/feature/appmanager/AppInfoFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->refreshUi(Lcom/android/settings/applications/appinfo/AppButtonsPreferenceController;)V

    return-void
.end method

.method public setForceStopButtonEnabled(Z)Z
    .locals 1

    .line 120
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->mAppInfoFeature:Lcom/coloros/settings/feature/appmanager/AppInfoFeature;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->setForceStopButtonEnabled(Z)Z

    move-result p1

    return p1
.end method

.method public setUninstallButtonEnabled(Z)Z
    .locals 1

    .line 71
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->mAppInfoFeature:Lcom/coloros/settings/feature/appmanager/AppInfoFeature;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->setUninstallButtonEnabled(Z)Z

    move-result p1

    return p1
.end method

.method public setUninstallText(I)Z
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->mAppInfoFeature:Lcom/coloros/settings/feature/appmanager/AppInfoFeature;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->setUninstallText(I)Z

    move-result p1

    return p1
.end method

.method public showAppEncryptedHintDialog(Landroid/content/Context;)V
    .locals 1

    .line 150
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/AppButtonsPreferenceControllerAdaptor;->mAppInfoFeature:Lcom/coloros/settings/feature/appmanager/AppInfoFeature;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/appmanager/AppInfoFeature;->showAppEncryptedHintDialog(Landroid/content/Context;)V

    return-void
.end method
