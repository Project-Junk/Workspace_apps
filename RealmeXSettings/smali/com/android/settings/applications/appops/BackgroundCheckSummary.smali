.class public Lcom/android/settings/applications/appops/BackgroundCheckSummary;
.super Lcom/android/settings/core/InstrumentedPreferenceFragment;
.source "BackgroundCheckSummary.java"


# instance fields
.field protected a:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x102

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 43
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/applications/appops/BackgroundCheckSummary;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f1202ae

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 50
    iput-object p1, p0, Lcom/android/settings/applications/appops/BackgroundCheckSummary;->a:Landroid/view/LayoutInflater;

    .line 52
    iget-object p1, p0, Lcom/android/settings/applications/appops/BackgroundCheckSummary;->a:Landroid/view/LayoutInflater;

    const p3, 0x7f0d004b

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 57
    instance-of p2, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz p2, :cond_0

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 p3, 0x1

    iput-boolean p3, p2, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/appops/BackgroundCheckSummary;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    const p3, 0x7f0a00b2

    .line 62
    new-instance v0, Lcom/android/settings/applications/appops/AppOpsCategory;

    sget-object v1, Lcom/android/settings/applications/appops/a;->k:Lcom/android/settings/applications/appops/a$c;

    invoke-direct {v0, v1}, Lcom/android/settings/applications/appops/AppOpsCategory;-><init>(Lcom/android/settings/applications/appops/a$c;)V

    const-string v1, "appops"

    invoke-virtual {p2, p3, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 64
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-object p1
.end method
