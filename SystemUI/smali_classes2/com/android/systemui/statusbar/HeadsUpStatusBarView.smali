.class public Lcom/android/systemui/statusbar/HeadsUpStatusBarView;
.super Lcom/coloros/systemui/notification/base/HeadsUpStatusBarViewBase;
.source "HeadsUpStatusBarView.java"


# static fields
.field private static final ALPHA:Ljava/lang/String; = "alpha"

.field private static final FIRST_LAYOUT:Ljava/lang/String; = "first_layout"

.field private static final HEADS_UP_STATUS_BAR_VIEW_SUPER_PARCELABLE:Ljava/lang/String; = "heads_up_status_bar_view_super_parcelable"

.field private static final PUBLIC_MODE:Ljava/lang/String; = "public_mode"

.field public static final TAG:Ljava/lang/String; = "HeadsUpStatusBarView"

.field private static final VISIBILITY:Ljava/lang/String; = "visibility"


# instance fields
.field private mAbsoluteStartPadding:I

.field private mCutOutBounds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mCutOutInset:I

.field private mDisplaySize:Landroid/graphics/Point;

.field private mEndMargin:I

.field private mFirstLayout:Z

.field private mIconDrawingRect:Landroid/graphics/Rect;

.field private mIconPlaceholder:Landroid/view/View;

.field private mLayoutedIconRect:Landroid/graphics/Rect;

.field private mMaxWidth:I

.field private mOnDrawingRectChangedListener:Ljava/lang/Runnable;

.field private mPublicMode:Z

.field private mRootView:Landroid/view/View;

.field private mShowingEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field private mSysWinInset:I

.field private mTextView:Landroid/widget/TextView;

.field private mTmpPosition:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coloros/systemui/notification/base/HeadsUpStatusBarViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 76
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mLayoutedIconRect:Landroid/graphics/Rect;

    const/4 p1, 0x2

    .line 77
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mTmpPosition:[I

    const/4 p1, 0x1

    .line 78
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mFirstLayout:Z

    .line 85
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mIconDrawingRect:Landroid/graphics/Rect;

    .line 104
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070612

    .line 105
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sget p3, Lcom/coloros/common/util/ResourceUtil;->android_dimen_notification_content_margin_start:I

    .line 106
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    add-int/2addr p2, p3

    iput p2, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mAbsoluteStartPadding:I

    .line 108
    sget p2, Lcom/coloros/common/util/ResourceUtil;->android_dimen_notification_content_margin_end:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mEndMargin:I

    .line 110
    iget p1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mAbsoluteStartPadding:I

    iget p2, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mEndMargin:I

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3, p2, p3}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->setPaddingRelative(IIII)V

    .line 111
    invoke-direct {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->updateMaxWidth()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/widget/TextView;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 175
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;-><init>(Landroid/content/Context;)V

    .line 176
    iput-object p2, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mIconPlaceholder:Landroid/view/View;

    .line 177
    iput-object p3, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mTextView:Landroid/widget/TextView;

    return-void
.end method

.method private getDisplaySize()V
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mDisplaySize:Landroid/graphics/Point;

    if-nez v0, :cond_0

    .line 395
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mDisplaySize:Landroid/graphics/Point;

    .line 397
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, p0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    return-void
.end method

.method private updateDrawingRect()V
    .locals 4

    .line 324
    iget-object v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mIconDrawingRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    .line 325
    iget-object v1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mIconDrawingRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mLayoutedIconRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 326
    iget-object v1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mIconDrawingRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->getTranslationX()F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 327
    iget-object v1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mIconDrawingRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mOnDrawingRectChangedListener:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 328
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private updateMaxWidth()V
    .locals 2

    .line 115
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07074a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 116
    iget v1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mMaxWidth:I

    if-eq v0, v1, :cond_0

    .line 119
    iput v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mMaxWidth:I

    .line 120
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->requestLayout()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 6

    .line 334
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget v1, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    :goto_0
    iput v1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mSysWinInset:I

    .line 336
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    .line 338
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v3

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v3

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    iput v3, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mCutOutInset:I

    .line 341
    invoke-direct {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->getDisplaySize()V

    const/4 v3, 0x0

    .line 343
    iput-object v3, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mCutOutBounds:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 344
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v4

    if-nez v4, :cond_3

    .line 345
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v4

    if-nez v4, :cond_3

    .line 346
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mCutOutBounds:Ljava/util/List;

    .line 351
    :cond_3
    sget-boolean v4, Lcom/coloros/common/util/LogUtil;->INTERNAL:Z

    if-eqz v4, :cond_6

    .line 352
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--HeadsUpStatusBarView--fitSystemWindows: --isRtl: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "--- insets.right: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "---insets.left: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "---mSysWinInset: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mSysWinInset:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "---displayCutout: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "---insetRight: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_4

    move-object v0, v3

    goto :goto_2

    .line 355
    :cond_4
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "---insetLeft: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_5

    goto :goto_3

    .line 356
    :cond_5
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "---mCutOutInset: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mCutOutInset:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "---mCutOutBounds: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mCutOutBounds:Ljava/util/List;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Notification"

    const-string v3, "HeadsUpStatusBarView"

    .line 352
    invoke-static {v1, v3, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :cond_6
    iget v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mSysWinInset:I

    if-eqz v0, :cond_7

    .line 367
    iput v2, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mCutOutInset:I

    .line 370
    :cond_7
    invoke-super {p0, p1}, Lcom/coloros/systemui/notification/base/HeadsUpStatusBarViewBase;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public getIconDrawingRect()Landroid/graphics/Rect;
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mIconDrawingRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getShowingEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 0

    .line 374
    iget-object p0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mShowingEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 402
    invoke-super {p0}, Lcom/coloros/systemui/notification/base/HeadsUpStatusBarViewBase;->onAttachedToWindow()V

    .line 403
    invoke-direct {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->getDisplaySize()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 136
    invoke-super {p0, p1}, Lcom/coloros/systemui/notification/base/HeadsUpStatusBarViewBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 137
    invoke-direct {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->updateMaxWidth()V

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    .line 382
    iget-object p2, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mTextView:Landroid/widget/TextView;

    invoke-static {p1, p0, p3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 182
    invoke-super {p0}, Lcom/coloros/systemui/notification/base/HeadsUpStatusBarViewBase;->onFinishInflate()V

    const v0, 0x7f0a02c6

    .line 183
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mIconPlaceholder:Landroid/view/View;

    const v0, 0x7f0a0588

    .line 184
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mTextView:Landroid/widget/TextView;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9

    .line 233
    invoke-super/range {p0 .. p5}, Lcom/coloros/systemui/notification/base/HeadsUpStatusBarViewBase;->onLayout(ZIIII)V

    .line 234
    iget-object p1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mIconPlaceholder:Landroid/view/View;

    iget-object p2, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mTmpPosition:[I

    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 237
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_2

    .line 238
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->getTranslationX()F

    move-result p1

    const/4 p4, 0x0

    cmpl-float p1, p1, p4

    if-lez p1, :cond_0

    iget p1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mLastVaildTranslationX:F

    cmpl-float p1, p1, p4

    if-nez p1, :cond_0

    .line 239
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mIsConsiderCutOut:Z

    goto :goto_0

    .line 240
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->getTranslationX()F

    move-result p1

    cmpl-float p1, p1, p4

    if-nez p1, :cond_1

    iget p1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mLastVaildTranslationX:F

    cmpl-float p1, p1, p4

    if-lez p1, :cond_1

    .line 241
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mIsConsiderCutOut:Z

    .line 243
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->getTranslationX()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mLastVaildTranslationX:F

    goto :goto_1

    .line 245
    :cond_2
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mIsConsiderCutOut:Z

    .line 248
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mTmpPosition:[I

    aget p1, p1, p3

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->getTranslationX()F

    move-result p4

    sub-float/2addr p1, p4

    float-to-int p1, p1

    .line 249
    iget-object p4, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mTmpPosition:[I

    aget p4, p4, p2

    .line 250
    iget-object p5, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mIconPlaceholder:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    move-result p5

    add-int/2addr p5, p1

    .line 251
    iget-object v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mIconPlaceholder:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, p4

    .line 252
    iget-object v1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mLayoutedIconRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p4, p5, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 253
    invoke-direct {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->updateDrawingRect()V

    .line 254
    iget v1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mAbsoluteStartPadding:I

    iget v2, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mSysWinInset:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mCutOutInset:I

    add-int/2addr v1, v2

    .line 255
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 256
    iget-object v3, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mDisplaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, p5

    goto :goto_2

    :cond_3
    move v3, p1

    .line 260
    :goto_2
    sget-boolean v4, Lcom/coloros/common/util/LogUtil;->INTERNAL:Z

    const-string v5, "--start: "

    const-string v6, "HeadsUpStatusBarView"

    const-string v7, "Notification"

    if-eqz v4, :cond_4

    .line 261
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "--HeadsUpStatusBarView--onLayout: --mTmpPosition[0]: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mTmpPosition:[I

    aget v8, v8, p3

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "--mTmpPosition[1]: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mTmpPosition:[I

    aget p2, v8, p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "--getTranslationX(): "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->getTranslationX()F

    move-result p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, "--mIconPlaceholder.getWidth(): "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mIconPlaceholder:Landroid/view/View;

    .line 263
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "--mIconPlaceholder.getHeight(): "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mIconPlaceholder:Landroid/view/View;

    .line 264
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "--left: "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "--top: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "--right: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "--bottom: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "--mAbsoluteStartPadding: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mAbsoluteStartPadding:I

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "--mSysWinInset: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mSysWinInset:I

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "--mCutOutInset: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mCutOutInset:I

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "--targetPadding: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "--isRtl: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "--mCutOutBounds: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mCutOutBounds:Ljava/util/List;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "--mLastVaildTranslationX: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mLastVaildTranslationX:F

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "--mIsConsiderCutOut: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mIsConsiderCutOut:Z

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 261
    invoke-static {v7, v6, p1}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-ne v3, v1, :cond_5

    .line 280
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mIsConsiderCutOut:Z

    if-eqz p1, :cond_a

    .line 282
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mCutOutBounds:Ljava/util/List;

    if-eqz p1, :cond_8

    .line 283
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Rect;

    if-eqz v2, :cond_7

    .line 284
    iget-object p4, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mDisplaySize:Landroid/graphics/Point;

    iget p4, p4, Landroid/graphics/Point;->x:I

    iget p5, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p4, p5

    goto :goto_3

    :cond_7
    iget p4, p2, Landroid/graphics/Rect;->left:I

    :goto_3
    if-le v3, p4, :cond_6

    .line 287
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p1

    sub-int/2addr v3, p1

    :cond_8
    sub-int p1, v1, v3

    .line 293
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->getPaddingStart()I

    move-result p2

    add-int/2addr p1, p2

    .line 296
    sget-boolean p2, Lcom/coloros/common/util/LogUtil;->INTERNAL:Z

    if-eqz p2, :cond_9

    .line 297
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "--HeadsUpStatusBarView--onLayout: --targetPadding: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "--getPaddingStart(): "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->getPaddingStart()I

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "--newPadding: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "--mEndMargin: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mEndMargin:I

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 297
    invoke-static {v7, v6, p2}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    :cond_9
    iget p2, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mEndMargin:I

    invoke-virtual {p0, p1, p3, p2, p3}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->setPaddingRelative(IIII)V

    .line 304
    :cond_a
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mFirstLayout:Z

    if-eqz p1, :cond_b

    const/16 p1, 0x8

    .line 308
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->setVisibility(I)V

    .line 309
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mFirstLayout:Z

    :cond_b
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 126
    iget v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mMaxWidth:I

    if-lez v0, :cond_0

    .line 127
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mMaxWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 129
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 128
    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 131
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/coloros/systemui/notification/base/HeadsUpStatusBarViewBase;->onMeasure(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 155
    instance-of v0, p1, Landroid/os/Bundle;

    if-nez v0, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "heads_up_status_bar_view_super_parcelable"

    .line 161
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 162
    invoke-super {p0, v0}, Lcom/coloros/systemui/notification/base/HeadsUpStatusBarViewBase;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const/4 v0, 0x1

    const-string v1, "first_layout"

    .line 163
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mFirstLayout:Z

    const/4 v0, 0x0

    const-string v1, "public_mode"

    .line 164
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mPublicMode:Z

    const-string v0, "visibility"

    .line 165
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->setVisibility(I)V

    :cond_1
    const-string v0, "alpha"

    .line 168
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 169
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->setAlpha(F)V

    :cond_2
    return-void

    .line 156
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Lcom/coloros/systemui/notification/base/HeadsUpStatusBarViewBase;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .line 142
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 144
    invoke-super {p0}, Lcom/coloros/systemui/notification/base/HeadsUpStatusBarViewBase;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "heads_up_status_bar_view_super_parcelable"

    .line 143
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 145
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mFirstLayout:Z

    const-string v2, "first_layout"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 146
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mPublicMode:Z

    const-string v2, "public_mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 147
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->getVisibility()I

    move-result v1

    const-string v2, "visibility"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 148
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->getAlpha()F

    move-result p0

    const-string v1, "alpha"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-object v0
.end method

.method public bridge synthetic onSaveInstanceState()Landroid/os/Parcelable;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public setEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 4

    if-eqz p1, :cond_5

    .line 189
    iput-object p1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mShowingEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 201
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    const-string v1, ""

    if-eqz v0, :cond_4

    .line 203
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v2

    .line 204
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const/16 v3, 0x3e7

    if-ne v2, v3, :cond_0

    .line 206
    invoke-static {}, Loppo/util/OppoMultiLauncherUtil;->getInstance()Loppo/util/OppoMultiLauncherUtil;

    move-result-object v2

    invoke-virtual {v2, v0}, Loppo/util/OppoMultiLauncherUtil;->getAliasByPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 208
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->headsUpStatusBarText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->headsUpStatusBarText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 210
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mPublicMode:Z

    if-eqz v2, :cond_3

    .line 211
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->headsUpStatusBarTextPublic:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->headsUpStatusBarTextPublic:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    move-object v1, v0

    .line 214
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    invoke-static {}, Lcom/coloros/common/feature/ColorOSFeatureOption;->isColorOSStyle()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mIconPlaceholder:Landroid/view/View;

    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    .line 220
    check-cast p0, Landroid/widget/ImageView;

    .line 221
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    if-eqz v0, :cond_6

    .line 222
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getSourceIcon()Landroid/graphics/drawable/Icon;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    .line 227
    iput-object p1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mShowingEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    :cond_6
    :goto_2
    return-void
.end method

.method public setOnDrawingRectChangedListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 390
    iput-object p1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mOnDrawingRectChangedListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setPanelTranslation(F)V
    .locals 0

    .line 319
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->setTranslationX(F)V

    .line 320
    invoke-direct {p0}, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->updateDrawingRect()V

    return-void
.end method

.method public setPublicMode(Z)V
    .locals 0

    .line 386
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/HeadsUpStatusBarView;->mPublicMode:Z

    return-void
.end method
