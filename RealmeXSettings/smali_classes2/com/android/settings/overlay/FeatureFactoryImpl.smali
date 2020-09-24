.class public Lcom/android/settings/overlay/FeatureFactoryImpl;
.super Lcom/android/settings/overlay/b;
.source "FeatureFactoryImpl.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private mAccountFeatureProvider:Lcom/android/settings/accounts/a;

.field private mApplicationFeatureProvider:Lcom/android/settings/applications/q;

.field private mAssistGestureFeatureProvider:Lcom/android/settings/gestures/a;

.field private mAwareFeatureProvider:Lcom/android/settings/a/a;

.field private mBluetoothFeatureProvider:Lcom/android/settings/bluetooth/d;

.field private mContextualCardFeatureProvider:Lcom/android/settings/homepage/contextualcards/d;

.field private mDashboardFeatureProvider:Lcom/android/settings/dashboard/c;

.field private mDockUpdaterFeatureProvider:Lcom/android/settings/overlay/a;

.field private mEnterprisePrivacyFeatureProvider:Lcom/android/settings/enterprise/o;

.field private mLocaleFeatureProvider:Lcom/android/settings/localepicker/b;

.field private mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

.field private mPanelFeatureProvider:Lcom/android/settings/panel/e;

.field private mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/i;

.field private mSearchFeatureProvider:Lcom/android/settings/search/c;

.field private mSecurityFeatureProvider:Lcom/android/settings/security/f;

.field private mSlicesFeatureProvider:Lcom/android/settings/slices/j;

.field private mSuggestionFeatureProvider:Lcom/android/settings/dashboard/suggestions/a;

.field private mUserFeatureProvider:Lcom/android/settings/users/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/android/settings/overlay/b;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountFeatureProvider()Lcom/android/settings/accounts/a;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mAccountFeatureProvider:Lcom/android/settings/accounts/a;

    if-nez v0, :cond_0

    .line 220
    new-instance v0, Lcom/android/settings/accounts/b;

    invoke-direct {v0}, Lcom/android/settings/accounts/b;-><init>()V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mAccountFeatureProvider:Lcom/android/settings/accounts/a;

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mAccountFeatureProvider:Lcom/android/settings/accounts/a;

    return-object v0
.end method

.method public getApplicationFeatureProvider(Landroid/content/Context;)Lcom/android/settings/applications/q;
    .locals 4

    .line 129
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mApplicationFeatureProvider:Lcom/android/settings/applications/q;

    if-nez v0, :cond_0

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 131
    new-instance v0, Lcom/android/settings/applications/r;

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 133
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const-string v3, "device_policy"

    .line 135
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/settings/applications/r;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/IPackageManager;Landroid/app/admin/DevicePolicyManager;)V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mApplicationFeatureProvider:Lcom/android/settings/applications/q;

    .line 137
    :cond_0
    iget-object p1, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mApplicationFeatureProvider:Lcom/android/settings/applications/q;

    return-object p1
.end method

.method public getAssistGestureFeatureProvider()Lcom/android/settings/gestures/a;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mAssistGestureFeatureProvider:Lcom/android/settings/gestures/a;

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Lcom/android/settings/gestures/b;

    invoke-direct {v0}, Lcom/android/settings/gestures/b;-><init>()V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mAssistGestureFeatureProvider:Lcom/android/settings/gestures/a;

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mAssistGestureFeatureProvider:Lcom/android/settings/gestures/a;

    return-object v0
.end method

.method public getAwareFeatureProvider()Lcom/android/settings/a/a;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mAwareFeatureProvider:Lcom/android/settings/a/a;

    if-nez v0, :cond_0

    .line 254
    new-instance v0, Lcom/android/settings/a/b;

    invoke-direct {v0}, Lcom/android/settings/a/b;-><init>()V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mAwareFeatureProvider:Lcom/android/settings/a/a;

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mAwareFeatureProvider:Lcom/android/settings/a/a;

    return-object v0
.end method

.method public getBluetoothFeatureProvider(Landroid/content/Context;)Lcom/android/settings/bluetooth/d;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mBluetoothFeatureProvider:Lcom/android/settings/bluetooth/d;

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Lcom/android/settings/bluetooth/e;

    .line 246
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/settings/bluetooth/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mBluetoothFeatureProvider:Lcom/android/settings/bluetooth/d;

    .line 248
    :cond_0
    iget-object p1, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mBluetoothFeatureProvider:Lcom/android/settings/bluetooth/d;

    return-object p1
.end method

.method public getContextualCardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/homepage/contextualcards/d;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mContextualCardFeatureProvider:Lcom/android/settings/homepage/contextualcards/d;

    if-nez v0, :cond_0

    .line 236
    new-instance v0, Lcom/android/settings/homepage/contextualcards/e;

    .line 237
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/settings/homepage/contextualcards/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mContextualCardFeatureProvider:Lcom/android/settings/homepage/contextualcards/d;

    .line 239
    :cond_0
    iget-object p1, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mContextualCardFeatureProvider:Lcom/android/settings/homepage/contextualcards/d;

    return-object p1
.end method

.method public getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/b;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/c;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcom/android/settings/dashboard/c;

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/settings/dashboard/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/c;

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/c;

    return-object p1
.end method

.method public getDockUpdaterFeatureProvider()Lcom/android/settings/overlay/a;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mDockUpdaterFeatureProvider:Lcom/android/settings/overlay/a;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/android/settings/connecteddevice/a/b;

    invoke-direct {v0}, Lcom/android/settings/connecteddevice/a/b;-><init>()V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mDockUpdaterFeatureProvider:Lcom/android/settings/overlay/a;

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mDockUpdaterFeatureProvider:Lcom/android/settings/overlay/a;

    return-object v0
.end method

.method public getEnterprisePrivacyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/enterprise/o;
    .locals 8

    .line 150
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mEnterprisePrivacyFeatureProvider:Lcom/android/settings/enterprise/o;

    if-nez v0, :cond_0

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 152
    new-instance p1, Lcom/android/settings/enterprise/p;

    const-string v0, "device_policy"

    .line 153
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 155
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 156
    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    const-string v0, "connectivity"

    .line 157
    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 158
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/enterprise/p;-><init>(Landroid/content/Context;Landroid/app/admin/DevicePolicyManager;Landroid/content/pm/PackageManager;Landroid/os/UserManager;Landroid/net/ConnectivityManager;Landroid/content/res/Resources;)V

    iput-object p1, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mEnterprisePrivacyFeatureProvider:Lcom/android/settings/enterprise/o;

    .line 160
    :cond_0
    iget-object p1, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mEnterprisePrivacyFeatureProvider:Lcom/android/settings/enterprise/o;

    return-object p1
.end method

.method public getLocaleFeatureProvider()Lcom/android/settings/localepicker/b;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mLocaleFeatureProvider:Lcom/android/settings/localepicker/b;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lcom/android/settings/localepicker/c;

    invoke-direct {v0}, Lcom/android/settings/localepicker/c;-><init>()V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mLocaleFeatureProvider:Lcom/android/settings/localepicker/b;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mLocaleFeatureProvider:Lcom/android/settings/localepicker/b;

    return-object v0
.end method

.method public getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/android/settings/core/instrumentation/c;

    invoke-direct {v0}, Lcom/android/settings/core/instrumentation/c;-><init>()V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

    return-object v0
.end method

.method public getPanelFeatureProvider()Lcom/android/settings/panel/e;
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mPanelFeatureProvider:Lcom/android/settings/panel/e;

    if-nez v0, :cond_0

    .line 228
    new-instance v0, Lcom/android/settings/panel/f;

    invoke-direct {v0}, Lcom/android/settings/panel/f;-><init>()V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mPanelFeatureProvider:Lcom/android/settings/panel/e;

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mPanelFeatureProvider:Lcom/android/settings/panel/e;

    return-object v0
.end method

.method public getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/i;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/i;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Lcom/android/settings/fuelgauge/j;

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/settings/fuelgauge/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/i;

    .line 107
    :cond_0
    iget-object p1, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/i;

    return-object p1
.end method

.method public getSearchFeatureProvider()Lcom/android/settings/search/c;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mSearchFeatureProvider:Lcom/android/settings/search/c;

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Lcom/android/settings/search/d;

    invoke-direct {v0}, Lcom/android/settings/search/d;-><init>()V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mSearchFeatureProvider:Lcom/android/settings/search/c;

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mSearchFeatureProvider:Lcom/android/settings/search/c;

    return-object v0
.end method

.method public getSecurityFeatureProvider()Lcom/android/settings/security/f;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mSecurityFeatureProvider:Lcom/android/settings/security/f;

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Lcom/android/settings/security/g;

    invoke-direct {v0}, Lcom/android/settings/security/g;-><init>()V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mSecurityFeatureProvider:Lcom/android/settings/security/f;

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mSecurityFeatureProvider:Lcom/android/settings/security/f;

    return-object v0
.end method

.method public getSlicesFeatureProvider()Lcom/android/settings/slices/j;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mSlicesFeatureProvider:Lcom/android/settings/slices/j;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Lcom/android/settings/slices/k;

    invoke-direct {v0}, Lcom/android/settings/slices/k;-><init>()V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mSlicesFeatureProvider:Lcom/android/settings/slices/j;

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mSlicesFeatureProvider:Lcom/android/settings/slices/j;

    return-object v0
.end method

.method public getSuggestionFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/suggestions/a;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mSuggestionFeatureProvider:Lcom/android/settings/dashboard/suggestions/a;

    if-nez v0, :cond_0

    .line 187
    new-instance v0, Lcom/android/settings/dashboard/suggestions/b;

    .line 188
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/settings/dashboard/suggestions/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mSuggestionFeatureProvider:Lcom/android/settings/dashboard/suggestions/a;

    .line 190
    :cond_0
    iget-object p1, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mSuggestionFeatureProvider:Lcom/android/settings/dashboard/suggestions/a;

    return-object p1
.end method

.method public getSupportFeatureProvider(Landroid/content/Context;)Lcom/android/settings/overlay/c;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSurveyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/overlay/d;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getUserFeatureProvider(Landroid/content/Context;)Lcom/android/settings/users/h;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mUserFeatureProvider:Lcom/android/settings/users/h;

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Lcom/android/settings/users/i;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/settings/users/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mUserFeatureProvider:Lcom/android/settings/users/h;

    .line 198
    :cond_0
    iget-object p1, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mUserFeatureProvider:Lcom/android/settings/users/h;

    return-object p1
.end method
