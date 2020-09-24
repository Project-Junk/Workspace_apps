.class public Lcom/android/settings/nfc/SecureNfcPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "SecureNfcPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# instance fields
.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mSecureNfcEnabler:Lcom/android/settings/nfc/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/nfc/SecureNfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 42
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/nfc/SecureNfcPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcom/android/settings/nfc/SecureNfcPreferenceController;->mSecureNfcEnabler:Lcom/android/settings/nfc/f;

    return-void

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/nfc/SecureNfcPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/TwoStatePreference;

    .line 50
    new-instance v0, Lcom/android/settings/nfc/f;

    iget-object v1, p0, Lcom/android/settings/nfc/SecureNfcPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/settings/nfc/f;-><init>(Landroid/content/Context;Landroidx/preference/TwoStatePreference;)V

    iput-object v0, p0, Lcom/android/settings/nfc/SecureNfcPreferenceController;->mSecureNfcEnabler:Lcom/android/settings/nfc/f;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/android/settings/nfc/SecureNfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v1, 0x3

    if-nez v0, :cond_0

    return v1

    .line 69
    :cond_0
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isSecureNfcSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    return v1
.end method

.method public hasAsyncUpdate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/android/settings/nfc/SecureNfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isSecureNfcEnabled()Z

    move-result v0

    return v0
.end method

.method public isSliceable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/settings/nfc/SecureNfcPreferenceController;->mSecureNfcEnabler:Lcom/android/settings/nfc/f;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Lcom/android/settings/nfc/f;->b()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/settings/nfc/SecureNfcPreferenceController;->mSecureNfcEnabler:Lcom/android/settings/nfc/f;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Lcom/android/settings/nfc/f;->a()V

    :cond_0
    return-void
.end method

.method public setChecked(Z)Z
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/android/settings/nfc/SecureNfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0, p1}, Landroid/nfc/NfcAdapter;->enableSecureNfc(Z)Z

    move-result p1

    return p1
.end method
