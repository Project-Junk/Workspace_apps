.class public Lcom/android/settings/password/ChooseLockPassword;
.super Lcom/android/settings/SettingsActivity;
.source "ChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;,
        Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;,
        Lcom/android/settings/password/ChooseLockPassword$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method

.method private b()Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;
    .locals 1

    .line 1221
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    if-nez v0, :cond_0

    .line 1222
    const-class v0, Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;

    invoke-static {v0}, Lcom/color/injector/adaptor/ClassAdaptor;->getAdaptor(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/injector/adaptor/ClassAdaptor;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    .line 1223
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    invoke-virtual {v0, p0}, Lcom/color/injector/adaptor/ClassAdaptor;->bind(Ljava/lang/Object;)V

    .line 1225
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    check-cast v0, Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;

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

    .line 184
    const-class v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;

    return-object v0
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 1

    .line 241
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword;->b()Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;->attachBaseContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public finish()V
    .locals 2

    .line 235
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    .line 236
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword;->b()Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;->chooseLockPasswordFinish(Landroid/content/Intent;)V

    return-void
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 3

    .line 98
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 99
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword;->b()Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;->getIntentChoosePasswordFragment(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public isValidFragment(Ljava/lang/String;)Z
    .locals 2

    .line 180
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword;->b()Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;

    move-result-object v0

    const-class v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;->chooseValidLockFragment(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1

    .line 104
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword;->b()Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/j;->b(Landroid/content/Intent;)I

    move-result p2

    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsActivity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 246
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword;->b()Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;->onBackPressedChooseLockPassword()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 189
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword;->b()Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;->beforeSuperOnCreate()V

    .line 190
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 191
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword;->b()Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;->afterSuperOnCreate(Landroid/os/Bundle;)Z

    move-result p1

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "for_fingerprint"

    .line 193
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "for_face"

    .line 195
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const v2, 0x7f120c92

    .line 197
    invoke-virtual {p0, v2}, Lcom/android/settings/password/ChooseLockPassword;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz p1, :cond_0

    const p1, 0x7f121467

    .line 199
    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPassword;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const p1, 0x7f120c88

    .line 202
    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPassword;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    const p1, 0x7f120c87

    .line 204
    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPassword;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 208
    :cond_2
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/settings/password/ChooseLockPassword;->setTitle(Ljava/lang/CharSequence;)V

    const p1, 0x7f0a019a

    .line 210
    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 212
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword;->b()Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;->registerReceiver()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 254
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword;->b()Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;->onCreateOptionsMenu(Landroid/view/Menu;)Z

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

    .line 224
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onDestroy()V

    .line 225
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword;->b()Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;->unregisterReceiver()V

    return-void
.end method

.method public onNavigateUp()Z
    .locals 1

    .line 230
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword;->b()Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;->onChoosePasswordNavigateUp()Z

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

    .line 259
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword;->b()Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

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

    .line 270
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onPause()V

    .line 271
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword;->b()Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 264
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onResume()V

    .line 265
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword;->b()Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/adaptor/password/ChooseLockPasswordAdaptor;->onResume()V

    return-void
.end method

.method public supportFullScreen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
