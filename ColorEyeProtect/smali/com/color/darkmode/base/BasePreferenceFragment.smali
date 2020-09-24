.class public abstract Lcom/color/darkmode/base/BasePreferenceFragment;
.super Lcom/color/support/preference/e;


# instance fields
.field private mColorAppBarLayout:Lcolor/support/design/widget/ColorAppBarLayout;

.field private mDividerLine:Landroid/view/View;

.field private mToolbar:Lcolor/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/color/support/preference/e;-><init>()V

    return-void
.end method

.method private final getStatusBarView()Landroid/view/View;
    .locals 3

    sget-object v0, Lcom/color/darkmode/utils/StatusBarUtils;->INSTANCE:Lcom/color/darkmode/utils/StatusBarUtils;

    invoke-virtual {p0}, Lcom/color/darkmode/base/BasePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, La/d/b/g;->a()V

    :cond_0
    const-string v2, "context!!"

    invoke-static {v1, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/color/darkmode/utils/StatusBarUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v0

    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/color/darkmode/base/BasePreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/color/darkmode/base/BasePreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f0701df

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {p0, v2, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    check-cast v1, Landroid/view/View;

    return-object v1
.end method


# virtual methods
.method protected final getMToolbar()Lcolor/support/v7/widget/Toolbar;
    .locals 0

    iget-object p0, p0, Lcom/color/darkmode/base/BasePreferenceFragment;->mToolbar:Lcolor/support/v7/widget/Toolbar;

    return-object p0
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/color/support/preference/e;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, La/d/b/g;->a()V

    :cond_0
    const p2, 0x7f080168

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcolor/support/v7/widget/Toolbar;

    iput-object p2, p0, Lcom/color/darkmode/base/BasePreferenceFragment;->mToolbar:Lcolor/support/v7/widget/Toolbar;

    const p2, 0x7f080095

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/color/darkmode/base/BasePreferenceFragment;->mDividerLine:Landroid/view/View;

    invoke-virtual {p0}, Lcom/color/darkmode/base/BasePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/color/common/a/b;->a(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/color/darkmode/base/BasePreferenceFragment;->mDividerLine:Landroid/view/View;

    if-eqz p2, :cond_1

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p2, p0, Lcom/color/darkmode/base/BasePreferenceFragment;->mToolbar:Lcolor/support/v7/widget/Toolbar;

    if-eqz p2, :cond_2

    const p3, 0x7f070140

    invoke-virtual {p2, p3}, Lcolor/support/v7/widget/Toolbar;->setNavigationIcon(I)V

    :cond_2
    iget-object p2, p0, Lcom/color/darkmode/base/BasePreferenceFragment;->mToolbar:Lcolor/support/v7/widget/Toolbar;

    if-eqz p2, :cond_3

    new-instance p3, Lcom/color/darkmode/base/BasePreferenceFragment$onCreateView$1;

    invoke-direct {p3, p0}, Lcom/color/darkmode/base/BasePreferenceFragment$onCreateView$1;-><init>(Lcom/color/darkmode/base/BasePreferenceFragment;)V

    check-cast p3, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Lcolor/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    invoke-virtual {p0}, Lcom/color/darkmode/base/BasePreferenceFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    const/4 p3, 0x1

    invoke-static {p2, p3}, Landroidx/core/f/t;->a(Landroid/view/View;Z)V

    iget-object p2, p0, Lcom/color/darkmode/base/BasePreferenceFragment;->mToolbar:Lcolor/support/v7/widget/Toolbar;

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/color/darkmode/base/BasePreferenceFragment;->getTitle()Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Lcolor/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_4
    const p2, 0x7f080048

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcolor/support/design/widget/ColorAppBarLayout;

    iput-object p2, p0, Lcom/color/darkmode/base/BasePreferenceFragment;->mColorAppBarLayout:Lcolor/support/design/widget/ColorAppBarLayout;

    invoke-direct {p0}, Lcom/color/darkmode/base/BasePreferenceFragment;->getStatusBarView()Landroid/view/View;

    move-result-object p2

    iget-object p0, p0, Lcom/color/darkmode/base/BasePreferenceFragment;->mColorAppBarLayout:Lcolor/support/design/widget/ColorAppBarLayout;

    if-eqz p0, :cond_5

    const/4 p3, 0x0

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p2, p3, v0}, Lcolor/support/design/widget/ColorAppBarLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    return-object p1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected final setMToolbar(Lcolor/support/v7/widget/Toolbar;)V
    .locals 0

    iput-object p1, p0, Lcom/color/darkmode/base/BasePreferenceFragment;->mToolbar:Lcolor/support/v7/widget/Toolbar;

    return-void
.end method
