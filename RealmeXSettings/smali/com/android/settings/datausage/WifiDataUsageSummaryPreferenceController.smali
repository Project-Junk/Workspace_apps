.class public Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;
.super Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;
.source "WifiDataUsageSummaryPreferenceController.java"


# instance fields
.field final mNetworkId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/preference/PreferenceFragmentCompat;Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, -0x1

    .line 37
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/datausage/DataUsageSummaryPreferenceController;-><init>(Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/preference/PreferenceFragmentCompat;I)V

    if-nez p4, :cond_0

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;->mNetworkId:Ljava/lang/String;

    return-void

    .line 42
    :cond_0
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;->mNetworkId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public updateState(Landroidx/preference/Preference;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 52
    :cond_0
    check-cast p1, Lcom/android/settings/datausage/DataUsageSummaryPreference;

    .line 55
    iget-object v0, p0, Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;->mNetworkId:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateWifi(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;->mDataUsageController:Lcom/android/settingslib/net/a;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/net/a;->a(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/a$a;

    move-result-object v6

    .line 58
    iget-object v1, p0, Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;->mPolicyEditor:Lcom/android/settingslib/d;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/d;->b(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/android/settings/datausage/e;->a(Lcom/android/settingslib/net/a$a;Landroid/net/NetworkPolicy;)V

    .line 60
    iget-object v0, v6, Lcom/android/settingslib/net/a$a;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0, v1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->a(ZLjava/lang/String;Z)V

    .line 62
    invoke-virtual {p1, v1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->a(Z)V

    .line 64
    iget-wide v1, v6, Lcom/android/settingslib/net/a$a;->f:J

    iget-wide v3, v6, Lcom/android/settingslib/net/a$a;->f:J

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->a(JJZ)V

    const/high16 v0, 0x42c80000    # 100.0f

    .line 67
    invoke-virtual {p1, v0}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->a(F)V

    .line 68
    iget-object v0, p0, Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;->mContext:Landroid/content/Context;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/settings/datausage/f;->a(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/WifiDataUsageSummaryPreferenceController;->mContext:Landroid/content/Context;

    iget-wide v2, v6, Lcom/android/settingslib/net/a$a;->f:J

    .line 69
    invoke-static {v1, v2, v3}, Lcom/android/settings/datausage/f;->a(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v1

    .line 68
    invoke-virtual {p1, v0, v1}, Lcom/android/settings/datausage/DataUsageSummaryPreference;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method
