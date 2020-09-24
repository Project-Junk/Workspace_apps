.class public Lcom/android/settings/notification/AppBubbleNotificationSettings;
.super Lcom/android/settings/notification/NotificationSettingsBase;
.source "AppBubbleNotificationSettings.java"

# interfaces
.implements Lcom/android/settings/notification/j$a;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private y:Lcom/android/settings/notification/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 102
    new-instance v0, Lcom/android/settings/notification/AppBubbleNotificationSettings$1;

    invoke-direct {v0}, Lcom/android/settings/notification/AppBubbleNotificationSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/notification/AppBubbleNotificationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationSettingsBase;-><init>()V

    return-void
.end method

.method protected static a(Landroid/content/Context;Lcom/android/settings/notification/AppBubbleNotificationSettings;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/notification/AppBubbleNotificationSettings;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/notification/l;",
            ">;"
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    new-instance v1, Lcom/android/settings/notification/HeaderPreferenceController;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/notification/HeaderPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v1, Lcom/android/settings/notification/BubblePreferenceController;

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p1}, Lcom/android/settings/notification/AppBubbleNotificationSettings;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance v2, Lcom/android/settings/notification/k;

    invoke-direct {v2}, Lcom/android/settings/notification/k;-><init>()V

    const/4 v3, 0x1

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/android/settings/notification/BubblePreferenceController;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Lcom/android/settings/notification/k;Z)V

    .line 64
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "AppBubNotiSettings"

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

    .line 56
    invoke-static {p1, p0}, Lcom/android/settings/notification/AppBubbleNotificationSettings;->a(Landroid/content/Context;Lcom/android/settings/notification/AppBubbleNotificationSettings;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/AppBubbleNotificationSettings;->r:Ljava/util/List;

    .line 57
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/settings/notification/AppBubbleNotificationSettings;->r:Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public final c()V
    .locals 0

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/notification/AppBubbleNotificationSettings;->b_()V

    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x6a4

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150016

    return v0
.end method

.method public onPause()V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/android/settings/notification/AppBubbleNotificationSettings;->y:Lcom/android/settings/notification/j;

    .line 1057
    iget-object v1, v0, Lcom/android/settings/notification/j;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 99
    invoke-super {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 6

    .line 78
    invoke-super {p0}, Lcom/android/settings/notification/NotificationSettingsBase;->onResume()V

    .line 80
    iget v0, p0, Lcom/android/settings/notification/AppBubbleNotificationSettings;->f:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/AppBubbleNotificationSettings;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/AppBubbleNotificationSettings;->i:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_0

    goto :goto_1

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/AppBubbleNotificationSettings;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/l;

    .line 87
    iget-object v2, p0, Lcom/android/settings/notification/AppBubbleNotificationSettings;->o:Lcom/android/settings/notification/k$a;

    iget-object v3, p0, Lcom/android/settings/notification/AppBubbleNotificationSettings;->n:Landroid/app/NotificationChannel;

    iget-object v4, p0, Lcom/android/settings/notification/AppBubbleNotificationSettings;->k:Landroid/app/NotificationChannelGroup;

    iget-object v5, p0, Lcom/android/settings/notification/AppBubbleNotificationSettings;->j:Lcom/android/settingslib/g$a;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings/notification/l;->a(Lcom/android/settings/notification/k$a;Landroid/app/NotificationChannel;Landroid/app/NotificationChannelGroup;Lcom/android/settingslib/g$a;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/notification/AppBubbleNotificationSettings;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/l;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/notification/AppBubbleNotificationSettings;->b_()V

    .line 92
    new-instance v0, Lcom/android/settings/notification/j;

    invoke-virtual {p0}, Lcom/android/settings/notification/AppBubbleNotificationSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/notification/j;-><init>(Landroid/content/Context;Lcom/android/settings/notification/j$a;)V

    iput-object v0, p0, Lcom/android/settings/notification/AppBubbleNotificationSettings;->y:Lcom/android/settings/notification/j;

    .line 93
    iget-object v0, p0, Lcom/android/settings/notification/AppBubbleNotificationSettings;->y:Lcom/android/settings/notification/j;

    .line 1049
    iget-object v1, v0, Lcom/android/settings/notification/j;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notification_bubbles"

    .line 1050
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    .line 1049
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    :cond_2
    :goto_1
    const-string v0, "AppBubNotiSettings"

    const-string v1, "Missing package or uid or packageinfo"

    .line 81
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/notification/AppBubbleNotificationSettings;->finish()V

    return-void
.end method
