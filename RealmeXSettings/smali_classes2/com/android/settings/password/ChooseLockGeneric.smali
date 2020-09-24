.class public Lcom/android/settings/password/ChooseLockGeneric;
.super Lcom/android/settings/SettingsActivity;
.source "ChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;,
        Lcom/android/settings/password/ChooseLockGeneric$InternalActivity;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method

.method private b()Lcom/coloros/settings/adaptor/password/ChooseLockGenericAdaptor;
    .locals 1

    .line 1563
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    if-nez v0, :cond_0

    .line 1564
    const-class v0, Lcom/coloros/settings/adaptor/password/ChooseLockGenericAdaptor;

    invoke-static {v0}, Lcom/color/injector/adaptor/ClassAdaptor;->getAdaptor(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/injector/adaptor/ClassAdaptor;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    .line 1565
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    invoke-virtual {v0, p0}, Lcom/color/injector/adaptor/ClassAdaptor;->bind(Ljava/lang/Object;)V

    .line 1567
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric;->mAdaptor:Lcom/color/injector/adaptor/ClassAdaptor;

    check-cast v0, Lcom/coloros/settings/adaptor/password/ChooseLockGenericAdaptor;

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

    .line 130
    const-class v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    return-object v0
.end method

.method public finish()V
    .locals 1

    .line 162
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->finish()V

    .line 163
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric;->b()Lcom/coloros/settings/adaptor/password/ChooseLockGenericAdaptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/adaptor/password/ChooseLockGenericAdaptor;->finishChooseLockGeneric()V

    return-void
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 3

    .line 108
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 109
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric;->b()Lcom/coloros/settings/adaptor/password/ChooseLockGenericAdaptor;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric;->a()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/coloros/settings/adaptor/password/ChooseLockGenericAdaptor;->getFragmentClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":settings:show_fragment"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.app.action.SET_NEW_PASSWORD"

    .line 112
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.app.action.SET_NEW_PARENT_PROFILE_PASSWORD"

    .line 113
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    const-string v2, ":settings:hide_drawer"

    .line 114
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 115
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->M(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    const-string v2, "android.app.extra.PASSWORD_COMPLEXITY"

    .line 117
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "lockscreen.password_type"

    .line 116
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    return-object v0
.end method

.method public isValidFragment(Ljava/lang/String;)Z
    .locals 2

    .line 126
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric;->b()Lcom/coloros/settings/adaptor/password/ChooseLockGenericAdaptor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/coloros/settings/adaptor/password/ChooseLockGenericAdaptor;->isVaildFragment(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 138
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 139
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric;->b()Lcom/coloros/settings/adaptor/password/ChooseLockGenericAdaptor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coloros/settings/adaptor/password/ChooseLockGenericAdaptor;->onCreate(Landroid/os/Bundle;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    .line 144
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "android.app.extra.PASSWORD_COMPLEXITY"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "android.permission.REQUEST_PASSWORD_COMPLEXITY"

    .line 146
    invoke-static {p0, v0, p1}, Lcom/android/settings/password/e;->a(Landroid/content/Context;Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "Must have permission android.permission.REQUEST_PASSWORD_COMPLEXITY to use extra android.app.extra.PASSWORD_COMPLEXITY"

    .line 149
    invoke-static {v0, p1}, Lcom/android/settings/password/e;->a(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric;->finish()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 168
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric;->b()Lcom/coloros/settings/adaptor/password/ChooseLockGenericAdaptor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/coloros/settings/adaptor/password/ChooseLockGenericAdaptor;->onOptionsItemLockGenericSelected(Landroid/view/MenuItem;)Z

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
