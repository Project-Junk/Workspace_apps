.class public Lcom/android/settings/applications/RecentAppsPreferenceController;
.super Lcom/android/settings/core/a;
.source "RecentAppsPreferenceController.java"

# interfaces
.implements Lcom/android/settings/applications/RecentAppStatsMixin$a;


# static fields
.field static final KEY_DIVIDER:Ljava/lang/String; = "recent_apps_divider"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field mAppEntitiesController:Lcom/android/settingslib/widget/c;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mApplicationsState:Lcom/coloros/settingslib/applications/ApplicationsState;

.field mDivider:Landroidx/preference/Preference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mHost:Landroidx/fragment/app/Fragment;

.field private final mIconDrawableFactory:Landroid/util/IconDrawableFactory;

.field private mRecentApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field

.field mRecentAppsPreference:Lcom/android/settingslib/widget/LayoutPreference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 73
    iget-object p1, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mContext:Landroid/content/Context;

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    .line 73
    invoke-static {p1}, Lcom/coloros/settingslib/applications/ApplicationsState;->b(Landroid/app/Application;)Lcom/coloros/settingslib/applications/ApplicationsState;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mApplicationsState:Lcom/coloros/settingslib/applications/ApplicationsState;

    .line 75
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iput p1, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mUserId:I

    .line 76
    iget-object p1, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/RecentAppsPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private createAppEntity(Landroid/app/usage/UsageStats;)Lcom/android/settingslib/widget/d;
    .locals 8

    .line 154
    invoke-virtual {p1}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mApplicationsState:Lcom/coloros/settingslib/applications/ApplicationsState;

    iget v2, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mUserId:I

    .line 156
    invoke-virtual {v1, v0, v2}, Lcom/coloros/settingslib/applications/ApplicationsState;->b(Ljava/lang/String;I)Lcom/coloros/settingslib/applications/ApplicationsState$a;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 161
    :cond_0
    new-instance v2, Lcom/android/settingslib/widget/d$a;

    invoke-direct {v2}, Lcom/android/settingslib/widget/d$a;-><init>()V

    iget-object v3, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    iget-object v4, v1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    .line 162
    invoke-virtual {v3, v4}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 2101
    iput-object v3, v2, Lcom/android/settingslib/widget/d$a;->a:Landroid/graphics/drawable/Drawable;

    .line 162
    iget-object v3, v1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->c:Ljava/lang/String;

    .line 2109
    iput-object v3, v2, Lcom/android/settingslib/widget/d$a;->b:Ljava/lang/CharSequence;

    .line 163
    iget-object v3, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mContext:Landroid/content/Context;

    .line 165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-double v4, v4

    sget-object p1, Landroid/icu/text/RelativeDateTimeFormatter$Style;->SHORT:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    const/4 v6, 0x0

    .line 164
    invoke-static {v3, v4, v5, v6, p1}, Lcom/android/settingslib/utils/c;->a(Landroid/content/Context;DZLandroid/icu/text/RelativeDateTimeFormatter$Style;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 2117
    iput-object p1, v2, Lcom/android/settingslib/widget/d$a;->c:Ljava/lang/CharSequence;

    .line 164
    new-instance p1, Lcom/android/settings/applications/-$$Lambda$RecentAppsPreferenceController$fMy2xR7I7yA2-jrm9aido3GaBbY;

    invoke-direct {p1, p0, v0, v1}, Lcom/android/settings/applications/-$$Lambda$RecentAppsPreferenceController$fMy2xR7I7yA2-jrm9aido3GaBbY;-><init>(Lcom/android/settings/applications/RecentAppsPreferenceController;Ljava/lang/String;Lcom/coloros/settingslib/applications/ApplicationsState$a;)V

    .line 2125
    iput-object p1, v2, Lcom/android/settingslib/widget/d$a;->d:Landroid/view/View$OnClickListener;

    .line 3094
    new-instance p1, Lcom/android/settingslib/widget/d;

    invoke-direct {p1, v2, v6}, Lcom/android/settingslib/widget/d;-><init>(Lcom/android/settingslib/widget/d$a;B)V

    return-object p1
.end method

.method private displayRecentApps()V
    .locals 5

    .line 141
    iget-object v0, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mRecentApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStats;

    .line 142
    invoke-direct {p0, v2}, Lcom/android/settings/applications/RecentAppsPreferenceController;->createAppEntity(Landroid/app/usage/UsageStats;)Lcom/android/settingslib/widget/d;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 144
    iget-object v3, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mAppEntitiesController:Lcom/android/settingslib/widget/c;

    add-int/lit8 v4, v1, 0x1

    .line 1185
    iget-object v3, v3, Lcom/android/settingslib/widget/c;->d:[Lcom/android/settingslib/widget/d;

    aput-object v2, v3, v1

    move v1, v4

    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    :cond_2
    return-void
.end method

.method private refreshUi()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mRecentApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/android/settings/applications/RecentAppsPreferenceController;->displayRecentApps()V

    .line 126
    iget-object v0, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mRecentAppsPreference:Lcom/android/settingslib/widget/LayoutPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->setVisible(Z)V

    .line 127
    iget-object v0, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mDivider:Landroidx/preference/Preference;

    if-eqz v0, :cond_2

    .line 128
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mDivider:Landroidx/preference/Preference;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mRecentAppsPreference:Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/LayoutPreference;->setVisible(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 90
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "recent_apps_divider"

    .line 92
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mDivider:Landroidx/preference/Preference;

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/applications/RecentAppsPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mRecentAppsPreference:Lcom/android/settingslib/widget/LayoutPreference;

    .line 94
    iget-object p1, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mRecentAppsPreference:Lcom/android/settingslib/widget/LayoutPreference;

    const v0, 0x7f0a009b

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/LayoutPreference;->a(I)Landroid/view/View;

    move-result-object p1

    .line 95
    iget-object v0, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mContext:Landroid/content/Context;

    .line 1104
    new-instance v1, Lcom/android/settingslib/widget/c;

    invoke-direct {v1, v0, p1}, Lcom/android/settingslib/widget/c;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const p1, 0x7f1211be

    .line 1139
    iput p1, v1, Lcom/android/settingslib/widget/c;->i:I

    .line 96
    new-instance p1, Lcom/android/settings/applications/-$$Lambda$RecentAppsPreferenceController$lSTV08Ev1kIAejEfOXr-6eUBel8;

    invoke-direct {p1, p0}, Lcom/android/settings/applications/-$$Lambda$RecentAppsPreferenceController$lSTV08Ev1kIAejEfOXr-6eUBel8;-><init>(Lcom/android/settings/applications/RecentAppsPreferenceController;)V

    .line 1164
    iput-object p1, v1, Lcom/android/settingslib/widget/c;->l:Landroid/view/View$OnClickListener;

    .line 97
    iput-object v1, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mAppEntitiesController:Lcom/android/settingslib/widget/c;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic lambda$createAppEntity$1$RecentAppsPreferenceController(Ljava/lang/String;Lcom/coloros/settingslib/applications/ApplicationsState$a;Landroid/view/View;)V
    .locals 7

    .line 168
    const-class v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object p2, p2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v3, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mHost:Landroidx/fragment/app/Fragment;

    const v1, 0x7f1201f8

    const/16 v5, 0x3e9

    const/16 v6, 0x2ec

    move-object v2, p1

    invoke-static/range {v0 .. v6}, Lcom/android/settings/applications/AppInfoBase;->a(Ljava/lang/Class;ILjava/lang/String;ILandroidx/fragment/app/Fragment;II)V

    return-void
.end method

.method public synthetic lambda$displayPreference$0$RecentAppsPreferenceController(Landroid/view/View;)V
    .locals 2

    .line 98
    new-instance p1, Lcom/android/settings/core/f;

    iget-object v0, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 99
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object p1

    const/4 v0, 0x0

    .line 100
    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object p1

    const v1, 0x7f1201f8

    .line 4063
    invoke-virtual {p1, v0, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object p1

    const/16 v0, 0x2ec

    .line 102
    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 103
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    return-void
.end method

.method public onReloadDataCompleted(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;)V"
        }
    .end annotation

    .line 109
    iput-object p1, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mRecentApps:Ljava/util/List;

    .line 110
    invoke-direct {p0}, Lcom/android/settings/applications/RecentAppsPreferenceController;->refreshUi()V

    .line 112
    new-instance p1, Lcom/android/settings/applications/RecentAppsPreferenceController$1;

    iget-object v0, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mContext:Landroid/content/Context;

    .line 113
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {p1, p0, v0, v1}, Lcom/android/settings/applications/RecentAppsPreferenceController$1;-><init>(Lcom/android/settings/applications/RecentAppsPreferenceController;Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 120
    invoke-virtual {p1, v0}, Lcom/android/settings/applications/RecentAppsPreferenceController$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public setFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/android/settings/applications/RecentAppsPreferenceController;->mHost:Landroidx/fragment/app/Fragment;

    return-void
.end method
