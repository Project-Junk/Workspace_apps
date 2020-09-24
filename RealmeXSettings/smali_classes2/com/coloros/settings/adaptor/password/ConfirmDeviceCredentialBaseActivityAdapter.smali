.class public Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialBaseActivityAdapter;
.super Lcom/color/injector/adaptor/ClassAdaptor;
.source "ConfirmDeviceCredentialBaseActivityAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/color/injector/adaptor/ClassAdaptor<",
        "Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;",
        ">;"
    }
.end annotation


# instance fields
.field private final mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/color/injector/adaptor/ClassAdaptor;-><init>()V

    .line 27
    const-class v0, Lcom/coloros/settings/feature/password/ScreenLockFeature;

    invoke-static {v0}, Lcom/color/injector/adaptor/b;->a(Ljava/lang/Class;)Lcom/color/injector/adaptor/g;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/password/ScreenLockFeature;

    iput-object v0, p0, Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialBaseActivityAdapter;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    return-void
.end method


# virtual methods
.method public confirmBaseOnResume()V
    .locals 2

    .line 43
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialBaseActivityAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialBaseActivityAdapter;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialBaseActivityAdapter;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->confirmBaseOnResume(Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;)V

    return-void
.end method

.method public confirmOnPause()V
    .locals 2

    .line 50
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialBaseActivityAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialBaseActivityAdapter;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialBaseActivityAdapter;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->confirmOnPause(Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;)V

    return-void
.end method

.method public onCreateOptionsMenuConfirmBase(Landroid/view/Menu;)Z
    .locals 2

    .line 36
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialBaseActivityAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialBaseActivityAdapter;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialBaseActivityAdapter;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;

    invoke-virtual {v0, v1, p1}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->onCreateOptionsMenuConfirmBase(Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public setTheme(I)V
    .locals 1

    .line 30
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialBaseActivityAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialBaseActivityAdapter;->getOwner()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;

    invoke-virtual {v0, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->setTheme(I)V

    :cond_0
    return-void
.end method

.method public showDisScreenResize(Landroid/os/Bundle;)V
    .locals 2

    .line 57
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialBaseActivityAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialBaseActivityAdapter;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialBaseActivityAdapter;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;

    invoke-virtual {v0, v1, p1}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->showDisScreenResize(Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;Landroid/os/Bundle;)V

    return-void
.end method
