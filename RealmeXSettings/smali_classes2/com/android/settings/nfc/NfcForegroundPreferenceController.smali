.class public Lcom/android/settings/nfc/NfcForegroundPreferenceController;
.super Lcom/android/settings/core/a;
.source "NfcForegroundPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/nfc/e$a;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/j;
.implements Lcom/android/settingslib/core/lifecycle/a/k;


# instance fields
.field private mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

.field private mPaymentBackend:Lcom/android/settings/nfc/e;

.field private mPreference:Lcom/color/support/preference/ColorActivityDialogPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 5

    .line 87
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/color/support/preference/ColorActivityDialogPreference;

    iput-object p1, p0, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->mPreference:Lcom/color/support/preference/ColorActivityDialogPreference;

    .line 89
    iget-object p1, p0, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->mPreference:Lcom/color/support/preference/ColorActivityDialogPreference;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 93
    new-array v1, v0, [Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f120e43

    .line 94
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->mContext:Landroid/content/Context;

    const v4, 0x7f120e42

    .line 95
    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 93
    invoke-virtual {p1, v1}, Lcom/color/support/preference/ColorActivityDialogPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 97
    iget-object p1, p0, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->mPreference:Lcom/color/support/preference/ColorActivityDialogPreference;

    new-array v0, v0, [Ljava/lang/CharSequence;

    const-string v1, "1"

    aput-object v1, v0, v3

    const-string v1, "0"

    aput-object v1, v0, v4

    invoke-virtual {p1, v0}, Lcom/color/support/preference/ColorActivityDialogPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.nfc"

    .line 73
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    return v1

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/e;

    if-nez v0, :cond_1

    return v1

    .line 1129
    :cond_1
    iget-object v0, v0, Lcom/android/settings/nfc/e;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 80
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    return v1
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->mPreference:Lcom/color/support/preference/ColorActivityDialogPreference;

    invoke-virtual {v0}, Lcom/color/support/preference/ColorActivityDialogPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public onPaymentAppsChanged()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->mPreference:Lcom/color/support/preference/ColorActivityDialogPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 121
    instance-of v0, p1, Landroidx/preference/DropDownPreference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 124
    :cond_0
    check-cast p1, Landroidx/preference/DropDownPreference;

    .line 125
    check-cast p2, Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Landroidx/preference/DropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, p2}, Landroidx/preference/DropDownPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Landroidx/preference/DropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 127
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, v1

    .line 128
    :goto_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/e;

    .line 1152
    iget-object v0, v0, Lcom/android/settings/nfc/e;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "nfc_payment_foreground"

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 129
    iget-object v0, p0, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_2

    const/16 p1, 0x656

    goto :goto_1

    :cond_2
    const/16 p1, 0x657

    :goto_1
    new-array v1, v1, [Landroid/util/Pair;

    invoke-virtual {v0, v2, p1, v1}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;I[Landroid/util/Pair;)V

    return p2
.end method

.method public onStart()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/e;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0, p0}, Lcom/android/settings/nfc/e;->a(Lcom/android/settings/nfc/e$a;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/e;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0, p0}, Lcom/android/settings/nfc/e;->b(Lcom/android/settings/nfc/e$a;)V

    :cond_0
    return-void
.end method

.method public setPaymentBackend(Lcom/android/settings/nfc/e;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/e;

    return-void
.end method

.method public updateNonIndexableKeys(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 107
    instance-of v0, p1, Landroidx/preference/DropDownPreference;

    if-eqz v0, :cond_1

    .line 108
    move-object v0, p1

    check-cast v0, Landroidx/preference/DropDownPreference;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcForegroundPreferenceController;->mPaymentBackend:Lcom/android/settings/nfc/e;

    .line 109
    invoke-virtual {v1}, Lcom/android/settings/nfc/e;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "1"

    goto :goto_0

    :cond_0
    const-string v1, "0"

    .line 108
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 111
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
