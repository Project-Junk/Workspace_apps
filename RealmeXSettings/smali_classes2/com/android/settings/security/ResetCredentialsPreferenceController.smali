.class public Lcom/android/settings/security/ResetCredentialsPreferenceController;
.super Lcom/android/settings/security/e;
.source "ResetCredentialsPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# instance fields
.field private final a:Landroid/security/KeyStore;

.field private c:Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "no_config_credentials"

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/android/settings/security/e;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/ResetCredentialsPreferenceController;->a:Landroid/security/KeyStore;

    if-eqz p2, :cond_0

    .line 44
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Lcom/android/settings/security/e;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/security/ResetCredentialsPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;

    iput-object p1, p0, Lcom/android/settings/security/ResetCredentialsPreferenceController;->c:Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "credentials_reset"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 68
    invoke-static {}, Lcom/coloros/settings/e/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/settings/security/e;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/android/settings/security/ResetCredentialsPreferenceController;->c:Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;

    if-eqz v0, :cond_0

    .line 1111
    iget-object v0, v0, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->a:Lcom/coloros/settings/widget/preference/a;

    .line 1195
    iget-boolean v0, v0, Lcom/coloros/settings/widget/preference/a;->a:Z

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/settings/security/ResetCredentialsPreferenceController;->c:Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;

    iget-object v1, p0, Lcom/android/settings/security/ResetCredentialsPreferenceController;->a:Landroid/security/KeyStore;

    invoke-virtual {v1}, Landroid/security/KeyStore;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/ColorRestrictedJumpPreference;->setEnabled(Z)V

    :cond_0
    return-void
.end method
