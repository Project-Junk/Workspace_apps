.class public Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;
.super Lcom/android/settings/core/a;
.source "AppMemoryPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$a;
    }
.end annotation


# static fields
.field private static final KEY_MEMORY:Ljava/lang/String; = "memory"


# instance fields
.field private final mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

.field private mPreference:Landroidx/preference/Preference;

.field private mStats:Lcom/android/settings/applications/x;

.field private mStatsManager:Lcom/android/settings/applications/v;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "memory"

    .line 99
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 100
    iput-object p2, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    if-eqz p3, :cond_0

    .line 102
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Lcom/android/settings/applications/v;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->mStatsManager:Lcom/android/settings/applications/v;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;Lcom/android/settings/applications/v;)Lcom/android/settings/applications/v;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->mStatsManager:Lcom/android/settings/applications/v;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;Lcom/android/settings/applications/x;)Lcom/android/settings/applications/x;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->mStats:Lcom/android/settings/applications/x;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Landroidx/preference/Preference;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 118
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    return v0

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/development/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x2

    return v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 124
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "memory"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 125
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->mStatsManager:Lcom/android/settings/applications/v;

    .line 1118
    iget-object v0, v0, Lcom/android/settings/applications/v;->d:Lcom/android/settings/applications/v$a;

    .line 126
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->mStats:Lcom/android/settings/applications/x;

    .line 125
    invoke-static {p1, v0, v1}, Lcom/android/settings/applications/ProcessStatsBase;->a(Lcom/android/settings/SettingsActivity;Lcom/android/settings/applications/v$a;Lcom/android/settings/applications/x;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onResume()V
    .locals 2

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$a;-><init>(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;B)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
