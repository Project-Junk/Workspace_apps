.class public Lcom/coloros/settings/feature/othersettings/development/ColorRunningServices;
.super Lcom/android/settings/applications/RunningServices;
.source "ColorRunningServices.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/android/settings/applications/RunningServices;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 33
    invoke-super {p0, p1}, Lcom/android/settings/applications/RunningServices;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/ColorRunningServices;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;)V

    .line 35
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/ColorRunningServices;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/ColorRunningServices;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/coloros/settings/utils/az;->a(Landroid/app/Activity;Landroidx/recyclerview/widget/RecyclerView;Z)V

    const/4 p1, 0x1

    .line 36
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/development/ColorRunningServices;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p2, 0x7f0d0099

    const/4 p3, 0x0

    .line 41
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a059c

    .line 42
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/settings/applications/RunningProcessesView;

    iput-object p2, p0, Lcom/coloros/settings/feature/othersettings/development/ColorRunningServices;->a:Lcom/android/settings/applications/RunningProcessesView;

    .line 43
    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/development/ColorRunningServices;->a:Lcom/android/settings/applications/RunningProcessesView;

    invoke-virtual {p2}, Lcom/android/settings/applications/RunningProcessesView;->a()V

    const p2, 0x7f0a03b6

    .line 44
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/settings/feature/othersettings/development/ColorRunningServices;->b:Landroid/view/View;

    .line 45
    new-instance p2, Lcom/android/settings/widget/d;

    iget-object p3, p0, Lcom/coloros/settings/feature/othersettings/development/ColorRunningServices;->b:Landroid/view/View;

    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/development/ColorRunningServices;->a:Lcom/android/settings/applications/RunningProcessesView;

    invoke-direct {p2, p3, v0}, Lcom/android/settings/widget/d;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput-object p2, p0, Lcom/coloros/settings/feature/othersettings/development/ColorRunningServices;->c:Lcom/android/settings/widget/d;

    const p2, 0x7f0a070a

    .line 48
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcolor/support/v7/widget/Toolbar;

    if-eqz p2, :cond_0

    const p3, 0x7f1212bb

    .line 50
    invoke-virtual {p2, p3}, Lcolor/support/v7/widget/Toolbar;->setTitle(I)V

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/ColorRunningServices;->supportFullScreen()Z

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/coloros/settings/utils/al;->a(Landroidx/preference/PreferenceFragmentCompat;Landroid/view/View;Z)V

    .line 53
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/othersettings/development/ColorRunningServices;->setMainLayoutPaddingTop(Landroid/view/View;)V

    return-object p1
.end method

.method public shouldAddTopPadding()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
