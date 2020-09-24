.class public abstract Lcom/coloros/settings/BackTitlePreferenceFragment;
.super Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;
.source "BackTitlePreferenceFragment.java"


# instance fields
.field private mPreferenceHighlighted:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected isSpecialHighlightClass()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 4

    .line 61
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onResume()V

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-virtual {p0}, Lcom/coloros/settings/BackTitlePreferenceFragment;->showBackTitle()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/coloros/settings/BackTitlePreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 65
    invoke-virtual {p0}, Lcom/coloros/settings/BackTitlePreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/coloros/settings/utils/az;->a(Landroid/app/Activity;Ljava/lang/String;Landroidx/preference/PreferenceGroup;)V

    .line 68
    invoke-virtual {p0}, Lcom/coloros/settings/BackTitlePreferenceFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-static {v1, v0, v2}, Lcom/coloros/settings/utils/az;->a(Landroid/app/Activity;Landroidx/recyclerview/widget/RecyclerView;Z)V

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/BackTitlePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 71
    iget-boolean v1, p0, Lcom/coloros/settings/BackTitlePreferenceFragment;->mPreferenceHighlighted:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/coloros/settings/BackTitlePreferenceFragment;->isSpecialHighlightClass()Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    iput-boolean v2, p0, Lcom/coloros/settings/BackTitlePreferenceFragment;->mPreferenceHighlighted:Z

    :cond_1
    return-void
.end method

.method public showBackTitle()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 2

    .line 29
    invoke-virtual {p0}, Lcom/coloros/settings/BackTitlePreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/az;->b(Landroid/app/Activity;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    .line 31
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 2

    .line 36
    invoke-virtual {p0}, Lcom/coloros/settings/BackTitlePreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/az;->b(Landroid/app/Activity;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    .line 38
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2

    .line 43
    invoke-virtual {p0}, Lcom/coloros/settings/BackTitlePreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/az;->b(Landroid/app/Activity;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    .line 45
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 2

    .line 50
    invoke-virtual {p0}, Lcom/coloros/settings/BackTitlePreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/az;->b(Landroid/app/Activity;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    .line 52
    invoke-super {p0, p1, p2, p3}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method
