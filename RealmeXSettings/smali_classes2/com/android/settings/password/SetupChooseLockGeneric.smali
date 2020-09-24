.class public Lcom/android/settings/password/SetupChooseLockGeneric;
.super Lcom/android/settings/password/ChooseLockGeneric;
.source "SetupChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/SetupChooseLockGeneric$InternalActivity;,
        Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric;-><init>()V

    return-void
.end method


# virtual methods
.method final a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/preference/PreferenceFragmentCompat;",
            ">;"
        }
    .end annotation

    .line 70
    const-class v0, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;

    return-object v0
.end method

.method public isValidFragment(Ljava/lang/String;)Z
    .locals 1

    .line 65
    const-class v0, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockGeneric;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/j;->b(Landroid/content/Intent;)I

    move-result p2

    .line 76
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/password/ChooseLockGeneric;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 81
    invoke-super {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockGeneric;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "requested_min_complexity"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockGeneric;->getActivityToken()Landroid/os/IBinder;

    move-result-object p1

    const-string v0, "android.permission.REQUEST_PASSWORD_COMPLEXITY"

    .line 85
    invoke-static {p0, p1, v0}, Lcom/android/settings/password/e;->a(Landroid/content/Context;Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Must have permission android.permission.REQUEST_PASSWORD_COMPLEXITY to use extra android.app.extra.PASSWORD_COMPLEXITY"

    .line 88
    invoke-static {p1, v0}, Lcom/android/settings/password/e;->a(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockGeneric;->finish()V

    return-void

    :cond_0
    const p1, 0x7f0a019a

    .line 96
    invoke-virtual {p0, p1}, Lcom/android/settings/password/SetupChooseLockGeneric;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setFitsSystemWindows(Z)V

    return-void
.end method
