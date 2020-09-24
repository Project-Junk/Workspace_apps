.class public Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;
.super Lcom/color/injector/adaptor/ClassAdaptor;
.source "ChooseLockPasswordAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/color/injector/adaptor/ClassAdaptor<",
        "Lcom/android/settings/password/ChooseLockPassword;",
        ">;"
    }
.end annotation


# instance fields
.field private final mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lcom/color/injector/adaptor/ClassAdaptor;-><init>()V

    .line 32
    const-class v0, Lcom/coloros/settings/feature/password/ScreenLockFeature;

    invoke-static {v0}, Lcom/color/injector/adaptor/b;->a(Ljava/lang/Class;)Lcom/color/injector/adaptor/g;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/password/ScreenLockFeature;

    iput-object v0, p0, Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    return-void
.end method


# virtual methods
.method public afterSuperOnCreate(Landroid/os/Bundle;)Z
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->afterSuperOnCreate(Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public attachBaseContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    .line 99
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->attachBaseContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method public beforeSuperOnCreate()V
    .locals 2

    .line 39
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/password/ChooseLockPassword;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->beforeSuperOnCreate(Lcom/android/settings/password/ChooseLockPassword;)V

    return-void
.end method

.method public chooseLockPasswordFinish(Landroid/content/Intent;)V
    .locals 1

    .line 92
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->chooseLockPasswordFinish(Landroid/content/Intent;)V

    return-void
.end method

.method public chooseValidLockFragment(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 78
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 81
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    invoke-virtual {p1, p2}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->chooseValidLockFragment(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getIntentChoosePasswordFragment(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 53
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ":settings:show_fragment"

    .line 54
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p1

    .line 57
    :cond_0
    iget-object p2, p0, Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    invoke-virtual {p2}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isSimplePinQuality()Z

    move-result v0

    iget-object v1, p0, Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    .line 58
    invoke-virtual {v1}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isUseNumericKeyboard()Z

    move-result v1

    iget-object v2, p0, Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    .line 59
    invoke-virtual {v2}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->getRequestQuality()I

    move-result v2

    .line 57
    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->getIntentChoosePasswordFragment(Landroid/content/Intent;ZZI)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public isEnable()Z
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public onBackPressedChooseLockPassword()Z
    .locals 1

    .line 120
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->onBackPressedChooseLockPassword()Z

    move-result v0

    return v0
.end method

.method public onChoosePasswordNavigateUp()Z
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->onChoosePasswordNavigateUp()Z

    move-result v0

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 106
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 113
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 134
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 127
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->onResume()V

    return-void
.end method

.method public registerReceiver()V
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->registerReceiver()V

    return-void
.end method

.method public unregisterReceiver()V
    .locals 1

    .line 71
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->unregisterReceiver()V

    return-void
.end method
