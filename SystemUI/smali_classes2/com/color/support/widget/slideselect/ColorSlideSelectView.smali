.class public Lcom/color/support/widget/slideselect/ColorSlideSelectView;
.super Landroid/widget/RelativeLayout;
.source "ColorSlideSelectView.java"

# interfaces
.implements Lcom/color/support/widget/slideselect/onFingerUpListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/support/widget/slideselect/ColorSlideSelectView$LongPressedThread;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final HIDE_ANIMATION_DURATION:I = 0xc8

.field private static final LONG_PRESS_TIME:J = 0x1f4L

.field public static final SHOW_ANIMATION_DURATION:I = 0xc8


# instance fields
.field private dataFromAttributes:Ljava/util/ArrayList;

.field private itemHeight:I

.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationInProgress:Z

.field private mBlurView:Landroid/view/View;

.field private mCLickViewHeight:I

.field private mClickView:Landroid/view/View;

.field private mClickViewId:I

.field private mContext:Landroid/content/Context;

.field private mCurrentClickTime:J

.field private mHandler:Landroid/os/Handler;

.field private mIsLongClick:Z

.field private mItemTextSize:I

.field private mListView:Lcom/color/support/widget/slideselect/ColorSelectListView;

.field private mListViewIsShown:Z

.field private mLongPressedThread:Lcom/color/support/widget/slideselect/ColorSlideSelectView$LongPressedThread;

.field private mOffset:I

.field private mOnSelectionChangeListerner:Lcom/color/support/widget/slideselect/OnSelectChangeListener;

.field private mPadding:I

.field private mPickerInitialized:Z

.field private mSelectedItemIndex:I

.field private mSideViewContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, v0}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    iput-object p1, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, p2, v0}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    iput-object p1, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 36
    iput-object p3, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 37
    iput-object p3, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->dataFromAttributes:Ljava/util/ArrayList;

    .line 39
    iput-object p3, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mListView:Lcom/color/support/widget/slideselect/ColorSelectListView;

    const/4 p3, 0x0

    .line 42
    iput p3, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mSelectedItemIndex:I

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mHandler:Landroid/os/Handler;

    .line 78
    iput-object p1, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mContext:Landroid/content/Context;

    .line 79
    sget-object v0, Lcolor/support/v7/appcompat/R$styleable;->ColorSlideSelectView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 80
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    move v1, p3

    :goto_0
    if-ge v1, v0, :cond_3

    .line 82
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 83
    sget v3, Lcolor/support/v7/appcompat/R$styleable;->ColorSlideSelectView_item_font_size:I

    if-ne v2, v3, :cond_0

    .line 84
    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mItemTextSize:I

    goto :goto_1

    .line 85
    :cond_0
    sget v3, Lcolor/support/v7/appcompat/R$styleable;->ColorSlideSelectView_color_slide_selector_data_array:I

    if-ne v2, v3, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 87
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->dataFromAttributes:Ljava/util/ArrayList;

    goto :goto_1

    .line 88
    :cond_1
    sget v3, Lcolor/support/v7/appcompat/R$styleable;->ColorSlideSelectView_color_slide_selector_selected_index:I

    if-ne v2, v3, :cond_2

    .line 89
    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mSelectedItemIndex:I

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    :cond_3
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    invoke-direct {p0, p1}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/color/support/widget/slideselect/ColorSlideSelectView;)Lcom/color/support/widget/slideselect/ColorSelectListView;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mListView:Lcom/color/support/widget/slideselect/ColorSelectListView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/color/support/widget/slideselect/ColorSlideSelectView;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->showListView()V

    return-void
.end method

.method static synthetic access$200(Lcom/color/support/widget/slideselect/ColorSlideSelectView;)Lcom/color/support/widget/slideselect/ColorSlideSelectView$LongPressedThread;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mLongPressedThread:Lcom/color/support/widget/slideselect/ColorSlideSelectView$LongPressedThread;

    return-object p0
.end method

.method static synthetic access$202(Lcom/color/support/widget/slideselect/ColorSlideSelectView;Lcom/color/support/widget/slideselect/ColorSlideSelectView$LongPressedThread;)Lcom/color/support/widget/slideselect/ColorSlideSelectView$LongPressedThread;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mLongPressedThread:Lcom/color/support/widget/slideselect/ColorSlideSelectView$LongPressedThread;

    return-object p1
.end method

.method static synthetic access$300(Lcom/color/support/widget/slideselect/ColorSlideSelectView;)Landroid/os/Handler;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/color/support/widget/slideselect/ColorSlideSelectView;)J
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mCurrentClickTime:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/color/support/widget/slideselect/ColorSlideSelectView;J)J
    .locals 0

    .line 32
    iput-wide p1, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mCurrentClickTime:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/color/support/widget/slideselect/ColorSlideSelectView;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mIsLongClick:Z

    return p0
.end method

.method static synthetic access$502(Lcom/color/support/widget/slideselect/ColorSlideSelectView;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mIsLongClick:Z

    return p1
.end method

.method static synthetic access$600(Lcom/color/support/widget/slideselect/ColorSlideSelectView;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mListViewIsShown:Z

    return p0
.end method

.method static synthetic access$602(Lcom/color/support/widget/slideselect/ColorSlideSelectView;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mListViewIsShown:Z

    return p1
.end method

.method static synthetic access$702(Lcom/color/support/widget/slideselect/ColorSlideSelectView;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mAnimationInProgress:Z

    return p1
.end method

.method private calculateLocation()V
    .locals 12

    const/4 v0, 0x2

    .line 134
    new-array v1, v0, [I

    .line 135
    invoke-virtual {p0}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->getStatusBarHeight()I

    move-result v2

    .line 136
    invoke-virtual {p0}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->getHeight()I

    move-result v3

    add-int/2addr v3, v2

    .line 137
    iget-object v4, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mClickView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 138
    invoke-virtual {v4, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 139
    iget-object v4, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mClickView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iput v4, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mCLickViewHeight:I

    .line 141
    :cond_0
    iget-object v4, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mAdapter:Landroid/widget/ArrayAdapter;

    if-eqz v4, :cond_1

    instance-of v5, v4, Lcom/color/support/widget/slideselect/SlideSelectorAdapter;

    if-eqz v5, :cond_1

    .line 142
    check-cast v4, Lcom/color/support/widget/slideselect/SlideSelectorAdapter;

    iget v5, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->itemHeight:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/color/support/widget/slideselect/SlideSelectorAdapter;->setItemHeight(Ljava/lang/Integer;)V

    .line 143
    :cond_1
    new-array v4, v0, [I

    .line 144
    invoke-virtual {p0, v4}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->getLocationInWindow([I)V

    .line 145
    div-int/lit8 v4, v3, 0x2

    iget v5, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->itemHeight:I

    div-int/2addr v5, v0

    sub-int/2addr v4, v5

    .line 146
    iget-object v5, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v5

    .line 147
    div-int/lit8 v6, v5, 0x2

    .line 148
    iget v7, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->itemHeight:I

    mul-int v8, v6, v7

    const/4 v9, 0x1

    .line 150
    aget v10, v1, v9

    iget v11, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mCLickViewHeight:I

    div-int/2addr v11, v0

    sub-int/2addr v10, v11

    if-le v10, v4, :cond_3

    .line 151
    aget v0, v1, v9

    sub-int/2addr v3, v0

    if-ge v3, v8, :cond_2

    .line 153
    div-int/2addr v3, v7

    .line 154
    aget v0, v1, v9

    sub-int/2addr v0, v7

    sub-int/2addr v5, v3

    sub-int/2addr v5, v9

    mul-int/2addr v5, v7

    sub-int/2addr v0, v5

    invoke-direct {p0, v0}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->fillUpSpace(I)V

    goto :goto_0

    .line 156
    :cond_2
    aget v0, v1, v9

    mul-int/2addr v6, v7

    sub-int/2addr v0, v6

    invoke-direct {p0, v0}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->fillUpSpace(I)V

    goto :goto_0

    .line 160
    :cond_3
    aget v0, v1, v9

    sub-int/2addr v0, v7

    sub-int/2addr v0, v2

    if-ge v0, v8, :cond_4

    .line 161
    aget v0, v1, v9

    sub-int/2addr v0, v7

    div-int/2addr v0, v7

    .line 162
    aget v1, v1, v9

    mul-int/2addr v0, v7

    sub-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->fillUpSpace(I)V

    goto :goto_0

    .line 164
    :cond_4
    aget v0, v1, v9

    mul-int/2addr v6, v7

    sub-int/2addr v0, v6

    invoke-direct {p0, v0}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->fillUpSpace(I)V

    :goto_0
    return-void
.end method

.method private fillUpSpace(I)V
    .locals 2

    .line 170
    new-instance v0, Landroid/widget/Space;

    iget-object v1, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mSideViewContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 171
    invoke-virtual {v0, p1}, Landroid/widget/Space;->setMinimumHeight(I)V

    .line 172
    iget v0, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mPadding:I

    if-le p1, v0, :cond_0

    sub-int/2addr p1, v0

    :cond_0
    add-int/lit8 p1, p1, 0x1e

    const/4 v0, 0x0

    .line 175
    invoke-virtual {p0, v0, p1, v0, v0}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->setPadding(IIII)V

    return-void
.end method

.method private hideListViewAnimation()V
    .locals 3

    .line 337
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0xc8

    .line 338
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 339
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 340
    new-instance v1, Lcom/color/support/widget/slideselect/ColorSlideSelectView$4;

    invoke-direct {v1, p0}, Lcom/color/support/widget/slideselect/ColorSlideSelectView$4;-><init>(Lcom/color/support/widget/slideselect/ColorSlideSelectView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 353
    invoke-virtual {p0, v0}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 7

    .line 101
    iput-object p1, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mSideViewContext:Landroid/content/Context;

    .line 102
    invoke-virtual {p0}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$dimen;->color_slide_selector_item_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->itemHeight:I

    .line 103
    invoke-virtual {p0}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$dimen;->color_slide_selector_item_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mCLickViewHeight:I

    .line 104
    invoke-virtual {p0}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$dimen;->color_slide_selector_item_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mPadding:I

    .line 105
    invoke-virtual {p0}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$dimen;->color_slide_selector_item_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mOffset:I

    const-string v0, "layout_inflater"

    .line 106
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 108
    sget v1, Lcolor/support/v7/appcompat/R$layout;->secletor_color_slide_select_list_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 109
    sget v0, Lcolor/support/v7/appcompat/R$id;->list_view:I

    invoke-virtual {p0, v0}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/color/support/widget/slideselect/ColorSelectListView;

    iput-object v0, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mListView:Lcom/color/support/widget/slideselect/ColorSelectListView;

    .line 110
    iget-object v0, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mListView:Lcom/color/support/widget/slideselect/ColorSelectListView;

    invoke-virtual {v0, p0}, Lcom/color/support/widget/slideselect/ColorSelectListView;->setOnFingerUpListener(Lcom/color/support/widget/slideselect/onFingerUpListener;)V

    .line 111
    iget-object v0, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->dataFromAttributes:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Lcom/color/support/widget/slideselect/SlideSelectorAdapter;

    sget v3, Lcolor/support/v7/appcompat/R$layout;->list_item:I

    iget-object v4, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->dataFromAttributes:Ljava/util/ArrayList;

    iget v1, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->itemHeight:I

    .line 113
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/color/support/widget/slideselect/SlideSelectorAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 112
    invoke-virtual {p0, v0}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->setAdapter(Landroid/widget/ArrayAdapter;)V

    :cond_0
    return-void
.end method

.method private isTouchPointInView(Landroid/view/View;II)Z
    .locals 4

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    const/4 v0, 0x2

    .line 375
    new-array v0, v0, [I

    .line 376
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 377
    aget v1, v0, p0

    const/4 v2, 0x1

    .line 378
    aget v0, v0, v2

    .line 379
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v1

    .line 380
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr p1, v0

    if-lt p3, v0, :cond_1

    if-gt p3, p1, :cond_1

    if-lt p2, v1, :cond_1

    if-gt p2, v3, :cond_1

    return v2

    :cond_1
    return p0
.end method

.method private showListView()V
    .locals 5

    .line 182
    invoke-direct {p0}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->calculateLocation()V

    .line 183
    iget-boolean v0, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mListViewIsShown:Z

    if-eqz v0, :cond_0

    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mListView:Lcom/color/support/widget/slideselect/ColorSelectListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/slideselect/ColorSelectListView;->setEnabled(Z)V

    .line 188
    iget-object v0, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mListView:Lcom/color/support/widget/slideselect/ColorSelectListView;

    invoke-virtual {p0}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcolor/support/v7/appcompat/R$color;->color_slide_selector_color_listview_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/color/support/widget/slideselect/ColorSelectListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 189
    invoke-virtual {p0, v0}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->setVisibility(I)V

    .line 190
    iget-object v1, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mListView:Lcom/color/support/widget/slideselect/ColorSelectListView;

    invoke-virtual {v1}, Lcom/color/support/widget/slideselect/ColorSelectListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_3

    move v1, v0

    .line 191
    :goto_0
    iget-object v2, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mListView:Lcom/color/support/widget/slideselect/ColorSelectListView;

    invoke-virtual {v2}, Lcom/color/support/widget/slideselect/ColorSelectListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 192
    iget v2, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mSelectedItemIndex:I

    if-eq v1, v2, :cond_1

    .line 193
    iget-object v2, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mListView:Lcom/color/support/widget/slideselect/ColorSelectListView;

    invoke-virtual {v2, v1}, Lcom/color/support/widget/slideselect/ColorSelectListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcolor/support/v7/appcompat/R$color;->color_select_prefernce_default_tv_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    :cond_2
    iget-object v1, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mListView:Lcom/color/support/widget/slideselect/ColorSelectListView;

    iget v2, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mSelectedItemIndex:I

    invoke-virtual {v1, v2}, Lcom/color/support/widget/slideselect/ColorSelectListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 197
    iget-object v1, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mListView:Lcom/color/support/widget/slideselect/ColorSelectListView;

    iget v2, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mSelectedItemIndex:I

    invoke-virtual {v1, v2}, Lcom/color/support/widget/slideselect/ColorSelectListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcolor/support/v7/appcompat/R$attr;->colorPrimaryColor:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 198
    invoke-direct {p0}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->showListViewAnimation()V

    :cond_3
    return-void
.end method

.method private showListViewAnimation()V
    .locals 3

    .line 314
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0xc8

    .line 315
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 316
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 317
    new-instance v1, Lcom/color/support/widget/slideselect/ColorSlideSelectView$3;

    invoke-direct {v1, p0}, Lcom/color/support/widget/slideselect/ColorSlideSelectView$3;-><init>(Lcom/color/support/widget/slideselect/ColorSlideSelectView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 333
    invoke-virtual {p0, v0}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 358
    iget-object v0, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mListView:Lcom/color/support/widget/slideselect/ColorSelectListView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v0, v1, v2}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->isTouchPointInView(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 361
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, -0xa

    .line 363
    invoke-virtual {p0, p1}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->onUpEvent(I)V

    :goto_0
    return v0
.end method

.method public fillListView()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mAdapter:Landroid/widget/ArrayAdapter;

    if-nez v0, :cond_0

    return-void

    .line 127
    :cond_0
    invoke-direct {p0}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->calculateLocation()V

    .line 128
    iget-object v0, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mListView:Lcom/color/support/widget/slideselect/ColorSelectListView;

    iget-object v1, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Lcom/color/support/widget/slideselect/ColorSelectListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v0, 0x1

    .line 129
    iput-boolean v0, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mPickerInitialized:Z

    return-void
.end method

.method getStatusBarHeight()I
    .locals 4

    .line 210
    iget-object v0, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mSideViewContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 212
    iget-object p0, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mSideViewContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onUpEvent(I)V
    .locals 3

    .line 283
    iget-object v0, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mListView:Lcom/color/support/widget/slideselect/ColorSelectListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/color/support/widget/slideselect/ColorSelectListView;->setEnabled(Z)V

    .line 284
    iput-boolean v1, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mListViewIsShown:Z

    const/4 v0, 0x4

    .line 285
    invoke-virtual {p0, v0}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->setVisibility(I)V

    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mClickView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/16 v0, -0xa

    if-eq p1, v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mClickView:Landroid/view/View;

    sget v1, Lcolor/support/v7/appcompat/R$id;->color_statusText_select:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    :cond_0
    iput p1, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mSelectedItemIndex:I

    .line 294
    iget-object v0, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mOnSelectionChangeListerner:Lcom/color/support/widget/slideselect/OnSelectChangeListener;

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mOnSelectionChangeListerner:Lcom/color/support/widget/slideselect/OnSelectChangeListener;

    iget-object v1, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/color/support/widget/slideselect/OnSelectChangeListener;->onSelectChange(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 300
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 302
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->hideListViewAnimation()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 118
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 119
    iget-boolean p1, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mPickerInitialized:Z

    if-nez p1, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->fillListView()V

    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/ArrayAdapter;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mAdapter:Landroid/widget/ArrayAdapter;

    return-void
.end method

.method public setBlurView(Landroid/view/View;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mBlurView:Landroid/view/View;

    return-void
.end method

.method public setClickView(Landroid/view/View;)V
    .locals 1

    .line 223
    iput-object p1, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mClickView:Landroid/view/View;

    .line 224
    iget-object p1, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mClickView:Landroid/view/View;

    if-nez p1, :cond_0

    return-void

    .line 227
    :cond_0
    new-instance v0, Lcom/color/support/widget/slideselect/ColorSlideSelectView$1;

    invoke-direct {v0, p0}, Lcom/color/support/widget/slideselect/ColorSlideSelectView$1;-><init>(Lcom/color/support/widget/slideselect/ColorSlideSelectView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object p1, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mClickView:Landroid/view/View;

    new-instance v0, Lcom/color/support/widget/slideselect/ColorSlideSelectView$2;

    invoke-direct {v0, p0}, Lcom/color/support/widget/slideselect/ColorSlideSelectView$2;-><init>(Lcom/color/support/widget/slideselect/ColorSlideSelectView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setColorSlideView(Landroid/view/View;)V
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->setClickView(Landroid/view/View;)V

    return-void
.end method

.method public setOnSelectionChangeListerner(Lcom/color/support/widget/slideselect/OnSelectChangeListener;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mOnSelectionChangeListerner:Lcom/color/support/widget/slideselect/OnSelectChangeListener;

    return-void
.end method

.method public setSelectIndex(I)V
    .locals 0

    .line 204
    iput p1, p0, Lcom/color/support/widget/slideselect/ColorSlideSelectView;->mSelectedItemIndex:I

    return-void
.end method
