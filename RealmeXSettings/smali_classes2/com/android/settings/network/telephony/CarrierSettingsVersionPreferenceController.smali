.class public Lcom/android/settings/network/telephony/CarrierSettingsVersionPreferenceController;
.super Lcom/android/settings/core/a;
.source "CarrierSettingsVersionPreferenceController.java"


# instance fields
.field private mManager:Landroid/telephony/CarrierConfigManager;

.field private mSubscriptionId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    const-class p2, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    iput-object p1, p0, Lcom/android/settings/network/telephony/CarrierSettingsVersionPreferenceController;->mManager:Landroid/telephony/CarrierConfigManager;

    const/4 p1, -0x1

    .line 34
    iput p1, p0, Lcom/android/settings/network/telephony/CarrierSettingsVersionPreferenceController;->mSubscriptionId:I

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/android/settings/network/telephony/CarrierSettingsVersionPreferenceController;->mManager:Landroid/telephony/CarrierConfigManager;

    iget v1, p0, Lcom/android/settings/network/telephony/CarrierSettingsVersionPreferenceController;->mSubscriptionId:I

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "carrier_config_version_string"

    .line 47
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/android/settings/network/telephony/CarrierSettingsVersionPreferenceController;->mSubscriptionId:I

    return-void
.end method
