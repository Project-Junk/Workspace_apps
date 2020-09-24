.class public final Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;
.super Lcom/color/darkmode/base/BasePreferenceFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$AppAlphabetIndexer;,
        Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$ThirdApp;,
        Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$Companion;

.field private static final PACKAGE_NAME:Ljava/lang/String; = "packageName"


# instance fields
.field private mCanShowMore:Z

.field private mJob:Lb/a/ap;

.field private mListLayout:Landroid/widget/FrameLayout;

.field private mLoadingLayout:Landroid/widget/RelativeLayout;

.field private mOpenCount:I

.field private mOppoTouchSearchView:Lcom/oppo/support/widget/OppoTouchSearchView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$Companion;-><init>(La/d/b/e;)V

    sput-object v0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->Companion:Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/color/darkmode/base/BasePreferenceFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$getMCanShowMore$p(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->mCanShowMore:Z

    return p0
.end method

.method public static final synthetic access$getMJob$p(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;)Lb/a/ap;
    .locals 1

    iget-object p0, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->mJob:Lb/a/ap;

    if-nez p0, :cond_0

    const-string v0, "mJob"

    invoke-static {v0}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getMListLayout$p(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object p0, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->mListLayout:Landroid/widget/FrameLayout;

    if-nez p0, :cond_0

    const-string v0, "mListLayout"

    invoke-static {v0}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getMLoadingLayout$p(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object p0, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->mLoadingLayout:Landroid/widget/RelativeLayout;

    if-nez p0, :cond_0

    const-string v0, "mLoadingLayout"

    invoke-static {v0}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getMOpenCount$p(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;)I
    .locals 0

    iget p0, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->mOpenCount:I

    return p0
.end method

.method public static final synthetic access$getMOppoTouchSearchView$p(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;)Lcom/oppo/support/widget/OppoTouchSearchView;
    .locals 1

    iget-object p0, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->mOppoTouchSearchView:Lcom/oppo/support/widget/OppoTouchSearchView;

    if-nez p0, :cond_0

    const-string v0, "mOppoTouchSearchView"

    invoke-static {v0}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$getMToolbar$p(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;)Lcolor/support/v7/widget/Toolbar;
    .locals 0

    invoke-virtual {p0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->getMToolbar()Lcolor/support/v7/widget/Toolbar;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$handleAllChecked(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->handleAllChecked(Z)V

    return-void
.end method

.method public static final synthetic access$inflateMenu(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;Lcolor/support/v7/widget/Toolbar;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->inflateMenu(Lcolor/support/v7/widget/Toolbar;)V

    return-void
.end method

.method public static final synthetic access$setMCanShowMore$p(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->mCanShowMore:Z

    return-void
.end method

.method public static final synthetic access$setMJob$p(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;Lb/a/ap;)V
    .locals 0

    iput-object p1, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->mJob:Lb/a/ap;

    return-void
.end method

.method public static final synthetic access$setMListLayout$p(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->mListLayout:Landroid/widget/FrameLayout;

    return-void
.end method

.method public static final synthetic access$setMLoadingLayout$p(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;Landroid/widget/RelativeLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->mLoadingLayout:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public static final synthetic access$setMOpenCount$p(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;I)V
    .locals 0

    iput p1, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->mOpenCount:I

    return-void
.end method

.method public static final synthetic access$setMOppoTouchSearchView$p(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;Lcom/oppo/support/widget/OppoTouchSearchView;)V
    .locals 0

    iput-object p1, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->mOppoTouchSearchView:Lcom/oppo/support/widget/OppoTouchSearchView;

    return-void
.end method

.method public static final synthetic access$setMToolbar$p(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;Lcolor/support/v7/widget/Toolbar;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->setMToolbar(Lcolor/support/v7/widget/Toolbar;)V

    return-void
.end method

.method public static final synthetic access$zoomDrawable(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->zoomDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private final handleAllChecked(Z)V
    .locals 7

    invoke-virtual {p0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "preferenceScreen"

    invoke-static {v0, v1}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/preference/PreferenceScreen;->b()I

    move-result v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    iput v2, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->mOpenCount:I

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    invoke-virtual {p0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceScreen;->b(I)Landroidx/preference/Preference;

    move-result-object v4

    instance-of v5, v4, Lcom/color/support/preference/ColorSwitchPreference;

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    if-eqz p1, :cond_0

    iget v6, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->mOpenCount:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->mOpenCount:I

    :cond_0
    check-cast v4, Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {v4}, Lcom/color/support/preference/ColorSwitchPreference;->a()Z

    move-result v6

    if-eq v6, p1, :cond_2

    invoke-virtual {v4, p1}, Lcom/color/support/preference/ColorSwitchPreference;->a(Z)V

    invoke-virtual {v4}, Lcom/color/support/preference/ColorSwitchPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v6, "packageName"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    move-object v6, v4

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_1

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    if-eqz v5, :cond_2

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->getMToolbar()Lcolor/support/v7/widget/Toolbar;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->inflateMenu(Lcolor/support/v7/widget/Toolbar;)V

    sget-object v0, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    check-cast v1, Ljava/util/Set;

    invoke-virtual {p0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_4

    invoke-static {}, La/d/b/g;->a()V

    :cond_4
    const-string v2, "context!!"

    invoke-static {p0, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1, p0}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->handleAllChecked(ZLjava/util/Set;Landroid/content/Context;)V

    :cond_5
    return-void
.end method

.method private final inflateMenu(Lcolor/support/v7/widget/Toolbar;)V
    .locals 2

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->mCanShowMore:Z

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lcolor/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    const/high16 v0, 0x7f0c0000

    invoke-virtual {p1, v0}, Lcolor/support/v7/widget/Toolbar;->a(I)V

    invoke-virtual {p1}, Lcolor/support/v7/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const v1, 0x7f08009a

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "item"

    invoke-static {v0, v1}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->mOpenCount:I

    if-lez v1, :cond_1

    const v1, 0x7f0f0022

    :goto_0
    invoke-virtual {p0, v1}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    goto :goto_1

    :cond_1
    const v1, 0x7f0f004b

    goto :goto_0

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    new-instance v0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$inflateMenu$1;

    invoke-direct {v0, p0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$inflateMenu$1;-><init>(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;)V

    check-cast v0, Landroidx/appcompat/widget/Toolbar$c;

    invoke-virtual {p1, v0}, Lcolor/support/v7/widget/Toolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$c;)V

    :cond_2
    :goto_2
    return-void
.end method

.method private final zoomDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 5

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-ne v0, p2, :cond_0

    if-ne v1, p2, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_1

    return-object p1

    :cond_1
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-static {}, La/d/b/g;->a()V

    :cond_2
    const-string v4, "activity!!"

    invoke-static {v3, v4}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    const-string v4, "activity!!.windowManager"

    invoke-static {v3, v4}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_3
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 p1, 0x1

    invoke-static {v2, p2, p2, p1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    check-cast p2, Landroid/graphics/drawable/Drawable;

    return-object p2
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    const v0, 0x7f0f0087

    invoke-virtual {p0, v0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getString(R.string.third_app)"

    invoke-static {p0, v0}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/color/darkmode/base/BasePreferenceFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    const p1, 0x7f120023

    invoke-virtual {p0, p1}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const-string v0, "inflater"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3}, Lcom/color/darkmode/base/BasePreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, La/d/b/g;->a()V

    :cond_0
    const p2, 0x7f0800f0

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "view!!.findViewById(R.id.oppo_spell_bar)"

    invoke-static {p2, p3}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/oppo/support/widget/OppoTouchSearchView;

    iput-object p2, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->mOppoTouchSearchView:Lcom/oppo/support/widget/OppoTouchSearchView;

    const p2, 0x7f080111

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "view!!.findViewById(R.id.rl_loading_layout)"

    invoke-static {p2, p3}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->mLoadingLayout:Landroid/widget/RelativeLayout;

    const p2, 0x102003f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "view!!.findViewById(android.R.id.list_container)"

    invoke-static {p2, p3}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->mListLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    new-instance p3, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$1;

    invoke-direct {p3, p0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$1;-><init>(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;)V

    check-cast p3, Landroid/view/View$OnTouchListener;

    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p2, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->mOppoTouchSearchView:Lcom/oppo/support/widget/OppoTouchSearchView;

    if-nez p2, :cond_1

    const-string p3, "mOppoTouchSearchView"

    invoke-static {p3}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_1
    new-instance p3, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$2;

    invoke-direct {p3, p0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$2;-><init>(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;)V

    check-cast p3, Landroid/view/View$OnTouchListener;

    invoke-virtual {p2, p3}, Lcom/oppo/support/widget/OppoTouchSearchView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f060079

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, p3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setPaddingRelative(IIII)V

    invoke-virtual {p0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    const-string p3, "listView"

    invoke-static {p2, p3}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    const-string p3, "listView"

    invoke-static {p2, p3}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-nez p2, :cond_2

    invoke-static {}, La/d/b/g;->a()V

    :cond_2
    const-string p3, "activity!!"

    invoke-static {p2, p3}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->isInMultiWindowMode()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->mOppoTouchSearchView:Lcom/oppo/support/widget/OppoTouchSearchView;

    if-nez p2, :cond_3

    const-string p3, "mOppoTouchSearchView"

    invoke-static {p3}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_3
    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Lcom/oppo/support/widget/OppoTouchSearchView;->setVisibility(I)V

    :cond_4
    new-instance p2, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$$inlined$CoroutineExceptionHandler$1;

    sget-object p3, Lb/a/n;->a:Lb/a/n$a;

    check-cast p3, La/b/f$c;

    invoke-direct {p2, p3}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$$inlined$CoroutineExceptionHandler$1;-><init>(La/b/f$c;)V

    check-cast p2, Lb/a/n;

    sget-object p3, Lb/a/ak;->a:Lb/a/ak;

    move-object v0, p3

    check-cast v0, Lb/a/s;

    move-object v1, p2

    check-cast v1, La/b/f;

    const/4 v2, 0x0

    new-instance p3, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;

    const/4 v3, 0x0

    invoke-direct {p3, p0, p2, v3}, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment$onCreateView$3;-><init>(Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;Lb/a/n;La/b/c;)V

    move-object v3, p3

    check-cast v3, La/d/a/m;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lb/a/b;->a(Lb/a/s;La/b/f;Lb/a/u;La/d/a/m;ILjava/lang/Object;)Lb/a/ap;

    move-result-object p2

    iput-object p2, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->mJob:Lb/a/ap;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/color/darkmode/base/BasePreferenceFragment;->onDestroy()V

    iget-object p0, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->mJob:Lb/a/ap;

    if-nez p0, :cond_0

    const-string v0, "mJob"

    invoke-static {v0}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p0}, Lb/a/ap;->k()V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/color/darkmode/base/BasePreferenceFragment;->onMultiWindowModeChanged(Z)V

    iget-object p0, p0, Lcom/color/darkmode/ui/fragment/DarkModeApplicationManageFragment;->mOppoTouchSearchView:Lcom/oppo/support/widget/OppoTouchSearchView;

    if-nez p0, :cond_0

    const-string v0, "mOppoTouchSearchView"

    invoke-static {v0}, La/d/b/g;->b(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    const/16 p1, 0x8

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/oppo/support/widget/OppoTouchSearchView;->setVisibility(I)V

    return-void
.end method
