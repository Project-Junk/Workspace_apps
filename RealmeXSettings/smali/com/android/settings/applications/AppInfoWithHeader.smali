.class public abstract Lcom/android/settings/applications/AppInfoWithHeader;
.super Lcom/android/settings/applications/AppInfoBase;
.source "AppInfoWithHeader.java"


# instance fields
.field private q:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .line 43
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoWithHeader;->c()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 49
    :cond_0
    iget-boolean p1, p0, Lcom/android/settings/applications/AppInfoWithHeader;->q:Z

    if-eqz p1, :cond_1

    const-string p1, "AppInfoWithHeader"

    const-string v0, "onActivityCreated: ignoring duplicate call"

    .line 50
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 53
    iput-boolean p1, p0, Lcom/android/settings/applications/AppInfoWithHeader;->q:Z

    .line 54
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoWithHeader;->g:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_2

    return-void

    .line 55
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoWithHeader;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/android/settings/applications/AppInfoWithHeader;->g:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/16 v2, 0x3e7

    if-ne v1, v2, :cond_3

    .line 62
    invoke-static {}, Loppo/util/OppoMultiLauncherUtil;->getInstance()Loppo/util/OppoMultiLauncherUtil;

    move-result-object v1

    .line 63
    iget-object v2, p0, Lcom/android/settings/applications/AppInfoWithHeader;->g:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Loppo/util/OppoMultiLauncherUtil;->getAliasByPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 65
    :cond_3
    iget-object v1, p0, Lcom/android/settings/applications/AppInfoWithHeader;->g:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/android/settings/applications/AppInfoWithHeader;->m:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    .line 69
    invoke-static {v0, p0, v2}, Lcom/android/settings/widget/b;->a(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/b;

    move-result-object v2

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoWithHeader;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoWithHeader;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/widget/b;->a(Landroidx/recyclerview/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/b;

    move-result-object v2

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoWithHeader;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/AppInfoWithHeader;->g:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 72
    invoke-virtual {v3, v4}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 71
    invoke-virtual {v2, v3}, Lcom/android/settings/widget/b;->a(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/b;

    move-result-object v2

    .line 1163
    iput-object v1, v2, Lcom/android/settings/widget/b;->b:Ljava/lang/CharSequence;

    .line 73
    iget-object v1, p0, Lcom/android/settings/applications/AppInfoWithHeader;->g:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_4

    .line 1179
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v1, v2, Lcom/android/settings/widget/b;->c:Ljava/lang/CharSequence;

    .line 74
    :cond_4
    iget-object v1, p0, Lcom/android/settings/applications/AppInfoWithHeader;->g:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 75
    invoke-static {v1}, Lcom/coloros/settingslib/applications/a;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    .line 1224
    iput-boolean v1, v2, Lcom/android/settings/widget/b;->h:Z

    .line 75
    iget-object v1, p0, Lcom/android/settings/applications/AppInfoWithHeader;->i:Ljava/lang/String;

    .line 2209
    iput-object v1, v2, Lcom/android/settings/widget/b;->e:Ljava/lang/String;

    .line 76
    iget-object v1, p0, Lcom/android/settings/applications/AppInfoWithHeader;->g:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2214
    iput v1, v2, Lcom/android/settings/widget/b;->f:I

    .line 3197
    iput-boolean p1, v2, Lcom/android/settings/widget/b;->g:Z

    const/4 p1, 0x0

    .line 79
    invoke-virtual {v2, p1}, Lcom/android/settings/widget/b;->a(I)Lcom/android/settings/widget/b;

    move-result-object p1

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoWithHeader;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/widget/b;->a(Landroid/app/Activity;Landroid/content/Context;)Lcom/android/settingslib/widget/LayoutPreference;

    move-result-object p1

    const/16 v0, -0x59

    .line 81
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOrder(I)V

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoWithHeader;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method
