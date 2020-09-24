.class public Lcom/android/settings/network/telephony/VideoCallingPreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;
.source "VideoCallingPreferenceController.java"

# interfaces
.implements Lcom/android/settings/network/telephony/Enhanced4gLtePreferenceController$a;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/j;
.implements Lcom/android/settingslib/core/lifecycle/a/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/VideoCallingPreferenceController$a;,
        Lcom/android/settings/network/telephony/VideoCallingPreferenceController$b;
    }
.end annotation


# instance fields
.field private mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private mDataContentObserver:Lcom/android/settings/network/telephony/VideoCallingPreferenceController$a;

.field mImsManager:Lcom/android/ims/e;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mPhoneStateListener:Lcom/android/settings/network/telephony/VideoCallingPreferenceController$b;

.field private mPreference:Landroidx/preference/Preference;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 58
    const-class p2, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    iput-object p1, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 59
    new-instance p1, Lcom/android/settings/network/telephony/VideoCallingPreferenceController$a;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, p2}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController$a;-><init>(Lcom/android/settings/network/telephony/VideoCallingPreferenceController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mDataContentObserver:Lcom/android/settings/network/telephony/VideoCallingPreferenceController$a;

    .line 60
    new-instance p1, Lcom/android/settings/network/telephony/VideoCallingPreferenceController$b;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController$b;-><init>(Lcom/android/settings/network/telephony/VideoCallingPreferenceController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mPhoneStateListener:Lcom/android/settings/network/telephony/VideoCallingPreferenceController$b;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/network/telephony/VideoCallingPreferenceController;)Landroidx/preference/Preference;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/network/telephony/VideoCallingPreferenceController;)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method private isVideoCallEnabled(I)Z
    .locals 2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mContext:Landroid/content/Context;

    .line 128
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/ims/e;->a(Landroid/content/Context;I)Lcom/android/ims/e;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 130
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->isVideoCallEnabled(ILcom/android/ims/e;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 74
    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus(I)I
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mContext:Landroid/content/Context;

    .line 66
    invoke-static {v0, p1}, Lcom/android/settings/network/telephony/d;->a(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->isVideoCallEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1
.end method

.method public init(I)Lcom/android/settings/network/telephony/VideoCallingPreferenceController;
    .locals 1

    .line 117
    iput p1, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mSubId:I

    .line 118
    iget-object p1, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mSubId:I

    invoke-virtual {p1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 119
    iget p1, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mSubId:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 120
    iget-object p1, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/ims/e;->a(Landroid/content/Context;I)Lcom/android/ims/e;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mImsManager:Lcom/android/ims/e;

    :cond_0
    return-object p0
.end method

.method public isChecked()Z
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mImsManager:Lcom/android/ims/e;

    invoke-virtual {v0}, Lcom/android/ims/e;->h()Z

    move-result v0

    return v0
.end method

.method isVideoCallEnabled(ILcom/android/ims/e;)Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mContext:Landroid/content/Context;

    .line 137
    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 139
    invoke-virtual {p2}, Lcom/android/ims/e;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    invoke-virtual {p2}, Lcom/android/ims/e;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    invoke-static {p2}, Lcom/android/settings/network/telephony/d;->a(Lcom/android/ims/e;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "ignore_data_enabled_changed_for_video_calls"

    .line 142
    invoke-virtual {v0, p2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 144
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public on4gLteUpdated()V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onStart()V
    .locals 7

    .line 80
    iget-object v0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mPhoneStateListener:Lcom/android/settings/network/telephony/VideoCallingPreferenceController$b;

    iget v1, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mSubId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController$b;->a(I)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mDataContentObserver:Lcom/android/settings/network/telephony/VideoCallingPreferenceController$a;

    iget-object v1, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mSubId:I

    const-string v3, "mobile_data"

    .line 1189
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1190
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    .line 1191
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1193
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v4, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onStop()V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mPhoneStateListener:Lcom/android/settings/network/telephony/VideoCallingPreferenceController$b;

    .line 2169
    iget-object v1, v0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController$b;->a:Lcom/android/settings/network/telephony/VideoCallingPreferenceController;

    invoke-static {v1}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->access$100(Lcom/android/settings/network/telephony/VideoCallingPreferenceController;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 87
    iget-object v0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mDataContentObserver:Lcom/android/settings/network/telephony/VideoCallingPreferenceController$a;

    iget-object v1, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mContext:Landroid/content/Context;

    .line 2198
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public setChecked(Z)Z
    .locals 4

    .line 107
    iget-object v0, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mImsManager:Lcom/android/ims/e;

    if-eqz p1, :cond_0

    .line 2825
    invoke-virtual {v0}, Lcom/android/ims/e;->f()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p1, "setVtSetting: Not possible to enable Vt due to provisioning."

    .line 2826
    invoke-static {p1}, Lcom/android/ims/e;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 2830
    :cond_0
    invoke-virtual {v0}, Lcom/android/ims/e;->k()I

    move-result v1

    .line 2831
    invoke-static {v1}, Lcom/android/ims/e;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2833
    invoke-static {p1}, Lcom/android/ims/e;->f(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "vt_ims_enabled"

    .line 2832
    invoke-static {v1, v3, v2}, Landroid/telephony/SubscriptionManager;->setSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2835
    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setVtSetting: sub id invalid, skip modifying vt state in subinfo db; subId="

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/ims/e;->c(Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 2840
    :try_start_0
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/ims/e;->a(IIZ)V

    if-eqz p1, :cond_2

    const-string p1, "setVtSetting(b) : turnOnIms"

    .line 2844
    invoke-static {p1}, Lcom/android/ims/e;->b(Ljava/lang/String;)V

    .line 2845
    invoke-virtual {v0}, Lcom/android/ims/e;->u()V

    goto :goto_1

    .line 2846
    :cond_2
    invoke-virtual {v0}, Lcom/android/ims/e;->i()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2847
    invoke-virtual {v0}, Lcom/android/ims/e;->c()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2848
    invoke-virtual {v0}, Lcom/android/ims/e;->a()Z

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    const-string p1, "setVtSetting(b) : imsServiceAllowTurnOff -> turnOffIms"

    .line 2849
    invoke-static {p1}, Lcom/android/ims/e;->b(Ljava/lang/String;)V

    .line 2850
    invoke-virtual {v0}, Lcom/android/ims/e;->w()V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "setVtSetting(b): "

    .line 2856
    invoke-static {v0, p1}, Lcom/android/ims/e;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 6

    .line 92
    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 93
    move-object v0, p1

    check-cast v0, Landroidx/preference/TwoStatePreference;

    .line 94
    iget v1, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mSubId:I

    iget-object v2, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mImsManager:Lcom/android/ims/e;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->isVideoCallEnabled(ILcom/android/ims/e;)Z

    move-result v1

    .line 95
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setVisible(Z)V

    if-eqz v1, :cond_3

    .line 97
    iget-object v1, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mImsManager:Lcom/android/ims/e;

    invoke-virtual {v1}, Lcom/android/ims/e;->a()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mImsManager:Lcom/android/ims/e;

    .line 98
    invoke-virtual {v1}, Lcom/android/ims/e;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    .line 99
    iget-object v4, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v5, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mSubId:I

    .line 100
    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v4

    if-nez v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    .line 99
    :goto_1
    invoke-virtual {p1, v4}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-eqz v1, :cond_2

    .line 101
    iget-object p1, p0, Lcom/android/settings/network/telephony/VideoCallingPreferenceController;->mImsManager:Lcom/android/ims/e;

    invoke-virtual {p1}, Lcom/android/ims/e;->h()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_3
    return-void
.end method
