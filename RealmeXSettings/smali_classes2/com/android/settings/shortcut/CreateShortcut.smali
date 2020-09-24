.class public Lcom/android/settings/shortcut/CreateShortcut;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "CreateShortcut.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "CreateShortcut"

    return-object v0
.end method

.method public getHelpResource()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x5df

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f150077

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 49
    const-class p1, Lcom/android/settings/shortcut/CreateShortcutPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/shortcut/CreateShortcut;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/android/settings/shortcut/CreateShortcutPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/shortcut/CreateShortcut;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/shortcut/CreateShortcutPreferenceController;->setActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 37
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/android/settings/shortcut/CreateShortcut;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_0

    .line 40
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/settings/shortcut/CreateShortcut;->setArguments(Landroid/os/Bundle;)V

    :cond_0
    const/4 v0, 0x0

    const-string v1, "need_search_icon_in_action_bar"

    .line 43
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
