.class public final Lcom/android/settings/notification/u;
.super Lcom/android/settingslib/core/a;
.source "ZenModeAllBypassingAppsPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# instance fields
.field a:Lcom/coloros/settingslib/applications/ApplicationsState;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field b:Landroidx/preference/PreferenceScreen;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field c:Landroid/content/Context;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final d:Ljava/lang/String;

.field private e:Lcom/coloros/settingslib/applications/ApplicationsState$Session;

.field private f:Lcom/android/settings/notification/k;

.field private g:Landroidx/fragment/app/Fragment;

.field private final h:Lcom/coloros/settingslib/applications/ApplicationsState$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Application;Landroidx/fragment/app/Fragment;)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 62
    :cond_0
    invoke-static {p2}, Lcom/coloros/settingslib/applications/ApplicationsState;->b(Landroid/app/Application;)Lcom/coloros/settingslib/applications/ApplicationsState;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/u;-><init>(Landroid/content/Context;Lcom/coloros/settingslib/applications/ApplicationsState;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/coloros/settingslib/applications/ApplicationsState;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    const-string p1, "zen_mode_bypassing_apps_category"

    .line 49
    iput-object p1, p0, Lcom/android/settings/notification/u;->d:Ljava/lang/String;

    .line 56
    new-instance p1, Lcom/android/settings/notification/k;

    invoke-direct {p1}, Lcom/android/settings/notification/k;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/u;->f:Lcom/android/settings/notification/k;

    .line 158
    new-instance p1, Lcom/android/settings/notification/u$2;

    invoke-direct {p1, p0}, Lcom/android/settings/notification/u$2;-><init>(Lcom/android/settings/notification/u;)V

    iput-object p1, p0, Lcom/android/settings/notification/u;->h:Lcom/coloros/settingslib/applications/ApplicationsState$d;

    .line 68
    iput-object p2, p0, Lcom/android/settings/notification/u;->a:Lcom/coloros/settingslib/applications/ApplicationsState;

    .line 69
    iput-object p3, p0, Lcom/android/settings/notification/u;->g:Landroidx/fragment/app/Fragment;

    .line 71
    iget-object p1, p0, Lcom/android/settings/notification/u;->a:Lcom/coloros/settingslib/applications/ApplicationsState;

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 72
    iget-object p2, p0, Lcom/android/settings/notification/u;->h:Lcom/coloros/settingslib/applications/ApplicationsState$d;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/coloros/settingslib/applications/ApplicationsState;->a(Lcom/coloros/settingslib/applications/ApplicationsState$d;Landroidx/lifecycle/Lifecycle;)Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/u;->e:Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/android/settings/notification/u;)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/settings/notification/u;->g:Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method static synthetic b(Lcom/android/settings/notification/u;)Landroid/content/Context;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/settings/notification/u;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 98
    iget-object v0, p0, Lcom/android/settings/notification/u;->e:Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    if-nez v0, :cond_0

    return-void

    .line 102
    :cond_0
    sget-object v0, Lcom/coloros/settingslib/applications/ApplicationsState;->S:Lcom/coloros/settingslib/applications/ApplicationsState$b;

    .line 103
    iget-object v1, p0, Lcom/android/settings/notification/u;->e:Lcom/coloros/settingslib/applications/ApplicationsState$Session;

    sget-object v2, Lcom/coloros/settingslib/applications/ApplicationsState;->G:Ljava/util/Comparator;

    const/4 v3, 0x1

    .line 1920
    invoke-virtual {v1, v0, v2, v3}, Lcom/coloros/settingslib/applications/ApplicationsState$Session;->a(Lcom/coloros/settingslib/applications/ApplicationsState$b;Ljava/util/Comparator;Z)Ljava/util/ArrayList;

    return-void
.end method

.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 78
    iput-object p1, p0, Lcom/android/settings/notification/u;->b:Landroidx/preference/PreferenceScreen;

    .line 79
    iget-object v0, p0, Lcom/android/settings/notification/u;->b:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/u;->c:Landroid/content/Context;

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/notification/u;->a()V

    .line 81
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "zen_mode_bypassing_apps_category"

    return-object v0
.end method

.method public final isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
