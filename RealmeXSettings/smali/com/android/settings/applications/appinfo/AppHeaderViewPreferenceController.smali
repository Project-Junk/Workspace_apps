.class public Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;
.super Lcom/android/settings/core/a;
.source "AppHeaderViewPreferenceController.java"

# interfaces
.implements Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$a;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/j;


# static fields
.field private static final KEY_HEADER:Ljava/lang/String; = "header_view"


# instance fields
.field private mEntityHeaderController:Lcom/android/settings/widget/b;

.field private mHeader:Lcom/android/settingslib/widget/LayoutPreference;

.field private final mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

.field private final mPackageName:Ljava/lang/String;

.field private final mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "header_view"

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    iput-object p2, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 51
    iput-object p3, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mPackageName:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 53
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p1, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private setAppLabelAndIcon(Landroid/content/pm/PackageInfo;Lcom/coloros/settingslib/applications/ApplicationsState$a;)V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 91
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1}, Lcom/coloros/settingslib/applications/a;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result p1

    .line 92
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mEntityHeaderController:Lcom/android/settings/widget/b;

    .line 93
    invoke-virtual {v1, p2}, Lcom/android/settings/widget/b;->b(Lcom/coloros/settingslib/applications/ApplicationsState$a;)Lcom/android/settings/widget/b;

    move-result-object v1

    .line 94
    invoke-virtual {v1, p2}, Lcom/android/settings/widget/b;->a(Lcom/coloros/settingslib/applications/ApplicationsState$a;)Lcom/android/settings/widget/b;

    move-result-object p2

    .line 3224
    iput-boolean p1, p2, Lcom/android/settings/widget/b;->h:Z

    const/4 p1, 0x0

    .line 96
    invoke-virtual {p2, v0, p1}, Lcom/android/settings/widget/b;->a(Landroid/app/Activity;Z)Landroid/view/View;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    .line 65
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "header_view"

    .line 66
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/LayoutPreference;

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mHeader:Lcom/android/settingslib/widget/LayoutPreference;

    .line 67
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    .line 68
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mHeader:Lcom/android/settingslib/widget/LayoutPreference;

    const v2, 0x7f0a0260

    .line 69
    invoke-virtual {v1, v2}, Lcom/android/settingslib/widget/LayoutPreference;->a(I)Landroid/view/View;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/settings/widget/b;->a(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/b;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mPackageName:Ljava/lang/String;

    .line 1209
    iput-object v0, p1, Lcom/android/settings/widget/b;->e:Ljava/lang/String;

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/b;->a(I)Lcom/android/settings/widget/b;

    move-result-object p1

    .line 73
    invoke-virtual {p1}, Lcom/android/settings/widget/b;->a()Lcom/android/settings/widget/b;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mEntityHeaderController:Lcom/android/settings/widget/b;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onStart()V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mEntityHeaderController:Lcom/android/settings/widget/b;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 79
    invoke-virtual {v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/b;->a(Landroidx/recyclerview/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/b;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 80
    invoke-virtual {v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/b;->a(Landroid/app/Activity;)Lcom/android/settings/widget/b;

    return-void
.end method

.method public refreshUi()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 1321
    iget-object v0, v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->c:Landroid/content/pm/PackageInfo;

    .line 85
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 2313
    iget-object v1, v1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->b:Lcom/coloros/settingslib/applications/ApplicationsState$a;

    .line 85
    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;->setAppLabelAndIcon(Landroid/content/pm/PackageInfo;Lcom/coloros/settingslib/applications/ApplicationsState$a;)V

    return-void
.end method
