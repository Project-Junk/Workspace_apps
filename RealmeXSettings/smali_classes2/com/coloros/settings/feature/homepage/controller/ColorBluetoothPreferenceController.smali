.class public Lcom/coloros/settings/feature/homepage/controller/ColorBluetoothPreferenceController;
.super Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;
.source "ColorBluetoothPreferenceController.java"

# interfaces
.implements Lcom/android/settings/widget/e$a;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# static fields
.field private static final KEY_BLUETOOTH_SETTINGS:Ljava/lang/String; = "bluetooth_settings"


# instance fields
.field private mPreference:Landroidx/preference/Preference;

.field private mRegistered:Z

.field private mSummaryHelper:Lcom/android/settings/bluetooth/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "bluetooth_settings"

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/homepage/controller/ColorBluetoothPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lcom/coloros/settings/feature/homepage/controller/ColorBluetoothPreferenceController;->mRegistered:Z

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 50
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/controller/ColorBluetoothPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/controller/ColorBluetoothPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/ColorBluetoothPreferenceController;->mSummaryHelper:Lcom/android/settings/bluetooth/j;

    if-eqz v0, :cond_0

    .line 68
    iget-boolean v1, p0, Lcom/coloros/settings/feature/homepage/controller/ColorBluetoothPreferenceController;->mRegistered:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 69
    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/j;->b(Z)V

    .line 70
    iput-boolean v1, p0, Lcom/coloros/settings/feature/homepage/controller/ColorBluetoothPreferenceController;->mRegistered:Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/ColorBluetoothPreferenceController;->mSummaryHelper:Lcom/android/settings/bluetooth/j;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/android/settings/bluetooth/j;

    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/controller/ColorBluetoothPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/coloros/settings/feature/homepage/controller/ColorBluetoothPreferenceController;->mContext:Landroid/content/Context;

    .line 57
    invoke-static {v2}, Lcom/android/settings/bluetooth/n;->a(Landroid/content/Context;)Lcom/android/settingslib/d/q;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/android/settings/bluetooth/j;-><init>(Landroid/content/Context;Lcom/android/settings/widget/e$a;Lcom/android/settingslib/d/q;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/ColorBluetoothPreferenceController;->mSummaryHelper:Lcom/android/settings/bluetooth/j;

    .line 59
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/settings/feature/homepage/controller/ColorBluetoothPreferenceController;->mRegistered:Z

    if-nez v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/ColorBluetoothPreferenceController;->mSummaryHelper:Lcom/android/settings/bluetooth/j;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/j;->b(Z)V

    .line 61
    iput-boolean v1, p0, Lcom/coloros/settings/feature/homepage/controller/ColorBluetoothPreferenceController;->mRegistered:Z

    :cond_1
    return-void
.end method

.method public onSummaryChanged(Ljava/lang/String;)V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/ColorBluetoothPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    return-void

    .line 80
    :cond_0
    instance-of v1, v0, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    if-eqz v1, :cond_1

    .line 81
    check-cast v0, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    return-void

    .line 83
    :cond_1
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
