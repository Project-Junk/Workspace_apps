.class public Lcom/android/settings/network/telephony/cdma/CdmaSubscriptionPreferenceController;
.super Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;
.source "CdmaSubscriptionPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final TYPE_NV:Ljava/lang/String; = "NV"

.field private static final TYPE_RUIM:Ljava/lang/String; = "RUIM"


# instance fields
.field mPreference:Landroidx/preference/ListPreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method deviceSupportsNvAndRuim()Z
    .locals 9
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "ril.subscription.types"

    .line 81
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    const-string v1, ","

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v4, v1, :cond_3

    aget-object v7, v0, v4

    .line 89
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "NV"

    .line 90
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v5, v2

    goto :goto_1

    :cond_0
    const-string v8, "RUIM"

    .line 92
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v6, v2

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move v5, v3

    move v6, v5

    :cond_3
    if-eqz v5, :cond_4

    if-eqz v6, :cond_4

    return v2

    :cond_4
    return v3
.end method

.method public getAvailabilityStatus(I)I
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/android/settings/network/telephony/cdma/CdmaSubscriptionPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/settings/network/telephony/d;->b(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/cdma/CdmaSubscriptionPreferenceController;->deviceSupportsNvAndRuim()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 67
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 69
    iget-object p2, p0, Lcom/android/settings/network/telephony/cdma/CdmaSubscriptionPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p2, p1}, Landroid/telephony/TelephonyManager;->setCdmaSubscriptionMode(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 70
    iget-object p2, p0, Lcom/android/settings/network/telephony/cdma/CdmaSubscriptionPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "subscription_mode"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 55
    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/cdma/CdmaBasePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 56
    check-cast p1, Landroidx/preference/ListPreference;

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/cdma/CdmaSubscriptionPreferenceController;->getAvailabilityStatus()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setVisible(Z)V

    .line 58
    iget-object v0, p0, Lcom/android/settings/network/telephony/cdma/CdmaSubscriptionPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "subscription_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 61
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
