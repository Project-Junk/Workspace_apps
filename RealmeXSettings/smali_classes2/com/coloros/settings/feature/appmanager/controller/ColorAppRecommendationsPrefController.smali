.class public Lcom/coloros/settings/feature/appmanager/controller/ColorAppRecommendationsPrefController;
.super Lcom/android/settings/core/a;
.source "ColorAppRecommendationsPrefController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field public static final KEY_APP_RECOMMEND:Ljava/lang/String; = "system_app_recommendations"

.field public static final KEY_APP_RECOMMEND_CATEGORY:Ljava/lang/String; = "category_app_recommend"


# instance fields
.field private mAppRecommendedController:Lcom/android/settings/applications/c;

.field private mHost:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/fragment/app/Fragment;)V
    .locals 1

    const-string v0, "system_app_recommendations"

    .line 56
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    iput-object p2, p0, Lcom/coloros/settings/feature/appmanager/controller/ColorAppRecommendationsPrefController;->mHost:Landroidx/fragment/app/Fragment;

    .line 58
    new-instance p2, Lcom/android/settings/applications/c;

    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/android/settings/applications/c;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/coloros/settings/feature/appmanager/controller/ColorAppRecommendationsPrefController;->mAppRecommendedController:Lcom/android/settings/applications/c;

    .line 59
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/controller/ColorAppRecommendationsPrefController;->mHost:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 61
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/controller/ColorAppRecommendationsPrefController;->mHost:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/appmanager/controller/ColorAppRecommendationsPrefController;->jumpHereStatistics(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method private jumpHereStatistics(Landroid/app/Activity;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 70
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "from_package"

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 76
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 77
    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "20012"

    const-string v3, "jump_manage_applications"

    invoke-static {p1, v1, v3, v2, v0}, Lcom/oppo/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 99
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 100
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/controller/ColorAppRecommendationsPrefController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "category_app_recommend"

    .line 101
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    .line 102
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/controller/ColorAppRecommendationsPrefController;->mAppRecommendedController:Lcom/android/settings/applications/c;

    .line 1126
    iput-object p1, v0, Lcom/android/settings/applications/c;->b:Landroidx/preference/PreferenceScreen;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 4

    .line 85
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/controller/ColorAppRecommendationsPrefController;->mAppRecommendedController:Lcom/android/settings/applications/c;

    .line 86
    invoke-virtual {v0}, Lcom/android/settings/applications/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/controller/ColorAppRecommendationsPrefController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    const-string v3, "coloros_settings_recommend_app_visibility"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 5

    const-string v0, "coloros_settings_recommend_oaps_link"

    .line 109
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "system_app_recommendations"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 110
    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/controller/ColorAppRecommendationsPrefController;->mAppRecommendedController:Lcom/android/settings/applications/c;

    if-eqz v1, :cond_3

    .line 1181
    :try_start_0
    iget-object p1, v1, Lcom/android/settings/applications/c;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "oaps://mk/home"

    if-nez p1, :cond_0

    move-object p1, v2

    .line 1186
    :cond_0
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1187
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v1, Lcom/android/settings/applications/c;->a:Landroid/content/Context;

    const v4, 0x7f1201cf

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v2

    .line 1189
    :goto_0
    iget-object v3, v1, Lcom/android/settings/applications/c;->a:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/b/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1190
    iget-object p1, v1, Lcom/android/settings/applications/c;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-object p1, v2

    .line 1193
    :cond_2
    invoke-static {}, Lcom/b/a/a/a;->a()Lcom/b/a/a/a$a;

    move-result-object v2

    iget-object v3, v1, Lcom/android/settings/applications/c;->a:Landroid/content/Context;

    .line 2173
    iput-object v3, v2, Lcom/b/a/a/a$a;->c:Landroid/content/Context;

    .line 1193
    invoke-virtual {v2, p1}, Lcom/b/a/a/a$a;->a(Ljava/lang/String;)Lcom/b/a/a/a$a;

    move-result-object p1

    new-instance v2, Lcom/android/settings/applications/c$1;

    invoke-direct {v2, v1}, Lcom/android/settings/applications/c$1;-><init>(Lcom/android/settings/applications/c;)V

    .line 3168
    iput-object v2, p1, Lcom/b/a/a/a$a;->b:Lcom/b/a/a/a/a;

    .line 1198
    invoke-virtual {p1}, Lcom/b/a/a/a$a;->a()Lcom/b/a/a/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/b/a/a/a;->b()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1201
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "oasp error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "AppRecommendedController"

    invoke-static {v2, p1}, Lcom/coloros/settings/utils/ak;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3207
    :goto_1
    iget-object p1, v1, Lcom/android/settings/applications/c;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "app_manager_recommendation"

    .line 3209
    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3210
    iget-object p1, v1, Lcom/android/settings/applications/c;->a:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v3, "20012"

    invoke-static {p1, v3, v2, v0, v1}, Lcom/oppo/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    const/4 p1, 0x1

    return p1

    .line 115
    :cond_3
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/controller/ColorAppRecommendationsPrefController;->mAppRecommendedController:Lcom/android/settings/applications/c;

    if-eqz v0, :cond_0

    .line 4135
    iget-object v1, v0, Lcom/android/settings/applications/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/controller/ColorAppRecommendationsPrefController;->mAppRecommendedController:Lcom/android/settings/applications/c;

    if-eqz v0, :cond_0

    .line 4131
    iget-object v1, v0, Lcom/android/settings/applications/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "coloros_settings_recommend_app_visibility"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method
