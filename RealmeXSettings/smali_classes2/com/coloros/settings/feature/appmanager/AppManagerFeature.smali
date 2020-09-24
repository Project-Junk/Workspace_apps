.class public Lcom/coloros/settings/feature/appmanager/AppManagerFeature;
.super Lcom/color/injector/adaptor/g;
.source "AppManagerFeature.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lcom/color/injector/a/a;
    a = "app_manager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/appmanager/AppManagerFeature$ConfirmRiskFragment;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:J = 0x96L

.field private static final REFRESH_TITLE_DELAY:J = 0x12cL

.field public static final STATISTICES_EVNET_ID:Ljava/lang/String; = "click_app_info_items"

.field private static final TAG:Ljava/lang/String; = "AppManagerFeature"


# instance fields
.field private mAppEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settingslib/applications/ApplicationsState$a;",
            ">;"
        }
    .end annotation
.end field

.field private mAppRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mBackToTop:Lcom/coloros/settings/a/a;

.field private mColorAppBarLayout:Lcolor/support/design/widget/ColorAppBarLayout;

.field private mDefaultComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/coloros/settingslib/applications/ApplicationsState$a;",
            ">;"
        }
    .end annotation
.end field

.field private mEnforcedAdmin:Lcom/android/settingslib/g$a;

.field private mFirstEnter:Z

.field private mHandler:Landroid/os/Handler;

.field private mHasAccountAndroidTestEnterprise:Z

.field private mHeadViewHeight:I

.field private mIsImmersiveTheme:Z

.field private mListType:I

.field private mManageApplicationsWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/applications/manageapplications/ManageApplications;",
            ">;"
        }
    .end annotation
.end field

.field private mMenu:Landroid/view/Menu;

.field private mOnStateChangeListener:Lcom/color/support/widget/ColorSearchViewAnimate$OnStateChangeListener;

.field private mQueryTarget:Ljava/lang/String;

.field private mRecyclerHeadView:Landroid/view/View;

.field private mSearchBar:Lcolor/support/v7/widget/SearchView;

.field private mSearchDivider:Landroid/view/View;

.field private mSearchLayout:Landroid/widget/FrameLayout;

.field private mSearchResultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settingslib/applications/ApplicationsState$a;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchTask:Lcom/coloros/settings/feature/appmanager/search/a;

.field private mSearchView:Lcom/color/support/widget/ColorSearchViewAnimate;

.field private mSearchViewBottomMargin:I

.field private mSearchViewHeight:I

.field private mSwitchChangeListener:Lcom/coloros/settings/feature/appmanager/AppManagerFeature$ConfirmRiskFragment$a;

.field private mSwitchValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mToolBarMinHeight:I

.field private mToolBarPaddingTop:I

.field private mToolbar:Lcolor/support/v7/widget/Toolbar;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 141
    invoke-direct {p0, p1}, Lcom/color/injector/adaptor/g;-><init>(Ljava/lang/String;)V

    .line 128
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    .line 136
    iput-boolean p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mFirstEnter:Z

    const/4 p1, 0x0

    .line 138
    iput-boolean p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mHasAccountAndroidTestEnterprise:Z

    .line 481
    new-instance p1, Lcom/coloros/settings/feature/appmanager/-$$Lambda$AppManagerFeature$hLBmKE6cyvtiiO0KuKYo-S5IsqA;

    invoke-direct {p1, p0}, Lcom/coloros/settings/feature/appmanager/-$$Lambda$AppManagerFeature$hLBmKE6cyvtiiO0KuKYo-S5IsqA;-><init>(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mOnStateChangeListener:Lcom/color/support/widget/ColorSearchViewAnimate$OnStateChangeListener;

    .line 785
    new-instance p1, Lcom/coloros/settings/feature/appmanager/search/a;

    new-instance v0, Lcom/coloros/settings/feature/appmanager/-$$Lambda$AppManagerFeature$o6mkenKgOicNFsRJj1Istk7GYXA;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/appmanager/-$$Lambda$AppManagerFeature$o6mkenKgOicNFsRJj1Istk7GYXA;-><init>(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;)V

    invoke-direct {p1, v0}, Lcom/coloros/settings/feature/appmanager/search/a;-><init>(Lcom/coloros/settings/feature/appmanager/search/a$a;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchTask:Lcom/coloros/settings/feature/appmanager/search/a;

    .line 894
    new-instance p1, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$7;

    invoke-direct {p1, p0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$7;-><init>(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSwitchChangeListener:Lcom/coloros/settings/feature/appmanager/AppManagerFeature$ConfirmRiskFragment$a;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;)Lcolor/support/v7/widget/SearchView;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchBar:Lcolor/support/v7/widget/SearchView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;)Lcom/color/support/widget/ColorSearchViewAnimate;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchView:Lcom/color/support/widget/ColorSearchViewAnimate;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;Lcom/coloros/settingslib/applications/ApplicationsState$a;ZI)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->setCanInstallApps(Lcom/coloros/settingslib/applications/ApplicationsState$a;ZI)V

    return-void
.end method

.method static synthetic access$200(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;FZ)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->applyToolbarTransformation(FZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;)Landroid/view/View;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mRecyclerHeadView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mAppRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;)Lcolor/support/design/widget/ColorAppBarLayout;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mColorAppBarLayout:Lcolor/support/design/widget/ColorAppBarLayout;

    return-object p0
.end method

.method static synthetic access$600(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;)I
    .locals 0

    .line 100
    iget p0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mListType:I

    return p0
.end method

.method static synthetic access$700(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;)Ljava/lang/String;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mQueryTarget:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mQueryTarget:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;Ljava/lang/String;)Z
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->doSearchTask(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;)Ljava/util/ArrayList;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSwitchValues:Ljava/util/ArrayList;

    return-object p0
.end method

.method private applyToolbarTransformation(FZ)V
    .locals 9

    .line 628
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mToolbar:Lcolor/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Lcolor/support/v7/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 629
    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mRecyclerHeadView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 630
    iget-object v2, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchView:Lcom/color/support/widget/ColorSearchViewAnimate;

    if-nez v2, :cond_0

    return-void

    .line 633
    :cond_0
    invoke-virtual {v2}, Lcom/color/support/widget/ColorSearchViewAnimate;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    .line 635
    iget v4, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mToolBarMinHeight:I

    int-to-float v5, v4

    mul-float/2addr v5, p1

    float-to-int v5, v5

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 636
    iget v5, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mHeadViewHeight:I

    sub-int/2addr v5, v4

    int-to-float v5, v5

    int-to-float v4, v4

    mul-float/2addr v4, p1

    add-float/2addr v5, v4

    float-to-int v4, v5

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 638
    iget v4, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchViewHeight:I

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 639
    instance-of v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_1

    .line 640
    move-object v4, v2

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 641
    iget v5, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchViewBottomMargin:I

    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 643
    :cond_1
    iget-object v4, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchView:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-virtual {v4}, Lcom/color/support/widget/ColorSearchViewAnimate;->getPaddingStart()I

    move-result v5

    iget-object v6, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchView:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-virtual {v6}, Lcom/color/support/widget/ColorSearchViewAnimate;->getPaddingEnd()I

    move-result v6

    iget-object v7, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchView:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-virtual {v7}, Lcom/color/support/widget/ColorSearchViewAnimate;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v4, v5, v3, v6, v7}, Lcom/color/support/widget/ColorSearchViewAnimate;->setPadding(IIII)V

    goto :goto_0

    .line 645
    :cond_2
    iget v4, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mToolBarMinHeight:I

    int-to-float v5, v4

    int-to-float v6, v4

    mul-float/2addr v6, p1

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 646
    iget v5, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mHeadViewHeight:I

    int-to-float v5, v5

    int-to-float v6, v4

    mul-float/2addr v6, p1

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 648
    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 649
    instance-of v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_3

    .line 650
    move-object v4, v2

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 651
    iput v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 653
    :cond_3
    iget-object v4, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchView:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-virtual {v4}, Lcom/color/support/widget/ColorSearchViewAnimate;->getPaddingStart()I

    move-result v5

    iget v6, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mToolBarPaddingTop:I

    iget-object v7, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchView:Lcom/color/support/widget/ColorSearchViewAnimate;

    .line 654
    invoke-virtual {v7}, Lcom/color/support/widget/ColorSearchViewAnimate;->getPaddingEnd()I

    move-result v7

    iget-object v8, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchView:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-virtual {v8}, Lcom/color/support/widget/ColorSearchViewAnimate;->getPaddingBottom()I

    move-result v8

    .line 653
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/color/support/widget/ColorSearchViewAnimate;->setPadding(IIII)V

    .line 657
    :goto_0
    iget-object v4, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mToolbar:Lcolor/support/v7/widget/Toolbar;

    invoke-virtual {v4, v0}, Lcolor/support/v7/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 658
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchView:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorSearchViewAnimate;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 659
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mRecyclerHeadView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_4

    if-nez p2, :cond_4

    .line 663
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 664
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mToolbar:Lcolor/support/v7/widget/Toolbar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcolor/support/v7/widget/Toolbar;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method private doCheckAction(Lcom/android/settings/applications/manageapplications/ManageApplications;Lcom/coloros/settingslib/applications/ApplicationsState$a;Lcom/color/support/widget/ColorSwitch;IZ)V
    .locals 1

    .line 1072
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mEnforcedAdmin:Lcom/android/settingslib/g$a;

    if-eqz v0, :cond_0

    xor-int/lit8 p2, p5, 0x1

    .line 1073
    invoke-virtual {p3, p2}, Lcom/color/support/widget/ColorSwitch;->setChecked(Z)V

    .line 1074
    invoke-virtual {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mEnforcedAdmin:Lcom/android/settingslib/g$a;

    invoke-static {p1, p2}, Lcom/android/settingslib/g;->a(Landroid/content/Context;Lcom/android/settingslib/g$a;)V

    return-void

    :cond_0
    if-eqz p5, :cond_1

    .line 1079
    iget-object p3, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSwitchChangeListener:Lcom/coloros/settings/feature/appmanager/AppManagerFeature$ConfirmRiskFragment$a;

    invoke-static {p1, p2, p4, p3}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$ConfirmRiskFragment;->a(Landroidx/fragment/app/Fragment;Lcom/coloros/settingslib/applications/ApplicationsState$a;ILcom/coloros/settings/feature/appmanager/AppManagerFeature$ConfirmRiskFragment$a;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 1081
    invoke-virtual {p3, p1}, Lcom/color/support/widget/ColorSwitch;->setChecked(Z)V

    .line 1082
    invoke-direct {p0, p2, p1, p4}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->setCanInstallApps(Lcom/coloros/settingslib/applications/ApplicationsState$a;ZI)V

    return-void
.end method

.method private doSearchTask(Ljava/lang/String;)Z
    .locals 4

    .line 608
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchResultList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 609
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchView:Lcom/color/support/widget/ColorSearchViewAnimate;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 612
    invoke-virtual {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->getSearchState()I

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 616
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 623
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchTask:Lcom/coloros/settings/feature/appmanager/search/a;

    iget-object v2, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mAppEntries:Ljava/util/ArrayList;

    .line 6067
    iget-object v3, v0, Lcom/coloros/settings/feature/appmanager/search/a;->a:Lcom/coloros/settings/feature/appmanager/search/a$a;

    if-eqz v3, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 6070
    :cond_3
    iput-object v2, v0, Lcom/coloros/settings/feature/appmanager/search/a;->b:Ljava/util/ArrayList;

    .line 6071
    iput-object p1, v0, Lcom/coloros/settings/feature/appmanager/search/a;->c:Ljava/lang/String;

    .line 6073
    invoke-static {v0}, Lcom/android/settingslib/utils/d;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_4
    :goto_0
    return v1

    .line 617
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchLayout:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 618
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->resetSearchDivider(Z)V

    .line 619
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mManageApplicationsWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->a(Ljava/util/ArrayList;)V

    return v1
.end method

.method private initAccountIsAndroidTestEnterprise(Landroid/content/Context;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 362
    :cond_0
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    const-string v1, "AppManagerFeature"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 363
    array-length v4, v0

    if-lez v4, :cond_2

    .line 364
    array-length v4, v0

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v0, v5

    .line 365
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "initAccountIsAndroidTestEnterprise  account.name"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v7, "Android Enterprise"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_1
    if-nez v0, :cond_3

    return-void

    :cond_3
    const-string v0, "device_policy"

    .line 375
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    .line 376
    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerNameOnAnyUser()Ljava/lang/String;

    move-result-object p1

    .line 377
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "mDpm.getDeviceOwnerNameOnAnyUser()==="

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    const-string v0, "Test DPC"

    .line 379
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mHasAccountAndroidTestEnterprise:Z

    return-void
.end method

.method private initView(Landroid/view/View;Lcom/android/settings/applications/manageapplications/ManageApplications;)V
    .locals 7

    .line 272
    invoke-virtual {p2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 273
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v1, 0x1

    .line 276
    invoke-static {v0, p1, v1}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;Landroid/view/View;Z)V

    const v2, 0x7f0a070a

    .line 278
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcolor/support/v7/widget/Toolbar;

    iput-object v2, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mToolbar:Lcolor/support/v7/widget/Toolbar;

    .line 279
    iget v2, p2, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-nez v2, :cond_1

    .line 280
    iget-object v2, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mToolbar:Lcolor/support/v7/widget/Toolbar;

    const v5, 0x7f120f2f

    invoke-virtual {v2, v5}, Lcolor/support/v7/widget/Toolbar;->setTitle(I)V

    goto :goto_1

    .line 281
    :cond_1
    iget v2, p2, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    if-ne v2, v3, :cond_2

    .line 282
    iget-object v2, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mToolbar:Lcolor/support/v7/widget/Toolbar;

    const v5, 0x7f120b2a

    invoke-virtual {v2, v5}, Lcolor/support/v7/widget/Toolbar;->setTitle(I)V

    :goto_0
    move v2, v1

    goto :goto_2

    .line 284
    :cond_2
    iget v2, p2, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    const/4 v5, 0x3

    if-ne v2, v5, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    move v2, v4

    :goto_2
    const v5, 0x7f0a000b

    .line 288
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcolor/support/design/widget/ColorAppBarLayout;

    iput-object v5, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mColorAppBarLayout:Lcolor/support/design/widget/ColorAppBarLayout;

    .line 289
    iget-boolean v5, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mIsImmersiveTheme:Z

    if-nez v5, :cond_4

    .line 290
    iget-object v5, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mColorAppBarLayout:Lcolor/support/design/widget/ColorAppBarLayout;

    const v6, 0x7f0804e8

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcolor/support/design/widget/ColorAppBarLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    if-eqz v2, :cond_5

    .line 292
    iget-object v2, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mColorAppBarLayout:Lcolor/support/design/widget/ColorAppBarLayout;

    if-eqz v2, :cond_5

    .line 293
    invoke-virtual {v2}, Lcolor/support/design/widget/ColorAppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-eqz v2, :cond_5

    .line 295
    new-instance v5, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6}, Lcom/coloros/settings/behavior/PreferenceToolbarBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {v2, v5}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    :cond_5
    const v2, 0x7f0a05cf

    .line 299
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/color/support/widget/ColorSearchViewAnimate;

    iput-object v2, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchView:Lcom/color/support/widget/ColorSearchViewAnimate;

    .line 300
    iget-object v2, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchView:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-virtual {v2, v4}, Lcom/color/support/widget/ColorSearchViewAnimate;->setEnabled(Z)V

    .line 301
    iget-object v2, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchView:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-virtual {v2}, Lcom/color/support/widget/ColorSearchViewAnimate;->getSearchView()Lcolor/support/v7/widget/SearchView;

    move-result-object v2

    iput-object v2, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchBar:Lcolor/support/v7/widget/SearchView;

    .line 304
    iget-object v2, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchBar:Lcolor/support/v7/widget/SearchView;

    invoke-virtual {v2}, Lcolor/support/v7/widget/SearchView;->getSearchAutoComplete()Landroid/widget/AutoCompleteTextView;

    move-result-object v2

    .line 305
    new-instance v5, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$1;

    invoke-direct {v5, p0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$1;-><init>(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;)V

    invoke-virtual {v2, v5}, Landroid/widget/AutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const v2, 0x7f0a00b5

    .line 316
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v2, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mAppRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 317
    iget-object v2, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mAppRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 318
    iget v1, p2, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    iput v1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mListType:I

    .line 320
    iget p2, p2, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    if-nez p2, :cond_6

    const p2, 0x7f0a020e

    .line 321
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchDivider:Landroid/view/View;

    .line 322
    invoke-direct {p0, v4}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->resetSearchDivider(Z)V

    .line 323
    iget-object p2, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchView:Lcom/color/support/widget/ColorSearchViewAnimate;

    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mOnStateChangeListener:Lcom/color/support/widget/ColorSearchViewAnimate$OnStateChangeListener;

    invoke-virtual {p2, v1}, Lcom/color/support/widget/ColorSearchViewAnimate;->addOnStateChangeListener(Lcom/color/support/widget/ColorSearchViewAnimate$OnStateChangeListener;)V

    .line 324
    invoke-direct {p0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->setBackPressedCallback()V

    goto :goto_3

    .line 326
    :cond_6
    iget-object p2, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchView:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-virtual {p2, v3}, Lcom/color/support/widget/ColorSearchViewAnimate;->setVisibility(I)V

    :goto_3
    const p2, 0x7f0a05c5

    .line 331
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchLayout:Landroid/widget/FrameLayout;

    .line 332
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mAppRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    .line 335
    instance-of p2, p1, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mColorAppBarLayout:Lcolor/support/design/widget/ColorAppBarLayout;

    if-eqz p2, :cond_7

    .line 336
    new-instance v1, Lcom/coloros/settings/feature/appmanager/-$$Lambda$AppManagerFeature$ofS4KkWi7vSJIwGUjsocoQgTqrY;

    invoke-direct {v1, p0, v0, p1}, Lcom/coloros/settings/feature/appmanager/-$$Lambda$AppManagerFeature$ofS4KkWi7vSJIwGUjsocoQgTqrY;-><init>(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;Landroid/app/Activity;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p2, v1}, Lcolor/support/design/widget/ColorAppBarLayout;->post(Ljava/lang/Runnable;)Z

    :cond_7
    :goto_4
    return-void
.end method

.method private isNeedLoadImmeditely(I)Z
    .locals 1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic lambda$showSearchFragment$3()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private resetSearchDivider(Z)V
    .locals 3

    .line 1087
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchDivider:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 1091
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 1092
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchDivider:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchDivider:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 1093
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchDivider:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 1095
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 9030
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object p1

    .line 8034
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07028d

    .line 1096
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 1097
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchDivider:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchDivider:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, p1, v1, p1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 1098
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchDivider:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setBackPressedCallback()V
    .locals 2

    .line 764
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mManageApplicationsWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mManageApplicationsWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 768
    instance-of v1, v0, Lcom/coloros/settings/ColorSubSettings;

    if-eqz v1, :cond_1

    .line 769
    check-cast v0, Lcom/coloros/settings/ColorSubSettings;

    new-instance v1, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$5;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$5;-><init>(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;)V

    .line 7034
    iput-object v1, v0, Lcom/coloros/settings/ColorSubSettings;->a:Lcom/coloros/settings/ColorSubSettings$a;

    :cond_1
    :goto_0
    return-void
.end method

.method private setCanInstallApps(Lcom/coloros/settingslib/applications/ApplicationsState$a;ZI)V
    .locals 5

    .line 920
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 921
    iget-object v1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz p2, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    :goto_0
    const/16 v4, 0x42

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 924
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSwitchValues:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p3, :cond_2

    .line 925
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSwitchValues:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 926
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_1

    const-string p2, "turn-on"

    goto :goto_1

    :cond_1
    const-string p2, "turn-off"

    :goto_1
    const-string v0, "event_tag"

    .line 927
    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    iget-object p2, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v0, "package_name"

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    iget-object p1, p1, Lcom/coloros/settingslib/applications/ApplicationsState$a;->c:Ljava/lang/String;

    const-string p2, "app_name"

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object p1

    const-string p2, "20012"

    const-string v0, "appstate_install_apps_bridge"

    invoke-static {p1, p2, v0, p3}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    return-void
.end method

.method private setSwitchByEntries(Ljava/util/ArrayList;Lcom/android/settings/applications/manageapplications/ManageApplications;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settingslib/applications/ApplicationsState$a;",
            ">;",
            "Lcom/android/settings/applications/manageapplications/ManageApplications;",
            ")V"
        }
    .end annotation

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSwitchValues:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 259
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;

    .line 260
    iget-object v1, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->r:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 261
    iget v1, p2, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 262
    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSwitchValues:Ljava/util/ArrayList;

    iget-object v2, p2, Lcom/android/settings/applications/manageapplications/ManageApplications;->e:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    iget-object v2, v2, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->c:Lcom/android/settings/applications/e;

    check-cast v2, Lcom/android/settings/applications/f;

    iget-object v3, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 263
    invoke-virtual {v2, v3, v0}, Lcom/android/settings/applications/f;->a(Ljava/lang/String;I)Lcom/android/settings/applications/f$a;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Lcom/android/settings/applications/f$a;->a()Z

    move-result v0

    .line 262
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private showOrHideToolBar(Z)V
    .locals 4

    .line 493
    new-instance v0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$2;

    invoke-direct {v0, p0, p1}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$2;-><init>(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;Z)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 501
    iget-object v2, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mToolbar:Lcolor/support/v7/widget/Toolbar;

    invoke-virtual {v2, v1}, Lcolor/support/v7/widget/Toolbar;->setVisibility(I)V

    .line 502
    iget-object v2, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchLayout:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 503
    invoke-direct {p0, v1}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->resetSearchDivider(Z)V

    const/4 v2, 0x0

    .line 505
    iput-object v2, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mQueryTarget:Ljava/lang/String;

    .line 506
    iput-object v2, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchResultList:Ljava/util/ArrayList;

    .line 511
    :cond_0
    iget-boolean v2, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mFirstEnter:Z

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x0

    .line 512
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 513
    iput-boolean v1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mFirstEnter:Z

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x96

    .line 515
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 518
    :goto_0
    new-instance v2, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$3;

    invoke-direct {v2, p0, p1}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$3;-><init>(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;Z)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    if-nez p1, :cond_2

    .line 556
    invoke-direct {p0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->showStartSearchView()V

    goto :goto_1

    .line 558
    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mManageApplicationsWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object v2, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->a(Ljava/util/ArrayList;)V

    .line 559
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mAppRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_4

    .line 560
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    .line 561
    instance-of v2, p1, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;

    if-eqz v2, :cond_3

    .line 562
    move-object v2, p1

    check-cast v2, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;

    iget-object v3, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mRecyclerHeadView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;->a(Landroid/view/View;)V

    .line 563
    iget-object v2, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mAppRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 566
    :cond_3
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mAppRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1, v1, v1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setPadding(IIII)V

    .line 570
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/settings/feature/appmanager/-$$Lambda$AppManagerFeature$TEcYda7tuxF7UkKq0FhLJW_15Fg;

    invoke-direct {v1, p0, v0}, Lcom/coloros/settings/feature/appmanager/-$$Lambda$AppManagerFeature$TEcYda7tuxF7UkKq0FhLJW_15Fg;-><init>(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;Landroid/view/animation/Animation;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private showSearchFragment(Lcolor/support/v7/widget/SearchView;)V
    .locals 2

    .line 580
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mManageApplicationsWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 586
    :cond_0
    invoke-virtual {p1}, Lcolor/support/v7/widget/SearchView;->getSearchAutoComplete()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 587
    invoke-virtual {p1}, Lcolor/support/v7/widget/SearchView;->getSearchAutoComplete()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 590
    :cond_1
    new-instance v0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$4;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$4;-><init>(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;)V

    invoke-virtual {p1, v0}, Lcolor/support/v7/widget/SearchView;->setOnQueryTextListener(Lcolor/support/v7/widget/SearchView$OnQueryTextListener;)V

    .line 604
    sget-object v0, Lcom/coloros/settings/feature/appmanager/-$$Lambda$AppManagerFeature$S28bOcHyvvgNnEaAXgg5njQe4MM;->INSTANCE:Lcom/coloros/settings/feature/appmanager/-$$Lambda$AppManagerFeature$S28bOcHyvvgNnEaAXgg5njQe4MM;

    invoke-virtual {p1, v0}, Lcolor/support/v7/widget/SearchView;->setOnCloseListener(Lcolor/support/v7/widget/SearchView$OnCloseListener;)V

    return-void

    :cond_2
    :goto_0
    const-string p1, "AppManagerFeature"

    const-string v0, "showFragmentView: fragment is not attatched to activity"

    .line 581
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private showStartSearchView()V
    .locals 1

    .line 574
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchView:Lcom/color/support/widget/ColorSearchViewAnimate;

    if-eqz v0, :cond_0

    .line 575
    invoke-virtual {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->getSearchView()Lcolor/support/v7/widget/SearchView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->showSearchFragment(Lcolor/support/v7/widget/SearchView;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public checkApplicationInstalled(Ljava/lang/String;I)Z
    .locals 3

    .line 1051
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1054
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 1058
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/coloros/settings/utils/ba;->a()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v2, 0x2000

    invoke-virtual {v0, p1, v2, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :catch_0
    const-string p1, "AppManagerFeature"

    const-string p2, "NameNotFoundException"

    .line 1064
    invoke-static {p1, p2}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v1
.end method

.method public getApplicationListLabel(I)I
    .locals 1
    .annotation build Landroidx/annotation/StringRes;
    .end annotation

    .line 1033
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    const p1, 0x7f120f2f

    return p1
.end method

.method public getApplicationsState(Lcom/coloros/settingslib/applications/ApplicationsState;Landroid/app/Activity;)Lcom/coloros/settingslib/applications/ApplicationsState;
    .locals 1

    .line 145
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 149
    :cond_0
    invoke-virtual {p2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/settings/feature/appmanager/d;->a(Landroid/app/Application;)Lcom/coloros/settingslib/applications/ApplicationsState;

    move-result-object p1

    return-object p1
.end method

.method public getChildAdapterRealPosition(ILcom/android/settings/applications/manageapplications/ManageApplications;)I
    .locals 1

    .line 454
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 457
    :cond_0
    iget-object p2, p2, Lcom/android/settings/applications/manageapplications/ManageApplications;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p2

    .line 458
    instance-of v0, p2, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;

    if-eqz v0, :cond_1

    .line 459
    check-cast p2, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;

    .line 5145
    iget-object p2, p2, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;->a:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {p2}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result p2

    sub-int/2addr p1, p2

    :cond_1
    return p1
.end method

.method public getDefaultComparator(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Lcom/coloros/settingslib/applications/ApplicationsState$a;",
            ">;)",
            "Ljava/util/Comparator<",
            "Lcom/coloros/settingslib/applications/ApplicationsState$a;",
            ">;"
        }
    .end annotation

    .line 809
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 812
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mDefaultComparator:Ljava/util/Comparator;

    if-nez p1, :cond_1

    .line 813
    new-instance p1, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$6;

    invoke-direct {p1, p0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$6;-><init>(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mDefaultComparator:Ljava/util/Comparator;

    .line 834
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mDefaultComparator:Ljava/util/Comparator;

    return-object p1
.end method

.method public getItemLayoutResId(I)I
    .locals 1

    .line 670
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    const p1, 0x7f0d00a8

    return p1
.end method

.method public getLayoutResId(I)I
    .locals 1

    .line 153
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    const p1, 0x7f0d0098

    return p1
.end method

.method public getRecyclerViewAdapter(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 1

    .line 406
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 409
    :cond_0
    new-instance v0, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;

    invoke-direct {v0, p1}, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-object v0
.end method

.method public hasAccountAndroidTestEnterprise()Z
    .locals 1

    .line 937
    iget-boolean v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mHasAccountAndroidTestEnterprise:Z

    return v0
.end method

.method public initSizeText(Landroid/view/View;Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;)V
    .locals 1

    .line 709
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0a00a5

    .line 712
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p2, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->g:Landroid/widget/TextView;

    return-void
.end method

.method public initSwitch(Landroid/view/View;Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;)V
    .locals 1

    .line 702
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0a00a8

    .line 705
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/color/support/widget/ColorSwitch;

    iput-object p1, p2, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->f:Lcom/color/support/widget/ColorSwitch;

    return-void
.end method

.method public synthetic lambda$initView$0$AppManagerFeature(Landroid/app/Activity;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 3

    .line 337
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mColorAppBarLayout:Lcolor/support/design/widget/ColorAppBarLayout;

    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {v0}, Lcolor/support/design/widget/ColorAppBarLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mHeadViewHeight:I

    .line 339
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mRecyclerHeadView:Landroid/view/View;

    .line 340
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mRecyclerHeadView:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 341
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mRecyclerHeadView:Landroid/view/View;

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    iget v2, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mHeadViewHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 342
    check-cast p2, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;

    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mRecyclerHeadView:Landroid/view/View;

    invoke-virtual {p2, p1}, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;->a(Landroid/view/View;)V

    .line 344
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 345
    iget-object p2, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mToolbar:Lcolor/support/v7/widget/Toolbar;

    invoke-virtual {p2}, Lcolor/support/v7/widget/Toolbar;->getMeasuredHeight()I

    move-result p2

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 346
    iget-object p2, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    .line 349
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->showOrHideToolBar(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$1$AppManagerFeature(II)V
    .locals 2

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStateChange from: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AppManagerFeature"

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    if-nez p2, :cond_0

    .line 486
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mManageApplicationsWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 10368
    iput-boolean p1, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->m:Z

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x1

    .line 489
    :cond_1
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->showOrHideToolBar(Z)V

    return-void
.end method

.method public synthetic lambda$new$4$AppManagerFeature(Ljava/util/ArrayList;)V
    .locals 3

    .line 787
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mQueryTarget:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 796
    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchLayout:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 797
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->resetSearchDivider(Z)V

    .line 799
    :cond_1
    iput-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchResultList:Ljava/util/ArrayList;

    .line 800
    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mManageApplicationsWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {v1, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->a(Ljava/util/ArrayList;)V

    .line 803
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mManageApplicationsWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 9368
    iput-boolean v0, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->m:Z

    return-void
.end method

.method public synthetic lambda$showOrHideToolBar$2$AppManagerFeature(Landroid/view/animation/Animation;)V
    .locals 1

    .line 570
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mToolbar:Lcolor/support/v7/widget/Toolbar;

    invoke-virtual {v0, p1}, Lcolor/support/v7/widget/Toolbar;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public synthetic lambda$updateColorSwitch$5$AppManagerFeature(Lcom/android/settings/applications/manageapplications/ManageApplications;Lcom/coloros/settingslib/applications/ApplicationsState$a;ILandroid/view/View;)V
    .locals 6

    const v0, 0x7f0a00a8

    .line 887
    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    move-object v3, p4

    check-cast v3, Lcom/color/support/widget/ColorSwitch;

    .line 888
    invoke-virtual {v3}, Lcom/color/support/widget/ColorSwitch;->isChecked()Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    .line 889
    invoke-direct/range {v0 .. v5}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->doCheckAction(Lcom/android/settings/applications/manageapplications/ManageApplications;Lcom/coloros/settingslib/applications/ApplicationsState$a;Lcom/color/support/widget/ColorSwitch;IZ)V

    return-void
.end method

.method public needShowTowTarget(Lcom/android/settings/applications/manageapplications/ManageApplications;)Z
    .locals 2

    .line 852
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 855
    :cond_0
    iget p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public notifyWrapperDataSetChanged(Lcom/android/settings/applications/manageapplications/ManageApplications;)Z
    .locals 1

    .line 446
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 449
    :cond_0
    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->j:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    const/4 p1, 0x1

    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 753
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 756
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchLayout:Landroid/widget/FrameLayout;

    if-ne v0, p1, :cond_1

    .line 757
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchView:Lcom/color/support/widget/ColorSearchViewAnimate;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 758
    invoke-virtual {p1, v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->changeStateWithAnimation(I)V

    :cond_1
    return-void
.end method

.method public onCreate(Lcom/android/settings/applications/manageapplications/ManageApplications;)V
    .locals 3

    .line 160
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 163
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mIsImmersiveTheme:Z

    .line 164
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mManageApplicationsWeakRef:Ljava/lang/ref/WeakReference;

    .line 2030
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070744

    .line 166
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mToolBarMinHeight:I

    const v1, 0x7f070749

    .line 167
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mToolBarPaddingTop:I

    const v1, 0x7f0700e2

    .line 168
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchViewHeight:I

    const v1, 0x7f0700e1

    .line 169
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchViewBottomMargin:I

    .line 170
    invoke-virtual {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;ZZ)V

    .line 171
    invoke-virtual {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 172
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "no_install_unknown_sources"

    .line 171
    invoke-static {v0, v2, v1}, Lcom/android/settingslib/h;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mEnforcedAdmin:Lcom/android/settingslib/g$a;

    .line 173
    iget-object v0, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->c:Lcom/coloros/settingslib/applications/ApplicationsState;

    instance-of v0, v0, Lcom/coloros/settings/feature/appmanager/d;

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->c:Lcom/coloros/settingslib/applications/ApplicationsState;

    check-cast v0, Lcom/coloros/settings/feature/appmanager/d;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/appmanager/d;->c()V

    .line 177
    :cond_1
    new-instance v0, Lcom/coloros/settings/a/a;

    invoke-virtual {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coloros/settings/a/a;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mBackToTop:Lcom/coloros/settings/a/a;

    .line 178
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mBackToTop:Lcom/coloros/settings/a/a;

    invoke-virtual {v0}, Lcom/coloros/settings/a/a;->b()V

    .line 179
    invoke-virtual {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->initAccountIsAndroidTestEnterprise(Landroid/content/Context;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;Lcom/android/settings/applications/manageapplications/ManageApplications;)Z
    .locals 2

    .line 413
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 416
    :cond_0
    iget v0, p3, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    if-eqz v0, :cond_1

    iget v0, p3, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 418
    :cond_1
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const v0, 0x7f0e0008

    .line 419
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 420
    iput-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mMenu:Landroid/view/Menu;

    .line 422
    :cond_2
    invoke-virtual {p3}, Lcom/android/settings/applications/manageapplications/ManageApplications;->a()V

    const/4 p1, 0x1

    return p1
.end method

.method public onCreateView(Landroid/view/View;Lcom/android/settings/applications/manageapplications/ManageApplications;)V
    .locals 1

    .line 183
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 186
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->initView(Landroid/view/View;Lcom/android/settings/applications/manageapplications/ManageApplications;)V

    return-void
.end method

.method public onDestroy(Lcom/android/settings/applications/manageapplications/ManageApplications;)V
    .locals 1

    .line 396
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 399
    :cond_0
    iget-object v0, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->c:Lcom/coloros/settingslib/applications/ApplicationsState;

    instance-of v0, v0, Lcom/coloros/settings/feature/appmanager/d;

    if-eqz v0, :cond_1

    .line 400
    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->c:Lcom/coloros/settingslib/applications/ApplicationsState;

    check-cast p1, Lcom/coloros/settings/feature/appmanager/d;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/appmanager/d;->d()V

    .line 402
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mBackToTop:Lcom/coloros/settings/a/a;

    invoke-virtual {p1}, Lcom/coloros/settings/a/a;->c()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 383
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 386
    iput-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchResultList:Ljava/util/ArrayList;

    .line 387
    iput-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mQueryTarget:Ljava/lang/String;

    .line 388
    iput-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mDefaultComparator:Ljava/util/Comparator;

    .line 389
    iput-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mAppRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 390
    iput-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchView:Lcom/color/support/widget/ColorSearchViewAnimate;

    .line 391
    iput-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchBar:Lcolor/support/v7/widget/SearchView;

    .line 392
    iput-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mColorAppBarLayout:Lcolor/support/design/widget/ColorAppBarLayout;

    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 2

    .line 247
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchView:Lcom/color/support/widget/ColorSearchViewAnimate;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 251
    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorSearchViewAnimate;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;Lcom/android/settings/applications/manageapplications/ManageApplications;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onPause(Lcom/android/settings/applications/manageapplications/ManageApplications;)V
    .locals 0

    .line 221
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    :cond_0
    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;Lcom/android/settings/applications/manageapplications/ManageApplications;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settingslib/applications/ApplicationsState$a;",
            ">;",
            "Lcom/android/settings/applications/manageapplications/ManageApplications;",
            ")V"
        }
    .end annotation

    .line 227
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchView:Lcom/color/support/widget/ColorSearchViewAnimate;

    if-eqz v0, :cond_3

    .line 231
    invoke-virtual {v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->getSearchState()I

    move-result v0

    .line 232
    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mAppEntries:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    .line 233
    :cond_1
    iput-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mAppEntries:Ljava/util/ArrayList;

    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 235
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mQueryTarget:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchResultList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 236
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchResultList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 237
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mManageApplicationsWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchResultList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->a(Ljava/util/ArrayList;)V

    .line 240
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->setSwitchByEntries(Ljava/util/ArrayList;Lcom/android/settings/applications/manageapplications/ManageApplications;)V

    return-void
.end method

.method public onResume(Lcom/android/settings/applications/manageapplications/ManageApplications;)V
    .locals 3

    .line 190
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mBackToTop:Lcom/coloros/settings/a/a;

    .line 2089
    iget-object v0, v0, Lcom/coloros/settings/a/a;->a:Landroid/view/View;

    if-nez v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mBackToTop:Lcom/coloros/settings/a/a;

    iget-object v1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->j:Landroidx/recyclerview/widget/RecyclerView;

    .line 3085
    iput-object v1, v0, Lcom/coloros/settings/a/a;->a:Landroid/view/View;

    .line 199
    :cond_1
    iget v0, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->isNeedLoadImmeditely(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    iget-object v0, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->e:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->onLoadEntriesCompleted()V

    .line 3361
    :cond_2
    iget-boolean v0, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->l:Z

    if-eqz v0, :cond_4

    .line 205
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchBar:Lcolor/support/v7/widget/SearchView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchView:Lcom/color/support/widget/ColorSearchViewAnimate;

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcolor/support/v7/widget/SearchView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 206
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchBar:Lcolor/support/v7/widget/SearchView;

    invoke-virtual {v0}, Lcolor/support/v7/widget/SearchView;->clearFocus()V

    .line 207
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchView:Lcom/color/support/widget/ColorSearchViewAnimate;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorSearchViewAnimate;->openSoftInput(Z)V

    .line 4357
    :cond_3
    iput-boolean v1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->l:Z

    :cond_4
    return-void
.end method

.method public performItemClick(Landroid/view/View;Lcom/coloros/settingslib/applications/ApplicationsState$a;Lcom/android/settings/applications/manageapplications/ManageApplications;I)Z
    .locals 7

    .line 1040
    iget v0, p3, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const v0, 0x7f0a00a8

    .line 1041
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lcom/color/support/widget/ColorSwitch;

    .line 1042
    invoke-virtual {v3}, Lcom/color/support/widget/ColorSwitch;->isChecked()Z

    move-result p1

    const/4 v6, 0x1

    xor-int/lit8 v5, p1, 0x1

    move-object v0, p0

    move-object v1, p3

    move-object v2, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->doCheckAction(Lcom/android/settings/applications/manageapplications/ManageApplications;Lcom/coloros/settingslib/applications/ApplicationsState$a;Lcom/color/support/widget/ColorSwitch;IZ)V

    return v6

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public refreshSearchViewHint(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/coloros/settingslib/applications/ApplicationsState$a;",
            ">;)V"
        }
    .end annotation

    .line 465
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 6030
    :cond_0
    invoke-static {}, Lcom/coloros/settings/SettingsApplication;->a()Landroid/content/Context;

    move-result-object v0

    .line 469
    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchView:Lcom/color/support/widget/ColorSearchViewAnimate;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    .line 470
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 471
    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchView:Lcom/color/support/widget/ColorSearchViewAnimate;

    const v2, 0x7f1201ef

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/color/support/widget/ColorSearchViewAnimate;->setQueryHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 473
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchView:Lcom/color/support/widget/ColorSearchViewAnimate;

    const v1, 0x7f121370

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/color/support/widget/ColorSearchViewAnimate;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 476
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSearchBar:Lcolor/support/v7/widget/SearchView;

    if-eqz p1, :cond_3

    const v1, 0x7f1201f0

    .line 477
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcolor/support/v7/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public setShowSystem(Lcom/android/settings/applications/manageapplications/ManageApplications;)V
    .locals 1

    .line 845
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 848
    iput-boolean v0, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->b:Z

    return-void
.end method

.method public setSizeText(Landroid/widget/TextView;I)V
    .locals 2

    .line 728
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 731
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mManageApplicationsWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 732
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mManageApplicationsWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 733
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSizeText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 2

    .line 716
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mManageApplicationsWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 720
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mManageApplicationsWeakRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 721
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public startSourcesDetailsFragment()Z
    .locals 1

    .line 838
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public updateColorSwitch(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Lcom/coloros/settingslib/applications/ApplicationsState$a;Lcom/android/settings/applications/manageapplications/ManageApplications;)V
    .locals 7

    .line 862
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 865
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->getAdapterPosition()I

    move-result v0

    .line 866
    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mAppRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_1

    .line 867
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    instance-of v1, v1, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;

    if-eqz v1, :cond_1

    .line 868
    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mAppRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    check-cast v1, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;

    .line 7145
    iget-object v1, v1, Lcom/coloros/settings/utils/recyclerview/HeaderAndFooterWrapper;->a:Landroidx/collection/SparseArrayCompat;

    invoke-virtual {v1}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result v1

    sub-int/2addr v0, v1

    .line 870
    :cond_1
    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSwitchValues:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v0, :cond_4

    .line 871
    iget-object v1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mSwitchValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 874
    invoke-virtual {p3}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v6, "ws"

    invoke-static {v4, v5, v6}, Lcom/coloros/settings/custom/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    .line 879
    :cond_2
    invoke-virtual {p3}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/coloros/settings/custom/b;->e(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 883
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "updateColorSwitch:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->c:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AppManagerFeature"

    invoke-static {v4, v3}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    new-instance v3, Lcom/coloros/settings/feature/appmanager/-$$Lambda$AppManagerFeature$MeSjsrB4NTKgijPj8PbzN-dvAvY;

    invoke-direct {v3, p0, p3, p2, v0}, Lcom/coloros/settings/feature/appmanager/-$$Lambda$AppManagerFeature$MeSjsrB4NTKgijPj8PbzN-dvAvY;-><init>(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;Lcom/android/settings/applications/manageapplications/ManageApplications;Lcom/coloros/settingslib/applications/ApplicationsState$a;I)V

    invoke-virtual {p1, v3, v2, v1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->a(Landroid/view/View$OnClickListener;ZZ)V

    :cond_4
    return-void
.end method

.method public updateOptionsMenu(Lcom/android/settings/applications/manageapplications/ManageApplications;)V
    .locals 5

    .line 431
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mMenu:Landroid/view/Menu;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const v1, 0x7f0a0606

    .line 437
    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->b:Z

    const/4 v2, 0x1

    const/4 v3, 0x5

    const/4 v4, 0x0

    if-nez v1, :cond_2

    iget v1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    if-eq v1, v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v4

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 439
    iget-object v0, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0a02fe

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->b:Z

    if-eqz v1, :cond_3

    iget p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->d:I

    if-eq p1, v3, :cond_3

    goto :goto_1

    :cond_3
    move v2, v4

    :goto_1
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 442
    iget-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->mMenu:Landroid/view/Menu;

    const v0, 0x7f0a0564

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public updateSummary(Landroid/widget/TextView;)Z
    .locals 1

    .line 677
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 v0, 0x8

    .line 680
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public updateSwitch(Landroid/view/View$OnClickListener;ZZLcom/android/settings/applications/manageapplications/ApplicationViewHolder;)Z
    .locals 1

    .line 740
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 743
    :cond_0
    iget-object v0, p4, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->f:Lcom/color/support/widget/ColorSwitch;

    if-eqz v0, :cond_1

    iget-object v0, p4, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->d:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 744
    iget-object v0, p4, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->f:Lcom/color/support/widget/ColorSwitch;

    invoke-virtual {v0, p1}, Lcom/color/support/widget/ColorSwitch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 745
    iget-object p1, p4, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->f:Lcom/color/support/widget/ColorSwitch;

    invoke-virtual {p1, p3}, Lcom/color/support/widget/ColorSwitch;->setChecked(Z)V

    .line 746
    iget-object p1, p4, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->f:Lcom/color/support/widget/ColorSwitch;

    invoke-virtual {p1, p2}, Lcom/color/support/widget/ColorSwitch;->setEnabled(Z)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public updateUsageColorSwitch(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Lcom/coloros/settingslib/applications/ApplicationsState$a;Lcom/android/settings/applications/k;Lcom/android/settings/applications/manageapplications/ManageApplications;)V
    .locals 3

    .line 1103
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->isEnabled()Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 1106
    :cond_0
    invoke-virtual {p4}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/coloros/settings/custom/b;->b(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_1

    return-void

    .line 1109
    :cond_1
    iget-object p3, p2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->r:Ljava/lang/Object;

    .line 1110
    instance-of v0, p3, Lcom/android/settings/applications/k$a;

    if-eqz v0, :cond_4

    .line 1111
    check-cast p3, Lcom/android/settings/applications/k$a;

    .line 1113
    iget v0, p3, Lcom/android/settings/applications/k$a;->f:I

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/4 p3, 0x1

    goto :goto_0

    .line 1115
    :cond_2
    iget v0, p3, Lcom/android/settings/applications/k$a;->f:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 1116
    iget-boolean p3, p3, Lcom/android/settings/applications/k$a;->d:Z

    goto :goto_0

    :cond_3
    move p3, v1

    .line 1118
    :goto_0
    invoke-virtual {p4}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getContext()Landroid/content/Context;

    move-result-object p4

    iget-object p2, p2, Lcom/coloros/settingslib/applications/ApplicationsState$a;->k:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v0, "u"

    invoke-static {p4, p2, v0}, Lcom/coloros/settings/custom/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    .line 1121
    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->f:Lcom/color/support/widget/ColorSwitch;

    invoke-virtual {p1, v1}, Lcom/color/support/widget/ColorSwitch;->setEnabled(Z)V

    :cond_4
    return-void
.end method

.method public updateWidgetFrame(Landroid/view/View;Z)Z
    .locals 2

    .line 685
    invoke-virtual {p0}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const v0, 0x1020018

    .line 688
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    .line 691
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d00f3

    .line 692
    invoke-virtual {p1, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_0

    .line 694
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d0075

    .line 695
    invoke-virtual {p1, p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    :cond_2
    :goto_0
    return v1
.end method
