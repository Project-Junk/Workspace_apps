.class public Lcom/android/settings/nfc/NfcPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "NfcPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;
    }
.end annotation


# static fields
.field public static final KEY_TOGGLE_NFC:Ljava/lang/String; = "toggle_nfc"


# instance fields
.field mAirplaneModeObserver:Lcom/android/settings/nfc/c;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcEnabler:Lcom/android/settings/nfc/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-void
.end method

.method public static isToggleableInAirplaneMode(Landroid/content/Context;)Z
    .locals 1

    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "airplane_mode_toggleable_radios"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "nfc"

    .line 138
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static shouldTurnOffNFCInAirplaneMode(Landroid/content/Context;)Z
    .locals 1

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "airplane_mode_radios"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "nfc"

    .line 132
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 56
    iput-object p1, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcEnabler:Lcom/android/settings/nfc/d;

    return-void

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/TwoStatePreference;

    .line 62
    new-instance v0, Lcom/android/settings/nfc/d;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/settings/nfc/d;-><init>(Landroid/content/Context;Landroidx/preference/TwoStatePreference;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcEnabler:Lcom/android/settings/nfc/d;

    .line 65
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/nfc/NfcPreferenceController;->shouldTurnOffNFCInAirplaneMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/nfc/NfcPreferenceController;->isToggleableInAirplaneMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    :cond_1
    new-instance v0, Lcom/android/settings/nfc/c;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-direct {v0, v1, v2, p1}, Lcom/android/settings/nfc/c;-><init>(Landroid/content/Context;Landroid/nfc/NfcAdapter;Landroidx/preference/Preference;)V

    iput-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mAirplaneModeObserver:Lcom/android/settings/nfc/c;

    :cond_2
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/settings/slices/c;",
            ">;"
        }
    .end annotation

    .line 106
    const-class v0, Lcom/android/settings/nfc/NfcPreferenceController$NfcSliceWorker;

    return-object v0
.end method

.method public hasAsyncUpdate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isSliceable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mAirplaneModeObserver:Lcom/android/settings/nfc/c;

    if-eqz v0, :cond_0

    .line 1057
    iget-object v1, v0, Lcom/android/settings/nfc/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcEnabler:Lcom/android/settings/nfc/d;

    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {v0}, Lcom/android/settings/nfc/d;->b()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 111
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mAirplaneModeObserver:Lcom/android/settings/nfc/c;

    if-eqz v0, :cond_0

    .line 1053
    iget-object v1, v0, Lcom/android/settings/nfc/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/settings/nfc/c;->b:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcEnabler:Lcom/android/settings/nfc/d;

    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {v0}, Lcom/android/settings/nfc/d;->a()V

    :cond_1
    return-void
.end method

.method public setChecked(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 79
    iget-object p1, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->enable()Z

    goto :goto_0

    .line 81
    :cond_0
    iget-object p1, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->disable()Z

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
