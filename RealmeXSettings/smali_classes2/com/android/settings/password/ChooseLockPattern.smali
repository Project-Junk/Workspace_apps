.class public Lcom/android/settings/password/ChooseLockPattern;
.super Lcom/android/settings/SettingsActivity;
.source "ChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ChooseLockPattern$SaveAndFinishWorker;,
        Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;,
        Lcom/android/settings/password/ChooseLockPattern$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method

.method private b()Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;
    .locals 1

    .line 960
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    if-nez v0, :cond_0

    .line 961
    const-class v0, Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;

    invoke-static {v0}, Lcom/color/injector/adaptor/ClassAdaptor;->getAdaptor(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/injector/adaptor/ClassAdaptor;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPattern;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    .line 962
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    invoke-virtual {v0, p0}, Lcom/color/injector/adaptor/ClassAdaptor;->bind(Ljava/lang/Object;)V

    .line 964
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPattern;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    check-cast v0, Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;

    return-object v0
.end method


# virtual methods
.method a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 156
    const-class v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;

    return-object v0
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 1

    .line 217
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPattern;->b()Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;->attachBaseContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public finish()V
    .locals 2

    .line 222
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    .line 223
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPattern;->b()Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;->chooseLockPatternFinish(Landroid/content/Intent;)V

    return-void
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 3

    .line 89
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 90
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPattern;->b()Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;->getIntentChoosePattern(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public isValidFragment(Ljava/lang/String;)Z
    .locals 2

    .line 152
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPattern;->b()Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;

    move-result-object p1

    const-class v0, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;->isValidFragmentChoosePattern(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1

    .line 95
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPattern;->b()Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/j;->b(Landroid/content/Intent;)I

    move-result p2

    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsActivity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 228
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPattern;->b()Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;->onPatternBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 162
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPattern;->b()Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;->beforeOnCreate()V

    .line 163
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 164
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPattern;->b()Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;->afterOnCreate(Landroid/os/Bundle;)Z

    move-result p1

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "for_fingerprint"

    const/4 v2, 0x0

    .line 166
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz p1, :cond_0

    const p1, 0x7f120c8a

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const p1, 0x7f120c8c

    goto :goto_0

    :cond_1
    const p1, 0x7f120c92

    .line 167
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPattern;->setTitle(I)V

    const p1, 0x7f0a019a

    .line 170
    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPattern;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    .line 173
    invoke-virtual {p1, v0}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 175
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPattern;->b()Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;->registerReceiver()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 236
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPattern;->b()Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .locals 1

    .line 199
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onDestroy()V

    .line 200
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPattern;->b()Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;->unregisterReceiver()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 207
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onNavigateUp()Z
    .locals 1

    .line 212
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPattern;->b()Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;->onChoosePatternNavigateUp()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onNavigateUp()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 241
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPattern;->b()Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 186
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onPause()V

    .line 187
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPattern;->b()Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;->onPausePattern()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 180
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onResume()V

    .line 181
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPattern;->b()Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/adaptor/password/ChooseLockPatternAdaptor;->onResumePattern()V

    return-void
.end method

.method public supportFullScreen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
