.class public Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;
.source "DataDuringCallsPreferenceController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/network/g$a;


# instance fields
.field private mChangeListener:Lcom/android/settings/network/g;

.field private mManager:Landroid/telephony/TelephonyManager;

.field private mPreference:Landroidx/preference/SwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    new-instance p1, Lcom/android/settings/network/g;

    iget-object p2, p0, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, p0}, Lcom/android/settings/network/g;-><init>(Landroid/content/Context;Lcom/android/settings/network/g$a;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;->mChangeListener:Lcom/android/settings/network/g;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 67
    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    return-void
.end method

.method public getAvailabilityStatus(I)I
    .locals 1

    .line 84
    iget p1, p0, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;->mSubId:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 85
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p1

    iget v0, p0, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;->mSubId:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x2

    return p1
.end method

.method public init(Landroidx/lifecycle/Lifecycle;I)V
    .locals 2

    .line 50
    iput p2, p0, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;->mSubId:I

    .line 51
    iget-object v0, p0, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;->mManager:Landroid/telephony/TelephonyManager;

    .line 52
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method public isChecked()Z
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;->mManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataAllowedInVoiceCall()Z

    move-result v0

    return v0
.end method

.method public onAirplaneModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;->mChangeListener:Lcom/android/settings/network/g;

    invoke-virtual {v0}, Lcom/android/settings/network/g;->b()V

    return-void
.end method

.method public onResume()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;->mChangeListener:Lcom/android/settings/network/g;

    invoke-virtual {v0}, Lcom/android/settings/network/g;->a()V

    return-void
.end method

.method public onSubscriptionsChanged()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public setChecked(Z)Z
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;->mManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->setDataAllowedDuringVoiceCall(Z)Z

    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 93
    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;->isAvailable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method
