.class public abstract Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;
.source "CdmaBasePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/j;
.implements Lcom/android/settingslib/core/lifecycle/a/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController$a;
    }
.end annotation


# instance fields
.field private mDataContentObserver:Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController$a;

.field protected mPreference:Landroidx/preference/Preference;

.field protected mPreferenceManager:Landroidx/preference/PreferenceManager;

.field protected mSubId:I

.field protected mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 52
    iput p1, p0, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->mSubId:I

    .line 53
    new-instance p1, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController$a;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, p2}, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController$a;-><init>(Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->mDataContentObserver:Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController$a;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 85
    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    .line 87
    iget-object p1, p0, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    instance-of v0, p1, Lcom/android/settings/network/telephony/cdma/CdmaListPreference;

    if-eqz v0, :cond_0

    .line 88
    check-cast p1, Lcom/android/settings/network/telephony/cdma/CdmaListPreference;

    iget v0, p0, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->mSubId:I

    .line 2044
    invoke-virtual {p1}, Lcom/android/settings/network/telephony/cdma/CdmaListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p1, Lcom/android/settings/network/telephony/cdma/CdmaListPreference;->a:Landroid/telephony/TelephonyManager;

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus(I)I
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/settings/network/telephony/d;->b(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1
.end method

.method public init(I)V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->init(Landroidx/preference/PreferenceManager;I)V

    return-void
.end method

.method public init(Landroidx/preference/PreferenceManager;I)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    .line 75
    iput p2, p0, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->mSubId:I

    .line 76
    iget-object p1, p0, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iget p2, p0, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->mSubId:I

    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 58
    iget-object v0, p0, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->mDataContentObserver:Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController$a;

    iget-object v1, p0, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->mSubId:I

    .line 1108
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1110
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->mDataContentObserver:Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController$a;

    iget-object v1, p0, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->mContext:Landroid/content/Context;

    .line 1114
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
