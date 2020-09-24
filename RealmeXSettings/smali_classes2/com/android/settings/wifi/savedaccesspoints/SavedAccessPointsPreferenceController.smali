.class public Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;
.super Lcom/android/settings/core/a;
.source "SavedAccessPointsPreferenceController.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/j;


# static fields
.field private static final TAG:Ljava/lang/String; = "SavedAPPrefCtrl"


# instance fields
.field private final mChildrenCache:Lcom/android/settings/utils/e;

.field private mHost:Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

.field private mPreferenceGroup:Landroidx/preference/PreferenceGroup;

.field private final mUserBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$b;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 62
    new-instance p2, Lcom/android/settingslib/wifi/AccessPointPreference$b;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/android/settingslib/wifi/AccessPointPreference$b;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object p2, p0, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;->mUserBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$b;

    .line 63
    const-class p2, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 64
    new-instance p1, Lcom/android/settings/utils/e;

    invoke-direct {p1}, Lcom/android/settings/utils/e;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;->mChildrenCache:Lcom/android/settings/utils/e;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 79
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$postRefreshSavedAccessPoints$0$SavedAccessPointsPreferenceController()V
    .locals 0

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;->refreshSavedAccessPoints()V

    return-void
.end method

.method public onFailure(I)V
    .locals 0

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;->postRefreshSavedAccessPoints()V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;->mHost:Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    if-eqz v0, :cond_0

    .line 95
    check-cast p1, Lcom/android/settingslib/wifi/AccessPointPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->a(Lcom/android/settingslib/wifi/AccessPointPreference;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onStart()V
    .locals 0

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;->refreshSavedAccessPoints()V

    return-void
.end method

.method public onSuccess()V
    .locals 0

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;->postRefreshSavedAccessPoints()V

    return-void
.end method

.method public postRefreshSavedAccessPoints()V
    .locals 1

    .line 89
    new-instance v0, Lcom/android/settings/wifi/savedaccesspoints/-$$Lambda$SavedAccessPointsPreferenceController$S1UQqL5m76IbANQNcf9ClRlrvZA;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/savedaccesspoints/-$$Lambda$SavedAccessPointsPreferenceController$S1UQqL5m76IbANQNcf9ClRlrvZA;-><init>(Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/d;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method refreshSavedAccessPoints()V
    .locals 11
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    const-string v1, "SavedAPPrefCtrl"

    if-nez v0, :cond_0

    const-string v0, "PreferenceGroup is null, skipping."

    .line 113
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 116
    :cond_0
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 118
    iget-object v2, p0, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 119
    invoke-static {v2, v3}, Lcom/android/settingslib/wifi/c;->a(Landroid/content/Context;Landroid/net/wifi/WifiManager;)Ljava/util/List;

    move-result-object v2

    .line 120
    sget-object v3, Lcom/android/settings/wifi/savedaccesspoints/a;->a:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 121
    iget-object v3, p0, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;->mChildrenCache:Lcom/android/settings/utils/e;

    iget-object v4, p0, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v3, v4}, Lcom/android/settings/utils/e;->a(Landroidx/preference/PreferenceGroup;)V

    .line 123
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v6, 0x0

    if-ge v5, v3, :cond_4

    .line 125
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/wifi/a;

    .line 127
    iget-object v8, p0, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;->mHost:Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->c()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 128
    invoke-virtual {v7}, Lcom/android/settingslib/wifi/a;->n()Z

    move-result v8

    if-nez v8, :cond_3

    .line 1728
    :cond_1
    iget-object v8, v7, Lcom/android/settingslib/wifi/a;->a:Ljava/lang/String;

    .line 133
    iget-object v9, p0, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;->mChildrenCache:Lcom/android/settings/utils/e;

    .line 134
    invoke-virtual {v9, v8}, Lcom/android/settings/utils/e;->a(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settingslib/wifi/AccessPointPreference;

    if-nez v9, :cond_2

    .line 136
    new-instance v9, Lcom/android/settingslib/wifi/AccessPointPreference;

    iget-object v10, p0, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;->mUserBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$b;

    invoke-direct {v9, v7, v0, v10}, Lcom/android/settingslib/wifi/AccessPointPreference;-><init>(Lcom/android/settingslib/wifi/a;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$b;)V

    .line 137
    invoke-virtual {v9, v8}, Lcom/android/settingslib/wifi/AccessPointPreference;->setKey(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v9, v6}, Lcom/android/settingslib/wifi/AccessPointPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 139
    invoke-virtual {v9, p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 140
    iget-object v6, p0, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v6, v9}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 142
    :cond_2
    invoke-virtual {v9, v5}, Lcom/android/settingslib/wifi/AccessPointPreference;->setOrder(I)V

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 145
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;->mChildrenCache:Lcom/android/settings/utils/e;

    iget-object v2, p0, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, v2}, Lcom/android/settings/utils/e;->b(Landroidx/preference/PreferenceGroup;)V

    .line 147
    iget-object v0, p0, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v2, 0x1

    if-gtz v0, :cond_5

    const-string v0, "Saved networks activity loaded, but there are no saved networks!"

    .line 148
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v0, p0, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, v4}, Landroidx/preference/PreferenceGroup;->setVisible(Z)V

    goto :goto_1

    .line 151
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->setVisible(Z)V

    .line 154
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;->mHost:Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;->c()Z

    move-result v0

    if-nez v0, :cond_6

    .line 155
    iget-object v0, p0, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, v2}, Landroidx/preference/PreferenceGroup;->setVisible(Z)V

    .line 156
    iget-object v0, p0, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0, v6}, Landroidx/preference/PreferenceGroup;->setTitle(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v0, p0, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;->mPreferenceGroup:Landroidx/preference/PreferenceGroup;

    const v1, 0x7f0d0256

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->setLayoutResource(I)V

    :cond_6
    return-void
.end method

.method public setHost(Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;)Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsPreferenceController;->mHost:Lcom/android/settings/wifi/savedaccesspoints/SavedAccessPointsWifiSettings;

    return-object p0
.end method
