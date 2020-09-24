.class public Lcom/android/settings/nfc/AndroidBeamPreferenceController;
.super Lcom/android/settings/core/a;
.source "AndroidBeamPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# static fields
.field public static final KEY_ANDROID_BEAM_SETTINGS:Ljava/lang/String; = "android_beam_settings"


# instance fields
.field private mAndroidBeamEnabler:Lcom/android/settings/nfc/a;

.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 44
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->mAndroidBeamEnabler:Lcom/android/settings/nfc/a;

    return-void

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    .line 51
    new-instance v0, Lcom/android/settings/nfc/a;

    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/settings/nfc/a;-><init>(Landroid/content/Context;Lcom/android/settingslib/RestrictedPreference;)V

    iput-object v0, p0, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->mAndroidBeamEnabler:Lcom/android/settings/nfc/a;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.sofware.nfc.beam"

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    return v1

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    return v1
.end method

.method public onPause()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->mAndroidBeamEnabler:Lcom/android/settings/nfc/a;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Lcom/android/settings/nfc/a;->b()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->mAndroidBeamEnabler:Lcom/android/settings/nfc/a;

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Lcom/android/settings/nfc/a;->a()V

    :cond_0
    return-void
.end method
