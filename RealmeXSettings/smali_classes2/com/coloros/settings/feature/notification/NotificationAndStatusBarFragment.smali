.class public Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;
.super Lcom/android/settings/applications/AppAndNotificationDashboardFragment;
.source "NotificationAndStatusBarFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field static final a:Ljava/lang/String; = "NotificationAndStatusBarFragment"


# instance fields
.field private b:Landroid/content/IntentFilter;

.field private c:Landroid/os/Handler;

.field private final d:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 185
    new-instance v0, Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment$2;

    invoke-direct {v0}, Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment$2;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;-><init>()V

    .line 146
    new-instance v0, Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment$1;-><init>(Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;->d:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;)Landroid/os/Handler;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;->c:Landroid/os/Handler;

    return-object p0
.end method

.method private static a(Landroid/content/Context;Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;Landroidx/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;",
            "Landroidx/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    new-instance v1, Lcom/coloros/settings/feature/notification/controller/PowerLevelPreferenceController;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/notification/controller/PowerLevelPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v1, Lcom/coloros/settings/feature/notification/controller/RealmePowerLevelPreferenceController;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/notification/controller/RealmePowerLevelPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v1, Lcom/coloros/settings/feature/notification/controller/NetworkSpeedPreferenceController;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/notification/controller/NetworkSpeedPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    new-instance v1, Lcom/coloros/settings/feature/notification/controller/NotificationPromptPreferenceController;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/notification/controller/NotificationPromptPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance v1, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    .line 113
    invoke-virtual {p2, v1}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 115
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance p2, Lcom/coloros/settings/feature/notification/controller/ShowDataUsageInfoPreferenceController;

    invoke-direct {p2, p0}, Lcom/coloros/settings/feature/notification/controller/ShowDataUsageInfoPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance p2, Lcom/coloros/settings/feature/notification/controller/LedNotifyPreferenceController;

    invoke-direct {p2, p0}, Lcom/coloros/settings/feature/notification/controller/LedNotifyPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance p2, Lcom/coloros/settings/feature/notification/controller/NoticeWakeUpPreferenceController;

    invoke-direct {p2, p0}, Lcom/coloros/settings/feature/notification/controller/NoticeWakeUpPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance p2, Lcom/coloros/settings/feature/notification/controller/FullScreenBannerPreferenceController;

    invoke-direct {p2, p0}, Lcom/coloros/settings/feature/notification/controller/FullScreenBannerPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance p2, Lcom/coloros/settings/feature/notification/controller/DefaultSlideNotificationTypePreferenceController;

    invoke-direct {p2, p0}, Lcom/coloros/settings/feature/notification/controller/DefaultSlideNotificationTypePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance p2, Lcom/coloros/settings/feature/notification/controller/NotificationStatusBarRecommendedController;

    invoke-direct {p2, p0, p1}, Lcom/coloros/settings/feature/notification/controller/NotificationStatusBarRecommendedController;-><init>(Landroid/content/Context;Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;)V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method static synthetic c(Landroid/content/Context;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-static {p0, v0, v0}, Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;->a(Landroid/content/Context;Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;Landroidx/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 87
    sget-object v0, Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/a;",
            ">;"
        }
    .end annotation

    .line 97
    invoke-virtual {p0}, Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;->a(Landroid/content/Context;Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;Landroidx/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f1500d7

    return v0
.end method

.method public isSpecialHighlightClass()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 71
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;->c:Landroid/os/Handler;

    .line 73
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "oppo.intent.action.SIM_INFO_UPDATE"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;->b:Landroid/content/IntentFilter;

    .line 74
    iget-object p1, p0, Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;->b:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    iget-object p1, p0, Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;->b:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    iget-object p1, p0, Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;->b:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SERVICE_STATE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public onDisplayPreferenceDialog(Landroidx/preference/Preference;)V
    .locals 1

    .line 128
    invoke-static {p0, p1}, Lcom/coloros/settings/utils/i;->a(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)Landroidx/fragment/app/DialogFragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 130
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->onDisplayPreferenceDialog(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 142
    invoke-super {p0}, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->onPause()V

    .line 143
    invoke-virtual {p0}, Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 5

    .line 136
    invoke-super {p0}, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->onResume()V

    .line 137
    invoke-virtual {p0}, Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;->d:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;->b:Landroid/content/IntentFilter;

    const-string v3, "oppo.permission.OPPO_COMPONENT_SAFE"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public useColorStyle()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
