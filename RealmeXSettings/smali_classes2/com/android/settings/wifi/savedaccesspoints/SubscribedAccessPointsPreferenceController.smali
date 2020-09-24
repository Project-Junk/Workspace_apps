.class public Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;
.super Lcom/android/settings/core/a;
.source "SubscribedAccessPointsPreferenceController.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/j;


# static fields
.field private static final TAG:Ljava/lang/String; = "SubscribedAPPrefCtrl"


# instance fields
.field private final mChildrenCache:Lcom/android/settings/utils/e;

.field private mHost:Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

.field private mPreferenceGroup:Landroidx/preference/PreferenceGroup;

.field private final mUserBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$b;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 61
    new-instance p2, Lcom/android/settingslib/wifi/AccessPointPreference$b;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/android/settingslib/wifi/AccessPointPreference$b;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object p2, p0, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;->mUserBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$b;

    .line 62
    const-class p2, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 63
    new-instance p1, Lcom/android/settings/utils/e;

    invoke-direct {p1}, Lcom/android/settings/utils/e;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;->mChildrenCache:Lcom/android/settings/utils/e;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 78
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$postRefreshSubscribedAccessPoints$0$SubscribedAccessPointsPreferenceController()V
    .locals 0

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;->refreshSubscribedAccessPoints()V

    return-void
.end method

.method public onFailure(I)V
    .locals 0

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;->postRefreshSubscribedAccessPoints()V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;->mHost:Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    if-eqz v0, :cond_0

    .line 94
    check-cast p1, Lcom/android/settingslib/wifi/AccessPointPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->a(Lcom/android/settingslib/wifi/AccessPointPreference;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onStart()V
    .locals 0

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;->refreshSubscribedAccessPoints()V

    return-void
.end method

.method public onSuccess()V
    .locals 0

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;->postRefreshSubscribedAccessPoints()V

    return-void
.end method

.method public postRefreshSubscribedAccessPoints()V
    .locals 1

    .line 88
    new-instance v0, Lcom/android/settings/wifi/savedaccesspoints/-$$Lambda$SubscribedAccessPointsPreferenceController$miv4h3pTz3Xne3x0U_ExjYVzHzM;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/savedaccesspoints/-$$Lambda$SubscribedAccessPointsPreferenceController$miv4h3pTz3Xne3x0U_ExjYVzHzM;-><init>(Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/d;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method refreshSubscribedAccessPoints()V
    .locals 10
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    const-string v1, "SubscribedAPPrefCtrl"

    if-nez v0, :cond_0

    const-string v0, "PreferenceGroup is null, skipping."

    .line 112
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;->mHost:Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->setVisible(Z)V

    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 123
    iget-object v3, p0, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 124
    invoke-static {v3, v4}, Lcom/android/settingslib/wifi/c;->a(Landroid/content/Context;Landroid/net/wifi/WifiManager;)Ljava/util/List;

    move-result-object v3

    .line 125
    sget-object v4, Lcom/android/settings/wifi/savedaccesspoints/a;->a:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 126
    iget-object v4, p0, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;->mChildrenCache:Lcom/android/settings/utils/e;

    iget-object v5, p0, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v4, v5}, Lcom/android/settings/utils/e;->a(Landroidx/preference/PreferenceGroup;)V

    .line 128
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_4

    .line 130
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/wifi/a;

    .line 131
    invoke-virtual {v6}, Lcom/android/settingslib/wifi/a;->n()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1728
    iget-object v7, v6, Lcom/android/settingslib/wifi/a;->a:Ljava/lang/String;

    .line 136
    iget-object v8, p0, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;->mChildrenCache:Lcom/android/settings/utils/e;

    .line 137
    invoke-virtual {v8, v7}, Lcom/android/settings/utils/e;->a(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/settingslib/wifi/AccessPointPreference;

    if-nez v8, :cond_2

    .line 139
    new-instance v8, Lcom/android/settingslib/wifi/AccessPointPreference;

    iget-object v9, p0, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;->mUserBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$b;

    invoke-direct {v8, v6, v0, v9}, Lcom/android/settingslib/wifi/AccessPointPreference;-><init>(Lcom/android/settingslib/wifi/a;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$b;)V

    .line 140
    invoke-virtual {v8, v7}, Lcom/android/settingslib/wifi/AccessPointPreference;->setKey(Ljava/lang/String;)V

    const/4 v6, 0x0

    .line 141
    invoke-virtual {v8, v6}, Lcom/android/settingslib/wifi/AccessPointPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 142
    invoke-virtual {v8, p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 143
    iget-object v6, p0, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v6, v8}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 145
    :cond_2
    invoke-virtual {v8, v5}, Lcom/android/settingslib/wifi/AccessPointPreference;->setOrder(I)V

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 148
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;->mChildrenCache:Lcom/android/settings/utils/e;

    iget-object v3, p0, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, v3}, Lcom/android/settings/utils/e;->b(Landroidx/preference/PreferenceGroup;)V

    .line 150
    iget-object v0, p0, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    if-gtz v0, :cond_5

    const-string v0, "Subscribed networks activity loaded, but there are no subscribed networks!"

    .line 151
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->setVisible(Z)V

    return-void

    .line 155
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->setVisible(Z)V

    return-void
.end method

.method public setHost(Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/android/settings/wifi/savedaccesspoints/SubscribedAccessPointsPreferenceController;->mHost:Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    return-object p0
.end method
