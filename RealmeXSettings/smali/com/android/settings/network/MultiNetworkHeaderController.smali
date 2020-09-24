.class public Lcom/android/settings/network/MultiNetworkHeaderController;
.super Lcom/android/settings/core/a;
.source "MultiNetworkHeaderController.java"

# interfaces
.implements Lcom/android/settings/network/SubscriptionsPreferenceController$a;
.implements Lcom/android/settings/wifi/f$a;


# static fields
.field public static final TAG:Ljava/lang/String; = "MultiNetworkHdrCtrl"


# instance fields
.field private mOriginalExpandedChildrenCount:I

.field private mPreferenceCategory:Landroidx/preference/PreferenceCategory;

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;

.field private mSubscriptionsController:Lcom/android/settings/network/SubscriptionsPreferenceController;

.field private mWifiController:Lcom/android/settings/wifi/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method createSubscriptionsController(Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/network/SubscriptionsPreferenceController;
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 63
    new-instance v0, Lcom/android/settings/network/SubscriptionsPreferenceController;

    iget-object v1, p0, Lcom/android/settings/network/MultiNetworkHeaderController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/network/MultiNetworkHeaderController;->mPreferenceKey:Ljava/lang/String;

    invoke-direct {v0, v1, p1, p0, v2}, Lcom/android/settings/network/SubscriptionsPreferenceController;-><init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;Lcom/android/settings/network/SubscriptionsPreferenceController$a;Ljava/lang/String;)V

    return-object v0
.end method

.method createWifiController(Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/wifi/f;
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 56
    new-instance v0, Lcom/android/settings/wifi/f;

    iget-object v1, p0, Lcom/android/settings/network/MultiNetworkHeaderController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/network/MultiNetworkHeaderController;->mPreferenceKey:Ljava/lang/String;

    invoke-direct {v0, v1, p1, p0, v2}, Lcom/android/settings/wifi/f;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/wifi/f$a;Ljava/lang/String;)V

    return-object v0
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 69
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 70
    iput-object p1, p0, Lcom/android/settings/network/MultiNetworkHeaderController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    .line 71
    iget-object v0, p0, Lcom/android/settings/network/MultiNetworkHeaderController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->getInitialExpandedChildrenCount()I

    move-result v0

    iput v0, p0, Lcom/android/settings/network/MultiNetworkHeaderController;->mOriginalExpandedChildrenCount:I

    .line 72
    iget-object v0, p0, Lcom/android/settings/network/MultiNetworkHeaderController;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/network/MultiNetworkHeaderController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    .line 73
    iget-object v0, p0, Lcom/android/settings/network/MultiNetworkHeaderController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/network/MultiNetworkHeaderController;->isAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    .line 74
    iget-object v0, p0, Lcom/android/settings/network/MultiNetworkHeaderController;->mWifiController:Lcom/android/settings/wifi/f;

    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/f;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 75
    iget-object v0, p0, Lcom/android/settings/network/MultiNetworkHeaderController;->mSubscriptionsController:Lcom/android/settings/network/SubscriptionsPreferenceController;

    invoke-virtual {v0, p1}, Lcom/android/settings/network/SubscriptionsPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/settings/network/MultiNetworkHeaderController;->mSubscriptionsController:Lcom/android/settings/network/SubscriptionsPreferenceController;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x2

    return v0
.end method

.method public init(Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/settings/network/MultiNetworkHeaderController;->createWifiController(Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/wifi/f;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/MultiNetworkHeaderController;->mWifiController:Lcom/android/settings/wifi/f;

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/settings/network/MultiNetworkHeaderController;->createSubscriptionsController(Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/network/SubscriptionsPreferenceController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/MultiNetworkHeaderController;->mSubscriptionsController:Lcom/android/settings/network/SubscriptionsPreferenceController;

    return-void
.end method

.method public onChildrenUpdated()V
    .locals 4

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/network/MultiNetworkHeaderController;->isAvailable()Z

    move-result v0

    .line 93
    iget v1, p0, Lcom/android/settings/network/MultiNetworkHeaderController;->mOriginalExpandedChildrenCount:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    if-eqz v0, :cond_0

    .line 95
    iget-object v2, p0, Lcom/android/settings/network/MultiNetworkHeaderController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    iget-object v3, p0, Lcom/android/settings/network/MultiNetworkHeaderController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    .line 96
    invoke-virtual {v3}, Landroidx/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    add-int/2addr v1, v3

    .line 95
    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceScreen;->setInitialExpandedChildrenCount(I)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object v2, p0, Lcom/android/settings/network/MultiNetworkHeaderController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceScreen;->setInitialExpandedChildrenCount(I)V

    .line 101
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/settings/network/MultiNetworkHeaderController;->mPreferenceCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    return-void
.end method
