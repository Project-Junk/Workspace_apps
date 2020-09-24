.class public Lcom/android/settings/network/telephony/MmsMessagePreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;
.source "MmsMessagePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/j;
.implements Lcom/android/settingslib/core/lifecycle/a/k;


# instance fields
.field private mMobileDataContentObserver:Lcom/android/settings/network/a;

.field private mPreference:Landroidx/preference/SwitchPreference;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    const-class p2, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    iput-object p1, p0, Lcom/android/settings/network/telephony/MmsMessagePreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 49
    new-instance p1, Lcom/android/settings/network/a;

    new-instance p2, Landroid/os/Handler;

    .line 50
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p2}, Lcom/android/settings/network/a;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/MmsMessagePreferenceController;->mMobileDataContentObserver:Lcom/android/settings/network/a;

    .line 51
    iget-object p1, p0, Lcom/android/settings/network/telephony/MmsMessagePreferenceController;->mMobileDataContentObserver:Lcom/android/settings/network/a;

    new-instance p2, Lcom/android/settings/network/telephony/-$$Lambda$MmsMessagePreferenceController$ieCMKKxqaOANb_Nh_Qa9xM9Wi_M;

    invoke-direct {p2, p0}, Lcom/android/settings/network/telephony/-$$Lambda$MmsMessagePreferenceController$ieCMKKxqaOANb_Nh_Qa9xM9Wi_M;-><init>(Lcom/android/settings/network/telephony/MmsMessagePreferenceController;)V

    .line 1045
    iput-object p2, p1, Lcom/android/settings/network/a;->a:Lcom/android/settings/network/a$a;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 81
    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MmsMessagePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/network/telephony/MmsMessagePreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    return-void
.end method

.method public getAvailabilityStatus(I)I
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/android/settings/network/telephony/MmsMessagePreferenceController;->mContext:Landroid/content/Context;

    .line 57
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    .line 59
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 60
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->isApnMetered(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v1
.end method

.method public init(I)V
    .locals 1

    .line 93
    iput p1, p0, Lcom/android/settings/network/telephony/MmsMessagePreferenceController;->mSubId:I

    .line 94
    iget-object p1, p0, Lcom/android/settings/network/telephony/MmsMessagePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/network/telephony/MmsMessagePreferenceController;->mSubId:I

    invoke-virtual {p1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/MmsMessagePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method public isChecked()Z
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/android/settings/network/telephony/MmsMessagePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->isDataEnabledForApn(I)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$new$0$MmsMessagePreferenceController()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/android/settings/network/telephony/MmsMessagePreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/MmsMessagePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 67
    iget v0, p0, Lcom/android/settings/network/telephony/MmsMessagePreferenceController;->mSubId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/settings/network/telephony/MmsMessagePreferenceController;->mMobileDataContentObserver:Lcom/android/settings/network/a;

    iget-object v1, p0, Lcom/android/settings/network/telephony/MmsMessagePreferenceController;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/network/telephony/MmsMessagePreferenceController;->mSubId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/network/a;->a(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 74
    iget v0, p0, Lcom/android/settings/network/telephony/MmsMessagePreferenceController;->mSubId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/settings/network/telephony/MmsMessagePreferenceController;->mMobileDataContentObserver:Lcom/android/settings/network/a;

    iget-object v1, p0, Lcom/android/settings/network/telephony/MmsMessagePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/network/a;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)Z
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/android/settings/network/telephony/MmsMessagePreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget v1, p0, Lcom/android/settings/network/telephony/MmsMessagePreferenceController;->mSubId:I

    invoke-virtual {v0, v1, p1}, Landroid/telephony/SubscriptionManager;->setAlwaysAllowMmsData(IZ)Z

    move-result p1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 87
    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MmsMessagePreferenceController;->isAvailable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 89
    check-cast p1, Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MmsMessagePreferenceController;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method
