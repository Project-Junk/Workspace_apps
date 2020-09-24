.class public Landroidx/slice/widget/SliceView;
.super Landroid/view/ViewGroup;
.source "SliceView.java"

# interfaces
.implements Landroidx/lifecycle/Observer;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/widget/SliceView$SliceMode;,
        Landroidx/slice/widget/SliceView$OnSliceActionListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/view/ViewGroup;",
        "Landroidx/lifecycle/Observer<",
        "Landroidx/slice/Slice;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field public static final MODE_LARGE:I = 0x2

.field public static final MODE_SHORTCUT:I = 0x3

.field public static final MODE_SMALL:I = 0x1

.field private static final REFRESH_LAST_UPDATED_IN_MILLIS:I = 0xea60

.field public static final SLICE_ACTION_PRIORITY_COMPARATOR:Ljava/util/Comparator;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SliceView"


# instance fields
.field private mActionRow:Landroidx/slice/widget/ActionRow;

.field private mActionRowHeight:I

.field private mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation
.end field

.field mClickInfo:[I

.field private mCurrentSlice:Landroidx/slice/Slice;

.field private mCurrentSliceLoggedVisible:Z

.field private mCurrentSliceMetrics:Landroidx/slice/widget/SliceMetrics;

.field mCurrentView:Landroidx/slice/widget/SliceChildView;

.field private mDownX:I

.field private mDownY:I

.field mHandler:Landroid/os/Handler;

.field mInLongpress:Z

.field private mLargeHeight:I

.field mListContent:Landroidx/slice/widget/ListContent;

.field mLongClickListener:Landroid/view/View$OnLongClickListener;

.field mLongpressCheck:Ljava/lang/Runnable;

.field private mMinTemplateHeight:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field mPressing:Z

.field mRefreshLastUpdated:Ljava/lang/Runnable;

.field private mShortcutSize:I

.field private mShowActionDividers:Z

.field private mShowActions:Z

.field private mShowHeaderDivider:Z

.field private mShowLastUpdated:Z

.field private mShowTitleItems:Z

.field mSliceMetadata:Landroidx/slice/SliceMetadata;

.field private mSliceObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

.field private mSliceStyle:Landroidx/slice/widget/SliceStyle;

.field private mThemeTintColor:I

.field private mTouchSlopSquared:I

.field private mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 934
    new-instance v0, Landroidx/slice/widget/SliceView$3;

    invoke-direct {v0}, Landroidx/slice/widget/SliceView$3;-><init>()V

    sput-object v0, Landroidx/slice/widget/SliceView;->SLICE_ACTION_PRIORITY_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 189
    invoke-direct {p0, p1, v0}, Landroidx/slice/widget/SliceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 193
    sget v0, Landroidx/slice/view/R$attr;->sliceViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/slice/widget/SliceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 197
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Landroidx/slice/widget/SliceView;->mShowActions:Z

    const/4 v1, 0x1

    .line 164
    iput-boolean v1, p0, Landroidx/slice/widget/SliceView;->mShowLastUpdated:Z

    .line 165
    iput-boolean v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceLoggedVisible:Z

    .line 166
    iput-boolean v0, p0, Landroidx/slice/widget/SliceView;->mShowTitleItems:Z

    .line 167
    iput-boolean v0, p0, Landroidx/slice/widget/SliceView;->mShowHeaderDivider:Z

    .line 168
    iput-boolean v0, p0, Landroidx/slice/widget/SliceView;->mShowActionDividers:Z

    const/4 v0, -0x1

    .line 177
    iput v0, p0, Landroidx/slice/widget/SliceView;->mThemeTintColor:I

    .line 830
    new-instance v0, Landroidx/slice/widget/SliceView$1;

    invoke-direct {v0, p0}, Landroidx/slice/widget/SliceView$1;-><init>(Landroidx/slice/widget/SliceView;)V

    iput-object v0, p0, Landroidx/slice/widget/SliceView;->mLongpressCheck:Ljava/lang/Runnable;

    .line 919
    new-instance v0, Landroidx/slice/widget/SliceView$2;

    invoke-direct {v0, p0}, Landroidx/slice/widget/SliceView$2;-><init>(Landroidx/slice/widget/SliceView;)V

    iput-object v0, p0, Landroidx/slice/widget/SliceView;->mRefreshLastUpdated:Ljava/lang/Runnable;

    .line 198
    sget v0, Landroidx/slice/view/R$style;->Widget_SliceView:I

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/slice/widget/SliceView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x15
    .end annotation

    .line 203
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Landroidx/slice/widget/SliceView;->mShowActions:Z

    const/4 v1, 0x1

    .line 164
    iput-boolean v1, p0, Landroidx/slice/widget/SliceView;->mShowLastUpdated:Z

    .line 165
    iput-boolean v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceLoggedVisible:Z

    .line 166
    iput-boolean v0, p0, Landroidx/slice/widget/SliceView;->mShowTitleItems:Z

    .line 167
    iput-boolean v0, p0, Landroidx/slice/widget/SliceView;->mShowHeaderDivider:Z

    .line 168
    iput-boolean v0, p0, Landroidx/slice/widget/SliceView;->mShowActionDividers:Z

    const/4 v0, -0x1

    .line 177
    iput v0, p0, Landroidx/slice/widget/SliceView;->mThemeTintColor:I

    .line 830
    new-instance v0, Landroidx/slice/widget/SliceView$1;

    invoke-direct {v0, p0}, Landroidx/slice/widget/SliceView$1;-><init>(Landroidx/slice/widget/SliceView;)V

    iput-object v0, p0, Landroidx/slice/widget/SliceView;->mLongpressCheck:Ljava/lang/Runnable;

    .line 919
    new-instance v0, Landroidx/slice/widget/SliceView$2;

    invoke-direct {v0, p0}, Landroidx/slice/widget/SliceView$2;-><init>(Landroidx/slice/widget/SliceView;)V

    iput-object v0, p0, Landroidx/slice/widget/SliceView;->mRefreshLastUpdated:Ljava/lang/Runnable;

    .line 204
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/slice/widget/SliceView;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private applyConfigurations()V
    .locals 2

    .line 745
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mSliceObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceChildView;->setSliceActionListener(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V

    .line 746
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceChildView;->setStyle(Landroidx/slice/widget/SliceStyle;)V

    .line 747
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->getTintColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceChildView;->setTint(I)V

    .line 749
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->getLayoutDir()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 750
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget-object p0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {p0}, Landroidx/slice/widget/ListContent;->getLayoutDir()I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/slice/widget/SliceChildView;->setLayoutDirection(I)V

    goto :goto_0

    .line 752
    :cond_0
    iget-object p0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/slice/widget/SliceChildView;->setLayoutDirection(I)V

    :goto_0
    return-void
.end method

.method private configureViewPolicy(I)V
    .locals 2

    .line 348
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getMode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    if-lez p1, :cond_1

    .line 349
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v0}, Landroidx/slice/widget/SliceStyle;->getRowMaxHeight()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 350
    iget v0, p0, Landroidx/slice/widget/SliceView;->mMinTemplateHeight:I

    if-gt p1, v0, :cond_0

    move p1, v0

    .line 353
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {v0, p1}, Landroidx/slice/widget/SliceViewPolicy;->setMaxSmallHeight(I)V

    goto :goto_0

    .line 355
    :cond_1
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceViewPolicy;->setMaxSmallHeight(I)V

    .line 357
    :goto_0
    iget-object p0, p0, Landroidx/slice/widget/SliceView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {p0, p1}, Landroidx/slice/widget/SliceViewPolicy;->setMaxHeight(I)V

    :cond_2
    return-void
.end method

.method private getChildLp(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 804
    instance-of p1, p1, Landroidx/slice/widget/ShortcutView;

    if-eqz p1, :cond_0

    .line 805
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    iget p0, p0, Landroidx/slice/widget/SliceView;->mShortcutSize:I

    invoke-direct {p1, p0, p0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object p1

    .line 807
    :cond_0
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 p1, -0x1

    invoke-direct {p0, p1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method private getTintColor()I
    .locals 3

    .line 791
    iget v0, p0, Landroidx/slice/widget/SliceView;->mThemeTintColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 795
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSlice:Landroidx/slice/Slice;

    const-string v1, "int"

    const-string v2, "color"

    invoke-static {v0, v1, v2}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/Slice;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 798
    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getInt()I

    move-result p0

    goto :goto_0

    .line 799
    :cond_1
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroidx/slice/widget/SliceViewUtil;->getColorAccent(Landroid/content/Context;)I

    move-result p0

    :goto_0
    return p0
.end method

.method private handleTouchForLongpress(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 311
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    return v2

    .line 323
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Landroidx/slice/widget/SliceView;->mDownX:I

    sub-int/2addr v0, v1

    .line 324
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iget v1, p0, Landroidx/slice/widget/SliceView;->mDownY:I

    sub-int/2addr p1, v1

    mul-int/2addr v0, v0

    mul-int/2addr p1, p1

    add-int/2addr v0, p1

    .line 326
    iget p1, p0, Landroidx/slice/widget/SliceView;->mTouchSlopSquared:I

    if-le v0, p1, :cond_1

    .line 327
    iput-boolean v2, p0, Landroidx/slice/widget/SliceView;->mPressing:Z

    .line 328
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mLongpressCheck:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 331
    :cond_1
    iget-boolean p0, p0, Landroidx/slice/widget/SliceView;->mInLongpress:Z

    return p0

    .line 335
    :cond_2
    iget-boolean p1, p0, Landroidx/slice/widget/SliceView;->mInLongpress:Z

    .line 336
    iput-boolean v2, p0, Landroidx/slice/widget/SliceView;->mPressing:Z

    .line 337
    iput-boolean v2, p0, Landroidx/slice/widget/SliceView;->mInLongpress:Z

    .line 338
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/slice/widget/SliceView;->mLongpressCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return p1

    .line 314
    :cond_3
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroidx/slice/widget/SliceView;->mLongpressCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 315
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Landroidx/slice/widget/SliceView;->mDownX:I

    .line 316
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Landroidx/slice/widget/SliceView;->mDownY:I

    .line 317
    iput-boolean v1, p0, Landroidx/slice/widget/SliceView;->mPressing:Z

    .line 318
    iput-boolean v2, p0, Landroidx/slice/widget/SliceView;->mInLongpress:Z

    .line 319
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/slice/widget/SliceView;->mLongpressCheck:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v2
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 208
    new-instance v0, Landroidx/slice/widget/SliceStyle;

    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/slice/widget/SliceStyle;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Landroidx/slice/widget/SliceView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    .line 209
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {p1}, Landroidx/slice/widget/SliceStyle;->getTintColor()I

    move-result p1

    iput p1, p0, Landroidx/slice/widget/SliceView;->mThemeTintColor:I

    .line 210
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_shortcut_size:I

    .line 211
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/slice/widget/SliceView;->mShortcutSize:I

    .line 212
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_row_min_height:I

    .line 213
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/slice/widget/SliceView;->mMinTemplateHeight:I

    .line 214
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_large_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/slice/widget/SliceView;->mLargeHeight:I

    .line 215
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Landroidx/slice/view/R$dimen;->abc_slice_action_row_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroidx/slice/widget/SliceView;->mActionRowHeight:I

    .line 217
    new-instance p1, Landroidx/slice/widget/SliceViewPolicy;

    invoke-direct {p1}, Landroidx/slice/widget/SliceViewPolicy;-><init>()V

    iput-object p1, p0, Landroidx/slice/widget/SliceView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    .line 218
    new-instance p1, Landroidx/slice/widget/TemplateView;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/slice/widget/TemplateView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    .line 219
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget-object p2, p0, Landroidx/slice/widget/SliceView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {p1, p2}, Landroidx/slice/widget/SliceChildView;->setPolicy(Landroidx/slice/widget/SliceViewPolicy;)V

    .line 220
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceView;->getChildLp(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroidx/slice/widget/SliceView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->applyConfigurations()V

    .line 224
    new-instance p1, Landroidx/slice/widget/ActionRow;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 p3, 0x1

    invoke-direct {p1, p2, p3}, Landroidx/slice/widget/ActionRow;-><init>(Landroid/content/Context;Z)V

    iput-object p1, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    .line 225
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const p3, -0x111112

    invoke-direct {p2, p3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroidx/slice/widget/ActionRow;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 226
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceView;->getChildLp(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroidx/slice/widget/SliceView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->updateActions()V

    .line 229
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    mul-int/2addr p1, p1

    .line 230
    iput p1, p0, Landroidx/slice/widget/SliceView;->mTouchSlopSquared:I

    .line 231
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Landroidx/slice/widget/SliceView;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    .line 233
    invoke-virtual {p0, p1}, Landroidx/slice/widget/SliceView;->setClipToPadding(Z)V

    .line 234
    invoke-super {p0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initSliceMetrics(Landroidx/slice/Slice;)V
    .locals 3
    .param p1    # Landroidx/slice/Slice;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 874
    invoke-virtual {p1}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 877
    :cond_0
    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mCurrentSlice:Landroidx/slice/Slice;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 878
    :cond_1
    invoke-direct {p0, v0}, Landroidx/slice/widget/SliceView;->logSliceMetricsVisibilityChange(Z)V

    .line 880
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {v0, p1}, Landroidx/slice/widget/SliceMetrics;->getInstance(Landroid/content/Context;Landroid/net/Uri;)Landroidx/slice/widget/SliceMetrics;

    move-result-object p1

    iput-object p1, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceMetrics:Landroidx/slice/widget/SliceMetrics;

    goto :goto_1

    .line 875
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Landroidx/slice/widget/SliceView;->logSliceMetricsVisibilityChange(Z)V

    const/4 p1, 0x0

    .line 876
    iput-object p1, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceMetrics:Landroidx/slice/widget/SliceMetrics;

    :cond_3
    :goto_1
    return-void
.end method

.method private logSliceMetricsOnTouch(Landroidx/slice/SliceItem;Landroidx/slice/widget/EventInfo;)V
    .locals 1

    .line 898
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceMetrics:Landroidx/slice/widget/SliceMetrics;

    if-eqz v0, :cond_0

    .line 899
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 900
    iget-object p0, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceMetrics:Landroidx/slice/widget/SliceMetrics;

    iget p2, p2, Landroidx/slice/widget/EventInfo;->actionType:I

    .line 902
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object p1

    .line 900
    invoke-virtual {p0, p2, p1}, Landroidx/slice/widget/SliceMetrics;->logTouch(ILandroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method private logSliceMetricsVisibilityChange(Z)V
    .locals 2

    .line 885
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceMetrics:Landroidx/slice/widget/SliceMetrics;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 886
    iget-boolean v1, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceLoggedVisible:Z

    if-nez v1, :cond_0

    .line 887
    invoke-virtual {v0}, Landroidx/slice/widget/SliceMetrics;->logVisible()V

    const/4 v0, 0x1

    .line 888
    iput-boolean v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceLoggedVisible:Z

    :cond_0
    if-nez p1, :cond_1

    .line 890
    iget-boolean p1, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceLoggedVisible:Z

    if-eqz p1, :cond_1

    .line 891
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceMetrics:Landroidx/slice/widget/SliceMetrics;

    invoke-virtual {p1}, Landroidx/slice/widget/SliceMetrics;->logHidden()V

    const/4 p1, 0x0

    .line 892
    iput-boolean p1, p0, Landroidx/slice/widget/SliceView;->mCurrentSliceLoggedVisible:Z

    :cond_1
    return-void
.end method

.method public static modeToString(I)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "MODE SHORTCUT"

    return-object p0

    :cond_1
    const-string p0, "MODE LARGE"

    return-object p0

    :cond_2
    const-string p0, "MODE SMALL"

    return-object p0
.end method

.method private refreshLastUpdatedLabel(Z)V
    .locals 6

    .line 908
    iget-boolean v0, p0, Landroidx/slice/widget/SliceView;->mShowLastUpdated:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mSliceMetadata:Landroidx/slice/SliceMetadata;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/slice/SliceMetadata;->neverExpires()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 910
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mRefreshLastUpdated:Ljava/lang/Runnable;

    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mSliceMetadata:Landroidx/slice/SliceMetadata;

    invoke-virtual {v1}, Landroidx/slice/SliceMetadata;->isExpired()Z

    move-result v1

    const-wide/32 v2, 0xea60

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/slice/widget/SliceView;->mSliceMetadata:Landroidx/slice/SliceMetadata;

    .line 912
    invoke-virtual {p0}, Landroidx/slice/SliceMetadata;->getTimeToExpiry()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 910
    :goto_0
    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 914
    :cond_1
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/slice/widget/SliceView;->mRefreshLastUpdated:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private updateActions()V
    .locals 6

    .line 757
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mActions:Ljava/util/List;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    .line 759
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    invoke-virtual {v0, v2}, Landroidx/slice/widget/ActionRow;->setVisibility(I)V

    .line 760
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceChildView;->setSliceActions(Ljava/util/List;)V

    .line 761
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getPaddingStart()I

    move-result v1

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getPaddingEnd()I

    move-result v3

    .line 762
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getPaddingBottom()I

    move-result p0

    .line 761
    invoke-virtual {v0, v1, v2, v3, p0}, Landroidx/slice/widget/SliceChildView;->setInsets(IIII)V

    return-void

    .line 766
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 767
    sget-object v0, Landroidx/slice/widget/SliceView;->SLICE_ACTION_PRIORITY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 768
    iget-boolean v0, p0, Landroidx/slice/widget/SliceView;->mShowActions:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getMode()I

    move-result v0

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x2

    if-lt v0, v4, :cond_1

    .line 770
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->getTintColor()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroidx/slice/widget/ActionRow;->setActions(Ljava/util/List;I)V

    .line 771
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/slice/widget/ActionRow;->setVisibility(I)V

    .line 774
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceChildView;->setSliceActions(Ljava/util/List;)V

    .line 776
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getPaddingStart()I

    move-result v1

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getPaddingEnd()I

    move-result v4

    invoke-virtual {v0, v1, v3, v4, v2}, Landroidx/slice/widget/SliceChildView;->setInsets(IIII)V

    .line 777
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getPaddingStart()I

    move-result v1

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getPaddingEnd()I

    move-result v3

    .line 778
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getPaddingBottom()I

    move-result p0

    .line 777
    invoke-virtual {v0, v1, v2, v3, p0}, Landroidx/slice/widget/ActionRow;->setPaddingRelative(IIII)V

    goto :goto_0

    .line 782
    :cond_1
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v0, v3}, Landroidx/slice/widget/SliceChildView;->setSliceActions(Ljava/util/List;)V

    .line 783
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getPaddingStart()I

    move-result v1

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getPaddingEnd()I

    move-result v4

    .line 784
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getPaddingBottom()I

    move-result v5

    .line 783
    invoke-virtual {v0, v1, v3, v4, v5}, Landroidx/slice/widget/SliceChildView;->setInsets(IIII)V

    .line 786
    iget-object p0, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    invoke-virtual {p0, v2}, Landroidx/slice/widget/ActionRow;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateViewConfig()V
    .locals 5

    .line 717
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getMode()I

    move-result v0

    .line 718
    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    instance-of v2, v1, Landroidx/slice/widget/ShortcutView;

    .line 719
    invoke-virtual {v1}, Landroidx/slice/widget/SliceChildView;->getLoadingActions()Ljava/util/Set;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    if-nez v2, :cond_0

    .line 721
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {p0, v0}, Landroidx/slice/widget/SliceView;->removeView(Landroid/view/View;)V

    .line 722
    new-instance v0, Landroidx/slice/widget/ShortcutView;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/slice/widget/ShortcutView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    .line 723
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-direct {p0, v0}, Landroidx/slice/widget/SliceView;->getChildLp(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroidx/slice/widget/SliceView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    if-eq v0, v4, :cond_1

    if-eqz v2, :cond_1

    .line 726
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {p0, v0}, Landroidx/slice/widget/SliceView;->removeView(Landroid/view/View;)V

    .line 727
    new-instance v0, Landroidx/slice/widget/TemplateView;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/slice/widget/TemplateView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    .line 728
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-direct {p0, v0}, Landroidx/slice/widget/SliceView;->getChildLp(Landroid/view/View;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Landroidx/slice/widget/SliceView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_3

    .line 734
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {v0, v2}, Landroidx/slice/widget/SliceChildView;->setPolicy(Landroidx/slice/widget/SliceViewPolicy;)V

    .line 735
    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->applyConfigurations()V

    .line 736
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 737
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v0, v2}, Landroidx/slice/widget/SliceChildView;->setSliceContent(Landroidx/slice/widget/ListContent;)V

    .line 739
    :cond_2
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v0, v1}, Landroidx/slice/widget/SliceChildView;->setLoadingActions(Ljava/util/Set;)V

    .line 741
    :cond_3
    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->updateActions()V

    return-void
.end method


# virtual methods
.method public getMode()I
    .locals 0

    .line 628
    iget-object p0, p0, Landroidx/slice/widget/SliceView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceViewPolicy;->getMode()I

    move-result p0

    return p0
.end method

.method public getSlice()Landroidx/slice/Slice;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 513
    iget-object p0, p0, Landroidx/slice/widget/SliceView;->mCurrentSlice:Landroidx/slice/Slice;

    return-object p0
.end method

.method public getSliceActions()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation

    .line 524
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mActions:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 528
    :cond_0
    iget-object p0, p0, Landroidx/slice/widget/SliceView;->mActions:Ljava/util/List;

    return-object p0
.end method

.method public isScrollable()Z
    .locals 0

    .line 579
    iget-object p0, p0, Landroidx/slice/widget/SliceView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceViewPolicy;->isScrollable()Z

    move-result p0

    return p0
.end method

.method public isShowingActionRow()Z
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 706
    iget-boolean p0, p0, Landroidx/slice/widget/SliceView;->mShowActions:Z

    return p0
.end method

.method public isSliceViewClickable()Z
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 248
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/slice/widget/ListContent;->getShortcut(Landroid/content/Context;)Landroidx/slice/core/SliceAction;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 843
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 844
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 845
    invoke-direct {p0, v0}, Landroidx/slice/widget/SliceView;->logSliceMetricsVisibilityChange(Z)V

    .line 846
    invoke-direct {p0, v0}, Landroidx/slice/widget/SliceView;->refreshLastUpdatedLabel(Z)V

    :cond_0
    return-void
.end method

.method public onChanged(Landroidx/slice/Slice;)V
    .locals 0
    .param p1    # Landroidx/slice/Slice;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 434
    invoke-virtual {p0, p1}, Landroidx/slice/widget/SliceView;->setSlice(Landroidx/slice/Slice;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 98
    check-cast p1, Landroidx/slice/Slice;

    invoke-virtual {p0, p1}, Landroidx/slice/widget/SliceView;->onChanged(Landroidx/slice/Slice;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 263
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/slice/widget/ListContent;->getShortcut(Landroid/content/Context;)Landroidx/slice/core/SliceAction;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 265
    :try_start_0
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/slice/widget/ListContent;->getShortcut(Landroid/content/Context;)Landroidx/slice/core/SliceAction;

    move-result-object p1

    check-cast p1, Landroidx/slice/core/SliceActionImpl;

    .line 266
    invoke-virtual {p1}, Landroidx/slice/core/SliceActionImpl;->getActionItem()Landroidx/slice/SliceItem;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroidx/slice/SliceItem;->fireActionInternal(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v3, :cond_1

    .line 270
    iget-object v3, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {p1}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/slice/widget/SliceChildView;->setActionLoading(Landroidx/slice/SliceItem;)V

    :cond_1
    if-eqz v0, :cond_3

    .line 272
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mSliceObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mClickInfo:[I

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mClickInfo:[I

    array-length v0, v0

    if-le v0, v2, :cond_3

    .line 274
    new-instance v0, Landroidx/slice/widget/EventInfo;

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getMode()I

    move-result v3

    const/4 v4, 0x3

    iget-object v5, p0, Landroidx/slice/widget/SliceView;->mClickInfo:[I

    aget v1, v5, v1

    iget-object v5, p0, Landroidx/slice/widget/SliceView;->mClickInfo:[I

    aget v2, v5, v2

    invoke-direct {v0, v3, v4, v1, v2}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    .line 276
    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mSliceObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    invoke-virtual {p1}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroidx/slice/widget/SliceView$OnSliceActionListener;->onSliceAction(Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V

    .line 277
    invoke-virtual {p1}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Landroidx/slice/widget/SliceView;->logSliceMetricsOnTouch(Landroidx/slice/SliceItem;Landroidx/slice/widget/EventInfo;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "SliceView"

    const-string v0, "PendingIntent for slice cannot be sent"

    .line 280
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 282
    :cond_2
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_3

    .line 283
    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 852
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 853
    invoke-direct {p0, v0}, Landroidx/slice/widget/SliceView;->logSliceMetricsVisibilityChange(Z)V

    .line 854
    invoke-direct {p0, v0}, Landroidx/slice/widget/SliceView;->refreshLastUpdatedLabel(Z)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 300
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceView;->handleTouchForLongpress(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 301
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 423
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    .line 424
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    const/4 p4, 0x0

    invoke-virtual {p1, p4, p4, p2, p3}, Landroid/view/View;->layout(IIII)V

    .line 425
    iget-object p2, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    invoke-virtual {p2}, Landroidx/slice/widget/ActionRow;->getVisibility()I

    move-result p2

    const/16 p3, 0x8

    if-eq p2, p3, :cond_0

    .line 426
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    .line 427
    iget-object p2, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    invoke-virtual {p2}, Landroidx/slice/widget/ActionRow;->getMeasuredWidth()I

    move-result p3

    iget-object p0, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    .line 428
    invoke-virtual {p0}, Landroidx/slice/widget/ActionRow;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, p1

    .line 427
    invoke-virtual {p2, p4, p1, p3, p0}, Landroidx/slice/widget/ActionRow;->layout(IIII)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 363
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 364
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v1, v0, :cond_0

    .line 366
    iget p1, p0, Landroidx/slice/widget/SliceView;->mShortcutSize:I

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getPaddingLeft()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getPaddingRight()I

    move-result v0

    add-int/2addr p1, v0

    .line 368
    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    invoke-virtual {v0}, Landroidx/slice/widget/ActionRow;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    iget v0, p0, Landroidx/slice/widget/SliceView;->mActionRowHeight:I

    goto :goto_0

    :cond_1
    move v0, v3

    .line 371
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 372
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 373
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 374
    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_3

    :cond_2
    if-nez p2, :cond_4

    :cond_3
    const/4 v4, -0x1

    goto :goto_1

    :cond_4
    move v4, v2

    .line 378
    :goto_1
    invoke-direct {p0, v4}, Landroidx/slice/widget/SliceView;->configureViewPolicy(I)V

    .line 380
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    if-eq p2, v4, :cond_b

    .line 384
    iget-object v5, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Landroidx/slice/widget/ListContent;->isValid()Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_4

    .line 386
    :cond_5
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getMode()I

    move-result v5

    if-ne v5, v1, :cond_6

    .line 388
    iget p2, p0, Landroidx/slice/widget/SliceView;->mShortcutSize:I

    :goto_2
    add-int/2addr p2, v0

    goto :goto_5

    .line 390
    :cond_6
    iget-object v1, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    iget-object v5, p0, Landroidx/slice/widget/SliceView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iget-object v6, p0, Landroidx/slice/widget/SliceView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    .line 391
    invoke-virtual {v1, v5, v6}, Landroidx/slice/widget/ListContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v1

    add-int/2addr v1, v0

    if-gt v2, v1, :cond_9

    if-nez p2, :cond_7

    goto :goto_3

    .line 397
    :cond_7
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getMode()I

    move-result p2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_8

    iget p2, p0, Landroidx/slice/widget/SliceView;->mLargeHeight:I

    add-int v1, p2, v0

    if-lt v2, v1, :cond_8

    goto :goto_2

    .line 400
    :cond_8
    iget p2, p0, Landroidx/slice/widget/SliceView;->mMinTemplateHeight:I

    if-gt v2, p2, :cond_b

    goto :goto_5

    :cond_9
    :goto_3
    move p2, v1

    goto :goto_5

    :cond_a
    :goto_4
    move p2, v0

    goto :goto_5

    :cond_b
    move p2, v2

    .line 409
    :goto_5
    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    if-lez v0, :cond_c

    .line 410
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v2, v0

    goto :goto_6

    :cond_c
    move v2, v3

    .line 411
    :goto_6
    iget-object v5, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v5, v1, v2}, Landroidx/slice/widget/ActionRow;->measure(II)V

    .line 414
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getPaddingTop()I

    move-result v2

    add-int/2addr p2, v2

    if-lez v0, :cond_d

    goto :goto_7

    .line 415
    :cond_d
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getPaddingBottom()I

    move-result v3

    :goto_7
    add-int/2addr p2, v3

    .line 416
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {v0, v1, p2}, Landroidx/slice/widget/SliceChildView;->measure(II)V

    .line 417
    iget-object p2, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    .line 418
    invoke-virtual {p2}, Landroidx/slice/widget/SliceChildView;->getMeasuredHeight()I

    move-result p2

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mActionRow:Landroidx/slice/widget/ActionRow;

    invoke-virtual {v0}, Landroidx/slice/widget/ActionRow;->getMeasuredHeight()I

    move-result v0

    add-int/2addr p2, v0

    .line 417
    invoke-virtual {p0, p1, p2}, Landroidx/slice/widget/SliceView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 306
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceView;->handleTouchForLongpress(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 307
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    .line 859
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    .line 860
    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 861
    :goto_0
    invoke-direct {p0, v1}, Landroidx/slice/widget/SliceView;->logSliceMetricsVisibilityChange(Z)V

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    move p1, v0

    .line 862
    :goto_1
    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceView;->refreshLastUpdatedLabel(Z)V

    :cond_2
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 3

    .line 868
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowVisibilityChanged(I)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 869
    :goto_0
    invoke-direct {p0, v2}, Landroidx/slice/widget/SliceView;->logSliceMetricsVisibilityChange(Z)V

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 870
    :goto_1
    invoke-direct {p0, v0}, Landroidx/slice/widget/SliceView;->refreshLastUpdatedLabel(Z)V

    return-void
.end method

.method public setAccentColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 599
    iput p1, p0, Landroidx/slice/widget/SliceView;->mThemeTintColor:I

    .line 600
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iget v0, p0, Landroidx/slice/widget/SliceView;->mThemeTintColor:I

    invoke-virtual {p1, v0}, Landroidx/slice/widget/SliceStyle;->setTintColor(I)V

    .line 601
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->getTintColor()I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/slice/widget/SliceChildView;->setTint(I)V

    return-void
.end method

.method public setClickInfo([I)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 258
    iput-object p1, p0, Landroidx/slice/widget/SliceView;->mClickInfo:[I

    return-void
.end method

.method public setMode(I)V
    .locals 1

    const/4 v0, 0x0

    .line 563
    invoke-virtual {p0, p1, v0}, Landroidx/slice/widget/SliceView;->setMode(IZ)V

    return-void
.end method

.method public setMode(IZ)V
    .locals 3
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    const-string v0, "SliceView"

    if-eqz p2, :cond_0

    const-string p2, "Animation not supported yet"

    .line 610
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_0
    iget-object p2, p0, Landroidx/slice/widget/SliceView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {p2}, Landroidx/slice/widget/SliceViewPolicy;->getMode()I

    move-result p2

    if-ne p2, p1, :cond_1

    return-void

    :cond_1
    const/4 p2, 0x1

    const/4 v1, 0x2

    if-eq p1, p2, :cond_2

    if-eq p1, v1, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    .line 616
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown mode: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " please use one of MODE_SHORTCUT, MODE_SMALL, MODE_LARGE"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v1

    .line 620
    :cond_2
    iget-object p2, p0, Landroidx/slice/widget/SliceView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {p2, p1}, Landroidx/slice/widget/SliceViewPolicy;->setMode(I)V

    .line 621
    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->updateViewConfig()V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 289
    iput-object p1, p0, Landroidx/slice/widget/SliceView;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 294
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 295
    iput-object p1, p0, Landroidx/slice/widget/SliceView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public setOnSliceActionListener(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V
    .locals 0
    .param p1    # Landroidx/slice/widget/SliceView$OnSliceActionListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 587
    iput-object p1, p0, Landroidx/slice/widget/SliceView;->mSliceObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    .line 588
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget-object p0, p0, Landroidx/slice/widget/SliceView;->mSliceObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    invoke-virtual {p1, p0}, Landroidx/slice/widget/SliceChildView;->setSliceActionListener(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V

    return-void
.end method

.method public setScrollable(Z)V
    .locals 1

    .line 570
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {v0}, Landroidx/slice/widget/SliceViewPolicy;->isScrollable()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 571
    iget-object p0, p0, Landroidx/slice/widget/SliceView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {p0, p1}, Landroidx/slice/widget/SliceViewPolicy;->setScrollable(Z)V

    :cond_0
    return-void
.end method

.method public setShowActionDividers(Z)V
    .locals 0

    .line 674
    iput-boolean p1, p0, Landroidx/slice/widget/SliceView;->mShowActionDividers:Z

    .line 675
    iget-object p0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz p0, :cond_0

    .line 676
    invoke-virtual {p0, p1}, Landroidx/slice/widget/ListContent;->showActionDividers(Z)V

    :cond_0
    return-void
.end method

.method public setShowActionRow(Z)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 696
    iput-boolean p1, p0, Landroidx/slice/widget/SliceView;->mShowActions:Z

    .line 697
    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->updateActions()V

    return-void
.end method

.method public setShowHeaderDivider(Z)V
    .locals 0

    .line 655
    iput-boolean p1, p0, Landroidx/slice/widget/SliceView;->mShowHeaderDivider:Z

    .line 656
    iget-object p0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz p0, :cond_0

    .line 657
    invoke-virtual {p0, p1}, Landroidx/slice/widget/ListContent;->showHeaderDivider(Z)V

    :cond_0
    return-void
.end method

.method public setShowTitleItems(Z)V
    .locals 0

    .line 636
    iput-boolean p1, p0, Landroidx/slice/widget/SliceView;->mShowTitleItems:Z

    .line 637
    iget-object p0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz p0, :cond_0

    .line 638
    invoke-virtual {p0, p1}, Landroidx/slice/widget/ListContent;->showTitleItems(Z)V

    :cond_0
    return-void
.end method

.method public setSlice(Landroidx/slice/Slice;)V
    .locals 6
    .param p1    # Landroidx/slice/Slice;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 444
    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceView;->initSliceMetrics(Landroidx/slice/Slice;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 445
    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mCurrentSlice:Landroidx/slice/Slice;

    if-eqz v2, :cond_0

    .line 446
    invoke-virtual {p1}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Landroidx/slice/widget/SliceView;->mCurrentSlice:Landroidx/slice/Slice;

    invoke-virtual {v3}, Landroidx/slice/Slice;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 447
    :goto_0
    iget-object v3, p0, Landroidx/slice/widget/SliceView;->mSliceMetadata:Landroidx/slice/SliceMetadata;

    .line 448
    iput-object p1, p0, Landroidx/slice/widget/SliceView;->mCurrentSlice:Landroidx/slice/Slice;

    .line 449
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mCurrentSlice:Landroidx/slice/Slice;

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/slice/widget/SliceView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v5, p0, Landroidx/slice/widget/SliceView;->mCurrentSlice:Landroidx/slice/Slice;

    invoke-static {p1, v5}, Landroidx/slice/SliceMetadata;->from(Landroid/content/Context;Landroidx/slice/Slice;)Landroidx/slice/SliceMetadata;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v4

    :goto_1
    iput-object p1, p0, Landroidx/slice/widget/SliceView;->mSliceMetadata:Landroidx/slice/SliceMetadata;

    const/4 p1, 0x2

    if-eqz v2, :cond_2

    .line 453
    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mSliceMetadata:Landroidx/slice/SliceMetadata;

    .line 454
    invoke-virtual {v3}, Landroidx/slice/SliceMetadata;->getLoadingState()I

    move-result v3

    if-ne v3, p1, :cond_3

    .line 455
    invoke-virtual {v2}, Landroidx/slice/SliceMetadata;->getLoadingState()I

    move-result v2

    if-nez v2, :cond_3

    return-void

    .line 461
    :cond_2
    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v2}, Landroidx/slice/widget/SliceChildView;->resetView()V

    .line 463
    :cond_3
    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mSliceMetadata:Landroidx/slice/SliceMetadata;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroidx/slice/SliceMetadata;->getListContent()Landroidx/slice/widget/ListContent;

    move-result-object v2

    goto :goto_2

    :cond_4
    move-object v2, v4

    :goto_2
    iput-object v2, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    .line 464
    iget-boolean v2, p0, Landroidx/slice/widget/SliceView;->mShowTitleItems:Z

    if-eqz v2, :cond_5

    .line 465
    invoke-virtual {p0, v1}, Landroidx/slice/widget/SliceView;->showTitleItems(Z)V

    .line 467
    :cond_5
    iget-boolean v2, p0, Landroidx/slice/widget/SliceView;->mShowHeaderDivider:Z

    if-eqz v2, :cond_6

    .line 468
    invoke-virtual {p0, v1}, Landroidx/slice/widget/SliceView;->showHeaderDivider(Z)V

    .line 470
    :cond_6
    iget-boolean v2, p0, Landroidx/slice/widget/SliceView;->mShowActionDividers:Z

    if-eqz v2, :cond_7

    .line 471
    invoke-virtual {p0, v1}, Landroidx/slice/widget/SliceView;->showActionDividers(Z)V

    .line 473
    :cond_7
    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Landroidx/slice/widget/ListContent;->isValid()Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_4

    .line 480
    :cond_8
    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v2, v4}, Landroidx/slice/widget/SliceChildView;->setLoadingActions(Ljava/util/Set;)V

    .line 483
    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mSliceMetadata:Landroidx/slice/SliceMetadata;

    invoke-virtual {v2}, Landroidx/slice/SliceMetadata;->getSliceActions()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Landroidx/slice/widget/SliceView;->mActions:Ljava/util/List;

    .line 484
    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget-object v3, p0, Landroidx/slice/widget/SliceView;->mSliceMetadata:Landroidx/slice/SliceMetadata;

    invoke-virtual {v3}, Landroidx/slice/SliceMetadata;->getLastUpdatedTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroidx/slice/widget/SliceChildView;->setLastUpdated(J)V

    .line 485
    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget-boolean v3, p0, Landroidx/slice/widget/SliceView;->mShowLastUpdated:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroidx/slice/widget/SliceView;->mSliceMetadata:Landroidx/slice/SliceMetadata;

    invoke-virtual {v3}, Landroidx/slice/SliceMetadata;->isExpired()Z

    move-result v3

    if-eqz v3, :cond_9

    move v0, v1

    :cond_9
    invoke-virtual {v2, v0}, Landroidx/slice/widget/SliceChildView;->setShowLastUpdated(Z)V

    .line 486
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget-object v2, p0, Landroidx/slice/widget/SliceView;->mSliceMetadata:Landroidx/slice/SliceMetadata;

    invoke-virtual {v2}, Landroidx/slice/SliceMetadata;->isPermissionSlice()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/slice/widget/SliceChildView;->setAllowTwoLines(Z)V

    .line 489
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->getTintColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/slice/widget/SliceChildView;->setTint(I)V

    .line 491
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->getLayoutDir()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    .line 492
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {v0}, Landroidx/slice/widget/ListContent;->getLayoutDir()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/slice/widget/SliceChildView;->setLayoutDirection(I)V

    goto :goto_3

    .line 494
    :cond_a
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {v0, p1}, Landroidx/slice/widget/SliceChildView;->setLayoutDirection(I)V

    .line 498
    :goto_3
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mListContent:Landroidx/slice/widget/ListContent;

    invoke-virtual {p1, v0}, Landroidx/slice/widget/SliceChildView;->setSliceContent(Landroidx/slice/widget/ListContent;)V

    .line 499
    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->updateActions()V

    .line 502
    invoke-direct {p0, v1}, Landroidx/slice/widget/SliceView;->logSliceMetricsVisibilityChange(Z)V

    .line 505
    invoke-direct {p0, v1}, Landroidx/slice/widget/SliceView;->refreshLastUpdatedLabel(Z)V

    return-void

    .line 474
    :cond_b
    :goto_4
    iput-object v4, p0, Landroidx/slice/widget/SliceView;->mActions:Ljava/util/List;

    .line 475
    iget-object p1, p0, Landroidx/slice/widget/SliceView;->mCurrentView:Landroidx/slice/widget/SliceChildView;

    invoke-virtual {p1}, Landroidx/slice/widget/SliceChildView;->resetView()V

    .line 476
    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->updateActions()V

    return-void
.end method

.method public setSliceActions(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;)V"
        }
    .end annotation

    .line 543
    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mCurrentSlice:Landroidx/slice/Slice;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/slice/widget/SliceView;->mSliceMetadata:Landroidx/slice/SliceMetadata;

    if-eqz v0, :cond_3

    .line 546
    invoke-virtual {v0}, Landroidx/slice/SliceMetadata;->getSliceActions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 548
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 549
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 550
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to set an action that isn\'t available: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-nez p1, :cond_2

    .line 555
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    iput-object p1, p0, Landroidx/slice/widget/SliceView;->mActions:Ljava/util/List;

    .line 556
    invoke-direct {p0}, Landroidx/slice/widget/SliceView;->updateActions()V

    return-void

    .line 544
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Trying to set actions on a view without a slice"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method setSliceViewPolicy(Landroidx/slice/widget/SliceViewPolicy;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 239
    iput-object p1, p0, Landroidx/slice/widget/SliceView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    return-void
.end method

.method public showActionDividers(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 686
    invoke-virtual {p0, p1}, Landroidx/slice/widget/SliceView;->setShowActionDividers(Z)V

    return-void
.end method

.method public showHeaderDivider(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 667
    invoke-virtual {p0, p1}, Landroidx/slice/widget/SliceView;->setShowHeaderDivider(Z)V

    return-void
.end method

.method public showTitleItems(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 648
    invoke-virtual {p0, p1}, Landroidx/slice/widget/SliceView;->setShowTitleItems(Z)V

    return-void
.end method
