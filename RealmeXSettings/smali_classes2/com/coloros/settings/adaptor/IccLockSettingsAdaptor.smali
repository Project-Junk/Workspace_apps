.class public Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;
.super Lcom/color/injector/adaptor/ClassAdaptor;
.source "IccLockSettingsAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/color/injector/adaptor/ClassAdaptor<",
        "Lcom/android/settings/IccLockSettings;",
        ">;"
    }
.end annotation


# static fields
.field private static final sSimLockFeature:Lcom/coloros/settings/feature/security/SimLockFeature;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/coloros/settings/feature/security/SimLockFeature;

    invoke-static {v0}, Lcom/color/injector/adaptor/b;->a(Ljava/lang/Class;)Lcom/color/injector/adaptor/g;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/security/SimLockFeature;

    sput-object v0, Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;->sSimLockFeature:Lcom/coloros/settings/feature/security/SimLockFeature;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/color/injector/adaptor/ClassAdaptor;-><init>()V

    return-void
.end method


# virtual methods
.method public getPreferenceLayoutResId(I)I
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 40
    :cond_0
    sget-object v0, Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;->sSimLockFeature:Lcom/coloros/settings/feature/security/SimLockFeature;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/security/SimLockFeature;->getPreferenceLayoutResId(I)I

    move-result p1

    return p1
.end method

.method public handlePinModifyClick()Z
    .locals 1

    .line 93
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 96
    :cond_0
    sget-object v0, Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;->sSimLockFeature:Lcom/coloros/settings/feature/security/SimLockFeature;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/security/SimLockFeature;->handlePinModifyClick()Z

    move-result v0

    return v0
.end method

.method public handlePinToggleClick()Z
    .locals 1

    .line 86
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 89
    :cond_0
    sget-object v0, Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;->sSimLockFeature:Lcom/coloros/settings/feature/security/SimLockFeature;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/security/SimLockFeature;->handlePinToggleClick()Z

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 79
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 82
    :cond_0
    sget-object v0, Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;->sSimLockFeature:Lcom/coloros/settings/feature/security/SimLockFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/IccLockSettings;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/coloros/settings/feature/security/SimLockFeature;->onActivityResult(IILandroid/content/Intent;Lcom/android/settings/IccLockSettings;)V

    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 30
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 33
    :cond_0
    sget-object v0, Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;->sSimLockFeature:Lcom/coloros/settings/feature/security/SimLockFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/IccLockSettings;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/security/SimLockFeature;->onCreate(Lcom/android/settings/IccLockSettings;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 51
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 54
    :cond_0
    sget-object v0, Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;->sSimLockFeature:Lcom/coloros/settings/feature/security/SimLockFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/IccLockSettings;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/security/SimLockFeature;->onDestroy(Lcom/android/settings/IccLockSettings;)V

    return-void
.end method

.method public registerReceiver()Z
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 61
    :cond_0
    sget-object v0, Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;->sSimLockFeature:Lcom/coloros/settings/feature/security/SimLockFeature;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/security/SimLockFeature;->registerReceiver()Z

    move-result v0

    return v0
.end method

.method public setPhoneValue()V
    .locals 2

    .line 100
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 103
    :cond_0
    sget-object v0, Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;->sSimLockFeature:Lcom/coloros/settings/feature/security/SimLockFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/IccLockSettings;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/security/SimLockFeature;->setPhoneValue(Lcom/android/settings/IccLockSettings;)V

    return-void
.end method

.method public showPinDialog()Z
    .locals 2

    .line 72
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 75
    :cond_0
    sget-object v0, Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;->sSimLockFeature:Lcom/coloros/settings/feature/security/SimLockFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/IccLockSettings;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/security/SimLockFeature;->showPinDialog(Lcom/android/settings/IccLockSettings;)Z

    move-result v0

    return v0
.end method

.method public showTabLayout()Z
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 47
    :cond_0
    sget-object v0, Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;->sSimLockFeature:Lcom/coloros/settings/feature/security/SimLockFeature;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/security/SimLockFeature;->showTabLayout()Z

    move-result v0

    return v0
.end method

.method public updatePreferences()Z
    .locals 2

    .line 65
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 68
    :cond_0
    sget-object v0, Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;->sSimLockFeature:Lcom/coloros/settings/feature/security/SimLockFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/IccLockSettingsAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/IccLockSettings;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/security/SimLockFeature;->updatePreferences(Lcom/android/settings/IccLockSettings;)Z

    move-result v0

    return v0
.end method
