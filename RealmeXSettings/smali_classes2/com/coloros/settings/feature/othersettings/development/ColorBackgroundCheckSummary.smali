.class public Lcom/coloros/settings/feature/othersettings/development/ColorBackgroundCheckSummary;
.super Lcom/android/settings/applications/appops/BackgroundCheckSummary;
.source "ColorBackgroundCheckSummary.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/othersettings/development/ColorBackgroundCheckSummary$ColorAppOpsCategory;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/settings/applications/appops/BackgroundCheckSummary;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 40
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorBackgroundCheckSummary;->a:Landroid/view/LayoutInflater;

    .line 42
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorBackgroundCheckSummary;->a:Landroid/view/LayoutInflater;

    const p3, 0x7f0d0077

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 44
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/ColorBackgroundCheckSummary;->supportFullScreen()Z

    move-result p3

    invoke-static {p0, p1, p3}, Lcom/coloros/settings/utils/al;->a(Landroidx/preference/PreferenceFragmentCompat;Landroid/view/View;Z)V

    const p3, 0x7f0a00b2

    .line 45
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/development/ColorBackgroundCheckSummary;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/al;->c(Landroid/content/Context;Landroid/view/View;)V

    .line 50
    instance-of p2, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz p2, :cond_0

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v0, 0x1

    iput-boolean v0, p2, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/development/ColorBackgroundCheckSummary;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p2

    .line 55
    new-instance v0, Lcom/coloros/settings/feature/othersettings/development/ColorBackgroundCheckSummary$ColorAppOpsCategory;

    sget-object v1, Lcom/android/settings/applications/appops/a;->k:Lcom/android/settings/applications/appops/a$c;

    invoke-direct {v0, v1}, Lcom/coloros/settings/feature/othersettings/development/ColorBackgroundCheckSummary$ColorAppOpsCategory;-><init>(Lcom/android/settings/applications/appops/a$c;)V

    const-string v1, "appops"

    invoke-virtual {p2, p3, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 57
    invoke-virtual {p2}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-object p1
.end method
