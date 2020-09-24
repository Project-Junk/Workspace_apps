.class public Lcom/coloros/settings/feature/process/RunningApplicationsInfo;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "RunningApplicationsInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private static a(Landroid/view/View;I)V
    .locals 0

    .line 61
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 p1, 0x8

    .line 63
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 33
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/coloros/settings/feature/process/RunningApplicationsInfo;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;)V

    .line 35
    invoke-virtual {p0}, Lcom/coloros/settings/feature/process/RunningApplicationsInfo;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/coloros/settings/feature/process/RunningApplicationsInfo;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/coloros/settings/utils/az;->a(Landroid/app/Activity;Landroidx/recyclerview/widget/RecyclerView;Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p2, 0x7f0d02ac

    const/4 p3, 0x0

    .line 40
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a070a

    .line 41
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcolor/support/v7/widget/Toolbar;

    if-eqz p2, :cond_0

    const p3, 0x7f12129a

    .line 43
    invoke-virtual {p2, p3}, Lcolor/support/v7/widget/Toolbar;->setTitle(I)V

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/process/RunningApplicationsInfo;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/freeze/FreezeManager;->isFreezeSupport(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_1

    const p2, 0x7f0a06fc

    .line 46
    invoke-static {p1, p2}, Lcom/coloros/settings/feature/process/RunningApplicationsInfo;->a(Landroid/view/View;I)V

    const p2, 0x7f0a068a

    .line 47
    invoke-static {p1, p2}, Lcom/coloros/settings/feature/process/RunningApplicationsInfo;->a(Landroid/view/View;I)V

    const p2, 0x7f0a06fd

    .line 48
    invoke-static {p1, p2}, Lcom/coloros/settings/feature/process/RunningApplicationsInfo;->a(Landroid/view/View;I)V

    const p2, 0x7f0a068b

    .line 49
    invoke-static {p1, p2}, Lcom/coloros/settings/feature/process/RunningApplicationsInfo;->a(Landroid/view/View;I)V

    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/settings/feature/process/RunningApplicationsInfo;->supportFullScreen()Z

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/coloros/settings/utils/al;->a(Landroidx/preference/PreferenceFragmentCompat;Landroid/view/View;Z)V

    .line 52
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/process/RunningApplicationsInfo;->setMainLayoutPaddingTop(Landroid/view/View;)V

    return-object p1
.end method

.method public shouldAddTopPadding()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
