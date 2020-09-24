.class public abstract Lcom/coloros/systemui/common/settings/BaseSettingsFragment;
.super Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment;
.source "BaseSettingsFragment.java"


# instance fields
.field private mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment;-><init>()V

    return-void
.end method

.method private getStatusBarView()Landroid/view/View;
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/coloros/systemui/common/settings/BaseSettingsFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/coloros/systemui/common/util/WindowInsetsUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    .line 85
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/coloros/systemui/common/settings/BaseSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08068e

    .line 86
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v2, 0x0

    .line 87
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setForceDarkAllowed(Z)V

    .line 88
    iget-object v2, p0, Lcom/coloros/systemui/common/settings/BaseSettingsFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/color/support/util/ColorDarkModeUtil;->isNightMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/coloros/systemui/common/settings/BaseSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f060182

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 91
    :cond_0
    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 92
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {p0, v2, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method


# virtual methods
.method protected abstract getTitle()Ljava/lang/String;
.end method

.method public synthetic lambda$onCreateView$0$BaseSettingsFragment(Landroid/view/View;)V
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/coloros/systemui/common/settings/BaseSettingsFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 46
    invoke-super {p0, p1}, Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/coloros/systemui/common/settings/BaseSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/common/settings/BaseSettingsFragment;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 52
    invoke-super {p0, p1, p2, p3}, Lcom/coloros/systemui/common/settings/others/ColorSettingsHighlightableFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const p2, 0x7f0a05a9

    .line 54
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcolor/support/v7/widget/Toolbar;

    const p3, 0x7f0a0211

    .line 55
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 56
    invoke-static {}, Lcom/coloros/systemui/common/settings/others/ThemeBundleUtils;->getImmersiveTheme()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    .line 57
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    if-nez p2, :cond_2

    return-object p1

    :cond_2
    const p3, 0x7f08058f

    .line 62
    invoke-virtual {p2, p3}, Lcolor/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    .line 63
    new-instance p3, Lcom/coloros/systemui/common/settings/-$$Lambda$BaseSettingsFragment$Eky-V-g1Ey7V2O7VNZ2GPspGoEs;

    invoke-direct {p3, p0}, Lcom/coloros/systemui/common/settings/-$$Lambda$BaseSettingsFragment$Eky-V-g1Ey7V2O7VNZ2GPspGoEs;-><init>(Lcom/coloros/systemui/common/settings/BaseSettingsFragment;)V

    invoke-virtual {p2, p3}, Lcolor/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    invoke-virtual {p0}, Lcom/coloros/systemui/common/settings/BaseSettingsFragment;->getTitle()Ljava/lang/String;

    move-result-object p3

    .line 65
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const p3, 0x7f110151

    .line 66
    invoke-virtual {p2, p3}, Lcolor/support/v7/widget/Toolbar;->setTitle(I)V

    goto :goto_0

    .line 68
    :cond_3
    invoke-virtual {p2, p3}, Lcolor/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    .line 70
    :goto_0
    invoke-virtual {p2}, Lcolor/support/v7/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcolor/support/v7/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {p0}, Lcom/coloros/systemui/common/settings/BaseSettingsFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    const/4 p3, 0x1

    .line 72
    invoke-static {p2, p3}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    .line 73
    iget-object p3, p0, Lcom/coloros/systemui/common/settings/BaseSettingsFragment;->mActivity:Landroid/app/Activity;

    invoke-static {p3}, Lcom/coloros/systemui/common/util/WindowInsetsUtil;->getAppBarHeight(Landroid/content/Context;)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p3, v0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setPadding(IIII)V

    const p2, 0x7f0a00b9

    .line 74
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcolor/support/design/widget/ColorAppBarLayout;

    .line 75
    invoke-direct {p0}, Lcom/coloros/systemui/common/settings/BaseSettingsFragment;->getStatusBarView()Landroid/view/View;

    move-result-object p0

    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    invoke-virtual {p2, p0, v0, p3}, Lcolor/support/design/widget/ColorAppBarLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-object p1
.end method
