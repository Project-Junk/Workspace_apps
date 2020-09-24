.class public Lcom/coloros/settings/adaptor/AppStorageSettingsAdaptor;
.super Lcom/color/injector/adaptor/ClassAdaptor;
.source "AppStorageSettingsAdaptor.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x1a
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/color/injector/adaptor/ClassAdaptor<",
        "Lcom/android/settings/applications/AppStorageSettings;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFeature:Lcom/coloros/settings/feature/storage/AppStorageFeature;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/color/injector/adaptor/ClassAdaptor;-><init>()V

    .line 34
    const-class v0, Lcom/coloros/settings/feature/storage/AppStorageFeature;

    invoke-static {v0}, Lcom/color/injector/adaptor/b;->a(Ljava/lang/Class;)Lcom/color/injector/adaptor/g;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/storage/AppStorageFeature;

    iput-object v0, p0, Lcom/coloros/settings/adaptor/AppStorageSettingsAdaptor;->mFeature:Lcom/coloros/settings/feature/storage/AppStorageFeature;

    return-void
.end method


# virtual methods
.method public getPreferenceResId(I)I
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppStorageSettingsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/AppStorageSettingsAdaptor;->mFeature:Lcom/coloros/settings/feature/storage/AppStorageFeature;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/storage/AppStorageFeature;->getPreferenceResId(I)I

    move-result p1

    return p1
.end method

.method public initClearButtons(Landroidx/preference/PreferenceScreen;)Z
    .locals 2

    .line 51
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppStorageSettingsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/AppStorageSettingsAdaptor;->mFeature:Lcom/coloros/settings/feature/storage/AppStorageFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppStorageSettingsAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/AppStorageSettings;

    invoke-virtual {v0, p1, v1}, Lcom/coloros/settings/feature/storage/AppStorageFeature;->initClearButtons(Landroidx/preference/PreferenceScreen;Lcom/android/settings/applications/AppStorageSettings;)Z

    move-result p1

    return p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 86
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppStorageSettingsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/AppStorageSettingsAdaptor;->mFeature:Lcom/coloros/settings/feature/storage/AppStorageFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppStorageSettingsAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/AppStorageSettings;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/coloros/settings/feature/storage/AppStorageFeature;->onActivityResult(IILandroid/content/Intent;Lcom/android/settings/applications/AppStorageSettings;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)Z
    .locals 2

    .line 79
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppStorageSettingsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/AppStorageSettingsAdaptor;->mFeature:Lcom/coloros/settings/feature/storage/AppStorageFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppStorageSettingsAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/AppStorageSettings;

    invoke-virtual {v0, p1, v1}, Lcom/coloros/settings/feature/storage/AppStorageFeature;->onClick(Landroid/view/View;Lcom/android/settings/applications/AppStorageSettings;)Z

    move-result p1

    return p1
.end method

.method public onDestroy()V
    .locals 1

    .line 100
    const-class v0, Lcom/coloros/settings/feature/storage/AppStorageFeature;

    invoke-static {v0}, Lcom/color/injector/adaptor/b;->b(Ljava/lang/Class;)V

    return-void
.end method

.method public setSwitchEnableStatus(Lcom/android/settings/applications/AppStorageSettings;)V
    .locals 1

    .line 93
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppStorageSettingsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/AppStorageSettingsAdaptor;->mFeature:Lcom/coloros/settings/feature/storage/AppStorageFeature;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/storage/AppStorageFeature;->setSwitchEnableStatus(Lcom/android/settings/applications/AppStorageSettings;)V

    return-void
.end method

.method public setupHeaderViews(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppStorageSettingsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/AppStorageSettingsAdaptor;->mFeature:Lcom/coloros/settings/feature/storage/AppStorageFeature;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/storage/AppStorageFeature;->setupHeaderViews(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public setupUninstallButton(Lcom/coloros/settingslib/applications/ApplicationsState$a;)V
    .locals 2

    .line 72
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppStorageSettingsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/AppStorageSettingsAdaptor;->mFeature:Lcom/coloros/settings/feature/storage/AppStorageFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppStorageSettingsAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/AppStorageSettings;

    invoke-virtual {v0, p1, v1}, Lcom/coloros/settings/feature/storage/AppStorageFeature;->setupUninstallButton(Lcom/coloros/settingslib/applications/ApplicationsState$a;Lcom/android/settings/applications/AppStorageSettings;)V

    return-void
.end method

.method public showMoveStorage()Z
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppStorageSettingsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/AppStorageSettingsAdaptor;->mFeature:Lcom/coloros/settings/feature/storage/AppStorageFeature;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/storage/AppStorageFeature;->showMoveStorage()Z

    move-result v0

    return v0
.end method

.method public updateAppInfos(Lcom/coloros/settingslib/applications/ApplicationsState;Lcom/coloros/settingslib/applications/ApplicationsState$a;)V
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/AppStorageSettingsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/AppStorageSettingsAdaptor;->mFeature:Lcom/coloros/settings/feature/storage/AppStorageFeature;

    invoke-virtual {v0, p1, p2}, Lcom/coloros/settings/feature/storage/AppStorageFeature;->updateAppInfos(Lcom/coloros/settingslib/applications/ApplicationsState;Lcom/coloros/settingslib/applications/ApplicationsState$a;)V

    return-void
.end method
