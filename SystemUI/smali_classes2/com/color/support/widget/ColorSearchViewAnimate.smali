.class public Lcom/color/support/widget/ColorSearchViewAnimate;
.super Landroid/widget/LinearLayout;
.source "ColorSearchViewAnimate.java"

# interfaces
.implements Landroidx/appcompat/view/CollapsibleActionView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;,
        Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;,
        Lcom/color/support/widget/ColorSearchViewAnimate$OnCancelButtonClickListener;,
        Lcom/color/support/widget/ColorSearchViewAnimate$OnAnimationListener;,
        Lcom/color/support/widget/ColorSearchViewAnimate$OnStateChangeListener;,
        Lcom/color/support/widget/ColorSearchViewAnimate$AddToolBarWay;,
        Lcom/color/support/widget/ColorSearchViewAnimate$SearchViewState;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field public static final STATE_EDIT:I = 0x1

.field public static final STATE_NORMAL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ColorSearchViewAnimate"

.field private static final WAY_AT_BEHIND:I = 0x1

.field private static final WAY_AT_FRONT:I = 0x2

.field private static final WAY_NONE:I


# instance fields
.field private mAddToToolbarWay:I

.field private volatile mAnimatorHelper:Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;

.field private mAtToolbarFrontStateChangeListener:Lcom/color/support/widget/ColorSearchViewAnimate$OnStateChangeListener;

.field private mCancelButton:Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;

.field private mCancelDivider:Landroid/widget/ImageView;

.field private mFadeDuration:J

.field private mGravity:I

.field private mGravityInToolBar:I

.field private mHasAddedToToolbar:Z

.field private mHintTextView:Landroid/widget/TextView;

.field private mHintViewLayout:Landroid/widget/LinearLayout;

.field private mMenuItem:Landroid/view/MenuItem;

.field private mOnAnimationListener:Lcom/color/support/widget/ColorSearchViewAnimate$OnAnimationListener;

.field private mOnCancelButtonClickListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/color/support/widget/ColorSearchViewAnimate$OnCancelButtonClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnStateChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/color/support/widget/ColorSearchViewAnimate$OnStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaceAtFrontRunnable:Ljava/lang/Runnable;

.field private mSearchIcon:Landroid/widget/ImageView;

.field private mSearchIconCanAnimate:Z

.field private mSearchView:Lcolor/support/v7/widget/SearchView;

.field private mState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mToolBar:Lcolor/support/v7/widget/Toolbar;

.field private mToolBarAnimationRunning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 276
    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorSearchViewAnimate;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 282
    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/widget/ColorSearchViewAnimate;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 298
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 127
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    const-wide/16 v2, 0x96

    .line 132
    iput-wide v2, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mFadeDuration:J

    const/16 v0, 0x30

    .line 145
    iput v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mGravityInToolBar:I

    .line 154
    iput v1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mAddToToolbarWay:I

    const/4 v0, 0x1

    .line 156
    iput-boolean v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mSearchIconCanAnimate:Z

    .line 161
    new-instance v0, Lcom/color/support/widget/ColorSearchViewAnimate$1;

    invoke-direct {v0, p0}, Lcom/color/support/widget/ColorSearchViewAnimate$1;-><init>(Lcom/color/support/widget/ColorSearchViewAnimate;)V

    iput-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mPlaceAtFrontRunnable:Ljava/lang/Runnable;

    .line 197
    new-instance v0, Lcom/color/support/widget/ColorSearchViewAnimate$2;

    invoke-direct {v0, p0}, Lcom/color/support/widget/ColorSearchViewAnimate$2;-><init>(Lcom/color/support/widget/ColorSearchViewAnimate;)V

    iput-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mAtToolbarFrontStateChangeListener:Lcom/color/support/widget/ColorSearchViewAnimate$OnStateChangeListener;

    const/16 v0, 0x10

    .line 207
    iput v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mGravity:I

    .line 970
    new-instance v0, Lcom/color/support/widget/ColorSearchViewAnimate$9;

    invoke-direct {v0, p0}, Lcom/color/support/widget/ColorSearchViewAnimate$9;-><init>(Lcom/color/support/widget/ColorSearchViewAnimate;)V

    iput-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 299
    invoke-static {p0, v1}, Lcom/color/support/util/ColorDarkModeUtil;->setForceDarkAllow(Landroid/view/View;Z)V

    .line 300
    invoke-direct {p0, p1, p2}, Lcom/color/support/widget/ColorSearchViewAnimate;->inflateView(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 301
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/color/support/widget/ColorSearchViewAnimate;->loadAttr(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic access$000(Lcom/color/support/widget/ColorSearchViewAnimate;)Lcolor/support/v7/widget/Toolbar;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mToolBar:Lcolor/support/v7/widget/Toolbar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/color/support/widget/ColorSearchViewAnimate;)Landroid/widget/TextView;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mHintTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/color/support/widget/ColorSearchViewAnimate;)Landroid/widget/LinearLayout;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mHintViewLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1400()Z
    .locals 1

    .line 72
    sget-boolean v0, Lcom/color/support/widget/ColorSearchViewAnimate;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/color/support/widget/ColorSearchViewAnimate;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/color/support/widget/ColorSearchViewAnimate;->onClickStateNormal()V

    return-void
.end method

.method static synthetic access$1600(Lcom/color/support/widget/ColorSearchViewAnimate;)Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mCancelButton:Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/color/support/widget/ColorSearchViewAnimate;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/color/support/widget/ColorSearchViewAnimate;->onClickStateEdit()V

    return-void
.end method

.method static synthetic access$1800(Lcom/color/support/widget/ColorSearchViewAnimate;)J
    .locals 2

    .line 72
    iget-wide v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mFadeDuration:J

    return-wide v0
.end method

.method static synthetic access$1900(Lcom/color/support/widget/ColorSearchViewAnimate;)Lcom/color/support/widget/ColorSearchViewAnimate$OnAnimationListener;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mOnAnimationListener:Lcom/color/support/widget/ColorSearchViewAnimate$OnAnimationListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/color/support/widget/ColorSearchViewAnimate;)Z
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/color/support/widget/ColorSearchViewAnimate;->isRtl()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2000(Lcom/color/support/widget/ColorSearchViewAnimate;II)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/color/support/widget/ColorSearchViewAnimate;->notifyOnStateChange(II)V

    return-void
.end method

.method static synthetic access$2200(Lcom/color/support/widget/ColorSearchViewAnimate;)Lcolor/support/v7/widget/SearchView;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mSearchView:Lcolor/support/v7/widget/SearchView;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/color/support/widget/ColorSearchViewAnimate;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/color/support/widget/ColorSearchViewAnimate;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mSearchIconCanAnimate:Z

    return p0
.end method

.method static synthetic access$2500(Lcom/color/support/widget/ColorSearchViewAnimate;)Landroid/widget/ImageView;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mCancelDivider:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/color/support/widget/ColorSearchViewAnimate;)Landroid/widget/ImageView;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mSearchIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/color/support/widget/ColorSearchViewAnimate;I)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorSearchViewAnimate;->changeStateWithOutAnimation(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/color/support/widget/ColorSearchViewAnimate;F)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorSearchViewAnimate;->setToolBarAlpha(F)V

    return-void
.end method

.method static synthetic access$500(Lcom/color/support/widget/ColorSearchViewAnimate;I)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorSearchViewAnimate;->setToolBarChildVisibility(I)V

    return-void
.end method

.method static synthetic access$602(Lcom/color/support/widget/ColorSearchViewAnimate;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mToolBarAnimationRunning:Z

    return p1
.end method

.method static synthetic access$700(Lcom/color/support/widget/ColorSearchViewAnimate;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/color/support/widget/ColorSearchViewAnimate;->setSearchAutoCompleteFocus()V

    return-void
.end method

.method static synthetic access$800(Lcom/color/support/widget/ColorSearchViewAnimate;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/color/support/widget/ColorSearchViewAnimate;->setSearchAutoCompleteUnFocus()V

    return-void
.end method

.method private changeStateWithOutAnimation(I)V
    .locals 4

    .line 883
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 886
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 887
    sget-boolean v0, Lcom/color/support/widget/ColorSearchViewAnimate;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeStateWithOutAnimation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorSearchViewAnimate"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    const/16 v1, 0x8

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-ne p1, v0, :cond_2

    .line 891
    iget-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mSearchView:Lcolor/support/v7/widget/SearchView;

    invoke-virtual {p1, v2}, Lcolor/support/v7/widget/SearchView;->setAlpha(F)V

    .line 892
    iget-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mCancelButton:Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;

    invoke-virtual {p1, v2}, Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;->setAlpha(F)V

    .line 893
    iget-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mCancelDivider:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 894
    iget-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mSearchView:Lcolor/support/v7/widget/SearchView;

    invoke-virtual {p1, v3}, Lcolor/support/v7/widget/SearchView;->setVisibility(I)V

    .line 895
    iget-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mCancelButton:Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;

    invoke-virtual {p1, v3}, Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;->setVisibility(I)V

    .line 896
    iget-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mCancelDivider:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 897
    iget-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mHintViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 898
    iget-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mSearchIcon:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 899
    invoke-direct {p0}, Lcom/color/support/widget/ColorSearchViewAnimate;->getAnimatorHelper()Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;

    move-result-object p1

    invoke-static {p1}, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->access$900(Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 900
    invoke-direct {p0}, Lcom/color/support/widget/ColorSearchViewAnimate;->getAnimatorHelper()Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;

    move-result-object p0

    invoke-static {p0}, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->access$1000(Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 902
    :cond_2
    iget-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mSearchIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 903
    iget-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mSearchIcon:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setRotationY(F)V

    .line 904
    iget-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mHintViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 905
    iget-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mSearchView:Lcolor/support/v7/widget/SearchView;

    const-string v0, ""

    invoke-virtual {p1, v0, v3}, Lcolor/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 906
    iget-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mSearchView:Lcolor/support/v7/widget/SearchView;

    invoke-virtual {p1, v1}, Lcolor/support/v7/widget/SearchView;->setVisibility(I)V

    .line 907
    iget-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mCancelButton:Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;

    invoke-virtual {p1, v1}, Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;->setVisibility(I)V

    .line 908
    iget-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mCancelDivider:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 909
    iget-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mHintViewLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 910
    iget-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mSearchIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 911
    invoke-direct {p0}, Lcom/color/support/widget/ColorSearchViewAnimate;->getAnimatorHelper()Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;

    move-result-object p1

    invoke-static {p1}, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->access$1100(Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 912
    invoke-direct {p0}, Lcom/color/support/widget/ColorSearchViewAnimate;->getAnimatorHelper()Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;

    move-result-object p0

    invoke-static {p0}, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->access$1200(Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method private ensureAddedToToolBar()V
    .locals 4

    .line 831
    iget-boolean v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mHasAddedToToolbar:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 832
    iput-boolean v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mHasAddedToToolbar:Z

    .line 833
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mToolBar:Lcolor/support/v7/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 834
    invoke-direct {p0}, Lcom/color/support/widget/ColorSearchViewAnimate;->removeLast()V

    .line 835
    new-instance v0, Lcolor/support/v7/widget/Toolbar$LayoutParams;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mToolBar:Lcolor/support/v7/widget/Toolbar;

    invoke-virtual {v2}, Lcolor/support/v7/widget/Toolbar;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mToolBar:Lcolor/support/v7/widget/Toolbar;

    invoke-virtual {v3}, Lcolor/support/v7/widget/Toolbar;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcolor/support/v7/widget/Toolbar$LayoutParams;-><init>(II)V

    .line 836
    iget v1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mGravityInToolBar:I

    iput v1, v0, Lcolor/support/v7/widget/Toolbar$LayoutParams;->gravity:I

    .line 837
    iget-object v1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mToolBar:Lcolor/support/v7/widget/Toolbar;

    invoke-virtual {v1, p0, v0}, Lcolor/support/v7/widget/Toolbar;->setSearchView(Landroid/view/View;Lcolor/support/v7/widget/Toolbar$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private ensureList(Ljava/util/List;)Ljava/util/List;
    .locals 0

    if-nez p1, :cond_0

    .line 542
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    return-object p1
.end method

.method private getAnimatorHelper()Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;
    .locals 1

    .line 936
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mAnimatorHelper:Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;

    if-nez v0, :cond_1

    .line 937
    monitor-enter p0

    .line 938
    :try_start_0
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mAnimatorHelper:Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;

    if-nez v0, :cond_0

    .line 939
    new-instance v0, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;

    invoke-direct {v0, p0}, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;-><init>(Lcom/color/support/widget/ColorSearchViewAnimate;)V

    iput-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mAnimatorHelper:Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;

    .line 941
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 943
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mAnimatorHelper:Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;

    return-object p0
.end method

.method private inflateView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 306
    sget p2, Lcolor/support/v7/appcompat/R$layout;->color_search_view_animate_layout:I

    invoke-static {p1, p2, p0}, Lcom/color/support/widget/ColorSearchViewAnimate;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 307
    sget p1, Lcolor/support/v7/appcompat/R$id;->animated_search_icon:I

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorSearchViewAnimate;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mSearchIcon:Landroid/widget/ImageView;

    .line 308
    sget p1, Lcolor/support/v7/appcompat/R$id;->animated_hint:I

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorSearchViewAnimate;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mHintTextView:Landroid/widget/TextView;

    .line 309
    sget p1, Lcolor/support/v7/appcompat/R$id;->animated_search_view:I

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorSearchViewAnimate;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcolor/support/v7/widget/SearchView;

    iput-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mSearchView:Lcolor/support/v7/widget/SearchView;

    .line 310
    sget p1, Lcolor/support/v7/appcompat/R$id;->animated_cancel_button:I

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorSearchViewAnimate;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;

    iput-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mCancelButton:Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;

    .line 311
    sget p1, Lcolor/support/v7/appcompat/R$id;->cancel_divider:I

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorSearchViewAnimate;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mCancelDivider:Landroid/widget/ImageView;

    .line 312
    sget p1, Lcolor/support/v7/appcompat/R$id;->animated_hint_layout:I

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorSearchViewAnimate;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mHintViewLayout:Landroid/widget/LinearLayout;

    .line 313
    iget-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mHintViewLayout:Landroid/widget/LinearLayout;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 314
    iget-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mHintViewLayout:Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    iget-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mCancelButton:Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;

    invoke-virtual {p1}, Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 317
    instance-of p2, p1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz p2, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSearchViewAnimate;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcolor/support/v7/appcompat/R$dimen;->color_searchview_cancel_button_bg_radius:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 319
    check-cast p1, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {p1, p2}, Lcom/color/support/RippleDrawableUtil;->setRadiusAdaptation(Landroid/graphics/drawable/RippleDrawable;I)V

    .line 322
    :cond_0
    iget-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mCancelButton:Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;

    iget-object p0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p0}, Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private isRtl()Z
    .locals 3

    .line 928
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-lt v0, v2, :cond_1

    .line 929
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSearchViewAnimate;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    return v1
.end method

.method private loadAttr(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 327
    sget-object v0, Lcolor/support/v7/appcompat/R$styleable;->ColorSearchViewAnimate:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 328
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 330
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSearchViewAnimate;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcolor/support/v7/appcompat/R$dimen;->color_search_view_input_text_size:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 331
    sget p4, Lcolor/support/v7/appcompat/R$styleable;->ColorSearchViewAnimate_inputTextSize:I

    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    .line 332
    iget-object p4, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mSearchView:Lcolor/support/v7/widget/SearchView;

    invoke-virtual {p4}, Lcolor/support/v7/widget/SearchView;->getSearchAutoComplete()Landroid/widget/AutoCompleteTextView;

    move-result-object p4

    int-to-float p3, p3

    const/4 v0, 0x0

    invoke-virtual {p4, v0, p3}, Landroid/widget/AutoCompleteTextView;->setTextSize(IF)V

    .line 335
    iget-object p3, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mSearchView:Lcolor/support/v7/widget/SearchView;

    invoke-virtual {p3}, Lcolor/support/v7/widget/SearchView;->getSearchAutoComplete()Landroid/widget/AutoCompleteTextView;

    move-result-object p3

    .line 336
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSearchViewAnimate;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v1, Lcolor/support/v7/appcompat/R$dimen;->color_search_view_cancel_margin:I

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    .line 337
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 338
    invoke-virtual {p3, v0, v0, p4, v0}, Landroid/widget/AutoCompleteTextView;->setPaddingRelative(IIII)V

    goto :goto_0

    .line 340
    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorSearchViewAnimate;->isRtl()Z

    move-result v1

    if-nez v1, :cond_1

    .line 342
    invoke-virtual {p3, v0, v0, p4, v0}, Landroid/widget/AutoCompleteTextView;->setPadding(IIII)V

    goto :goto_0

    .line 344
    :cond_1
    invoke-virtual {p3, p4, v0, v0, v0}, Landroid/widget/AutoCompleteTextView;->setPadding(IIII)V

    .line 348
    :goto_0
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSearchViewAnimate;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v1, Lcolor/support/v7/appcompat/R$color;->color_search_view_input_text_color:I

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p4

    .line 349
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->ColorSearchViewAnimate_inputTextColor:I

    invoke-virtual {p2, v1, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p4

    .line 350
    invoke-virtual {p3, p4}, Landroid/widget/AutoCompleteTextView;->setTextColor(I)V

    .line 352
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSearchViewAnimate;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v1, Lcolor/support/v7/appcompat/R$color;->color_search_view_hint_color:I

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p4

    .line 353
    sget v1, Lcolor/support/v7/appcompat/R$styleable;->ColorSearchViewAnimate_inputHintTextColor:I

    invoke-virtual {p2, v1, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p4

    .line 354
    invoke-virtual {p3, p4}, Landroid/widget/AutoCompleteTextView;->setHintTextColor(I)V

    .line 357
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSearchViewAnimate_colorSearchIcon:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 358
    iget-object p3, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mSearchIcon:Landroid/widget/ImageView;

    sget p4, Lcolor/support/v7/appcompat/R$styleable;->ColorSearchViewAnimate_colorSearchIcon:I

    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 360
    :cond_2
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x13

    if-le p3, p4, :cond_3

    .line 361
    iget-object p3, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mSearchIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSearchViewAnimate;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v1, Lcolor/support/v7/appcompat/R$drawable;->color_search_view_icon:I

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 363
    :cond_3
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSearchViewAnimate;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcolor/support/v7/appcompat/R$drawable;->color_search_view_icon:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    .line 364
    iget-object p4, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mSearchIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorSearchViewAnimate;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcolor/support/v7/appcompat/R$color;->color_search_icon_color:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/color/support/util/ColorTintUtil;->tintDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p4, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 369
    :goto_1
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSearchViewAnimate_normalHintColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 370
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSearchViewAnimate_normalHintColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    goto :goto_2

    .line 372
    :cond_4
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSearchViewAnimate;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcolor/support/v7/appcompat/R$color;->color_search_view_hint_color_selector:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    .line 374
    :goto_2
    iget-object p4, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mHintTextView:Landroid/widget/TextView;

    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 375
    iget-object p4, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mHintTextView:Landroid/widget/TextView;

    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 376
    iget-object p3, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mHintTextView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getTextSize()F

    move-result p3

    const/4 p4, 0x2

    invoke-static {p3, p1, p4}, Lcom/color/support/util/ColorChangeTextUtil;->getSuitableFontSize(FFI)F

    move-result p3

    .line 379
    iget-object v1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mHintTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 381
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSearchViewAnimate_normalBackground:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 382
    iget-object p3, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mHintViewLayout:Landroid/widget/LinearLayout;

    sget v1, Lcolor/support/v7/appcompat/R$styleable;->ColorSearchViewAnimate_normalBackground:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 385
    :cond_5
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSearchViewAnimate_searchHint:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 386
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSearchViewAnimate_searchHint:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 387
    invoke-virtual {p0, p3}, Lcom/color/support/widget/ColorSearchViewAnimate;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 390
    :cond_6
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSearchViewAnimate_cancelTextColor:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 391
    iget-object p3, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mCancelButton:Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;

    sget v1, Lcolor/support/v7/appcompat/R$styleable;->ColorSearchViewAnimate_cancelTextColor:I

    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p3, v1}, Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;->setTextColor(I)V

    .line 393
    :cond_7
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSearchViewAnimate_cancelText:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 394
    iget-object p3, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mCancelButton:Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;

    sget v1, Lcolor/support/v7/appcompat/R$styleable;->ColorSearchViewAnimate_cancelText:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 396
    :cond_8
    iget-object p3, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mCancelButton:Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;

    sget v1, Lcolor/support/v7/appcompat/R$string;->color_search_view_cancel:I

    invoke-virtual {p3, v1}, Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;->setText(I)V

    .line 398
    :goto_3
    iget-object p3, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mCancelButton:Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;

    invoke-virtual {p3}, Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;->getTextSize()F

    move-result p3

    invoke-static {p3, p1, p4}, Lcom/color/support/util/ColorChangeTextUtil;->getSuitableFontSize(FFI)F

    move-result p1

    .line 401
    iget-object p3, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mCancelButton:Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;

    invoke-virtual {p3, v0, p1}, Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;->setTextSize(IF)V

    .line 403
    sget p1, Lcolor/support/v7/appcompat/R$styleable;->ColorSearchViewAnimate_cancelDivider:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 404
    sget p1, Lcolor/support/v7/appcompat/R$styleable;->ColorSearchViewAnimate_cancelDivider:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 406
    iget-object p3, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mCancelDivider:Landroid/widget/ImageView;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 410
    :cond_9
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSearchViewAnimate;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcolor/support/v7/appcompat/R$color;->color_search_view_search_background:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 411
    sget p3, Lcolor/support/v7/appcompat/R$styleable;->ColorSearchViewAnimate_searchBackground:I

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 412
    iget-object p3, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mSearchView:Lcolor/support/v7/widget/SearchView;

    invoke-virtual {p3, p1}, Lcolor/support/v7/widget/SearchView;->setBackgroundColor(I)V

    .line 414
    iget-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mSearchView:Lcolor/support/v7/widget/SearchView;

    sget p3, Lcolor/support/v7/appcompat/R$id;->search_close_btn:I

    invoke-virtual {p1, p3}, Lcolor/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_a

    .line 416
    sget p3, Lcolor/support/v7/appcompat/R$drawable;->oppo_search_clear_selector:I

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 419
    :cond_a
    sget p1, Lcolor/support/v7/appcompat/R$styleable;->ColorSearchViewAnimate_android_gravity:I

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    .line 420
    sget-boolean p3, Lcom/color/support/widget/ColorSearchViewAnimate;->DEBUG:Z

    if-eqz p3, :cond_b

    .line 421
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "gravity "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "ColorSearchViewAnimate"

    invoke-static {p4, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_b
    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorSearchViewAnimate;->setGravity(I)V

    .line 425
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private measureWidth(I)I
    .locals 0

    return p1
.end method

.method private notifyCancelButton()Z
    .locals 2

    .line 1002
    iget-object p0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mOnCancelButtonClickListeners:Ljava/util/List;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1003
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/color/support/widget/ColorSearchViewAnimate$OnCancelButtonClickListener;

    if-eqz v1, :cond_0

    .line 1005
    invoke-interface {v1}, Lcom/color/support/widget/ColorSearchViewAnimate$OnCancelButtonClickListener;->onClickCancel()Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private notifyOnStateChange(II)V
    .locals 1

    .line 1013
    iget-object p0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mOnStateChangeListeners:Ljava/util/List;

    if-eqz p0, :cond_1

    .line 1014
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/ColorSearchViewAnimate$OnStateChangeListener;

    if-eqz v0, :cond_0

    .line 1016
    invoke-interface {v0, p1, p2}, Lcom/color/support/widget/ColorSearchViewAnimate$OnStateChangeListener;->onStateChange(II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private onClickStateEdit()V
    .locals 1

    .line 992
    invoke-direct {p0}, Lcom/color/support/widget/ColorSearchViewAnimate;->notifyCancelButton()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 996
    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/ColorSearchViewAnimate;->getAnimatorHelper()Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->runStateChangeAnimation(I)V

    return-void
.end method

.method private onClickStateNormal()V
    .locals 1

    .line 1027
    invoke-direct {p0}, Lcom/color/support/widget/ColorSearchViewAnimate;->getAnimatorHelper()Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorSearchViewAnimate$AnimatorHelper;->runStateChangeAnimation(I)V

    return-void
.end method

.method private removeLast()V
    .locals 4

    .line 846
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mToolBar:Lcolor/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Lcolor/support/v7/widget/Toolbar;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 849
    iget-object v2, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mToolBar:Lcolor/support/v7/widget/Toolbar;

    invoke-virtual {v2, v1}, Lcolor/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 850
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 851
    iget-object p0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mToolBar:Lcolor/support/v7/widget/Toolbar;

    invoke-virtual {p0, v1}, Lcolor/support/v7/widget/Toolbar;->removeViewAt(I)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setMenuItem(Landroid/view/MenuItem;)V
    .locals 1

    .line 658
    iput-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mMenuItem:Landroid/view/MenuItem;

    .line 659
    iget-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mMenuItem:Landroid/view/MenuItem;

    if-eqz p1, :cond_0

    .line 660
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mToolBar:Lcolor/support/v7/widget/Toolbar;

    .line 663
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object p1

    if-ne p1, p0, :cond_0

    .line 665
    iget-object p0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mMenuItem:Landroid/view/MenuItem;

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method private setRelativeVerticalGravity(Landroid/view/View;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 454
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 455
    instance-of v0, p0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_4

    .line 456
    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 457
    invoke-virtual {p0}, Landroid/widget/RelativeLayout$LayoutParams;->getRules()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    const/4 v0, 0x1

    .line 458
    iput-boolean v0, p0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    and-int/lit8 p2, p2, 0x70

    const/16 v0, 0x10

    const/16 v1, 0xf

    if-eq p2, v0, :cond_3

    const/16 v0, 0x30

    if-eq p2, v0, :cond_2

    const/16 v0, 0x50

    if-eq p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0xc

    goto :goto_0

    :cond_2
    const/16 v1, 0xa

    .line 471
    :cond_3
    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 472
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_4
    return-void
.end method

.method private setSearchAutoCompleteFocus()V
    .locals 1

    .line 947
    iget-object p0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mSearchView:Lcolor/support/v7/widget/SearchView;

    if-eqz p0, :cond_0

    .line 948
    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->getSearchAutoComplete()Landroid/widget/AutoCompleteTextView;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 950
    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->setFocusable(Z)V

    .line 951
    invoke-virtual {p0, v0}, Landroid/widget/AutoCompleteTextView;->setFocusableInTouchMode(Z)V

    .line 952
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    :cond_0
    return-void
.end method

.method private setSearchAutoCompleteUnFocus()V
    .locals 2

    .line 959
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mSearchView:Lcolor/support/v7/widget/SearchView;

    if-eqz v0, :cond_0

    .line 960
    invoke-virtual {v0}, Lcolor/support/v7/widget/SearchView;->clearFocus()V

    .line 961
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mSearchView:Lcolor/support/v7/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/SearchView;->setFocusable(Z)V

    .line 962
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mSearchView:Lcolor/support/v7/widget/SearchView;

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/SearchView;->onWindowFocusChanged(Z)V

    .line 963
    iget-object p0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mSearchView:Lcolor/support/v7/widget/SearchView;

    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->getSearchAutoComplete()Landroid/widget/AutoCompleteTextView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 965
    invoke-virtual {p0, v1}, Landroid/widget/AutoCompleteTextView;->setFocusable(Z)V

    :cond_0
    return-void
.end method

.method private setToolBarAlpha(F)V
    .locals 3

    .line 644
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mToolBar:Lcolor/support/v7/widget/Toolbar;

    if-eqz v0, :cond_1

    .line 645
    invoke-virtual {v0}, Lcolor/support/v7/widget/Toolbar;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 648
    iget-object v2, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mToolBar:Lcolor/support/v7/widget/Toolbar;

    invoke-virtual {v2, v1}, Lcolor/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p0, :cond_0

    goto :goto_1

    .line 652
    :cond_0
    invoke-virtual {v2, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setToolBarChildVisibility(I)V
    .locals 3

    .line 630
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mToolBar:Lcolor/support/v7/widget/Toolbar;

    if-eqz v0, :cond_1

    .line 631
    invoke-virtual {v0}, Lcolor/support/v7/widget/Toolbar;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 634
    iget-object v2, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mToolBar:Lcolor/support/v7/widget/Toolbar;

    invoke-virtual {v2, v1}, Lcolor/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v2, p0, :cond_0

    goto :goto_1

    .line 638
    :cond_0
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static state2String(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 1392
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "state edit"

    return-object p0

    :cond_1
    const-string p0, "state normal"

    return-object p0
.end method


# virtual methods
.method public addOnCancelButtonClickListener(Lcom/color/support/widget/ColorSearchViewAnimate$OnCancelButtonClickListener;)V
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mOnCancelButtonClickListeners:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->ensureList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mOnCancelButtonClickListeners:Ljava/util/List;

    .line 519
    iget-object p0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mOnCancelButtonClickListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnStateChangeListener(Lcom/color/support/widget/ColorSearchViewAnimate$OnStateChangeListener;)V
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mOnStateChangeListeners:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->ensureList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mOnStateChangeListeners:Ljava/util/List;

    .line 510
    iget-object p0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mOnStateChangeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 0

    .line 483
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public changeStateImmediately(I)V
    .locals 2

    .line 553
    sget-boolean v0, Lcom/color/support/widget/ColorSearchViewAnimate;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeStateImmediately: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/color/support/widget/ColorSearchViewAnimate;->state2String(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorSearchViewAnimate"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    :cond_0
    new-instance v0, Lcom/color/support/widget/ColorSearchViewAnimate$3;

    invoke-direct {v0, p0, p1}, Lcom/color/support/widget/ColorSearchViewAnimate$3;-><init>(Lcom/color/support/widget/ColorSearchViewAnimate;I)V

    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public changeStateWithAnimation(I)V
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 574
    :cond_0
    iget-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 575
    invoke-direct {p0}, Lcom/color/support/widget/ColorSearchViewAnimate;->onClickStateEdit()V

    goto :goto_0

    .line 576
    :cond_1
    iget-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_2

    .line 577
    invoke-direct {p0}, Lcom/color/support/widget/ColorSearchViewAnimate;->onClickStateNormal()V

    :cond_2
    :goto_0
    return-void
.end method

.method public getAnimatorDuration()J
    .locals 2

    .line 587
    iget-wide v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mFadeDuration:J

    return-wide v0
.end method

.method public getCancelIconAnimating()Z
    .locals 0

    .line 779
    iget-boolean p0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mToolBarAnimationRunning:Z

    return p0
.end method

.method public getGravity()I
    .locals 0

    .line 478
    iget p0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mGravity:I

    return p0
.end method

.method public getSearchState()I
    .locals 0

    .line 625
    iget-object p0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public getSearchView()Lcolor/support/v7/widget/SearchView;
    .locals 0

    .line 596
    iget-object p0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mSearchView:Lcolor/support/v7/widget/SearchView;

    return-object p0
.end method

.method public hideInToolBar()V
    .locals 4

    .line 786
    iget-boolean v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mToolBarAnimationRunning:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 789
    iput-boolean v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mToolBarAnimationRunning:Z

    .line 790
    iget-object v1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mCancelButton:Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;->setVisibility(I)V

    .line 791
    iget-object v1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mCancelDivider:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 792
    invoke-direct {p0}, Lcom/color/support/widget/ColorSearchViewAnimate;->ensureAddedToToolBar()V

    .line 794
    iget v1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mAddToToolbarWay:I

    if-ne v1, v0, :cond_1

    .line 795
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSearchViewAnimate;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mFadeDuration:J

    .line 796
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/color/support/widget/ColorSearchViewAnimate$6;

    invoke-direct {v1, p0}, Lcom/color/support/widget/ColorSearchViewAnimate$6;-><init>(Lcom/color/support/widget/ColorSearchViewAnimate;)V

    .line 797
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 804
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    const/4 v0, 0x0

    .line 809
    invoke-direct {p0, v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->setToolBarChildVisibility(I)V

    const/4 v1, 0x2

    .line 810
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 811
    iget-wide v2, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mFadeDuration:J

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 812
    new-instance v2, Lcom/color/support/widget/ColorSearchViewAnimate$7;

    invoke-direct {v2, p0}, Lcom/color/support/widget/ColorSearchViewAnimate$7;-><init>(Lcom/color/support/widget/ColorSearchViewAnimate;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 818
    new-instance v2, Lcom/color/support/widget/ColorSearchViewAnimate$8;

    invoke-direct {v2, p0}, Lcom/color/support/widget/ColorSearchViewAnimate$8;-><init>(Lcom/color/support/widget/ColorSearchViewAnimate;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 826
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 827
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->openSoftInput(Z)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public isIconCanAnimate()Z
    .locals 0

    .line 537
    iget-boolean p0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mSearchIconCanAnimate:Z

    return p0
.end method

.method public onActionViewCollapsed()V
    .locals 0

    return-void
.end method

.method public onActionViewExpanded()V
    .locals 0

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 491
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 919
    invoke-direct {p0, p1}, Lcom/color/support/widget/ColorSearchViewAnimate;->measureWidth(I)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 920
    iget-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mHintViewLayout:Landroid/widget/LinearLayout;

    iget p2, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mGravity:I

    invoke-direct {p0, p1, p2}, Lcom/color/support/widget/ColorSearchViewAnimate;->setRelativeVerticalGravity(Landroid/view/View;I)V

    return-void
.end method

.method public openSoftInput(Z)V
    .locals 3

    .line 678
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mSearchView:Lcolor/support/v7/widget/SearchView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcolor/support/v7/widget/SearchView;->getSearchAutoComplete()Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 679
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSearchViewAnimate;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 680
    sget-boolean v1, Lcom/color/support/widget/ColorSearchViewAnimate;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 681
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openSoftInput: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ColorSearchViewAnimate"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 684
    invoke-direct {p0}, Lcom/color/support/widget/ColorSearchViewAnimate;->setSearchAutoCompleteFocus()V

    if-eqz v0, :cond_2

    .line 686
    iget-object p0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mSearchView:Lcolor/support/v7/widget/SearchView;

    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->getSearchAutoComplete()Landroid/widget/AutoCompleteTextView;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 689
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 690
    iget-object p0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mSearchView:Lcolor/support/v7/widget/SearchView;

    invoke-virtual {p0}, Lcolor/support/v7/widget/SearchView;->getSearchAutoComplete()Landroid/widget/AutoCompleteTextView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public setAtBehindToolBar(Lcolor/support/v7/widget/Toolbar;ILandroid/view/MenuItem;)V
    .locals 0

    .line 705
    iput-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mToolBar:Lcolor/support/v7/widget/Toolbar;

    .line 706
    iput p2, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mGravityInToolBar:I

    const/4 p1, 0x1

    .line 707
    iput p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mAddToToolbarWay:I

    .line 708
    invoke-direct {p0, p3}, Lcom/color/support/widget/ColorSearchViewAnimate;->setMenuItem(Landroid/view/MenuItem;)V

    .line 709
    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorSearchViewAnimate;->changeStateImmediately(I)V

    const/16 p1, 0x8

    .line 710
    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorSearchViewAnimate;->setVisibility(I)V

    return-void
.end method

.method public setAtFrontToolBar(Lcolor/support/v7/widget/Toolbar;ILandroid/view/MenuItem;)V
    .locals 0

    .line 721
    iput-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mToolBar:Lcolor/support/v7/widget/Toolbar;

    .line 722
    iput p2, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mGravityInToolBar:I

    const/4 p1, 0x2

    .line 723
    iput p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mAddToToolbarWay:I

    .line 724
    invoke-direct {p0, p3}, Lcom/color/support/widget/ColorSearchViewAnimate;->setMenuItem(Landroid/view/MenuItem;)V

    .line 725
    invoke-direct {p0}, Lcom/color/support/widget/ColorSearchViewAnimate;->ensureAddedToToolBar()V

    const/4 p1, 0x0

    .line 726
    invoke-interface {p3, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 727
    iget-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mPlaceAtFrontRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorSearchViewAnimate;->post(Ljava/lang/Runnable;)Z

    .line 728
    iget-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mAtToolbarFrontStateChangeListener:Lcom/color/support/widget/ColorSearchViewAnimate$OnStateChangeListener;

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorSearchViewAnimate;->addOnStateChangeListener(Lcom/color/support/widget/ColorSearchViewAnimate$OnStateChangeListener;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 601
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 602
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mSearchIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 603
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mHintTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 606
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 608
    :cond_1
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mHintViewLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 609
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 611
    :cond_2
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mSearchView:Lcolor/support/v7/widget/SearchView;

    if-eqz v0, :cond_3

    .line 612
    invoke-virtual {v0, p1}, Lcolor/support/v7/widget/SearchView;->setEnabled(Z)V

    .line 614
    :cond_3
    iget-object p0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mCancelButton:Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;

    if-eqz p0, :cond_4

    .line 615
    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;->setEnabled(Z)V

    :cond_4
    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .line 430
    iget v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mGravity:I

    if-eq v0, p1, :cond_2

    const v0, 0x800007

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    const v0, 0x800003

    or-int/2addr p1, v0

    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    or-int/lit8 p1, p1, 0x10

    .line 439
    :cond_1
    iput p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mGravity:I

    .line 440
    iget-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mHintViewLayout:Landroid/widget/LinearLayout;

    iget v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mGravity:I

    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->setRelativeVerticalGravity(Landroid/view/View;I)V

    :cond_2
    return-void
.end method

.method public setIconCanAnimate(Z)V
    .locals 0

    .line 528
    iput-boolean p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mSearchIconCanAnimate:Z

    return-void
.end method

.method public setOnAnimationListener(Lcom/color/support/widget/ColorSearchViewAnimate$OnAnimationListener;)V
    .locals 0

    .line 500
    iput-object p1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mOnAnimationListener:Lcom/color/support/widget/ColorSearchViewAnimate$OnAnimationListener;

    return-void
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .locals 1

    .line 873
    iget-object v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mHintTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 874
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 876
    :cond_0
    iget-object p0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mSearchView:Lcolor/support/v7/widget/SearchView;

    if-eqz p0, :cond_1

    .line 877
    invoke-virtual {p0, p1}, Lcolor/support/v7/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public showInToolBar()V
    .locals 4

    .line 735
    iget-boolean v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mToolBarAnimationRunning:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 738
    iput-boolean v0, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mToolBarAnimationRunning:Z

    .line 739
    invoke-direct {p0}, Lcom/color/support/widget/ColorSearchViewAnimate;->ensureAddedToToolBar()V

    .line 741
    iget v1, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mAddToToolbarWay:I

    if-ne v1, v0, :cond_1

    const/4 v1, 0x0

    .line 743
    invoke-virtual {p0, v1}, Lcom/color/support/widget/ColorSearchViewAnimate;->setVisibility(I)V

    const/4 v2, 0x0

    .line 744
    invoke-virtual {p0, v2}, Lcom/color/support/widget/ColorSearchViewAnimate;->setAlpha(F)V

    .line 745
    iget-object v2, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mCancelButton:Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;

    invoke-virtual {v2, v1}, Lcom/color/support/widget/ColorSearchViewAnimate$SearchCancelButton;->setVisibility(I)V

    .line 746
    iget-object v2, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mCancelDivider:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 747
    invoke-virtual {p0}, Lcom/color/support/widget/ColorSearchViewAnimate;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-wide v2, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mFadeDuration:J

    .line 748
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    .line 749
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 750
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_1
    const/4 v1, 0x2

    .line 756
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 757
    iget-wide v2, p0, Lcom/color/support/widget/ColorSearchViewAnimate;->mFadeDuration:J

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 758
    new-instance v2, Lcom/color/support/widget/ColorSearchViewAnimate$4;

    invoke-direct {v2, p0}, Lcom/color/support/widget/ColorSearchViewAnimate$4;-><init>(Lcom/color/support/widget/ColorSearchViewAnimate;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 764
    new-instance v2, Lcom/color/support/widget/ColorSearchViewAnimate$5;

    invoke-direct {v2, p0}, Lcom/color/support/widget/ColorSearchViewAnimate$5;-><init>(Lcom/color/support/widget/ColorSearchViewAnimate;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 773
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 774
    invoke-virtual {p0, v0}, Lcom/color/support/widget/ColorSearchViewAnimate;->openSoftInput(Z)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
