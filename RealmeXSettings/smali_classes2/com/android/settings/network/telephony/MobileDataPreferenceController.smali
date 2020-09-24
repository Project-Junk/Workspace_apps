.class public Lcom/android/settings/network/telephony/MobileDataPreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;
.source "MobileDataPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/j;
.implements Lcom/android/settingslib/core/lifecycle/a/k;


# static fields
.field private static final DIALOG_TAG:Ljava/lang/String; = "MobileDataDialog"


# instance fields
.field private mDataContentObserver:Lcom/android/settings/network/a;

.field mDialogType:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field mNeedDialog:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mPreference:Landroidx/preference/TwoStatePreference;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 59
    const-class p2, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 60
    new-instance p1, Lcom/android/settings/network/a;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p2}, Lcom/android/settings/network/a;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mDataContentObserver:Lcom/android/settings/network/a;

    .line 61
    iget-object p1, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mDataContentObserver:Lcom/android/settings/network/a;

    new-instance p2, Lcom/android/settings/network/telephony/-$$Lambda$MobileDataPreferenceController$D2eAJRYnh_dvq9IIcOe7DDpe8pM;

    invoke-direct {p2, p0}, Lcom/android/settings/network/telephony/-$$Lambda$MobileDataPreferenceController$D2eAJRYnh_dvq9IIcOe7DDpe8pM;-><init>(Lcom/android/settings/network/telephony/MobileDataPreferenceController;)V

    .line 1045
    iput-object p2, p1, Lcom/android/settings/network/a;->a:Lcom/android/settings/network/a$a;

    return-void
.end method

.method private isOpportunistic()Z
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->isOpportunistic()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private showDialog(I)V
    .locals 2

    .line 159
    iget v0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mSubId:I

    invoke-static {p1, v0}, Lcom/android/settings/network/telephony/MobileDataDialogFragment;->a(II)Lcom/android/settings/network/telephony/MobileDataDialogFragment;

    move-result-object p1

    .line 161
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v1, "MobileDataDialog"

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/network/telephony/MobileDataDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 73
    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/TwoStatePreference;

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mPreference:Landroidx/preference/TwoStatePreference;

    return-void
.end method

.method public getAvailabilityStatus(I)I
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x5

    return p1
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 93
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 94
    iget-boolean p1, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mNeedDialog:Z

    if-eqz p1, :cond_0

    .line 95
    iget p1, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mDialogType:I

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->showDialog(I)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public init(Landroidx/fragment/app/FragmentManager;I)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 140
    iput p2, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mSubId:I

    .line 141
    iget-object p1, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iget p2, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mSubId:I

    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method public isChecked()Z
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v0

    return v0
.end method

.method isDialogNeeded()Z
    .locals 6
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 147
    iget-object v2, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    const/4 v3, 0x0

    if-le v2, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 148
    :goto_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v4

    .line 149
    iget-object v5, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 150
    invoke-virtual {v5, v4}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mSubId:I

    if-eq v4, v5, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    if-eqz v4, :cond_2

    .line 152
    iput v1, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mDialogType:I

    return v1

    :cond_2
    return v3
.end method

.method public synthetic lambda$new$0$MobileDataPreferenceController()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mPreference:Landroidx/preference/TwoStatePreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 79
    iget v0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mSubId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mDataContentObserver:Lcom/android/settings/network/a;

    iget-object v1, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mSubId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/network/a;->a(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 86
    iget v0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mSubId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mDataContentObserver:Lcom/android/settings/network/a;

    iget-object v1, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/network/a;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)Z
    .locals 3

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->isDialogNeeded()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mNeedDialog:Z

    .line 107
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mNeedDialog:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mSubId:I

    invoke-static {v0, v2, p1, v1}, Lcom/android/settings/network/telephony/d;->a(Landroid/content/Context;IZZ)V

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 123
    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 124
    invoke-direct {p0}, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->isOpportunistic()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    const v0, 0x7f120d9b

    .line 126
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 128
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    const v0, 0x7f120d9a

    .line 129
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    return-void
.end method
