.class public abstract Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;
.super Lcom/android/settings/SettingsActivity;
.source "ConfirmDeviceCredentialBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$b;,
        Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$a;
    }
.end annotation


# instance fields
.field public a:Z

.field b:I

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Landroid/hardware/biometrics/BiometricManager;

.field private h:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$b;

.field private i:Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialBaseActivityAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->e:Z

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->f:Z

    return-void
.end method

.method private a()Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;
    .locals 2

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0a03c7

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    instance-of v1, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

    if-eqz v1, :cond_0

    .line 214
    check-cast v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private b()Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialBaseActivityAdapter;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->i:Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialBaseActivityAdapter;

    if-nez v0, :cond_0

    .line 275
    const-class v0, Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialBaseActivityAdapter;

    invoke-static {v0}, Lcom/color/injector/adaptor/ClassAdaptor;->getAdaptor(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialBaseActivityAdapter;

    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->i:Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialBaseActivityAdapter;

    .line 276
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->i:Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialBaseActivityAdapter;

    invoke-virtual {v0, p0}, Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialBaseActivityAdapter;->bind(Ljava/lang/Object;)V

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->i:Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialBaseActivityAdapter;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 3

    .line 241
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "com.android.settings.ConfirmCredentials.useFadeAnimation"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f010045

    .line 244
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->overridePendingTransition(II)V

    :cond_0
    return-void
.end method

.method public isLaunchableInTaskModePinned()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 86
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1077
    instance-of v1, p0, Lcom/android/settings/password/ConfirmLockPassword$InternalActivity;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    instance-of v1, p0, Lcom/android/settings/password/ConfirmLockPattern$InternalActivity;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    .line 86
    :goto_1
    invoke-static {p0, v0, v1}, Lcom/android/settings/m;->a(Landroid/content/Context;Landroid/os/Bundle;Z)I

    move-result v0

    .line 85
    invoke-static {p0, v0}, Lcom/android/settings/m;->c(Landroid/content/Context;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/settings/m;->a(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v1

    const/16 v4, -0x270f

    if-ne v1, v4, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->a:Z

    .line 95
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->b()Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialBaseActivityAdapter;

    move-result-object v0

    const v1, 0x7f1303c0

    invoke-virtual {v0, v1}, Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialBaseActivityAdapter;->setTheme(I)V

    .line 98
    sget v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$a;->c:I

    iput v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->b:I

    goto :goto_3

    .line 99
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.ConfirmCredentials.darkTheme"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 101
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->b()Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialBaseActivityAdapter;

    move-result-object v0

    const v1, 0x7f1303bf

    invoke-virtual {v0, v1}, Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialBaseActivityAdapter;->setTheme(I)V

    .line 102
    sget v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$a;->b:I

    iput v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->b:I

    goto :goto_3

    .line 104
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->b()Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialBaseActivityAdapter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/j;->b(Landroid/content/Intent;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialBaseActivityAdapter;->setTheme(I)V

    .line 105
    sget v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$a;->a:I

    iput v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->b:I

    .line 107
    :goto_3
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    const-class v0, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/BiometricManager;

    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->g:Landroid/hardware/biometrics/BiometricManager;

    .line 110
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->h:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$b;

    if-nez v0, :cond_5

    .line 111
    new-instance v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$b;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$b;-><init>(Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;)V

    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->h:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$b;

    .line 113
    :cond_5
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->g:Landroid/hardware/biometrics/BiometricManager;

    iget-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->h:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$b;

    invoke-virtual {v0, v1}, Landroid/hardware/biometrics/BiometricManager;->registerCancellationCallback(Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;)V

    .line 115
    iget v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->b:I

    sget v1, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$a;->a:I

    if-ne v0, v1, :cond_6

    const v0, 0x7f0a019a

    .line 119
    invoke-virtual {p0, v0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 122
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    if-nez p1, :cond_7

    .line 123
    const-class v0, Landroid/app/KeyguardManager;

    .line 124
    invoke-virtual {p0, v0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    goto :goto_4

    :cond_7
    const-string v0, "STATE_IS_KEYGUARD_LOCKED"

    .line 125
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :goto_4
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->f:Z

    .line 131
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->f:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.ConfirmCredentials.showWhenLocked"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 135
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.ConfirmCredentials.title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-virtual {p0, v0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    :cond_9
    if-eqz p1, :cond_a

    move v2, v3

    .line 142
    :cond_a
    iput-boolean v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->c:Z

    .line 144
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->b()Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialBaseActivityAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialBaseActivityAdapter;->showDisScreenResize(Landroid/os/Bundle;)V

    .line 147
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->c:Z

    if-eqz v0, :cond_b

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    const/4 v1, -0x1

    const-string v2, "key_ui_mode"

    .line 149
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_b

    if-eq p1, v0, :cond_b

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->finish()V

    :cond_b
    return-void

    :catch_0
    move-exception p1

    const-string v0, "ConfirmDeviceCredentialBaseActivity"

    const-string v1, "Invalid user Id supplied"

    .line 88
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->finish()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 185
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->b()Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialBaseActivityAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialBaseActivityAdapter;->onCreateOptionsMenuConfirmBase(Landroid/view/Menu;)Z

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
    .locals 2

    .line 283
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 284
    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->g:Landroid/hardware/biometrics/BiometricManager;

    .line 285
    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->h:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$b;

    .line 286
    iget-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->i:Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialBaseActivityAdapter;

    if-eqz v1, :cond_0

    .line 287
    invoke-virtual {v1}, Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialBaseActivityAdapter;->unbind()V

    .line 288
    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->i:Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialBaseActivityAdapter;

    :cond_0
    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 1

    .line 221
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onEnterAnimationComplete()V

    .line 222
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->d:Z

    if-eqz v0, :cond_1

    .line 1261
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->a()Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1263
    invoke-virtual {v0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->f()V

    :cond_0
    const/4 v0, 0x0

    .line 224
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->d:Z

    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 176
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 180
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 205
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onPause()V

    .line 207
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->b()Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialBaseActivityAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialBaseActivityAdapter;->confirmOnPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 191
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onResume()V

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->c:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->b:I

    sget v1, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$a;->b:I

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->e:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 194
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->e:Z

    .line 1254
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->a()Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1256
    invoke-virtual {v0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->e()V

    :cond_0
    const/4 v0, 0x1

    .line 196
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->d:Z

    .line 199
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->b()Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialBaseActivityAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/adaptor/password/ConfirmDeviceCredentialBaseActivityAdapter;->confirmBaseOnResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 166
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 167
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->f:Z

    const-string v1, "STATE_IS_KEYGUARD_LOCKED"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    const-string v1, "key_ui_mode"

    .line 170
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onStop()V
    .locals 3

    .line 230
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onStop()V

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->g:Landroid/hardware/biometrics/BiometricManager;

    const/16 v1, 0xa

    const-string v2, "com.android.internal.R.string.biometric_error_user_canceled"

    .line 235
    invoke-static {v2}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 233
    invoke-virtual {v0, v1, v2}, Landroid/hardware/biometrics/BiometricManager;->onConfirmDeviceCredentialError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public supportFullScreen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
