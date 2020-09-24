.class public Lcom/android/settings/network/telephony/DataUsagePreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;
.source "DataUsagePreferenceController.java"


# instance fields
.field private mDataUsageInfo:Lcom/android/settingslib/net/a$a;

.field private mIntent:Landroid/content/Intent;

.field private mTemplate:Landroid/net/NetworkTemplate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus(I)I
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 54
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 55
    iget-object p1, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public init(I)V
    .locals 2

    .line 85
    iput p1, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mSubId:I

    .line 87
    iget p1, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mSubId:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 88
    iget-object p1, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mSubId:I

    invoke-static {p1, v0}, Lcom/android/settings/datausage/f;->a(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mTemplate:Landroid/net/NetworkTemplate;

    .line 90
    new-instance p1, Lcom/android/settingslib/net/a;

    iget-object v0, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/settingslib/net/a;-><init>(Landroid/content/Context;)V

    .line 91
    iget v0, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mSubId:I

    .line 1093
    iput v0, p1, Lcom/android/settingslib/net/a;->a:I

    .line 92
    iget-object v0, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/net/a;->a(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/a$a;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mDataUsageInfo:Lcom/android/settingslib/net/a$a;

    .line 94
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.MOBILE_DATA_USAGE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mIntent:Landroid/content/Intent;

    .line 95
    iget-object p1, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mTemplate:Landroid/net/NetworkTemplate;

    const-string v1, "network_template"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 96
    iget-object p1, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mIntent:Landroid/content/Intent;

    iget v0, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mSubId:I

    const-string v1, "android.provider.extra.SUB_ID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 8

    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 65
    iget v0, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mSubId:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 66
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mDataUsageInfo:Lcom/android/settingslib/net/a$a;

    iget-wide v2, v0, Lcom/android/settingslib/net/a$a;->f:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    .line 71
    new-instance v0, Lcom/android/settingslib/net/a;

    iget-object v2, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/settingslib/net/a;-><init>(Landroid/content/Context;)V

    .line 72
    iget-object v2, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/net/a;->b(Landroid/net/NetworkTemplate;)J

    move-result-wide v2

    :cond_1
    cmp-long v0, v2, v4

    const/4 v2, 0x1

    if-lez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 75
    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    if-eqz v0, :cond_3

    .line 78
    iget-object v0, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f120703

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mDataUsageInfo:Lcom/android/settingslib/net/a$a;

    iget-wide v6, v6, Lcom/android/settingslib/net/a$a;->f:J

    .line 79
    invoke-static {v5, v6, v7}, Lcom/android/settings/datausage/f;->a(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v1, p0, Lcom/android/settings/network/telephony/DataUsagePreferenceController;->mDataUsageInfo:Lcom/android/settingslib/net/a$a;

    iget-object v1, v1, Lcom/android/settingslib/net/a$a;->b:Ljava/lang/String;

    aput-object v1, v4, v2

    .line 78
    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method
