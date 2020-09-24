.class public Lcom/android/settings/network/telephony/cdma/CdmaListPreference;
.super Landroidx/preference/ListPreference;
.source "CdmaListPreference.java"


# instance fields
.field a:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/android/settings/network/telephony/cdma/CdmaListPreference;->a:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getEmergencyCallbackMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 39
    :cond_0
    invoke-super {p0}, Landroidx/preference/ListPreference;->onClick()V

    :cond_1
    return-void
.end method
