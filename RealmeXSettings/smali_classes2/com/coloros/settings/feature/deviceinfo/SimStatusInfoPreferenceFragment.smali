.class public Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "SimStatusInfoPreferenceFragment.java"


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private b:Z

.field private c:Landroidx/preference/PreferenceScreen;

.field private d:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

.field private e:Landroid/telephony/SubscriptionManager;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "sim_slot_one"

    const-string v1, "sim_slot_two"

    .line 41
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;->f:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "SimStatusPreference"

    return-object v0
.end method

.method public final a(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1

    .line 133
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;->c:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    .line 138
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 140
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f12077e

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 143
    :cond_1
    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method final a(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;Ljava/lang/String;Z)V
    .locals 1

    .line 121
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;->c:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    .line 126
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 128
    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_1
    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x4de

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f15008b

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 66
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;->c:Landroidx/preference/PreferenceScreen;

    .line 68
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;->mContext:Landroid/content/Context;

    const-string v0, "telephony_subscription_service"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;->e:Landroid/telephony/SubscriptionManager;

    .line 70
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/settings/utils/bb;->g(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 71
    :goto_0
    iput-boolean v2, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;->b:Z

    move v2, v0

    :goto_1
    if-ge v2, p1, :cond_2

    .line 73
    sget-object v3, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;->a:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 1109
    iget-object v3, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    if-nez v3, :cond_1

    .line 79
    iget-object v3, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;->c:Landroidx/preference/PreferenceScreen;

    sget-object v4, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;->a:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/PreferenceCategory;

    .line 80
    iget-object v4, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;->c:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    .line 84
    :cond_1
    new-instance v3, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v4

    invoke-direct {v3, p0, v4, v2}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;-><init>(Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;I)V

    iput-object v3, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;->d:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    .line 85
    iget-object v3, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;->f:Ljava/util/Map;

    iget-object v4, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;->d:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    sget-object v5, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;->a:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v3, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;->d:Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;

    invoke-virtual {v3}, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceController;->a()V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 89
    :cond_2
    iget-boolean p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;->b:Z

    if-nez p1, :cond_3

    .line 90
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;->c:Landroidx/preference/PreferenceScreen;

    sget-object v2, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;->a:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    const-string v2, ""

    .line 91
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 92
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;->c:Landroidx/preference/PreferenceScreen;

    sget-object v2, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;->a:[Ljava/lang/String;

    aget-object v1, v2, v1

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    .line 93
    iget-object v1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;->c:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v1, p1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 94
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;->c:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->setVisible(Z)V

    return-void

    .line 98
    :cond_3
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;->c:Landroidx/preference/PreferenceScreen;

    sget-object v2, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;->a:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    if-nez p1, :cond_4

    .line 100
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;->c:Landroidx/preference/PreferenceScreen;

    sget-object v0, Lcom/coloros/settings/feature/deviceinfo/SimStatusInfoPreferenceFragment;->a:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    if-eqz p1, :cond_4

    .line 103
    invoke-virtual {p1}, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;->a()V

    :cond_4
    return-void
.end method
