.class public Lcom/coloros/settings/feature/homepage/controller/ColorWifiPreferenceController;
.super Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;
.source "ColorWifiPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;
.implements Lcom/android/settings/widget/e$a;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# static fields
.field private static final KEY_WIFI_SETTINGS:Ljava/lang/String; = "wifi_settings"


# instance fields
.field private mPreference:Landroidx/preference/Preference;

.field private mRegistered:Z

.field private mSummaryHelper:Lcom/android/settings/wifi/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "wifi_settings"

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/homepage/controller/ColorWifiPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/coloros/settings/feature/homepage/controller/ColorWifiPreferenceController;->mRegistered:Z

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 56
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/homepage/controller/ColorBaseTopLevelPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 57
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/controller/ColorWifiPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/controller/ColorWifiPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/controller/ColorWifiPreferenceController;->mPreference:Landroidx/preference/Preference;

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/ColorWifiPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public onPause()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/ColorWifiPreferenceController;->mSummaryHelper:Lcom/android/settings/wifi/h;

    if-eqz v0, :cond_0

    .line 77
    iget-boolean v1, p0, Lcom/coloros/settings/feature/homepage/controller/ColorWifiPreferenceController;->mRegistered:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 78
    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/h;->a(Z)V

    .line 79
    iput-boolean v1, p0, Lcom/coloros/settings/feature/homepage/controller/ColorWifiPreferenceController;->mRegistered:Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/ColorWifiPreferenceController;->mSummaryHelper:Lcom/android/settings/wifi/h;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/android/settings/wifi/h;

    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/controller/ColorWifiPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/wifi/h;-><init>(Landroid/content/Context;Lcom/android/settings/widget/e$a;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/ColorWifiPreferenceController;->mSummaryHelper:Lcom/android/settings/wifi/h;

    .line 66
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/ColorWifiPreferenceController;->mSummaryHelper:Lcom/android/settings/wifi/h;

    const/4 v1, 0x0

    .line 1147
    iput-boolean v1, v0, Lcom/android/settings/wifi/h;->b:Z

    .line 68
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/settings/feature/homepage/controller/ColorWifiPreferenceController;->mRegistered:Z

    if-nez v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/ColorWifiPreferenceController;->mSummaryHelper:Lcom/android/settings/wifi/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/h;->a(Z)V

    .line 70
    iput-boolean v1, p0, Lcom/coloros/settings/feature/homepage/controller/ColorWifiPreferenceController;->mRegistered:Z

    :cond_1
    return-void
.end method

.method public onSummaryChanged(Ljava/lang/String;)V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/ColorWifiPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_1

    .line 87
    instance-of v1, v0, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    if-eqz v1, :cond_0

    .line 88
    check-cast v0, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->a(Ljava/lang/CharSequence;)V

    return-void

    .line 90
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
