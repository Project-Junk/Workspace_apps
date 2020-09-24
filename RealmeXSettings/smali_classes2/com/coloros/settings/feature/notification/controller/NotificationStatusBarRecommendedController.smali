.class public Lcom/coloros/settings/feature/notification/controller/NotificationStatusBarRecommendedController;
.super Lcom/android/settings/core/a;
.source "NotificationStatusBarRecommendedController.java"


# static fields
.field private static final KEY:Ljava/lang/String; = "notification_status_bar_bottom_recommended"


# instance fields
.field private mFragment:Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;)V
    .locals 1

    const-string v0, "notification_status_bar_bottom_recommended"

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    iput-object p2, p0, Lcom/coloros/settings/feature/notification/controller/NotificationStatusBarRecommendedController;->mFragment:Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 7

    .line 55
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "notification_status_bar_bottom_recommended"

    .line 56
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference;

    if-eqz p1, :cond_3

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    iget-object v1, p0, Lcom/coloros/settings/feature/notification/controller/NotificationStatusBarRecommendedController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/notification/m;->a(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "notification_and_status_bar"

    if-eqz v1, :cond_0

    .line 61
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.settings.SOUND_SETTINGS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.android.settings"

    .line 62
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "notification_ringtone"

    const-string v4, ":settings:fragment_args_key"

    .line 63
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    new-instance v4, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;

    iget-object v5, p0, Lcom/coloros/settings/feature/notification/controller/NotificationStatusBarRecommendedController;->mContext:Landroid/content/Context;

    const v6, 0x7f120ef5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1, v3, v2}, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;-><init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/coloros/settings/feature/notification/controller/NotificationStatusBarRecommendedController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/settings/feature/display/controller/CurvedDisplayPreferenceController;->isPreferenceAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    new-instance v1, Lcom/android/settings/core/f;

    iget-object v3, p0, Lcom/coloros/settings/feature/notification/controller/NotificationStatusBarRecommendedController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-string v3, "com.coloros.settings.feature.display.curveddisplay.CurvedDisplaySettingFragment"

    .line 72
    invoke-virtual {v1, v3}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object v1

    iget-object v3, p0, Lcom/coloros/settings/feature/notification/controller/NotificationStatusBarRecommendedController;->mFragment:Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;

    if-eqz v3, :cond_1

    .line 74
    invoke-interface {v3}, Lcom/android/settingslib/core/instrumentation/b;->getMetricsCategory()I

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 73
    :goto_0
    invoke-virtual {v1, v3}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 1063
    invoke-virtual {v1, v3, v4}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object v1

    .line 77
    invoke-virtual {v1}, Lcom/android/settings/core/f;->b()Landroid/content/Intent;

    move-result-object v1

    .line 78
    new-instance v3, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;

    iget-object v4, p0, Lcom/coloros/settings/feature/notification/controller/NotificationStatusBarRecommendedController;->mContext:Landroid/content/Context;

    const v5, 0x7f120686

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "curved_display"

    invoke-direct {v3, v4, v1, v5, v2}, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference$b;-><init>(Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_2
    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/ColorRecommendedPreference;->a(Ljava/util/List;)V

    :cond_3
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
