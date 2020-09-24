.class public Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;
.super Lcom/color/injector/adaptor/ClassAdaptor;
.source "ChooseLockPatternAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/color/injector/adaptor/ClassAdaptor<",
        "Lcom/android/settings/password/ChooseLockPattern;",
        ">;"
    }
.end annotation


# instance fields
.field private final mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/color/injector/adaptor/ClassAdaptor;-><init>()V

    .line 33
    const-class v0, Lcom/coloros/settings/feature/password/ScreenLockFeature;

    invoke-static {v0}, Lcom/color/injector/adaptor/b;->a(Ljava/lang/Class;)Lcom/color/injector/adaptor/g;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/feature/password/ScreenLockFeature;

    iput-object v0, p0, Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    return-void
.end method


# virtual methods
.method public afterOnCreate(Landroid/os/Bundle;)Z
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->afterOnCreate(Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public attachBaseContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    .line 96
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->attachBaseContextPattern(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    return-object p1
.end method

.method public beforeOnCreate()V
    .locals 2

    .line 36
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;->getOwner()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/password/ChooseLockPattern;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->beforeOnCreate(Lcom/android/settings/password/ChooseLockPattern;)V

    return-void
.end method

.method public chooseLockPatternFinish(Landroid/content/Intent;)V
    .locals 1

    .line 90
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->chooseLockPatternFinish(Landroid/content/Intent;)V

    return-void
.end method

.method public getIntentChoosePattern(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ":settings:show_fragment"

    .line 55
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p1

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    invoke-virtual {v0, p1, p2}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->getIntentChoosePattern(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public isEnable()Z
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isValidFragmentChoosePattern(Ljava/lang/String;Z)Z
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    const-class p2, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    invoke-virtual {v0, p1, p2}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->isValidFragmentChoosePattern(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public onChoosePatternNavigateUp()Z
    .locals 1

    .line 83
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->onChoosePatternNavigateUp()Z

    move-result v0

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 110
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->onCreateOptionsMenuPattern(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 117
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->onOptionsItemSelectedPattern(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPatternBackPressed()Z
    .locals 1

    .line 103
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->onPatternBackPressed()Z

    move-result v0

    return v0
.end method

.method public onPausePattern()V
    .locals 1

    .line 131
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->onPausePattern()V

    return-void
.end method

.method public onResumePattern()V
    .locals 1

    .line 124
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->onResumePattern()V

    return-void
.end method

.method public registerReceiver()V
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->registerPatternReceiver()V

    return-void
.end method

.method public unregisterReceiver()V
    .locals 1

    .line 76
    invoke-virtual {p0}, Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;->mScreenLockFeature:Lcom/coloros/settings/feature/password/ScreenLockFeature;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/password/ScreenLockFeature;->unregisterPatternReceiver()V

    return-void
.end method
