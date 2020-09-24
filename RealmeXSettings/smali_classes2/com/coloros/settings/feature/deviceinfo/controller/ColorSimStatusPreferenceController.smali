.class public Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;
.super Lcom/android/settingslib/deviceinfo/a;
.source "ColorSimStatusPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController$a;
    }
.end annotation


# instance fields
.field public a:Landroid/content/BroadcastReceiver;

.field private final b:Landroid/telephony/TelephonyManager;

.field private final c:Landroid/telephony/SubscriptionManager;

.field private d:Landroidx/preference/PreferenceFragmentCompat;

.field private e:Z

.field private f:Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;)V
    .locals 1

    .line 91
    invoke-direct {p0, p1}, Lcom/android/settingslib/deviceinfo/a;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;->e:Z

    .line 55
    new-instance v0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController$1;-><init>(Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;->a:Landroid/content/BroadcastReceiver;

    .line 93
    iput-object p2, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;->d:Landroidx/preference/PreferenceFragmentCompat;

    const-string p2, "phone"

    .line 94
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;->b:Landroid/telephony/TelephonyManager;

    const-string p2, "telephony_subscription_service"

    .line 95
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;->c:Landroid/telephony/SubscriptionManager;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;->b:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method private a(I)Ljava/lang/CharSequence;
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;->c:Landroid/telephony/SubscriptionManager;

    const/4 v1, 0x1

    .line 190
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList(Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 192
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 193
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 194
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private a()Ljava/lang/String;
    .locals 11

    .line 152
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f12079b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 153
    iput-boolean v1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;->e:Z

    .line 156
    iget-object v2, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/coloros/settings/utils/bb;->g(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x0

    const-string v4, ""

    move-object v5, v4

    move v4, v3

    :cond_0
    :goto_0
    if-ge v4, v2, :cond_5

    .line 159
    invoke-direct {p0, v4}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;->a(I)Ljava/lang/CharSequence;

    move-result-object v6

    const v7, 0x7f121608

    const v8, 0x7f121609

    const-string v9, ": "

    if-nez v6, :cond_2

    if-nez v4, :cond_1

    .line 166
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 168
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 172
    :cond_2
    iput-boolean v3, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;->e:Z

    if-le v2, v1, :cond_4

    .line 174
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v4, :cond_3

    iget-object v8, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 177
    :cond_4
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    if-ge v4, v2, :cond_0

    .line 179
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 182
    :cond_5
    iget-boolean v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;->e:Z

    if-eqz v0, :cond_6

    .line 183
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f12079a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_6
    return-object v5
.end method

.method static synthetic b(Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;)V
    .locals 2

    .line 2084
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;->d:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2086
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 107
    invoke-super {p0, p1}, Lcom/android/settingslib/deviceinfo/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 109
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 1148
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f1214e5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 112
    invoke-direct {p0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "sim_status"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 122
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    invoke-super {p0, p1}, Lcom/android/settingslib/deviceinfo/a;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1

    .line 125
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "handlePreferenceTreeClick: mNoSim: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;->e:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ColorSimStatusPrefCtrl"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-boolean p1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;->e:Z

    return p1
.end method

.method public onPause()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;->f:Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController$a;

    if-eqz v0, :cond_0

    .line 141
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;->c:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1, v0}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;->f:Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController$a;

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 131
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;->f:Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController$a;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController$a;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController$a;-><init>(Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;->f:Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController$a;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;->c:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;->f:Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController$a;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 135
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;->a:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 117
    invoke-direct {p0}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
