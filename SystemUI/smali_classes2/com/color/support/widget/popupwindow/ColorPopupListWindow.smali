.class public Lcom/color/support/widget/popupwindow/ColorPopupListWindow;
.super Landroid/widget/PopupWindow;
.source "ColorPopupListWindow.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field private mAdapter:Landroid/widget/BaseAdapter;

.field private mAlphaAnimationDuration:I

.field private mAlphaAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private mAnchor:Landroid/view/View;

.field private mAnchorRect:Landroid/graphics/Rect;

.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mBackgroundPaddingRect:Landroid/graphics/Rect;

.field private mContentView:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mCoordinate:Landroid/graphics/Point;

.field private mCustomAdapter:Landroid/widget/BaseAdapter;

.field private mDecorViewRect:Landroid/graphics/Rect;

.field private mDefaultAdapter:Landroid/widget/BaseAdapter;

.field private mHasHorizontalSpace:Z

.field private mHasVerticalSpace:Z

.field private mIsDismissing:Z

.field private mItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/color/support/widget/popupwindow/PopupListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mListViewUsedToMeasure:Landroid/widget/ListView;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mPivotX:F

.field private mPivotY:F

.field private mPopupListWindowMinWidth:I

.field private mPopupWindowOffset:[I

.field private mScaleAnimationDuration:I

.field private mScaleAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private mShowAboveFirst:Z

.field private mTempLocation:[I

.field private mWindowLocationOnScreen:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 107
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 67
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mCoordinate:Landroid/graphics/Point;

    const/4 v0, 0x2

    .line 68
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mTempLocation:[I

    .line 69
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mWindowLocationOnScreen:[I

    const/4 v0, 0x4

    .line 70
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mPopupWindowOffset:[I

    .line 83
    new-instance v0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow$1;

    invoke-direct {v0, p0}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow$1;-><init>(Lcom/color/support/widget/popupwindow/ColorPopupListWindow;)V

    iput-object v0, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 108
    iput-object p1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mContext:Landroid/content/Context;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mItemList:Ljava/util/List;

    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$integer;->oppo_animation_time_move_veryfast:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mScaleAnimationDuration:I

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$integer;->oppo_animation_time_move_veryfast:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mAlphaAnimationDuration:I

    .line 112
    sget v0, Lcolor/support/v7/appcompat/R$interpolator;->oppo_curve_opacity_inout:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mAlphaAnimationInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mScaleAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$dimen;->color_popup_list_window_min_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mPopupListWindowMinWidth:I

    .line 115
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mListViewUsedToMeasure:Landroid/widget/ListView;

    .line 116
    iget-object v0, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mListViewUsedToMeasure:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 117
    iget-object v0, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mListViewUsedToMeasure:Landroid/widget/ListView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    invoke-direct {p0, p1}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->createContentView(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mContentView:Landroid/view/ViewGroup;

    .line 120
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->setClippingEnabled(Z)V

    .line 123
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-le p1, v0, :cond_0

    .line 124
    invoke-virtual {p0, v1}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->setExitTransition(Landroid/transition/Transition;)V

    .line 125
    invoke-virtual {p0, v1}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->setEnterTransition(Landroid/transition/Transition;)V

    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/color/support/widget/popupwindow/ColorPopupListWindow;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mIsDismissing:Z

    return p1
.end method

.method static synthetic access$100(Lcom/color/support/widget/popupwindow/ColorPopupListWindow;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->dismissPopupWindow()V

    return-void
.end method

.method private animateEnter()V
    .locals 10

    .line 305
    new-instance v9, Landroid/view/animation/ScaleAnimation;

    iget v6, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mPivotX:F

    iget v8, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mPivotY:F

    const/high16 v1, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v7, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 306
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 308
    iget v1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mScaleAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v9, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 309
    iget-object v1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mScaleAnimationInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 310
    iget v1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mAlphaAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 311
    iget-object v1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mAlphaAnimationInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 313
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 314
    invoke-virtual {v1, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 315
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 316
    iget-object p0, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private animateExit()V
    .locals 10

    .line 320
    new-instance v9, Landroid/view/animation/ScaleAnimation;

    iget v6, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mPivotX:F

    iget v8, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mPivotY:F

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/4 v7, 0x1

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 321
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 323
    iget v1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mScaleAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v9, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 324
    iget-object v1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mScaleAnimationInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 325
    iget v1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mAlphaAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 326
    iget-object v1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mAlphaAnimationInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 328
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 329
    invoke-virtual {v1, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 330
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 331
    iget-object v0, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 332
    iget-object p0, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private calculateCoordinate()V
    .locals 9

    const/4 v0, 0x1

    .line 256
    iput-boolean v0, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mHasHorizontalSpace:Z

    .line 257
    iput-boolean v0, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mHasVerticalSpace:Z

    .line 258
    iget-object v1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mDecorViewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mDecorViewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->getWidth()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    .line 259
    iput-boolean v3, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mHasHorizontalSpace:Z

    return-void

    .line 262
    :cond_0
    iget-object v1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mAnchorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {p0}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mDecorViewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->getWidth()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 263
    iget-object v2, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mDecorViewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mWindowLocationOnScreen:[I

    aget v2, v2, v3

    sub-int/2addr v1, v2

    .line 266
    iget-object v2, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mAnchorRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mDecorViewRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v4

    .line 267
    iget-object v4, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mDecorViewRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mAnchorRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    .line 268
    invoke-virtual {p0}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->getHeight()I

    move-result v5

    if-lt v2, v5, :cond_1

    move v6, v0

    goto :goto_0

    :cond_1
    move v6, v3

    :goto_0
    if-lt v4, v5, :cond_2

    move v7, v0

    goto :goto_1

    :cond_2
    move v7, v3

    .line 271
    :goto_1
    iget-object v8, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mAnchorRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v5

    .line 272
    iget-object v5, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mAnchorRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-gtz v4, :cond_3

    if-gtz v2, :cond_3

    .line 274
    iput-boolean v3, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mHasVerticalSpace:Z

    return-void

    .line 276
    :cond_3
    iget-boolean v3, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mShowAboveFirst:Z

    if-eqz v3, :cond_4

    if-eqz v6, :cond_6

    goto :goto_2

    :cond_4
    if-eqz v7, :cond_6

    .line 277
    :goto_2
    iget-boolean v2, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mShowAboveFirst:Z

    if-eqz v2, :cond_a

    :cond_5
    move v5, v8

    goto :goto_4

    .line 278
    :cond_6
    iget-boolean v3, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mShowAboveFirst:Z

    if-eqz v3, :cond_7

    if-eqz v7, :cond_8

    goto :goto_3

    :cond_7
    if-eqz v6, :cond_8

    .line 279
    :goto_3
    iget-boolean v2, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mShowAboveFirst:Z

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_8
    if-le v2, v4, :cond_9

    .line 281
    iget-object v3, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mDecorViewRect:Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Rect;->top:I

    .line 282
    invoke-virtual {p0, v2}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->setHeight(I)V

    goto :goto_4

    .line 284
    :cond_9
    iget-object v2, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mAnchorRect:Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    .line 285
    invoke-virtual {p0, v4}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->setHeight(I)V

    .line 288
    :cond_a
    :goto_4
    iget-object v2, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mCoordinate:Landroid/graphics/Point;

    iget-object p0, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mWindowLocationOnScreen:[I

    aget p0, p0, v0

    sub-int/2addr v5, p0

    invoke-virtual {v2, v1, v5}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method private calculatePivot()V
    .locals 5

    .line 292
    iget-object v0, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mAnchorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget-object v1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mWindowLocationOnScreen:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mCoordinate:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->getWidth()I

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-lt v0, v1, :cond_0

    .line 293
    iput v3, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mPivotX:F

    goto :goto_0

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mAnchorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget-object v1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mWindowLocationOnScreen:[I

    aget v1, v1, v2

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mCoordinate:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mPivotX:F

    .line 297
    :goto_0
    iget-object v0, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mCoordinate:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mAnchorRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mWindowLocationOnScreen:[I

    const/4 v4, 0x1

    aget v2, v2, v4

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 298
    iput v0, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mPivotY:F

    goto :goto_1

    .line 300
    :cond_1
    iput v3, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mPivotY:F

    :goto_1
    return-void
.end method

.method private calculateWindowLocation()V
    .locals 6

    .line 199
    iget-object v0, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mAnchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mTempLocation:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 200
    iget-object v0, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mTempLocation:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    .line 201
    aget v0, v0, v3

    .line 203
    iget-object v4, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mAnchor:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mTempLocation:[I

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 204
    iget-object v4, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mTempLocation:[I

    aget v5, v4, v1

    .line 205
    aget v4, v4, v3

    .line 207
    iget-object p0, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mWindowLocationOnScreen:[I

    sub-int/2addr v2, v5

    aput v2, p0, v1

    sub-int/2addr v0, v4

    .line 208
    aput v0, p0, v3

    return-void
.end method

.method private createContentView(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 3

    .line 138
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcolor/support/v7/appcompat/R$layout;->color_popup_list_window_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 139
    sget v1, Lcolor/support/v7/appcompat/R$id;->color_popup_list_view:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mListView:Landroid/widget/ListView;

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcolor/support/v7/appcompat/R$drawable;->color_popup_list_window_bg:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 141
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mBackgroundPaddingRect:Landroid/graphics/Rect;

    .line 142
    iget-object p0, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mBackgroundPaddingRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 143
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private dismissPopupWindow()V
    .locals 1

    .line 345
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 346
    iget-object v0, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mAnchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 v0, 0x0

    .line 347
    invoke-virtual {p0, v0}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private getPopupWindowMaxWidth()I
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mDecorViewRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mDecorViewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mBackgroundPaddingRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mBackgroundPaddingRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 352
    iget-boolean v0, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mIsDismissing:Z

    if-nez v0, :cond_0

    .line 353
    invoke-direct {p0}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->animateExit()V

    :cond_0
    return-void
.end method

.method public getItemList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/color/support/widget/popupwindow/PopupListItem;",
            ">;"
        }
    .end annotation

    .line 363
    iget-object p0, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mItemList:Ljava/util/List;

    return-object p0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 0

    .line 403
    iget-object p0, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method public measurePopupWindow()V
    .locals 13

    .line 215
    iget-object v0, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mAdapter:Landroid/widget/BaseAdapter;

    .line 221
    invoke-direct {p0}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->getPopupWindowMaxWidth()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/4 v2, 0x0

    .line 222
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 223
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    const/4 v5, 0x0

    move v6, v2

    move v7, v6

    move v9, v3

    move-object v8, v5

    move v3, v7

    :goto_0
    if-ge v2, v4, :cond_3

    .line 225
    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v10

    if-eq v10, v7, :cond_0

    move-object v8, v5

    move v7, v10

    .line 230
    :cond_0
    iget-object v10, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mListViewUsedToMeasure:Landroid/widget/ListView;

    invoke-interface {v0, v2, v8, v10}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 232
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/AbsListView$LayoutParams;

    .line 233
    iget v11, v10, Landroid/widget/AbsListView$LayoutParams;->height:I

    const/4 v12, -0x2

    if-eq v11, v12, :cond_1

    .line 234
    iget v9, v10, Landroid/widget/AbsListView$LayoutParams;->height:I

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 237
    :cond_1
    invoke-virtual {v8, v1, v9}, Landroid/view/View;->measure(II)V

    .line 238
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 239
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    if-le v10, v3, :cond_2

    move v3, v10

    :cond_2
    add-int/2addr v6, v11

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 247
    :cond_3
    iget v0, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mPopupListWindowMinWidth:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mBackgroundPaddingRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mBackgroundPaddingRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->setWidth(I)V

    .line 248
    iget-object v0, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mBackgroundPaddingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v0

    iget-object v0, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mBackgroundPaddingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v0

    invoke-virtual {p0, v6}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->setHeight(I)V

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 337
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 338
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2, p6, p7, p8, p9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 339
    invoke-virtual {p0}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->isShowing()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 340
    invoke-direct {p0}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->dismissPopupWindow()V

    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/BaseAdapter;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mCustomAdapter:Landroid/widget/BaseAdapter;

    return-void
.end method

.method public setDismissTouchOutside(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 415
    invoke-virtual {p0, p1}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->setTouchable(Z)V

    .line 416
    invoke-virtual {p0, p1}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->setFocusable(Z)V

    .line 417
    invoke-virtual {p0, p1}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->setOutsideTouchable(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 419
    invoke-virtual {p0, p1}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->setFocusable(Z)V

    .line 420
    invoke-virtual {p0, p1}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->setOutsideTouchable(Z)V

    .line 422
    :goto_0
    invoke-virtual {p0}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->update()V

    return-void
.end method

.method public setItemList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/color/support/widget/popupwindow/PopupListItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 374
    iput-object p1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mItemList:Ljava/util/List;

    .line 375
    new-instance v0, Lcom/color/support/widget/popupwindow/DefaultAdapter;

    iget-object v1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/color/support/widget/popupwindow/DefaultAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mDefaultAdapter:Landroid/widget/BaseAdapter;

    :cond_0
    return-void
.end method

.method public setOffset(IIII)V
    .locals 1

    .line 435
    iget-object p0, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mPopupWindowOffset:[I

    const/4 v0, 0x0

    aput p1, p0, v0

    const/4 p1, 0x1

    .line 436
    aput p2, p0, p1

    const/4 p1, 0x2

    .line 437
    aput p3, p0, p1

    const/4 p1, 0x3

    .line 438
    aput p4, p0, p1

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 5

    if-eqz p1, :cond_5

    .line 154
    iget-object v0, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mDefaultAdapter:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mCustomAdapter:Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_5

    :cond_0
    invoke-virtual {p0}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 158
    :cond_1
    iput-object p1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mAnchor:Landroid/view/View;

    .line 159
    iget-object p1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mAnchor:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 160
    iget-object p1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mAnchor:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 162
    iget-object p1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mCustomAdapter:Landroid/widget/BaseAdapter;

    if-nez p1, :cond_2

    .line 163
    iget-object p1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mDefaultAdapter:Landroid/widget/BaseAdapter;

    iput-object p1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mAdapter:Landroid/widget/BaseAdapter;

    goto :goto_0

    .line 165
    :cond_2
    iput-object p1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mAdapter:Landroid/widget/BaseAdapter;

    .line 167
    :goto_0
    iget-object p1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 168
    iget-object p1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz p1, :cond_3

    .line 169
    iget-object v0, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 172
    :cond_3
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mDecorViewRect:Landroid/graphics/Rect;

    .line 173
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mAnchorRect:Landroid/graphics/Rect;

    .line 174
    iget-object p1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mAnchor:Landroid/view/View;

    iget-object v0, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mDecorViewRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 175
    iget-object p1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mAnchor:Landroid/view/View;

    iget-object v0, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mAnchorRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 176
    iget-object p1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mAnchorRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mPopupWindowOffset:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 177
    iget-object p1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mAnchorRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mPopupWindowOffset:[I

    const/4 v3, 0x1

    aget v1, v1, v3

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 178
    iget-object p1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mAnchorRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mPopupWindowOffset:[I

    const/4 v4, 0x2

    aget v1, v1, v4

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 179
    iget-object p1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mAnchorRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mPopupWindowOffset:[I

    const/4 v4, 0x3

    aget v1, v1, v4

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 180
    iget-object p1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mAnchor:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mTempLocation:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 181
    iget-object p1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mAnchorRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mTempLocation:[I

    aget v1, v0, v2

    aget v0, v0, v3

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 183
    invoke-direct {p0}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->calculateWindowLocation()V

    .line 184
    invoke-virtual {p0}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->measurePopupWindow()V

    .line 185
    invoke-direct {p0}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->calculateCoordinate()V

    .line 186
    iget-boolean p1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mHasVerticalSpace:Z

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mHasHorizontalSpace:Z

    if-nez p1, :cond_4

    goto :goto_1

    .line 189
    :cond_4
    iget-object p1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->setContentView(Landroid/view/View;)V

    .line 190
    invoke-direct {p0}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->calculatePivot()V

    .line 191
    invoke-direct {p0}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->animateEnter()V

    .line 192
    iget-object p1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mAnchor:Landroid/view/View;

    iget-object v0, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mCoordinate:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mCoordinate:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_5
    :goto_1
    return-void
.end method

.method public showAboveFirst(Z)V
    .locals 0

    .line 447
    iput-boolean p1, p0, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->mShowAboveFirst:Z

    return-void
.end method
