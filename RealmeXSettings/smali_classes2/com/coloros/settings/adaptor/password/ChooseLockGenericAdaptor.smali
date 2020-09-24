.class public Lcom/coloros/settings/adaptor/password/ChooseLockGenericAdaptor;
.super Lcom/color/injector/adaptor/ClassAdaptor;
.source "ChooseLockGenericAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/color/injector/adaptor/ClassAdaptor<",
        "Lcom/android/settings/password/ChooseLockGeneric;",
        ">;"
    }
.end annotation


# instance fields
.field private final mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/color/injector/adaptor/ClassAdaptor;-><init>()V

    .line 28
    const-class v0, Lcom/coloros/settings/feature/password/ScreenLockFeature;

    invoke-static {v0}, Lcom/color/injector/adaptor/b;->a(Ljava/lang/Class;)Lcom/color/injector/adaptor/g;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/password/ScreenLockFeature;

    iput-object v0, p0, Lcom/coloros/settings/adaptor/password/ChooseLockGenericAdaptor;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    return-void
.end method


# virtual methods
.method public finishChooseLockGeneric()V
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ChooseLockGenericAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/password/ChooseLockGenericAdaptor;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->finishChooseLockGeneric()V

    return-void
.end method

.method public getFragmentClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ChooseLockGenericAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/password/ChooseLockGenericAdaptor;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->getFragmentClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isVaildFragment(Ljava/lang/String;Z)Z
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ChooseLockGenericAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 39
    const-class v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return p2

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/adaptor/password/ChooseLockGenericAdaptor;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    invoke-virtual {v0, p1, p2}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isValidFragment(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 31
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ChooseLockGenericAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/password/ChooseLockGenericAdaptor;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ChooseLockGenericAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/password/ChooseLockGeneric;

    invoke-virtual {v0, v1, p1}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->onCreate(Lcom/android/settings/password/ChooseLockGeneric;Landroid/os/Bundle;)V

    return-void
.end method

.method public onOptionsItemLockGenericSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ChooseLockGenericAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/password/ChooseLockGenericAdaptor;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->onOptionsItemLockGenericSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
