.class public Lcom/android/settings/network/MobileNetworkListController;
.super Lcom/android/settingslib/core/a;
.source "MobileNetworkListController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/network/g$a;


# instance fields
.field private a:Landroid/telephony/SubscriptionManager;

.field private b:Lcom/android/settings/network/g;

.field private c:Landroidx/preference/PreferenceScreen;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V
    .locals 1

    .line 65
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 66
    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkListController;->a:Landroid/telephony/SubscriptionManager;

    .line 67
    new-instance v0, Lcom/android/settings/network/g;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/network/g;-><init>(Landroid/content/Context;Lcom/android/settings/network/g$a;)V

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkListController;->b:Lcom/android/settings/network/g;

    .line 68
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkListController;->d:Ljava/util/Map;

    .line 69
    invoke-virtual {p2, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method private a()V
    .locals 10

    .line 93
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkListController;->c:Landroidx/preference/PreferenceScreen;

    if-nez v0, :cond_0

    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkListController;->d:Ljava/util/Map;

    .line 101
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/settings/network/MobileNetworkListController;->d:Ljava/util/Map;

    .line 103
    iget-object v1, p0, Lcom/android/settings/network/MobileNetworkListController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/network/f;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 105
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 106
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    .line 107
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/preference/Preference;

    if-nez v4, :cond_1

    .line 109
    new-instance v4, Landroidx/preference/Preference;

    iget-object v5, p0, Lcom/android/settings/network/MobileNetworkListController;->c:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v5}, Landroidx/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 110
    iget-object v5, p0, Lcom/android/settings/network/MobileNetworkListController;->c:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v5, v4}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 112
    :cond_1
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 114
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 115
    iget-object v5, p0, Lcom/android/settings/network/MobileNetworkListController;->a:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v5, v3}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const v5, 0x7f120da0

    .line 116
    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    :cond_2
    const v5, 0x7f120daf

    .line 118
    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 121
    :cond_3
    iget-object v5, p0, Lcom/android/settings/network/MobileNetworkListController;->a:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v5, v3}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result v5

    if-eqz v5, :cond_4

    const v5, 0x7f120da1

    .line 122
    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 124
    :cond_4
    iget-object v5, p0, Lcom/android/settings/network/MobileNetworkListController;->mContext:Landroid/content/Context;

    const v6, 0x7f120db9

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 125
    invoke-static {v2}, Lcom/android/settings/network/f;->a(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 124
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 129
    :goto_1
    new-instance v5, Lcom/android/settings/network/-$$Lambda$MobileNetworkListController$YsYDBebZwn3-sFe9B8bEIQUx_L0;

    invoke-direct {v5, p0, v2, v3}, Lcom/android/settings/network/-$$Lambda$MobileNetworkListController$YsYDBebZwn3-sFe9B8bEIQUx_L0;-><init>(Lcom/android/settings/network/MobileNetworkListController;Landroid/telephony/SubscriptionInfo;I)V

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 150
    iget-object v2, p0, Lcom/android/settings/network/MobileNetworkListController;->d:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 152
    :cond_5
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 153
    iget-object v2, p0, Lcom/android/settings/network/MobileNetworkListController;->c:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    :cond_6
    return-void
.end method

.method private synthetic a(Landroid/telephony/SubscriptionInfo;ILandroidx/preference/Preference;)Z
    .locals 3

    .line 130
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result p3

    const/4 v0, 0x1

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/android/settings/network/MobileNetworkListController;->a:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p3, p2}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result p3

    if-nez p3, :cond_0

    .line 131
    iget-object p1, p0, Lcom/android/settings/network/MobileNetworkListController;->a:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, p2, v0}, Landroid/telephony/SubscriptionManager;->setSubscriptionEnabled(IZ)Z

    goto :goto_1

    .line 134
    :cond_0
    invoke-static {}, Lcom/android/settings/m;->c()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 135
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.MAIN"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    new-instance p3, Landroid/content/ComponentName;

    const-string v1, "com.qualcomm.qti.networksetting"

    const-string v2, "com.qualcomm.qti.networksetting.MobileNetworkSettings"

    invoke-direct {p3, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 139
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p3

    const-string v1, "slot_id"

    invoke-virtual {p2, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 140
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "slot extra: "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "name: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "MobileNetworkListCtlr"

    .line 140
    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 143
    :cond_1
    new-instance p2, Landroid/content/Intent;

    iget-object p3, p0, Lcom/android/settings/network/MobileNetworkListController;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/settings/network/telephony/MobileNetworkActivity;

    invoke-direct {p2, p3, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 144
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    const-string p3, "android.provider.extra.SUB_ID"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 146
    :goto_0
    iget-object p1, p0, Lcom/android/settings/network/MobileNetworkListController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_1
    return v0
.end method

.method public static synthetic lambda$YsYDBebZwn3-sFe9B8bEIQUx_L0(Lcom/android/settings/network/MobileNetworkListController;Landroid/telephony/SubscriptionInfo;ILandroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/network/MobileNetworkListController;->a(Landroid/telephony/SubscriptionInfo;ILandroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 85
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 86
    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkListController;->c:Landroidx/preference/PreferenceScreen;

    .line 87
    iget-object p1, p0, Lcom/android/settings/network/MobileNetworkListController;->c:Landroidx/preference/PreferenceScreen;

    const-string v0, "add_more"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkListController;->mContext:Landroid/content/Context;

    .line 88
    invoke-static {v0}, Lcom/android/settings/network/telephony/d;->c(Landroid/content/Context;)Z

    move-result v0

    .line 87
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 89
    invoke-direct {p0}, Lcom/android/settings/network/MobileNetworkListController;->a()V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onAirplaneModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkListController;->b:Lcom/android/settings/network/g;

    invoke-virtual {v0}, Lcom/android/settings/network/g;->b()V

    return-void
.end method

.method public onResume()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkListController;->b:Lcom/android/settings/network/g;

    invoke-virtual {v0}, Lcom/android/settings/network/g;->a()V

    .line 75
    invoke-direct {p0}, Lcom/android/settings/network/MobileNetworkListController;->a()V

    return-void
.end method

.method public onSubscriptionsChanged()V
    .locals 0

    .line 173
    invoke-direct {p0}, Lcom/android/settings/network/MobileNetworkListController;->a()V

    return-void
.end method
